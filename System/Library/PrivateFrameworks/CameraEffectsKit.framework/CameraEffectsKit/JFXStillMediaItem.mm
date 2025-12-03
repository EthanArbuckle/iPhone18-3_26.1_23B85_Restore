@interface JFXStillMediaItem
+ (void)stillMediaItemWithLocalURL:(id)l delegate:(id)delegate completionHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (BOOL)isImageValid:(id)valid renderingIntent:(int)intent size:(CGSize *)size;
- (CGImage)hdrGainMapImageForURL:(id)l renderingIntent:(int)intent;
- (CGImage)imageForURL:(id)l renderingIntent:(int)intent;
- (CGImage)imageForURL:(id)l renderingIntent:(int)intent useAuxillaryMap:(BOOL)map;
- (CGSize)exportImageSize:(CGSize)size;
- (CGSize)imageSizeForRenderingIntent:(int)intent originalSize:(CGSize)size;
- (CGSize)playBackImageSize:(CGSize)size;
- (CGSize)sizeForMaxPixels:(double)pixels sourceSize:(CGSize)size;
- (CGSize)sizeForQuality:(int)quality;
- (CGSize)sourceImageSize;
- (CGSize)thumbImageSize:(CGSize)size;
- (double)JT_maximumPixelsForStillImage:(BOOL)image;
- (id)assetURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)info;
- (unint64_t)hash;
- (void)commonInit;
- (void)generateLocalURLForAsset;
- (void)updateAssetImageColorSpace;
@end

@implementation JFXStillMediaItem

+ (void)stillMediaItemWithLocalURL:(id)l delegate:(id)delegate completionHandler:(id)handler
{
  delegateCopy = delegate;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___JFXStillMediaItem;
  lCopy = l;
  v11 = objc_msgSendSuper2(&v14, sel_alloc);
  v12 = [v11 initWithURL:{lCopy, v14.receiver, v14.super_class}];

  if (v12)
  {
    [v12 setDelegate:delegateCopy];
    [v12 setMediaState:0];
    [v12 setMediaLoadState:0];
    [v12 commonInit];
    [v12 checkIfAssetIsMissing];
    [v12 updateAssetImageColorSpace];
    [v12 setMediaLoadState:1];
    delegate = [v12 delegate];
    [delegate mediaItemDidLoad:v12 error:0];

    handlerCopy[2](handlerCopy, v12, 0);
  }
}

- (void)commonInit
{
  [(JFXMediaItem *)self setMediaType:2];
  [(JFXMediaItem *)self setMediaLoadState:0];
  [(JFXStillMediaItem *)self setSourceImageSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  LODWORD(v3) = -1.0;
  [(JFXStillMediaItem *)self setMeteorPlusHeadroom:v3];

  [(JFXStillMediaItem *)self setHasGainMap:0];
}

- (void)generateLocalURLForAsset
{
  delegate = [(JFXMediaItem *)self delegate];
  [delegate mediaItemWillLoad:self];

  [(JFXMediaItem *)self setMediaLoadState:0];
  v4 = objc_alloc_init(MEMORY[0x277CD9850]);
  [v4 setNetworkAccessAllowed:1];
  [v4 setCanHandleAdjustmentData:&__block_literal_global_49];
  asset = [(JTAssetMediaItem *)self asset];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__JFXStillMediaItem_generateLocalURLForAsset__block_invoke_2;
  v6[3] = &unk_278D7C1B8;
  v6[4] = self;
  [asset requestContentEditingInputWithOptions:v4 completionHandler:v6];
}

void __45__JFXStillMediaItem_generateLocalURLForAsset__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__JFXStillMediaItem_generateLocalURLForAsset__block_invoke_3;
  v7[3] = &unk_278D79C88;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __45__JFXStillMediaItem_generateLocalURLForAsset__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) fullSizeImageURL];
  v7 = [v2 path];

  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"JTPhotoAsset://%@", v7];
  v5 = [v3 URLWithString:v4];
  [*(a1 + 40) setAssetLocalURL:v5];

  [*(a1 + 40) updateAssetImageColorSpace];
  [*(a1 + 40) setMediaLoadState:1];
  v6 = [*(a1 + 40) delegate];
  [v6 mediaItemDidLoad:*(a1 + 40) error:0];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = JFXStillMediaItem;
  v2 = [(JTAssetMediaItem *)&v4 description];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = JFXStillMediaItem;
  v4 = [(JTAssetMediaItem *)&v7 copyWithZone:zone];
  [(JFXStillMediaItem *)self sourceImageSize];
  [v4 setSourceImageSize:?];
  imageColorSpace = [(JFXStillMediaItem *)self imageColorSpace];
  [v4 setImageColorSpace:imageColorSpace];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = JFXStillMediaItem;
  return [(JTAssetMediaItem *)&v4 isEqual:equal];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = JFXStillMediaItem;
  return [(JTAssetMediaItem *)&v3 hash];
}

