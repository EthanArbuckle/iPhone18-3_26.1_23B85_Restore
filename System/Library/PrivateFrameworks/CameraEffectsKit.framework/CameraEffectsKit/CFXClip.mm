@interface CFXClip
+ (BOOL)cfx_writeProxyImageToURL:(id)l fromImageAtURL:(id)rL maximumImageDimension:(unint64_t)dimension outColorSpace:(id *)space;
+ (id)createCaptureClip;
+ (id)defaultClip;
+ (void)cfx_createStillClipPreviewWithLocalURL:(id)l maximumImageDimension:(unint64_t)dimension effectStack:(id)stack completionHandler:(id)handler;
+ (void)cfx_createVideoClipWithLocalURL:(id)l effectStack:(id)stack completionHandler:(id)handler;
+ (void)createClipWithLocalURL:(id)l effectStack:(id)stack isVideo:(BOOL)video maximumImageDimension:(unint64_t)dimension completionHandler:(id)handler;
- (BOOL)cfx_isAssetInTrash;
- (BOOL)cfx_isAssetMissing;
- (BOOL)cfx_removeAllEffectsOfType:(int)type;
- (BOOL)hasMetadataAsset;
- (BOOL)hasPlayableEffectOfType:(int)type;
- (BOOL)isAssetLoaded;
- (BOOL)isAssetUnavailable;
- (BOOL)isEqual:(id)equal;
- (CFXClip)init;
- (CFXClip)initWithMediaItem:(id)item;
- (CGRect)playableRectInOutputSize:(CGSize)size;
- (CGRect)rectFromNormalizedPlayableRect:(CGRect)rect inOutputSize:(CGSize)size;
- (CGSize)mediaSize;
- (CGSize)playableMediaSizeWithTransform;
- (JFXMediaReaderCreationAVAssetTrackAttributes)arMetadataReaderAssetTrackAttributes;
- (JFXMediaReaderCreationAVAssetTrackAttributes)depthDataReaderAssetTrackAttributes;
- (NSMutableArray)animojis;
- (NSMutableArray)filters;
- (NSMutableArray)overlays;
- (NSString)description;
- (double)playableScaleInOutputSize:(CGSize)size;
- (id)cfx_clipType;
- (id)cfx_effectsOfType:(int)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)effectStack;
- (id)effectStackExcludingType:(int)type;
- (id)effectsOfType:(int)type;
- (id)stringForMediaType:(int64_t)type;
- (int)playableMediaContentMode;
- (int64_t)mediaInterfaceOrientationForDisplay;
- (int64_t)mediaType;
- (int64_t)playableAspectRatio;
- (void)addEffectStack:(id)stack;
- (void)cfx_addEffect:(id)effect;
- (void)dealloc;
- (void)removeAllEffects;
- (void)removeEffect:(id)effect;
- (void)setDuration:(int)duration;
- (void)setMediaInterfaceOrientationForDisplay:(int64_t)display;
- (void)setMediaItem:(id)item;
- (void)setPresentationTime:(int)time;
- (void)setTransformAnimation:(id)animation;
- (void)updateTransformPresentationTimeRange;
@end

@implementation CFXClip

- (CFXClip)init
{
  v11.receiver = self;
  v11.super_class = CFXClip;
  v2 = [(CFXClip *)&v11 init];
  v3 = v2;
  if (v2)
  {
    uuid = v2->_uuid;
    v2->_uuid = 0;

    *&v3->_presentationTime = 0;
    v3->_mediaStartOffset = 0;
    mediaItem = v3->_mediaItem;
    v3->_mediaItem = 0;

    filters = v3->_filters;
    v3->_filters = 0;

    overlays = v3->_overlays;
    v3->_overlays = 0;

    animojis = v3->_animojis;
    v3->_animojis = 0;

    transformAnimation = v3->_transformAnimation;
    v3->_transformAnimation = 0;

    v3->_transformInitialStartOffset = 0;
  }

  return v3;
}

