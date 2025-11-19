@interface CFXClip
+ (BOOL)cfx_writeProxyImageToURL:(id)a3 fromImageAtURL:(id)a4 maximumImageDimension:(unint64_t)a5 outColorSpace:(id *)a6;
+ (id)createCaptureClip;
+ (id)defaultClip;
+ (void)cfx_createStillClipPreviewWithLocalURL:(id)a3 maximumImageDimension:(unint64_t)a4 effectStack:(id)a5 completionHandler:(id)a6;
+ (void)cfx_createVideoClipWithLocalURL:(id)a3 effectStack:(id)a4 completionHandler:(id)a5;
+ (void)createClipWithLocalURL:(id)a3 effectStack:(id)a4 isVideo:(BOOL)a5 maximumImageDimension:(unint64_t)a6 completionHandler:(id)a7;
- (BOOL)cfx_isAssetInTrash;
- (BOOL)cfx_isAssetMissing;
- (BOOL)cfx_removeAllEffectsOfType:(int)a3;
- (BOOL)hasMetadataAsset;
- (BOOL)hasPlayableEffectOfType:(int)a3;
- (BOOL)isAssetLoaded;
- (BOOL)isAssetUnavailable;
- (BOOL)isEqual:(id)a3;
- (CFXClip)init;
- (CFXClip)initWithMediaItem:(id)a3;
- (CGRect)playableRectInOutputSize:(CGSize)a3;
- (CGRect)rectFromNormalizedPlayableRect:(CGRect)a3 inOutputSize:(CGSize)a4;
- (CGSize)mediaSize;
- (CGSize)playableMediaSizeWithTransform;
- (JFXMediaReaderCreationAVAssetTrackAttributes)arMetadataReaderAssetTrackAttributes;
- (JFXMediaReaderCreationAVAssetTrackAttributes)depthDataReaderAssetTrackAttributes;
- (NSMutableArray)animojis;
- (NSMutableArray)filters;
- (NSMutableArray)overlays;
- (NSString)description;
- (double)playableScaleInOutputSize:(CGSize)a3;
- (id)cfx_clipType;
- (id)cfx_effectsOfType:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)effectStack;
- (id)effectStackExcludingType:(int)a3;
- (id)effectsOfType:(int)a3;
- (id)stringForMediaType:(int64_t)a3;
- (int)playableMediaContentMode;
- (int64_t)mediaInterfaceOrientationForDisplay;
- (int64_t)mediaType;
- (int64_t)playableAspectRatio;
- (void)addEffectStack:(id)a3;
- (void)cfx_addEffect:(id)a3;
- (void)dealloc;
- (void)removeAllEffects;
- (void)removeEffect:(id)a3;
- (void)setDuration:(int)a3;
- (void)setMediaInterfaceOrientationForDisplay:(int64_t)a3;
- (void)setMediaItem:(id)a3;
- (void)setPresentationTime:(int)a3;
- (void)setTransformAnimation:(id)a3;
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

- (CFXClip)initWithMediaItem:(id)a3
{
  v5 = a3;
  v6 = [(CFXClip *)self init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];
    uuid = v6->_uuid;
    v6->_uuid = v8;

    objc_storeStrong(&v6->_mediaItem, a3);
  }

  return v6;
}

- (id)stringForMediaType:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"What MediaType ? please update stringForMediaType if you added new type";
  }

  else
  {
    return off_278D7AAA0[a3];
  }
}

