//
//  SJCollectionViewCell.m
//  SJVideoPlayer
//
//  Created by 畅三江 on 2018/9/30.
//  Copyright © 2018 畅三江. All rights reserved.
//

#import "SJCollectionViewCell.h"
#import <Masonry/Masonry.h>

@implementation SJCollectionViewCell

static NSString *const SJCollectionViewCellID = @"SJCollectionViewCell";
+ (void)registerWithCollectionView:(UICollectionView *)collectionView {
    [collectionView registerClass:[self class] forCellWithReuseIdentifier:SJCollectionViewCellID];
}

+ (SJCollectionViewCell *)cellWithCollectionView:(UICollectionView *)collectionView indexPath:(nonnull NSIndexPath *)indexPath {
    return [collectionView dequeueReusableCellWithReuseIdentifier:SJCollectionViewCellID forIndexPath:indexPath];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if ( !self ) return nil;
    self.contentView.backgroundColor = [UIColor blackColor];
    _view = [SJPlayView new];
    _view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    _view.frame = self.contentView.bounds;
    [self.contentView addSubview:_view];
    return self;
}
@end