- (CFXClip)initWithMediaItem:(id)item
{
  itemCopy = item;
  v6 = [(CFXClip *)self init];
  if (v6)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    uuid = v6->_uuid;
    v6->_uuid = uUIDString;

    objc_storeStrong(&v6->_mediaItem, item);
  }

  return v6;
}

- (id)stringForMediaType:(int64_t)type
{
  if (type > 5)
  {
    return @"What MediaType ? please update stringForMediaType if you added new type";
  }

  else
  {
    return off_278D7AAA0[type];
  }
}

- (id)cfx_clipType
{
  mediaType = [(CFXClip *)self mediaType];

  return [(CFXClip *)self stringForMediaType:mediaType];
}

- (NSString)description
{
  v58 = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = CFXClip;
  v3 = [(CFXClip *)&v54 description];
  v4 = MEMORY[0x277CCACA8];
  uuid = self->_uuid;
  presentationTime = self->_presentationTime;
  duration = self->_duration;
  cfx_clipType = [(CFXClip *)self cfx_clipType];
  mediaStartOffset = self->_mediaStartOffset;
  metadataURL = [(CFXClip *)self metadataURL];
  v11 = [v4 stringWithFormat:@"\r\tuuid: %@\r\tpresentationTime: %d\r\tduration: %d\r\tMediaType: %@\r\tmediaStartOffset: %d\r\tmetadata url: %@\r\tMedia: %@", uuid, presentationTime, duration, cfx_clipType, mediaStartOffset, metadataURL, self->_mediaItem];
  v12 = [v3 stringByAppendingString:v11];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  selfCopy = self;
  filters = [(CFXClip *)self filters];
  v14 = [filters countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v51;
    do
    {
      v17 = 0;
      v18 = v12;
      do
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(filters);
        }

        v19 = MEMORY[0x277CCACA8];
        v20 = [*(*(&v50 + 1) + 8 * v17) description];
        v21 = [v19 stringWithFormat:@"\r\t%@", v20];
        v12 = [v18 stringByAppendingString:v21];

        ++v17;
        v18 = v12;
      }

      while (v15 != v17);
      v15 = [filters countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v15);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  overlays = [(CFXClip *)selfCopy overlays];
  v23 = [overlays countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v47;
    do
    {
      v26 = 0;
      v27 = v12;
      do
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(overlays);
        }

        v28 = MEMORY[0x277CCACA8];
        v29 = [*(*(&v46 + 1) + 8 * v26) description];
        v30 = [v28 stringWithFormat:@"\r\t%@", v29];
        v12 = [v27 stringByAppendingString:v30];

        ++v26;
        v27 = v12;
      }

      while (v24 != v26);
      v24 = [overlays countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v24);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  animojis = [(CFXClip *)selfCopy animojis];
  v32 = [animojis countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v43;
    do
    {
      v35 = 0;
      v36 = v12;
      do
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(animojis);
        }

        v37 = MEMORY[0x277CCACA8];
        v38 = [*(*(&v42 + 1) + 8 * v35) description];
        v39 = [v37 stringWithFormat:@"\r\t%@", v38];
        v12 = [v36 stringByAppendingString:v39];

        ++v35;
        v36 = v12;
      }

      while (v33 != v35);
      v33 = [animojis countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v33);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v8 = *(v5 + 24);
  *(v5 + 24) = uUIDString;

  *(v5 + 8) = self->_presentationTime;
  *(v5 + 12) = self->_duration;
  *(v5 + 16) = self->_mediaStartOffset;
  v9 = [(JFXMediaItem *)self->_mediaItem copyWithZone:zone];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  objc_storeStrong((v5 + 40), self->_metadataURL);
  mutableDeepCopy = [(NSMutableArray *)self->_filters mutableDeepCopy];
  v12 = *(v5 + 72);
  *(v5 + 72) = mutableDeepCopy;

  mutableDeepCopy2 = [(NSMutableArray *)self->_overlays mutableDeepCopy];
  v14 = *(v5 + 80);
  *(v5 + 80) = mutableDeepCopy2;

  mutableDeepCopy3 = [(NSMutableArray *)self->_animojis mutableDeepCopy];
  v16 = *(v5 + 88);
  *(v5 + 88) = mutableDeepCopy3;

  v17 = [(NSData *)self->_originalAnimojiDataRepresentation copy];
  v18 = *(v5 + 48);
  *(v5 + 48) = v17;

  *(v5 + 56) = self->_originalAnimojiVersionNumber;
  if (self->_transformAnimation)
  {
    v19 = objc_alloc(MEMORY[0x277D416B0]);
    animationData = [(PVTransformAnimation *)self->_transformAnimation animationData];
    v21 = [animationData copy];
    v22 = [v19 initWithAnimation:v21];
    v23 = *(v5 + 64);
    *(v5 + 64) = v22;

    *(v5 + 20) = self->_transformInitialStartOffset;
    [(PVTransformAnimation *)self->_transformAnimation aspectRatio];
    [*(v5 + 64) setAspectRatio:?];
  }

  else
  {
    v24 = *(v5 + 64);
    *(v5 + 64) = 0;

    *(v5 + 20) = 0;
  }

  v25 = JFXLog_DebugClip();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(CFXClip *)self uuid];
    uuid2 = [v5 uuid];
    v29 = 138412546;
    v30 = uuid;
    v31 = 2112;
    v32 = uuid2;
    _os_log_impl(&dword_242A3B000, v25, OS_LOG_TYPE_DEFAULT, "[CFXClip copyWithZone:] %@ -> %@", &v29, 0x16u);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uuid = [(CFXClip *)self uuid];
      uuid2 = [(CFXClip *)v5 uuid];

      v8 = [uuid isEqualToString:uuid2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = JFXLog_DebugClip();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(CFXClip *)self uuid];
    *buf = 138412290;
    v7 = uuid;
    _os_log_impl(&dword_242A3B000, v3, OS_LOG_TYPE_DEFAULT, "[CFXClip dealloc] %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CFXClip;
  [(CFXClip *)&v5 dealloc];
}