- (id)cfx_clipType
{
  v3 = [(CFXClip *)self mediaType];

  return [(CFXClip *)self stringForMediaType:v3];
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
  v8 = [(CFXClip *)self cfx_clipType];
  mediaStartOffset = self->_mediaStartOffset;
  v10 = [(CFXClip *)self metadataURL];
  v11 = [v4 stringWithFormat:@"\r\tuuid: %@\r\tpresentationTime: %d\r\tduration: %d\r\tMediaType: %@\r\tmediaStartOffset: %d\r\tmetadata url: %@\r\tMedia: %@", uuid, presentationTime, duration, v8, mediaStartOffset, v10, self->_mediaItem];
  v12 = [v3 stringByAppendingString:v11];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v41 = self;
  v13 = [(CFXClip *)self filters];
  v14 = [v13 countByEnumeratingWithState:&v50 objects:v57 count:16];
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
          objc_enumerationMutation(v13);
        }

        v19 = MEMORY[0x277CCACA8];
        v20 = [*(*(&v50 + 1) + 8 * v17) description];
        v21 = [v19 stringWithFormat:@"\r\t%@", v20];
        v12 = [v18 stringByAppendingString:v21];

        ++v17;
        v18 = v12;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v15);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v22 = [(CFXClip *)v41 overlays];
  v23 = [v22 countByEnumeratingWithState:&v46 objects:v56 count:16];
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
          objc_enumerationMutation(v22);
        }

        v28 = MEMORY[0x277CCACA8];
        v29 = [*(*(&v46 + 1) + 8 * v26) description];
        v30 = [v28 stringWithFormat:@"\r\t%@", v29];
        v12 = [v27 stringByAppendingString:v30];

        ++v26;
        v27 = v12;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v24);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v31 = [(CFXClip *)v41 animojis];
  v32 = [v31 countByEnumeratingWithState:&v42 objects:v55 count:16];
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
          objc_enumerationMutation(v31);
        }

        v37 = MEMORY[0x277CCACA8];
        v38 = [*(*(&v42 + 1) + 8 * v35) description];
        v39 = [v37 stringWithFormat:@"\r\t%@", v38];
        v12 = [v36 stringByAppendingString:v39];

        ++v35;
        v36 = v12;
      }

      while (v33 != v35);
      v33 = [v31 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v33);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];
  v8 = *(v5 + 24);
  *(v5 + 24) = v7;

  *(v5 + 8) = self->_presentationTime;
  *(v5 + 12) = self->_duration;
  *(v5 + 16) = self->_mediaStartOffset;
  v9 = [(JFXMediaItem *)self->_mediaItem copyWithZone:a3];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  objc_storeStrong((v5 + 40), self->_metadataURL);
  v11 = [(NSMutableArray *)self->_filters mutableDeepCopy];
  v12 = *(v5 + 72);
  *(v5 + 72) = v11;

  v13 = [(NSMutableArray *)self->_overlays mutableDeepCopy];
  v14 = *(v5 + 80);
  *(v5 + 80) = v13;

  v15 = [(NSMutableArray *)self->_animojis mutableDeepCopy];
  v16 = *(v5 + 88);
  *(v5 + 88) = v15;

  v17 = [(NSData *)self->_originalAnimojiDataRepresentation copy];
  v18 = *(v5 + 48);
  *(v5 + 48) = v17;

  *(v5 + 56) = self->_originalAnimojiVersionNumber;
  if (self->_transformAnimation)
  {
    v19 = objc_alloc(MEMORY[0x277D416B0]);
    v20 = [(PVTransformAnimation *)self->_transformAnimation animationData];
    v21 = [v20 copy];
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
    v26 = [(CFXClip *)self uuid];
    v27 = [v5 uuid];
    v29 = 138412546;
    v30 = v26;
    v31 = 2112;
    v32 = v27;
    _os_log_impl(&dword_242A3B000, v25, OS_LOG_TYPE_DEFAULT, "[CFXClip copyWithZone:] %@ -> %@", &v29, 0x16u);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CFXClip *)self uuid];
      v7 = [(CFXClip *)v5 uuid];

      v8 = [v6 isEqualToString:v7];
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
    v4 = [(CFXClip *)self uuid];
    *buf = 138412290;
    v7 = v4;
    _os_log_impl(&dword_242A3B000, v3, OS_LOG_TYPE_DEFAULT, "[CFXClip dealloc] %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CFXClip;
  [(CFXClip *)&v5 dealloc];
}

+ (id)defaultClip
{
  v2 = objc_alloc_init(CFXClip);
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  [(CFXClip *)v2 setUuid:v4];

  return v2;
}

+ (void)cfx_createVideoClipWithLocalURL:(id)a3 effectStack:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = +[CFXClip defaultClip];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__CFXClip_cfx_createVideoClipWithLocalURL_effectStack_completionHandler___block_invoke;
  v14[3] = &unk_278D7A9E0;
  v15 = v10;
  v16 = v7;
  v17 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  [JFXVideoMediaItem videoMediaItemWithLocalURL:v9 delegate:0 completionHandler:v14];
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

