@interface MADPhotosStickerScoreResult
- (MADPhotosStickerScoreResult)initWithAsset:(id)a3 stickerScore:(double)a4;
@end

@implementation MADPhotosStickerScoreResult

- (MADPhotosStickerScoreResult)initWithAsset:(id)a3 stickerScore:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MADPhotosStickerScoreResult;
  v8 = [(MADPhotosStickerScoreResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_asset, a3);
    v9->_stickerScore = a4;
  }

  return v9;
}

@end