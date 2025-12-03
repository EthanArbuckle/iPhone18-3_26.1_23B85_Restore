@interface CFXMediaItem
- (CFXMediaItem)init;
- (CFXMediaItem)initWithCameraMode:(int64_t)mode clip:(id)clip assetMediaURL:(id)l assetMetadataURL:(id)rL cameraPosition:(int64_t)position;
- (CFXMediaItem)initWithType:(int64_t)type originalAssetURL:(id)l adjustmentsData:(id)data;
- (NSData)adjustmentsData;
- (void)CFX_updateCameraPositionForPhotoType;
- (void)adjustmentsData;
- (void)createClipForMediaType:(int64_t)type assetURL:(id)l cameraMode:(int64_t)mode effectStack:(id)stack;
- (void)setAdjustmentsData:(id)data;
- (void)setOriginalAssetURL:(id)l;
- (void)setType:(int64_t)type;
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

- (CFXMediaItem)initWithCameraMode:(int64_t)mode clip:(id)clip assetMediaURL:(id)l assetMetadataURL:(id)rL cameraPosition:(int64_t)position
{
  clipCopy = clip;
  lCopy = l;
  rLCopy = rL;
  v19.receiver = self;
  v19.super_class = CFXMediaItem;
  v16 = [(CFXMediaItem *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_cameraMode = mode;
    objc_storeStrong(&v16->_clip, clip);
    v17->_type = [clipCopy isVideo];
    objc_storeStrong(&v17->_originalAssetURL, l);
    objc_storeStrong(&v17->_metadataURL, rL);
    v17->_cameraPosition = position;
  }

  return v17;
}

- (CFXMediaItem)initWithType:(int64_t)type originalAssetURL:(id)l adjustmentsData:(id)data
{
  lCopy = l;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = CFXMediaItem;
  v11 = [(CFXMediaItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_originalAssetURL, l);
    [(CFXMediaItem *)v12 setAdjustmentsData:dataCopy];
    if (!(v12->_cameraPosition | type))
    {
      [(CFXMediaItem *)v12 CFX_updateCameraPositionForPhotoType];
    }
  }

  return v12;
}

- (NSData)adjustmentsData
{
  cameraMode = [(CFXMediaItem *)self cameraMode];
  clip = [(CFXMediaItem *)self clip];
  effectStack = [clip effectStack];

  v6 = [CFXMediaItemAdjustmentsData alloc];
  metadataURL = [(CFXMediaItem *)self metadataURL];
  v8 = [(CFXMediaItemAdjustmentsData *)v6 initWithCameraMode:cameraMode metadataURL:metadataURL cameraPosition:[(CFXMediaItem *)self cameraPosition] effectStack:effectStack];

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

- (void)setAdjustmentsData:(id)data
{
  dataCopy = data;
  [(CFXMediaItem *)self setAdjustmentsDataWasSet:1];
  if (dataCopy)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = +[CFXMediaItemAdjustmentsData secureCodingClassWhitelist];
    v14 = 0;
    v7 = [v5 unarchivedObjectOfClasses:v6 fromData:dataCopy error:&v14];
    v8 = v14;

    self->_cameraMode = [v7 cameraMode];
    metadataURL = [v7 metadataURL];
    metadataURL = self->_metadataURL;
    self->_metadataURL = metadataURL;

    self->_cameraPosition = [v7 cameraPosition];
    effectStack = [v7 effectStack];
  }

  else
  {
    effectStack = 0;
  }

  type = [(CFXMediaItem *)self type];
  originalAssetURL = [(CFXMediaItem *)self originalAssetURL];
  [(CFXMediaItem *)self createClipForMediaType:type assetURL:originalAssetURL cameraMode:[(CFXMediaItem *)self cameraMode] effectStack:effectStack];
}

- (void)setOriginalAssetURL:(id)l
{
  objc_storeStrong(&self->_originalAssetURL, l);
  lCopy = l;
  type = [(CFXMediaItem *)self type];
  cameraMode = [(CFXMediaItem *)self cameraMode];
  clip = [(CFXMediaItem *)self clip];
  effectStack = [clip effectStack];
  [(CFXMediaItem *)self createClipForMediaType:type assetURL:lCopy cameraMode:cameraMode effectStack:effectStack];
}

- (void)setType:(int64_t)type
{
  self->_type = type;
  originalAssetURL = [(CFXMediaItem *)self originalAssetURL];
  cameraMode = [(CFXMediaItem *)self cameraMode];
  clip = [(CFXMediaItem *)self clip];
  effectStack = [clip effectStack];
  [(CFXMediaItem *)self createClipForMediaType:type assetURL:originalAssetURL cameraMode:cameraMode effectStack:effectStack];
}

- (void)createClipForMediaType:(int64_t)type assetURL:(id)l cameraMode:(int64_t)mode effectStack:(id)stack
{
  lCopy = l;
  stackCopy = stack;
  if (lCopy | self->_clip)
  {
    if (![(CFXMediaItem *)self initializedWithoutSettingAllProperties]|| type != 2 && lCopy && [(CFXMediaItem *)self adjustmentsDataWasSet])
    {
      v12 = JFXMaximumVideoDimensionForCameraMode(mode);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __71__CFXMediaItem_createClipForMediaType_assetURL_cameraMode_effectStack___block_invoke;
      v15[3] = &unk_278D7B5C0;
      v15[4] = self;
      [CFXClip createClipWithLocalURL:lCopy effectStack:stackCopy isVideo:type == 1 maximumImageDimension:v12 completionHandler:v15];
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

    [(CFXClip *)self->_clip addEffectStack:stackCopy];
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
  selfCopy = self;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "Error encoding adjustments data: %{public}@", &v2, 0xCu);
}

@end