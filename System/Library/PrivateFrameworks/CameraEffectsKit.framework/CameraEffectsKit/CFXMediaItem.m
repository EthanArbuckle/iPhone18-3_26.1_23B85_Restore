@interface CFXMediaItem
- (CFXMediaItem)init;
- (CFXMediaItem)initWithCameraMode:(int64_t)a3 clip:(id)a4 assetMediaURL:(id)a5 assetMetadataURL:(id)a6 cameraPosition:(int64_t)a7;
- (CFXMediaItem)initWithType:(int64_t)a3 originalAssetURL:(id)a4 adjustmentsData:(id)a5;
- (NSData)adjustmentsData;
- (void)CFX_updateCameraPositionForPhotoType;
- (void)adjustmentsData;
- (void)createClipForMediaType:(int64_t)a3 assetURL:(id)a4 cameraMode:(int64_t)a5 effectStack:(id)a6;
- (void)setAdjustmentsData:(id)a3;
- (void)setOriginalAssetURL:(id)a3;
- (void)setType:(int64_t)a3;
@end

@implementation CFXMediaItem

- (CFXMediaItem)init
{
  v3.receiver = self;
  v3.super_class = CFXMediaItem;
  result = [(CFXMediaItem *)&v3 init];
  if (result)
  {
    *&result->_type = xmmword_242B5BAF0;
    result->_cameraPosition = 0;
    result->_initializedWithoutSettingAllProperties = 1;
  }

  return result;
}

- (CFXMediaItem)initWithCameraMode:(int64_t)a3 clip:(id)a4 assetMediaURL:(id)a5 assetMetadataURL:(id)a6 cameraPosition:(int64_t)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = CFXMediaItem;
  v16 = [(CFXMediaItem *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_cameraMode = a3;
    objc_storeStrong(&v16->_clip, a4);
    v17->_type = [v13 isVideo];
    objc_storeStrong(&v17->_originalAssetURL, a5);
    objc_storeStrong(&v17->_metadataURL, a6);
    v17->_cameraPosition = a7;
  }

  return v17;
}

- (CFXMediaItem)initWithType:(int64_t)a3 originalAssetURL:(id)a4 adjustmentsData:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CFXMediaItem;
  v11 = [(CFXMediaItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_originalAssetURL, a4);
    [(CFXMediaItem *)v12 setAdjustmentsData:v10];
    if (!(v12->_cameraPosition | a3))
    {
      [(CFXMediaItem *)v12 CFX_updateCameraPositionForPhotoType];
    }
  }

  return v12;
}

- (NSData)adjustmentsData
{
  v3 = [(CFXMediaItem *)self cameraMode];
  v4 = [(CFXMediaItem *)self clip];
  v5 = [v4 effectStack];

  v6 = [CFXMediaItemAdjustmentsData alloc];
  v7 = [(CFXMediaItem *)self metadataURL];
  v8 = [(CFXMediaItemAdjustmentsData *)v6 initWithCameraMode:v3 metadataURL:v7 cameraPosition:[(CFXMediaItem *)self cameraPosition] effectStack:v5];

  v13 = 0;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v13];
  v10 = v13;
  if (v10)
  {
    v11 = JFXLog_core();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(CFXMediaItem *)v10 adjustmentsData];
    }
  }

  return v9;
}

- (void)setAdjustmentsData:(id)a3
{
  v4 = a3;
  [(CFXMediaItem *)self setAdjustmentsDataWasSet:1];
  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = +[CFXMediaItemAdjustmentsData secureCodingClassWhitelist];
    v14 = 0;
    v7 = [v5 unarchivedObjectOfClasses:v6 fromData:v4 error:&v14];
    v8 = v14;

    self->_cameraMode = [v7 cameraMode];
    v9 = [v7 metadataURL];
    metadataURL = self->_metadataURL;
    self->_metadataURL = v9;

    self->_cameraPosition = [v7 cameraPosition];
    v11 = [v7 effectStack];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(CFXMediaItem *)self type];
  v13 = [(CFXMediaItem *)self originalAssetURL];
  [(CFXMediaItem *)self createClipForMediaType:v12 assetURL:v13 cameraMode:[(CFXMediaItem *)self cameraMode] effectStack:v11];
}

- (void)setOriginalAssetURL:(id)a3
{
  objc_storeStrong(&self->_originalAssetURL, a3);
  v5 = a3;
  v6 = [(CFXMediaItem *)self type];
  v7 = [(CFXMediaItem *)self cameraMode];
  v9 = [(CFXMediaItem *)self clip];
  v8 = [v9 effectStack];
  [(CFXMediaItem *)self createClipForMediaType:v6 assetURL:v5 cameraMode:v7 effectStack:v8];
}

- (void)setType:(int64_t)a3
{
  self->_type = a3;
  v8 = [(CFXMediaItem *)self originalAssetURL];
  v5 = [(CFXMediaItem *)self cameraMode];
  v6 = [(CFXMediaItem *)self clip];
  v7 = [v6 effectStack];
  [(CFXMediaItem *)self createClipForMediaType:a3 assetURL:v8 cameraMode:v5 effectStack:v7];
}

- (void)createClipForMediaType:(int64_t)a3 assetURL:(id)a4 cameraMode:(int64_t)a5 effectStack:(id)a6
{
  v10 = a4;
  v11 = a6;
  if (v10 | self->_clip)
  {
    if (![(CFXMediaItem *)self initializedWithoutSettingAllProperties]|| a3 != 2 && v10 && [(CFXMediaItem *)self adjustmentsDataWasSet])
    {
      v12 = JFXMaximumVideoDimensionForCameraMode(a5);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __71__CFXMediaItem_createClipForMediaType_assetURL_cameraMode_effectStack___block_invoke;
      v15[3] = &unk_278D7B5C0;
      v15[4] = self;
      [CFXClip createClipWithLocalURL:v10 effectStack:v11 isVideo:a3 == 1 maximumImageDimension:v12 completionHandler:v15];
      if (!self->_cameraPosition && !self->_type)
      {
        [(CFXMediaItem *)self CFX_updateCameraPositionForPhotoType];
      }
    }
  }

  else
  {
    v13 = +[CFXClip createCaptureClip];
    clip = self->_clip;
    self->_clip = v13;

    [(CFXClip *)self->_clip addEffectStack:v11];
  }
}

- (void)CFX_updateCameraPositionForPhotoType
{
  v3 = CGImageSourceCreateWithURL(self->_originalAssetURL, 0);
  if (v3)
  {
    v4 = v3;
    v5 = CGImageSourceCopyPropertiesAtIndex(v3, 0, 0);
    if (v5)
    {
      v6 = *MEMORY[0x277CD3038];
      v7 = *MEMORY[0x277CD30C8];
      v8 = v5;
      v9 = [(__CFDictionary *)v8 objectForKeyedSubscript:v6];
      v10 = [v9 objectForKeyedSubscript:v7];
      v11 = [v10 containsString:@"front"];
      v12 = [v10 containsString:@"back"];
      if (v11)
      {
        v12 = 2;
      }

      self->_cameraPosition = v12;
      CFRelease(v8);
    }

    CFRelease(v4);
  }
}

- (void)adjustmentsData
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "Error encoding adjustments data: %{public}@", &v2, 0xCu);
}

@end