+ (void)cfx_createStillClipPreviewWithLocalURL:(id)a3 maximumImageDimension:(unint64_t)a4 effectStack:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v10;
  v14 = v13;
  if (a4)
  {
    v15 = [v13 URLByDeletingLastPathComponent];
    v16 = [v15 URLByAppendingPathComponent:@"proxyImage.jpg"];

    v27 = 0;
    [a1 cfx_writeProxyImageToURL:v16 fromImageAtURL:v14 maximumImageDimension:a4 outColorSpace:&v27];
    a4 = v27;
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
  v23 = a4;
  v24 = v17;
  v25 = v11;
  v26 = v12;
  v18 = v12;
  v19 = v11;
  v20 = v17;
  v21 = a4;
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

+ (BOOL)cfx_writeProxyImageToURL:(id)a3 fromImageAtURL:(id)a4 maximumImageDimension:(unint64_t)a5 outColorSpace:(id *)a6
{
  v25[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = CGImageSourceCreateWithURL(a4, 0);
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
    *a6 = v15;
  }

  v16 = CGImageSourceCopyMetadataAtIndex(v11, 0, 0);
  v17 = CGImageDestinationCreateWithURL(v9, *MEMORY[0x277CE5D90], 1uLL, 0);
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
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
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

+ (void)createClipWithLocalURL:(id)a3 effectStack:(id)a4 isVideo:(BOOL)a5 maximumImageDimension:(unint64_t)a6 completionHandler:(id)a7
{
  v8 = a5;
  v11 = a7;
  v12 = v11;
  if (v8)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __94__CFXClip_createClipWithLocalURL_effectStack_isVideo_maximumImageDimension_completionHandler___block_invoke;
    v16[3] = &unk_278D7AA30;
    v13 = &v17;
    v17 = v11;
    [CFXClip cfx_createVideoClipWithLocalURL:a3 effectStack:a4 completionHandler:v16];
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __94__CFXClip_createClipWithLocalURL_effectStack_isVideo_maximumImageDimension_completionHandler___block_invoke_2;
    v14[3] = &unk_278D7AA30;
    v13 = &v15;
    v15 = v11;
    [CFXClip cfx_createStillClipPreviewWithLocalURL:a3 maximumImageDimension:a6 effectStack:a4 completionHandler:v14];
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
    v6 = [(CFXClip *)v4 uuid];
    v8 = 138412290;
    v9 = v6;
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
  v2 = [(CFXClip *)self mediaItem];
  v3 = [v2 mediaState] == 2;

  return v3;
}

- (BOOL)cfx_isAssetInTrash
{
  v2 = [(CFXClip *)self mediaItem];
  v3 = [v2 mediaState] == 3;

  return v3;
}

- (void)updateTransformPresentationTimeRange
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_transformAnimation)
  {
    v3 = +[CFXMediaSettings sharedInstance];
    v4 = [v3 timeScale];

    v5 = v4 ? v4 : 30;
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

- (void)setDuration:(int)a3
{
  if (self->_duration != a3)
  {
    self->_duration = a3;
    [(CFXClip *)self updateTransformPresentationTimeRange];
  }
}

- (void)setPresentationTime:(int)a3
{
  if (self->_presentationTime != a3)
  {
    self->_presentationTime = a3;
    [(CFXClip *)self updateTransformPresentationTimeRange];
  }
}

- (BOOL)isAssetLoaded
{
  v2 = [(CFXClip *)self mediaItem];
  v3 = [v2 mediaLoadState] == 1;

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
  v2 = [(CFXClip *)self mediaItem];
  v3 = [v2 mediaType];

  return v3;
}

- (void)setMediaItem:(id)a3
{
  objc_storeStrong(&self->_mediaItem, a3);
  v5 = a3;
  v6 = [v5 durationAt30fps];

  self->_duration = v6;
}

- (CGSize)mediaSize
{
  if ([(CFXClip *)self mediaType]== 2)
  {
    v3 = [(CFXClip *)self mediaItem];
    [v3 sizeForQuality:0];
  }

  else
  {
    if ([(CFXClip *)self mediaType]!= 1)
    {
      v6 = *MEMORY[0x277CBF3A8];
      v7 = *(MEMORY[0x277CBF3A8] + 8);
      goto LABEL_7;
    }

    v3 = [(CFXClip *)self mediaItem];
    [v3 naturalSizeWithTransform];
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
  v2 = [(CFXClip *)self mediaItem];
  v3 = [v2 interfaceOrientationForDisplay];

  return v3;
}

- (void)setMediaInterfaceOrientationForDisplay:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(CFXClip *)self mediaItem];
  [v5 setInterfaceOrientationForDisplay:a3];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(CFXClip *)self animojis];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setCaptureInterfaceOrientation:a3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setTransformAnimation:(id)a3
{
  objc_storeStrong(&self->_transformAnimation, a3);
  v5 = a3;
  [(PVTransformAnimation *)self->_transformAnimation setAspectRatio:multiplierForAspectRatio([(CFXClip *)self playableAspectRatio])];

  [(CFXClip *)self updateTransformPresentationTimeRange];
}

- (id)cfx_effectsOfType:(int)a3
{
  switch(a3)
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

- (void)cfx_addEffect:(id)a3
{
  v15 = a3;
  v4 = [v15 type];
  if (v4 == 7)
  {
    v11 = [(CFXClip *)self animojis];
    v12 = [v11 containsObject:v15];

    if (v12)
    {
      goto LABEL_17;
    }

    if ([(CFXClip *)self mediaInterfaceOrientationForDisplay])
    {
      v13 = [(CFXClip *)self mediaInterfaceOrientationForDisplay];
    }

    else
    {
      v13 = +[JFXOrientationMonitor deviceInterfaceOrientation];
    }

    [v15 setCaptureInterfaceOrientation:v13];
    v14 = [(CFXClip *)self animojis];
    v10 = v15;
    v5 = v14;
  }

  else
  {
    if (v4 == 2)
    {
      v8 = [(CFXClip *)self overlays];
      v9 = [v8 containsObject:v15];

      if (v9)
      {
        goto LABEL_17;
      }

      v7 = [(CFXClip *)self overlays];
    }

    else
    {
      if (v4 != 1)
      {
        goto LABEL_17;
      }

      v5 = [(CFXClip *)self filters];
      if ([v5 containsObject:v15])
      {
        goto LABEL_16;
      }

      v6 = [(CFXClip *)self mediaType];

      if (v6 == 3)
      {
        goto LABEL_17;
      }

      v7 = [(CFXClip *)self filters];
    }

    v5 = v7;
    v10 = v15;
  }

  [v5 addObject:v10];
LABEL_16:

LABEL_17:
}

- (void)addEffectStack:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __26__CFXClip_addEffectStack___block_invoke;
  v3[3] = &unk_278D7AA58;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

void __26__CFXClip_addEffectStack___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copy];
  [v2 cfx_addEffect:v3];
}