+ (id)defaultClip
{
  v2 = objc_alloc_init(CFXClip);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [(CFXClip *)v2 setUuid:uUIDString];

  return v2;
}

+ (void)cfx_createVideoClipWithLocalURL:(id)l effectStack:(id)stack completionHandler:(id)handler
{
  stackCopy = stack;
  handlerCopy = handler;
  lCopy = l;
  v10 = +[CFXClip defaultClip];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__CFXClip_cfx_createVideoClipWithLocalURL_effectStack_completionHandler___block_invoke;
  v14[3] = &unk_278D7A9E0;
  v15 = v10;
  v16 = stackCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = stackCopy;
  v13 = v10;
  [JFXVideoMediaItem videoMediaItemWithLocalURL:lCopy delegate:0 completionHandler:v14];
}

void __73__CFXClip_cfx_createVideoClipWithLocalURL_effectStack_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  [v5 setMediaItem:a2];
  v6 = [*(a1 + 32) mediaItem];
  [*(a1 + 32) setDuration:{objc_msgSend(v6, "durationAt30fps")}];

  [*(a1 + 32) addEffectStack:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

+ (void)cfx_createStillClipPreviewWithLocalURL:(id)l maximumImageDimension:(unint64_t)dimension effectStack:(id)stack completionHandler:(id)handler
{
  lCopy = l;
  stackCopy = stack;
  handlerCopy = handler;
  v13 = lCopy;
  v14 = v13;
  if (dimension)
  {
    uRLByDeletingLastPathComponent = [v13 URLByDeletingLastPathComponent];
    v16 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"proxyImage.jpg"];

    v27 = 0;
    [self cfx_writeProxyImageToURL:v16 fromImageAtURL:v14 maximumImageDimension:dimension outColorSpace:&v27];
    dimension = v27;
  }

  else
  {
    v16 = v13;
  }

  v17 = +[CFXClip defaultClip];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __102__CFXClip_cfx_createStillClipPreviewWithLocalURL_maximumImageDimension_effectStack_completionHandler___block_invoke;
  v22[3] = &unk_278D7AA08;
  dimensionCopy = dimension;
  v24 = v17;
  v25 = stackCopy;
  v26 = handlerCopy;
  v18 = handlerCopy;
  v19 = stackCopy;
  v20 = v17;
  dimensionCopy2 = dimension;
  [JFXStillMediaItem stillMediaItemWithLocalURL:v16 delegate:0 completionHandler:v22];
}

