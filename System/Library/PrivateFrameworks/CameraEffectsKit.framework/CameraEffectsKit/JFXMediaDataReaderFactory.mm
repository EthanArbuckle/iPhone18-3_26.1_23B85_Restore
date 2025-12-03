@interface JFXMediaDataReaderFactory
+ (JFXMediaDataReaderFactory)sharedInstance;
- (id)createARMetadataReaderWithCreationAttributesProvider:(id)provider name:(id)name;
- (id)createDepthDataReaderWithCreationAttributesProvider:(id)provider name:(id)name;
@end

@implementation JFXMediaDataReaderFactory

+ (JFXMediaDataReaderFactory)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[JFXMediaDataReaderFactory sharedInstance];
  }

  v3 = sharedInstance_sInstance_0;

  return v3;
}

uint64_t __43__JFXMediaDataReaderFactory_sharedInstance__block_invoke()
{
  sharedInstance_sInstance_0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)createARMetadataReaderWithCreationAttributesProvider:(id)provider name:(id)name
{
  nameCopy = name;
  arMetadataReaderAssetTrackAttributes = [provider arMetadataReaderAssetTrackAttributes];
  if (arMetadataReaderAssetTrackAttributes)
  {
    v7 = [JFXAVMediaMetaDataReader alloc];
    assetTrack = [arMetadataReaderAssetTrackAttributes assetTrack];
    v9 = [(JFXAVMediaDataReader *)v7 initWithAVAssetTrack:assetTrack withName:nameCopy];

    v10 = [[JFXARMetadataMediaReader alloc] initWithMetadataReader:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createDepthDataReaderWithCreationAttributesProvider:(id)provider name:(id)name
{
  nameCopy = name;
  depthDataReaderAssetTrackAttributes = [provider depthDataReaderAssetTrackAttributes];
  if (depthDataReaderAssetTrackAttributes)
  {
    v7 = [JFXAVMediaVideoTrackReader alloc];
    assetTrack = [depthDataReaderAssetTrackAttributes assetTrack];
    v9 = [(JFXAVMediaDataReader *)v7 initWithAVAssetTrack:assetTrack withName:nameCopy];

    v10 = [[JFXDepthDataMediaReader alloc] initWithVideoTrackReader:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end