- (void)removeEffect:(id)a3
{
  v13 = a3;
  v4 = [v13 type];
  switch(v4)
  {
    case 7:
      v10 = [(CFXClip *)self animojis];
      v11 = [v10 containsObject:v13];

      if (!v11)
      {
        break;
      }

      v7 = [(CFXClip *)self animojis];
      goto LABEL_10;
    case 2:
      v8 = [(CFXClip *)self overlays];
      v9 = [v8 containsObject:v13];

      if (!v9)
      {
        break;
      }

      v7 = [(CFXClip *)self overlays];
      goto LABEL_10;
    case 1:
      v5 = [(CFXClip *)self filters];
      v6 = [v5 containsObject:v13];

      if (v6)
      {
        v7 = [(CFXClip *)self filters];
LABEL_10:
        v12 = v7;
        [v7 removeObject:v13];
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

- (BOOL)cfx_removeAllEffectsOfType:(int)a3
{
  v3 = [(CFXClip *)self cfx_effectsOfType:*&a3];
  v4 = [v3 count];
  if (v4)
  {
    [v3 removeAllObjects];
  }

  return v4 != 0;
}

- (id)effectsOfType:(int)a3
{
  v3 = [(CFXClip *)self cfx_effectsOfType:*&a3];
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

- (id)effectStackExcludingType:(int)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a3 == 1 || (-[CFXClip effectsOfType:](self, "effectsOfType:", 1), v6 = objc_claimAutoreleasedReturnValue(), [v5 addObjectsFromArray:v6], v6, a3 != 2))
  {
    v7 = [(CFXClip *)self effectsOfType:2];
    [v5 addObjectsFromArray:v7];
  }

  return v5;
}

- (BOOL)hasPlayableEffectOfType:(int)a3
{
  if (a3 == 7)
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

- (CGRect)playableRectInOutputSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CFXClip *)self playableAspectRatio];
  v7 = [(CFXClip *)self playableAspectRatioPreservationMode];

  v8 = rectWithAspectRatioAndPreservationModeInRectWithSize(v6, v7, width, height);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (double)playableScaleInOutputSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (CGRect)rectFromNormalizedPlayableRect:(CGRect)a3 inOutputSize:(CGSize)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CFXClip *)self playableRectInOutputSize:a4.width, a4.height];
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
  v3 = [(CFXClip *)self mediaType];
  if (v3 == 2)
  {
    v4 = [(CFXClip *)self mediaItem];
    [v4 sizeForQuality:0];
  }

  else if (v3 == 1)
  {
    v4 = [(CFXClip *)self mediaItem];
    [v4 naturalSizeWithTransform];
  }

  else
  {
    v4 = +[CFXMediaSettings sharedInstance];
    [v4 frameSize];
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
  v2 = [(CFXClip *)self mediaItem];
  v3 = [v2 playableMediaContentMode];

  return v3;
}

- (BOOL)hasMetadataAsset
{
  v2 = [(CFXClip *)self metadataURL];
  v6 = 0;
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [v2 path];
    v5 = [v3 fileExistsAtPath:v4];

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
    v3 = [(CFXClip *)self metadataURL];
    v4 = MEMORY[0x277CE6650];
    v10 = *MEMORY[0x277CE6240];
    v11[0] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [v4 URLAssetWithURL:v3 options:v5];

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
    v3 = [(CFXClip *)self metadataURL];
    v4 = MEMORY[0x277CE6650];
    v22 = *MEMORY[0x277CE6240];
    v23[0] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v6 = [v4 URLAssetWithURL:v3 options:v5];

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