void __102__CFXClip_cfx_createStillClipPreviewWithLocalURL_maximumImageDimension_effectStack_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  v6 = a2;
  [v6 setImageColorSpace:v5];
  [*(a1 + 40) setMediaItem:v6];

  [*(a1 + 40) setDuration:1];
  [*(a1 + 40) addEffectStack:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

+ (BOOL)cfx_writeProxyImageToURL:(id)l fromImageAtURL:(id)rL maximumImageDimension:(unint64_t)dimension outColorSpace:(id *)space
{
  v25[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v10 = CGImageSourceCreateWithURL(rL, 0);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
  if (!ImageAtIndex)
  {
    CFRelease(v11);
LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  v13 = ImageAtIndex;
  ColorSpace = CGImageGetColorSpace(ImageAtIndex);
  if (ColorSpace)
  {
    v15 = [MEMORY[0x277D415E0] jfx_getColorSpaceFromCGColorSpace:ColorSpace];
    *space = v15;
  }

  v16 = CGImageSourceCopyMetadataAtIndex(v11, 0, 0);
  v17 = CGImageDestinationCreateWithURL(lCopy, *MEMORY[0x277CE5D90], 1uLL, 0);
  if (!v17)
  {
    v22 = 0;
    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v18 = v17;
  v19 = *MEMORY[0x277CD2D40];
  v24[0] = *MEMORY[0x277CD2D48];
  v24[1] = v19;
  v25[0] = &unk_28556D7D8;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:dimension];
  v25[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  CGImageDestinationAddImageAndMetadata(v18, v13, v16, v21);
  v22 = CGImageDestinationFinalize(v18);
  CFRelease(v18);

  if (v16)
  {
LABEL_7:
    CFRelease(v16);
  }

LABEL_8:
  CGImageRelease(v13);
  CFRelease(v11);
LABEL_11:

  return v22;
}

+ (void)createClipWithLocalURL:(id)l effectStack:(id)stack isVideo:(BOOL)video maximumImageDimension:(unint64_t)dimension completionHandler:(id)handler
{
  videoCopy = video;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (videoCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __94__CFXClip_createClipWithLocalURL_effectStack_isVideo_maximumImageDimension_completionHandler___block_invoke;
    v16[3] = &unk_278D7AA30;
    v13 = &v17;
    v17 = handlerCopy;
    [CFXClip cfx_createVideoClipWithLocalURL:l effectStack:stack completionHandler:v16];
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __94__CFXClip_createClipWithLocalURL_effectStack_isVideo_maximumImageDimension_completionHandler___block_invoke_2;
    v14[3] = &unk_278D7AA30;
    v13 = &v15;
    v15 = handlerCopy;
    [CFXClip cfx_createStillClipPreviewWithLocalURL:l maximumImageDimension:dimension effectStack:stack completionHandler:v14];
  }
}

+ (id)createCaptureClip
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [CFXClip alloc];
  v3 = objc_alloc_init(JTCaptureMediaItem);
  v4 = [(CFXClip *)v2 initWithMediaItem:v3];

  v5 = JFXLog_DebugClip();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(CFXClip *)v4 uuid];
    v8 = 138412290;
    v9 = uuid;
    _os_log_impl(&dword_242A3B000, v5, OS_LOG_TYPE_DEFAULT, "[CFXClip createCaptureClip] %@", &v8, 0xCu);
  }

  return v4;
}

- (BOOL)isAssetUnavailable
{
  if ([(CFXClip *)self cfx_isAssetMissing])
  {
    return 1;
  }

  return [(CFXClip *)self cfx_isAssetInTrash];
}

- (BOOL)cfx_isAssetMissing
{
  mediaItem = [(CFXClip *)self mediaItem];
  v3 = [mediaItem mediaState] == 2;

  return v3;
}

- (BOOL)cfx_isAssetInTrash
{
  mediaItem = [(CFXClip *)self mediaItem];
  v3 = [mediaItem mediaState] == 3;

  return v3;
}

- (void)updateTransformPresentationTimeRange
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_transformAnimation)
  {
    v3 = +[CFXMediaSettings sharedInstance];
    timeScale = [v3 timeScale];

    v5 = timeScale ? timeScale : 30;
    presentationTime = self->_presentationTime;
    memset(&v19, 0, sizeof(v19));
    CMTimeMake(&start.start, [(CFXClip *)self transformInitialStartOffset]+ presentationTime - [(CFXClip *)self mediaStartOffset], v5);
    CMTimeMake(&duration.start, self->_duration, v5);
    CMTimeRangeMake(&v19, &start.start, &duration.start);
    transformAnimation = self->_transformAnimation;
    if (transformAnimation)
    {
      [(PVTransformAnimation *)transformAnimation presentationTimeRange];
    }

    else
    {
      memset(&start, 0, sizeof(start));
    }

    duration = v19;
    if (!CMTimeRangeEqual(&duration, &start))
    {
      start = v19;
      [(PVTransformAnimation *)self->_transformAnimation setPresentationTimeRange:&start];
      v8 = [(CFXClip *)self effectsOfType:2];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v13 + 1) + 8 * i) setTransformAnimation:self->_transformAnimation];
          }

          v10 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)setDuration:(int)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    [(CFXClip *)self updateTransformPresentationTimeRange];
  }
}