- (CGSize)imageSizeForRenderingIntent:(int)intent originalSize:(CGSize)size
{
  if (intent)
  {
    [(JFXStillMediaItem *)self exportImageSize:size.width, size.height];
  }

  else
  {
    [(JFXStillMediaItem *)self playBackImageSize:size.width, size.height];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGImage)imageForURL:(id)l renderingIntent:(int)intent
{
  v4 = *&intent;
  lCopy = l;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__20;
  v44 = __Block_byref_object_dispose__20;
  assetURL = [(JFXStillMediaItem *)self assetURL];
  if ([assetURL isFileURL])
  {
    v8 = MEMORY[0x277D755B8];
    assetURL2 = [(JFXStillMediaItem *)self assetURL];
    path = [assetURL2 path];
    v45 = [v8 imageWithContentsOfFile:path];
  }

  else
  {
    v45 = 0;
  }

  if ([(JFXMediaItem *)self mediaState]== 2 || [(JFXMediaItem *)self mediaState]== 3)
  {
    [(JFXStillMediaItem *)self setSourceImageSize:1080.0, 1080.0];
    v11 = MEMORY[0x277D755B8];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(JFXStillMediaItem *)self sizeForQuality:v4];
    v13 = [v11 imageWithColor:blackColor andSize:?];
    v14 = v41[5];
    v41[5] = v13;

LABEL_7:
    goto LABEL_8;
  }

  if (!v41[5])
  {
    blackColor = objc_alloc_init(MEMORY[0x277CD98A0]);
    [blackColor setResizeMode:2];
    [blackColor setVersion:0];
    [blackColor setNetworkAccessAllowed:0];
    [blackColor setSynchronous:1];
    [(JFXStillMediaItem *)self sourceImageSize];
    if (v29 == *MEMORY[0x277CBF3A8] && v28 == *(MEMORY[0x277CBF3A8] + 8))
    {
      asset = [(JTAssetMediaItem *)self asset];
      pixelWidth = [asset pixelWidth];
      asset2 = [(JTAssetMediaItem *)self asset];
      -[JFXStillMediaItem setSourceImageSize:](self, "setSourceImageSize:", pixelWidth, [asset2 pixelHeight]);
    }

    [(JFXStillMediaItem *)self sourceImageSize];
    [(JFXStillMediaItem *)self imageSizeForRenderingIntent:v4 originalSize:?];
    v34 = v33;
    v36 = v35;
    defaultManager = [MEMORY[0x277CD9898] defaultManager];
    asset3 = [(JTAssetMediaItem *)self asset];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __49__JFXStillMediaItem_imageForURL_renderingIntent___block_invoke;
    v39[3] = &unk_278D7C1E0;
    v39[4] = &v40;
    [defaultManager requestImageForAsset:asset3 targetSize:0 contentMode:blackColor options:v39 resultHandler:{v34, v36}];

    goto LABEL_7;
  }

  [(JFXStillMediaItem *)self sourceImageSize];
  if (v19 == *MEMORY[0x277CBF3A8] && v18 == *(MEMORY[0x277CBF3A8] + 8))
  {
    [v41[5] size];
    [(JFXStillMediaItem *)self setSourceImageSize:?];
  }

  [(JFXStillMediaItem *)self sourceImageSize];
  [(JFXStillMediaItem *)self imageSizeForRenderingIntent:v4 originalSize:?];
  v22 = v21;
  v24 = v23;
  [(JFXStillMediaItem *)self sourceImageSize];
  if (v26 != v22 || v25 != v24 || [v41[5] imageOrientation])
  {
    v27 = [v41[5] scaledImageEqualOrSmallerThanSize:1 maintainAspectRatio:1 normalizeOrientation:{v22, v24}];
    blackColor = v41[5];
    v41[5] = v27;
    goto LABEL_7;
  }

LABEL_8:
  v15 = v41[5];
  if (v15)
  {
    cGImage = [v15 CGImage];
    CGImageRetain(cGImage);
  }

  else
  {
    cGImage = 0;
  }

  _Block_object_dispose(&v40, 8);

  return cGImage;
}

