@interface JFXMediaReaderCreationAVAssetTrackAttributes
- (JFXMediaReaderCreationAVAssetTrackAttributes)initWithAssetTrack:(id)track;
@end

@implementation JFXMediaReaderCreationAVAssetTrackAttributes

- (JFXMediaReaderCreationAVAssetTrackAttributes)initWithAssetTrack:(id)track
{
  trackCopy = track;
  v10.receiver = self;
  v10.super_class = JFXMediaReaderCreationAVAssetTrackAttributes;
  v6 = [(JFXMediaReaderCreationAVAssetTrackAttributes *)&v10 init];
  if (v6)
  {
    asset = [trackCopy asset];
    asset = v6->_asset;
    v6->_asset = asset;

    objc_storeStrong(&v6->_assetTrack, track);
  }

  return v6;
}

@end