- (void)setPresentationTime:(int)time
{
  if (self->_presentationTime != time)
  {
    self->_presentationTime = time;
    [(CFXClip *)self updateTransformPresentationTimeRange];
  }
}

- (BOOL)isAssetLoaded
{
  mediaItem = [(CFXClip *)self mediaItem];
  v3 = [mediaItem mediaLoadState] == 1;

  return v3;
}

- (NSMutableArray)filters
{
  filters = self->_filters;
  if (!filters)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_filters;
    self->_filters = v4;

    filters = self->_filters;
  }

  return filters;
}

- (NSMutableArray)overlays
{
  overlays = self->_overlays;
  if (!overlays)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_overlays;
    self->_overlays = v4;

    overlays = self->_overlays;
  }

  return overlays;
}

- (NSMutableArray)animojis
{
  animojis = self->_animojis;
  if (!animojis)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_animojis;
    self->_animojis = v4;

    animojis = self->_animojis;
  }

  return animojis;
}

- (int64_t)mediaType
{
  mediaItem = [(CFXClip *)self mediaItem];
  mediaType = [mediaItem mediaType];

  return mediaType;
}

- (void)setMediaItem:(id)item
{
  objc_storeStrong(&self->_mediaItem, item);
  itemCopy = item;
  durationAt30fps = [itemCopy durationAt30fps];

  self->_duration = durationAt30fps;
}