void __49__JFXStillMediaItem_imageForURL_renderingIntent___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (CGImage)imageForURL:(id)l renderingIntent:(int)intent useAuxillaryMap:(BOOL)map
{
  if (map)
  {
    v6 = MEMORY[0x277CBEBC0];
    path = [l path];
    v8 = [v6 fileURLWithPath:path];

    v9 = CGImageSourceCreateWithURL(v8, 0);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, &unk_28556DA10);

    return ImageAtIndex;
  }

  else
  {

    return [(JFXStillMediaItem *)self imageForURL:l renderingIntent:*&intent];
  }
}

- (BOOL)isImageValid:(id)valid renderingIntent:(int)intent size:(CGSize *)size
{
  if (valid && size)
  {
    *size = *MEMORY[0x277CBF3A8];
  }

  return valid != 0;
}

- (CGImage)hdrGainMapImageForURL:(id)l renderingIntent:(int)intent
{
  v4 = MEMORY[0x277CBEBC0];
  path = [l path];
  v6 = [v4 fileURLWithPath:path];

  GainMapImageRefFromAssetURL = createGainMapImageRefFromAssetURL(v6);
  return GainMapImageRefFromAssetURL;
}

- (double)JT_maximumPixelsForStillImage:(BOOL)image
{
  imageCopy = image;
  if (JT_maximumPixelsForStillImage__onceToken != -1)
  {
    [JFXStillMediaItem JT_maximumPixelsForStillImage:];
    if (imageCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v11 = [currentDevice jfx_memorySize] > 1610612736;

    v9 = dbl_242B5BDD0[v11];
    return v9 * (v9 / 1.33333333);
  }

  if (!image)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (JT_maximumPixelsForStillImage__increasePlaybackQuality == 1)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    jfx_memorySize = [currentDevice2 jfx_memorySize];

    if (jfx_memorySize <= 1610612736)
    {
      v6 = 640.0;
    }

    else
    {
      v6 = 1080.0;
    }
  }

  else
  {
    v6 = 640.0;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v9 = v6 * v8;

  return v9 * (v9 / 1.33333333);
}

void __51__JFXStillMediaItem_JT_maximumPixelsForStillImage___block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  JT_maximumPixelsForStillImage__increasePlaybackQuality = [v0 BOOLForKey:@"lowPlaybackQuality"] ^ 1;
}

