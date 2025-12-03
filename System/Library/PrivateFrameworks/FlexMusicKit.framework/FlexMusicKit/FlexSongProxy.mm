@interface FlexSongProxy
- (BOOL)canPlay;
- (FlexSongProxy)initWithUID:(id)d songName:(id)name artistName:(id)artistName tagIDs:(id)ds keywords:(id)keywords weightedKeywords:(id)weightedKeywords hidden:(BOOL)hidden recalled:(BOOL)self0 assets:(id)self1 audioEncoderPresetName:(id)self2 metadataVersion:(int64_t)self3 songFormat:(id)self4;
@end

@implementation FlexSongProxy

- (FlexSongProxy)initWithUID:(id)d songName:(id)name artistName:(id)artistName tagIDs:(id)ds keywords:(id)keywords weightedKeywords:(id)weightedKeywords hidden:(BOOL)hidden recalled:(BOOL)self0 assets:(id)self1 audioEncoderPresetName:(id)self2 metadataVersion:(int64_t)self3 songFormat:(id)self4
{
  assetsCopy = assets;
  v29.receiver = self;
  v29.super_class = FlexSongProxy;
  HIBYTE(v27) = recalled;
  LOBYTE(v27) = hidden;
  v21 = [(FlexSongBackend *)&v29 initWithUID:d songName:name artistName:artistName tagIDs:ds keywords:keywords weightedKeywords:weightedKeywords hidden:v27 recalled:presetName audioEncoderPresetName:version metadataVersion:format songFormat:0 sampleRate:0 customOptions:?];
  v25 = v21;
  if (v21)
  {
    objc_msgSend_updateAssets_(v21, v22, assetsCopy, v23, v24);
  }

  return v25;
}

- (BOOL)canPlay
{
  v4 = objc_msgSend_existingAssetWithID_(self, a2, @"FMSongBundleAssetID", v2, v3);
  v9 = objc_msgSend_localURL(v4, v5, v6, v7, v8);
  v10 = v9 != 0;

  return v10;
}

@end