- (CGSize)mediaSize
{
  if ([(CFXClip *)self mediaType]== 2)
  {
    mediaItem = [(CFXClip *)self mediaItem];
    [mediaItem sizeForQuality:0];
  }

  else
  {
    if ([(CFXClip *)self mediaType]!= 1)
    {
      v6 = *MEMORY[0x277CBF3A8];
      v7 = *(MEMORY[0x277CBF3A8] + 8);
      goto LABEL_7;
    }

    mediaItem = [(CFXClip *)self mediaItem];
    [mediaItem naturalSizeWithTransform];
  }

  v6 = v4;
  v7 = v5;

LABEL_7:
  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (int64_t)mediaInterfaceOrientationForDisplay
{
  mediaItem = [(CFXClip *)self mediaItem];
  interfaceOrientationForDisplay = [mediaItem interfaceOrientationForDisplay];

  return interfaceOrientationForDisplay;
}

- (void)setMediaInterfaceOrientationForDisplay:(int64_t)display
{
  v16 = *MEMORY[0x277D85DE8];
  mediaItem = [(CFXClip *)self mediaItem];
  [mediaItem setInterfaceOrientationForDisplay:display];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  animojis = [(CFXClip *)self animojis];
  v7 = [animojis countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(animojis);
        }

        [*(*(&v11 + 1) + 8 * v10++) setCaptureInterfaceOrientation:display];
      }

      while (v8 != v10);
      v8 = [animojis countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setTransformAnimation:(id)animation
{
  objc_storeStrong(&self->_transformAnimation, animation);
  animationCopy = animation;
  [(PVTransformAnimation *)self->_transformAnimation setAspectRatio:multiplierForAspectRatio([(CFXClip *)self playableAspectRatio])];

  [(CFXClip *)self updateTransformPresentationTimeRange];
}

- (id)cfx_effectsOfType:(int)type
{
  switch(type)
  {
    case 1:
      v4 = 72;
LABEL_7:
      v5 = *(&self->super.isa + v4);

      return v5;
    case 7:
      v4 = 88;
      goto LABEL_7;
    case 2:
      v4 = 80;
      goto LABEL_7;
  }

  v5 = 0;

  return v5;
}

- (void)cfx_addEffect:(id)effect
{
  effectCopy = effect;
  type = [effectCopy type];
  if (type == 7)
  {
    animojis = [(CFXClip *)self animojis];
    v12 = [animojis containsObject:effectCopy];

    if (v12)
    {
      goto LABEL_17;
    }

    if ([(CFXClip *)self mediaInterfaceOrientationForDisplay])
    {
      mediaInterfaceOrientationForDisplay = [(CFXClip *)self mediaInterfaceOrientationForDisplay];
    }

    else
    {
      mediaInterfaceOrientationForDisplay = +[JFXOrientationMonitor deviceInterfaceOrientation];
    }

    [effectCopy setCaptureInterfaceOrientation:mediaInterfaceOrientationForDisplay];
    animojis2 = [(CFXClip *)self animojis];
    v10 = effectCopy;
    filters = animojis2;
  }

  else
  {
    if (type == 2)
    {
      overlays = [(CFXClip *)self overlays];
      v9 = [overlays containsObject:effectCopy];

      if (v9)
      {
        goto LABEL_17;
      }

      overlays2 = [(CFXClip *)self overlays];
    }

    else
    {
      if (type != 1)
      {
        goto LABEL_17;
      }

      filters = [(CFXClip *)self filters];
      if ([filters containsObject:effectCopy])
      {
        goto LABEL_16;
      }

      mediaType = [(CFXClip *)self mediaType];

      if (mediaType == 3)
      {
        goto LABEL_17;
      }

      overlays2 = [(CFXClip *)self filters];
    }

    filters = overlays2;
    v10 = effectCopy;
  }

  [filters addObject:v10];
LABEL_16:

LABEL_17:
}

- (void)addEffectStack:(id)stack
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __26__CFXClip_addEffectStack___block_invoke;
  v3[3] = &unk_278D7AA58;
  v3[4] = self;
  [stack enumerateObjectsUsingBlock:v3];
}

void __26__CFXClip_addEffectStack___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copy];
  [v2 cfx_addEffect:v3];
}