- (CGSize)sizeForMaxPixels:(double)pixels sourceSize:(CGSize)size
{
  v4 = size.width * size.height / pixels;
  if (v4 > 1.0)
  {
    v5 = sqrt(v4);
    v6 = size.width / v5;
    size.width = floorf(v6);
    *&v5 = size.height / v5;
    size.height = floorf(*&v5);
  }

  width = size.width;
  height = size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)playBackImageSize:(CGSize)size
{
  [(JFXStillMediaItem *)self JT_maximumPixelsForStillImage:1];

  [JFXStillMediaItem sizeForMaxPixels:"sizeForMaxPixels:sourceSize:" sourceSize:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)exportImageSize:(CGSize)size
{
  [(JFXStillMediaItem *)self JT_maximumPixelsForStillImage:0];

  [JFXStillMediaItem sizeForMaxPixels:"sizeForMaxPixels:sourceSize:" sourceSize:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)thumbImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7 * 75.0;

  [(JFXStillMediaItem *)self sizeForMaxPixels:v8 * v8 sourceSize:width, height];
  v10 = v9;
  v12 = v11;
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v15 = v14 * 80.0;

  if (v10 <= v12)
  {
    if (v10 < v15)
    {
      v17 = v12 * (v15 / v10);
      v12 = floorf(v17);
      v10 = v15;
    }
  }

  else if (v12 < v15)
  {
    v16 = v10 * (v15 / v12);
    v10 = floorf(v16);
    v12 = v15;
  }

  v18 = v10;
  v19 = v12;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)sizeForQuality:(int)quality
{
  [(JFXStillMediaItem *)self sourceImageSize];
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  if (v8 == *MEMORY[0x277CBF3A8] && v5 == v7)
  {
    assetURL = [(JFXStillMediaItem *)self assetURL];
    isFileURL = [assetURL isFileURL];

    if (isFileURL)
    {
      v12 = MEMORY[0x277D755B8];
      assetURL2 = [(JFXStillMediaItem *)self assetURL];
      path = [assetURL2 path];
      asset = [v12 imageWithContentsOfFile:path];

      [asset size];
      [(JFXStillMediaItem *)self setSourceImageSize:?];
    }

    else
    {
      asset = [(JTAssetMediaItem *)self asset];
      pixelWidth = [asset pixelWidth];
      asset2 = [(JTAssetMediaItem *)self asset];
      -[JFXStillMediaItem setSourceImageSize:](self, "setSourceImageSize:", pixelWidth, [asset2 pixelHeight]);
    }
  }

  if (quality > 1)
  {
    if (quality == 2)
    {
      [(JFXStillMediaItem *)self sourceImageSize];
      [(JFXStillMediaItem *)self thumbImageSize:?];
      goto LABEL_22;
    }

    if (quality == 3)
    {
      [(JFXStillMediaItem *)self sourceImageSize];
      goto LABEL_22;
    }
  }

  else
  {
    if (!quality)
    {
      [(JFXStillMediaItem *)self sourceImageSize];
      [(JFXStillMediaItem *)self playBackImageSize:?];
      goto LABEL_22;
    }

    if (quality == 1)
    {
      [(JFXStillMediaItem *)self sourceImageSize];
      [(JFXStillMediaItem *)self exportImageSize:?];
LABEL_22:
      v6 = v18;
      v7 = v19;
      goto LABEL_23;
    }
  }

  v20 = JFXLog_core();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [(JFXStillMediaItem *)quality sizeForQuality:v20];
  }

LABEL_23:
  v21 = v6;
  v22 = v7;
  result.height = v22;
  result.width = v21;
  return result;
}

- (id)assetURL
{
  assetIdentifier = [(JTAssetMediaItem *)self assetIdentifier];

  if (assetIdentifier)
  {
    [(JTAssetMediaItem *)self assetLocalURL];
  }

  else
  {
    [(JTLocalAssetMediaItem *)self localFileURL];
  }
  v4 = ;

  return v4;
}

- (void)updateAssetImageColorSpace
{
  assetURL = [(JFXStillMediaItem *)self assetURL];

  if (assetURL)
  {
    v4 = MEMORY[0x277CBEBC0];
    assetURL2 = [(JFXStillMediaItem *)self assetURL];
    path = [assetURL2 path];
    url = [v4 fileURLWithPath:path];

    v7 = CGImageSourceCreateWithURL(url, 0);
    if (v7)
    {
      v8 = v7;
      [(JFXStillMediaItem *)self setHasGainMap:hasGainMap(v7)];
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, 0, 0);
      if (ImageAtIndex)
      {
        v10 = ImageAtIndex;
        ColorSpace = CGImageGetColorSpace(ImageAtIndex);
        if (ColorSpace)
        {
          v12 = [MEMORY[0x277D415E0] jfx_getColorSpaceFromCGColorSpace:ColorSpace];
          [(JFXStillMediaItem *)self setImageColorSpace:v12];
        }

        CGImageRelease(v10);
      }

      CFRelease(v8);
    }

    imageColorSpace = [(JFXStillMediaItem *)self imageColorSpace];

    if (!imageColorSpace)
    {
      sRGBColorSpace = [MEMORY[0x277D415E0] sRGBColorSpace];
      [(JFXStillMediaItem *)self setImageColorSpace:sRGBColorSpace];
    }
  }
}

- (id)info
{
  v4.receiver = self;
  v4.super_class = JFXStillMediaItem;
  info = [(JTAssetMediaItem *)&v4 info];

  return info;
}

- (CGSize)sourceImageSize
{
  width = self->_sourceImageSize.width;
  height = self->_sourceImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)sizeForQuality:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "WARNING: sizeForStillQuality: does not understand your quality %d", v2, 8u);
}

@end