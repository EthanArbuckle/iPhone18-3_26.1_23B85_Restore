@interface JFXMediaReaderCreationAVAssetTrackAttributes
- (JFXMediaReaderCreationAVAssetTrackAttributes)initWithAssetTrack:(id)a3;
@end

@implementation JFXMediaReaderCreationAVAssetTrackAttributes

- (JFXMediaReaderCreationAVAssetTrackAttributes)initWithAssetTrack:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = JFXMediaReaderCreationAVAssetTrackAttributes;
  v6 = [(JFXMediaReaderCreationAVAssetTrackAttributes *)&v10 init];
  if (v6)
  {
    v7 = [v5 asset];
    asset = v6->_asset;
    v6->_asset = v7;

    objc_storeStrong(&v6->_assetTrack, a3);
  }

  return v6;
}

@end