- (void)removeEffect:(id)effect
{
  effectCopy = effect;
  type = [effectCopy type];
  switch(type)
  {
    case 7:
      animojis = [(CFXClip *)self animojis];
      v11 = [animojis containsObject:effectCopy];

      if (!v11)
      {
        break;
      }

      animojis2 = [(CFXClip *)self animojis];
      goto LABEL_10;
    case 2:
      overlays = [(CFXClip *)self overlays];
      v9 = [overlays containsObject:effectCopy];

      if (!v9)
      {
        break;
      }

      animojis2 = [(CFXClip *)self overlays];
      goto LABEL_10;
    case 1:
      filters = [(CFXClip *)self filters];
      v6 = [filters containsObject:effectCopy];

      if (v6)
      {
        animojis2 = [(CFXClip *)self filters];
LABEL_10:
        v12 = animojis2;
        [animojis2 removeObject:effectCopy];
      }

      break;
  }
}

- (void)removeAllEffects
{
  for (i = 0; i != 9; ++i)
  {
    [(CFXClip *)self cfx_removeAllEffectsOfType:i];
  }
}

- (BOOL)cfx_removeAllEffectsOfType:(int)type
{
  v3 = [(CFXClip *)self cfx_effectsOfType:*&type];
  v4 = [v3 count];
  if (v4)
  {
    [v3 removeAllObjects];
  }

  return v4 != 0;
}

- (id)effectsOfType:(int)type
{
  v3 = [(CFXClip *)self cfx_effectsOfType:*&type];
  v4 = [v3 copy];

  return v4;
}

- (id)effectStack
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(CFXClip *)self effectsOfType:1];
  [v3 addObjectsFromArray:v4];

  v5 = [(CFXClip *)self effectsOfType:7];
  [v3 addObjectsFromArray:v5];

  v6 = [(CFXClip *)self effectsOfType:2];
  [v3 addObjectsFromArray:v6];

  return v3;
}

- (id)effectStackExcludingType:(int)type
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (type == 1 || (-[CFXClip effectsOfType:](self, "effectsOfType:", 1), v6 = objc_claimAutoreleasedReturnValue(), [v5 addObjectsFromArray:v6], v6, type != 2))
  {
    v7 = [(CFXClip *)self effectsOfType:2];
    [v5 addObjectsFromArray:v7];
  }

  return v5;
}

- (BOOL)hasPlayableEffectOfType:(int)type
{
  if (type == 7)
  {
    [(CFXClip *)self cfx_effectsOfType:?];
  }

  else
  {
    [(CFXClip *)self playableEffectsOfType:?];
  }
  v3 = ;
  v4 = [v3 count];

  return v4 != 0;
}

- (int64_t)playableAspectRatio
{
  v2 = +[CFXMediaSettings sharedInstance];
  [v2 frameSize];
  v5 = aspectRatioForSize(v3, v4);

  return v5;
}

- (CGRect)playableRectInOutputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  playableAspectRatio = [(CFXClip *)self playableAspectRatio];
  playableAspectRatioPreservationMode = [(CFXClip *)self playableAspectRatioPreservationMode];

  v8 = rectWithAspectRatioAndPreservationModeInRectWithSize(playableAspectRatio, playableAspectRatioPreservationMode, width, height);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (double)playableScaleInOutputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = PVViewContentModeFromAspectRatioPreservationMode([(CFXClip *)self playableAspectRatioPreservationMode]);
  v7 = multiplierForAspectRatio([(CFXClip *)self playableAspectRatio]);
  v8 = 1.0;
  if (!v6)
  {
    goto LABEL_15;
  }

  v8 = 1.0;
  if (fabs(v7) < 0.0000001)
  {
    goto LABEL_15;
  }

  v9 = height * v7;
  if (v6 > 2)
  {
    if (v6 == 3 || v6 == 13)
    {
      v7 = width;
    }

    else if (v6 == 14)
    {
      v7 = height * v7;
    }

    goto LABEL_14;
  }

  if (v6 == 1)
  {
    if (width <= height)
    {
      v10 = height;
      if (v9 < width)
      {
        v10 = width / v7;
      }
    }

    else
    {
      v10 = width / v7;
      if (width / v7 < height)
      {
        v10 = height;
      }
    }

    goto LABEL_12;
  }

  if (v6 == 2)
  {
    v10 = width / v7;
    if (width / v7 > height)
    {
      v10 = height;
    }

LABEL_12:
    v7 = v7 * v10;
  }

