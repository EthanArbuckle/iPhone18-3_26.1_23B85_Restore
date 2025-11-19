@interface FlexSongProxy
- (BOOL)canPlay;
- (FlexSongProxy)initWithUID:(id)a3 songName:(id)a4 artistName:(id)a5 tagIDs:(id)a6 keywords:(id)a7 weightedKeywords:(id)a8 hidden:(BOOL)a9 recalled:(BOOL)a10 assets:(id)a11 audioEncoderPresetName:(id)a12 metadataVersion:(int64_t)a13 songFormat:(id)a14;
@end

@implementation FlexSongProxy

- (FlexSongProxy)initWithUID:(id)a3 songName:(id)a4 artistName:(id)a5 tagIDs:(id)a6 keywords:(id)a7 weightedKeywords:(id)a8 hidden:(BOOL)a9 recalled:(BOOL)a10 assets:(id)a11 audioEncoderPresetName:(id)a12 metadataVersion:(int64_t)a13 songFormat:(id)a14
{
  v20 = a11;
  v29.receiver = self;
  v29.super_class = FlexSongProxy;
  HIBYTE(v27) = a10;
  LOBYTE(v27) = a9;
  v21 = [(FlexSongBackend *)&v29 initWithUID:a3 songName:a4 artistName:a5 tagIDs:a6 keywords:a7 weightedKeywords:a8 hidden:v27 recalled:a12 audioEncoderPresetName:a13 metadataVersion:a14 songFormat:0 sampleRate:0 customOptions:?];
  v25 = v21;
  if (v21)
  {
    objc_msgSend_updateAssets_(v21, v22, v20, v23, v24);
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