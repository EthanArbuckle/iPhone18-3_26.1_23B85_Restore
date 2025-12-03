@interface MADPhotosStickerScoreResult
- (MADPhotosStickerScoreResult)initWithAsset:(id)asset stickerScore:(double)score;
@end

@implementation MADPhotosStickerScoreResult

- (MADPhotosStickerScoreResult)initWithAsset:(id)asset stickerScore:(double)score
{
  assetCopy = asset;
  v11.receiver = self;
  v11.super_class = MADPhotosStickerScoreResult;
  v8 = [(MADPhotosStickerScoreResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_asset, asset);
    v9->_stickerScore = score;
  }

  return v9;
}

@end