LABEL_14:
  v8 = v7 / v9;
LABEL_15:
  if (fabs(v8) >= 0.0000001)
  {
    return v8;
  }

  else
  {
    return 1.0;
  }
}

- (CGRect)rectFromNormalizedPlayableRect:(CGRect)rect inOutputSize:(CGSize)size
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(CFXClip *)self playableRectInOutputSize:size.width, size.height];
  v9 = x * v8;
  v11 = y * v10;
  v12 = width * v8;
  v13 = height * v10;
  v15 = v14 + v9;
  v17 = v16 + v11;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v17;
  result.origin.x = v15;
  return result;
}

- (CGSize)playableMediaSizeWithTransform
{
  mediaType = [(CFXClip *)self mediaType];
  if (mediaType == 2)
  {
    mediaItem = [(CFXClip *)self mediaItem];
    [mediaItem sizeForQuality:0];
  }

  else if (mediaType == 1)
  {
    mediaItem = [(CFXClip *)self mediaItem];
    [mediaItem naturalSizeWithTransform];
  }

  else
  {
    mediaItem = +[CFXMediaSettings sharedInstance];
    [mediaItem frameSize];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (int)playableMediaContentMode
{
  mediaItem = [(CFXClip *)self mediaItem];
  playableMediaContentMode = [mediaItem playableMediaContentMode];

  return playableMediaContentMode;
}

- (BOOL)hasMetadataAsset
{
  metadataURL = [(CFXClip *)self metadataURL];
  v6 = 0;
  if (metadataURL)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [metadataURL path];
    v5 = [defaultManager fileExistsAtPath:path];

    if (v5)
    {
      v6 = 1;
    }
  }

  return v6;
}

- (JFXMediaReaderCreationAVAssetTrackAttributes)arMetadataReaderAssetTrackAttributes
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([(CFXClip *)self hasMetadataAsset])
  {
    metadataURL = [(CFXClip *)self metadataURL];
    v4 = MEMORY[0x277CE6650];
    v10 = *MEMORY[0x277CE6240];
    v11[0] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [v4 URLAssetWithURL:metadataURL options:v5];

    v7 = [JFXVideoWriter META_ARMetadataTrackForAsset:v6];
    if (v7)
    {
      v8 = [[JFXMediaReaderCreationAVAssetTrackAttributes alloc] initWithAssetTrack:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (JFXMediaReaderCreationAVAssetTrackAttributes)depthDataReaderAssetTrackAttributes
{
  v23[1] = *MEMORY[0x277D85DE8];
  if ([(CFXClip *)self hasMetadataAsset])
  {
    metadataURL = [(CFXClip *)self metadataURL];
    v4 = MEMORY[0x277CE6650];
    v22 = *MEMORY[0x277CE6240];
    v23[0] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v6 = [v4 URLAssetWithURL:metadataURL options:v5];

    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__8;
    v20 = __Block_byref_object_dispose__8;
    v21 = 0;
    v7 = dispatch_semaphore_create(0);
    v8 = *MEMORY[0x277CE5EA8];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__CFXClip_depthDataReaderAssetTrackAttributes__block_invoke;
    v13[3] = &unk_278D7AA80;
    v15 = &v16;
    v9 = v7;
    v14 = v9;
    [v6 loadTracksWithMediaType:v8 completionHandler:v13];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    if ([v17[5] count])
    {
      v10 = [v17[5] objectAtIndexedSubscript:0];
      v11 = [[JFXMediaReaderCreationAVAssetTrackAttributes alloc] initWithAssetTrack:v10];
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __46__CFXClip_depthDataReaderAssetTrackAttributes__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end