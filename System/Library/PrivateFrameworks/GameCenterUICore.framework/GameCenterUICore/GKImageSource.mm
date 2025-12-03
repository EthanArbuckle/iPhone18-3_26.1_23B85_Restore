@interface GKImageSource
+ (id)cacheDirectoryForImageID:(id)d;
+ (id)sharedCache;
+ (id)syncQueue;
+ (void)clearCache;
- (BOOL)shouldUseTestImage;
- (GKImageSource)initWithName:(id)name imageBrush:(id)brush;
- (GKUtilityService)utilityService;
- (UIImage)renderedDefaultImage;
- (id)cachedImageForIdentifier:(id)identifier;
- (id)cachedImageForKey:(id)key;
- (id)fastCachedImageForIdentifier:(id)identifier;
- (id)fastCachedImageForKey:(id)key;
- (id)fastCachedOrDefaultImageForForKey:(id)key;
- (id)fastCachedOrDefaultImageForIdentifier:(id)identifier;
- (id)processAndCacheImage:(id)image forIdentifier:(id)identifier;
- (id)processAndCacheImageDataInContext:(id)context withImage:(id)image forIdentifier:(id)identifier;
- (id)processAndCacheImageDataInContext:(id)context withImage:(id)image forKey:(id)key;
- (id)renderedImageWithImage:(id)image defaultSize:(CGSize)size returnContext:(id *)context;
- (id)renderedTestImage;
- (id)subsourceWithBrush:(id)brush;
- (void)_storeImage:(id)image cacheKey:(id)key path:(id)path context:(id)context;
- (void)cacheImageFromContext:(id)context forIdentifier:(id)identifier;
- (void)clearCachedImageForIdentifier:(id)identifier;
- (void)dealloc;
- (void)validateFileSystemCache;
@end

@implementation GKImageSource

- (GKUtilityService)utilityService
{
  daemonProxy = [MEMORY[0x277D0C010] daemonProxy];
  utilityService = [daemonProxy utilityService];

  return utilityService;
}

+ (id)syncQueue
{
  if (syncQueue_onceToken != -1)
  {
    +[GKImageSource syncQueue];
  }

  v3 = syncQueue_syncQueue;

  return v3;
}

uint64_t __26__GKImageSource_syncQueue__block_invoke()
{
  syncQueue_syncQueue = dispatch_queue_create("com.apple.gamekit.imagesource", 0);

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[GKImageSource sharedCache];
  }

  v3 = sharedCache_sCache;

  return v3;
}

uint64_t __28__GKImageSource_sharedCache__block_invoke()
{
  sharedCache_sCache = [[GKImageCache alloc] initWithName:@"com.apple.GameKit.imagecache" maxCount:50];

  return MEMORY[0x2821F96F8]();
}

+ (void)clearCache
{
  sharedCache = [objc_opt_class() sharedCache];
  [sharedCache removeAllObjects];
}

- (GKImageSource)initWithName:(id)name imageBrush:(id)brush
{
  nameCopy = name;
  brushCopy = brush;
  v14.receiver = self;
  v14.super_class = GKImageSource;
  v9 = [(GKImageSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_imageBrush, brush);
    sharedCache = [objc_opt_class() sharedCache];
    cache = v10->_cache;
    v10->_cache = sharedCache;
  }

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKImageSource;
  [(GKImageSource *)&v4 dealloc];
}

- (id)subsourceWithBrush:(id)brush
{
  brushCopy = brush;
  v5 = [objc_alloc(objc_opt_class()) initWithName:self->_name imageBrush:brushCopy];

  objc_storeStrong((v5 + 40), self->_defaultImage);
  objc_storeStrong((v5 + 16), self->_cache);
  *(v5 + 8) = self->_shouldRenderDefaultImageWithBrush;

  return v5;
}

+ (id)cacheDirectoryForImageID:(id)d
{
  if (d)
  {
    v4 = GKImageCacheRoot();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)renderedImageWithImage:(id)image defaultSize:(CGSize)size returnContext:(id *)context
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  imageBrush = [(GKImageSource *)self imageBrush];
  v11 = imageBrush;
  if (imageBrush)
  {
    [imageBrush scaleForInput:imageCopy];
    v13 = v12;
    v14 = MEMORY[0x277CBF3A0];
    if (imageCopy)
    {
      [v11 sizeForInput:imageCopy];
      width = v15;
      height = v16;
    }

    v17 = *v14;
    v18 = v14[1];
    if (!context || (v19 = *context) == 0)
    {
      v19 = [[GKImageContext alloc] initWithSize:0 scale:width options:height, v13];
    }

    [v11 drawInRect:-[GKImageContext CGContext](v19 withContext:"CGContext") input:{imageCopy, v17, v18, width, height}];
    image = [(GKImageContext *)v19 image];
    if (context)
    {
      v21 = v19;
      *context = v19;
    }
  }

  else
  {
    image = imageCopy;
  }

  return image;
}

- (UIImage)renderedDefaultImage
{
  if ([(GKImageSource *)self shouldRenderDefaultImageWithBrush]&& !self->_renderedDefaultImage && self->_defaultImage)
  {
    v3 = [(GKImageSource *)self renderedImageWithImage:?];
    [(GKImageSource *)self setRenderedDefaultImage:v3];
  }

  renderedDefaultImage = self->_renderedDefaultImage;
  if (!renderedDefaultImage)
  {
    renderedDefaultImage = self->_defaultImage;
  }

  v5 = renderedDefaultImage;

  return v5;
}

- (void)validateFileSystemCache
{
  if (validateFileSystemCache_onceToken != -1)
  {
    [GKImageSource validateFileSystemCache];
  }
}

void __40__GKImageSource_validateFileSystemCache__block_invoke()
{
  v33 = *MEMORY[0x277D85DE8];
  v0 = GKImageCacheRoot();
  v1 = [v0 stringByAppendingPathComponent:@"version.txt"];
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithContentsOfFile:v1 encoding:4 error:0];
  v3 = MEMORY[0x277D0C2A0];
  v4 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v0;
    _os_log_impl(&dword_24E4A8000, v4, OS_LOG_TYPE_INFO, "GKImageCacheRoot is: %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277D0C018] currentDevice];
  v7 = [v6 deviceType];
  v8 = [@"Blacktail6" stringByAppendingFormat:@"-%@", v7];

  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v8 stringByAppendingFormat:@"-%d", objc_msgSend(v9, "userInterfaceIdiom")];

  if (!v2 || ([v2 isEqualToString:v10] & 1) == 0)
  {
    v11 = *v3;
    if (!*v3)
    {
      v12 = GKOSLoggers();
      v11 = *v3;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v28 = v2;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v0;
      _os_log_impl(&dword_24E4A8000, v11, OS_LOG_TYPE_INFO, "Removing old image cache (old version '%@', now '%@'):%@", buf, 0x20u);
    }

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v14 = [v13 removeItemAtPath:v0 error:&v26];
    v15 = v26;
    v16 = MEMORY[0x277D0C290];
    if ((v14 & 1) == 0)
    {
      if (!*v3)
      {
        v17 = GKOSLoggers();
      }

      if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        __40__GKImageSource_validateFileSystemCache__block_invoke_cold_1();
      }
    }

    v25 = v15;
    v18 = [v13 createDirectoryAtPath:v0 withIntermediateDirectories:1 attributes:0 error:&v25];
    v19 = v25;

    if ((v18 & 1) == 0)
    {
      if (!*v3)
      {
        v20 = GKOSLoggers();
      }

      if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        __40__GKImageSource_validateFileSystemCache__block_invoke_cold_2();
      }
    }

    v24 = v19;
    v21 = [v10 writeToFile:v1 atomically:1 encoding:4 error:&v24];
    v22 = v24;

    if (v21)
    {
      _gkMarkFileAsPurgeable();
    }

    else
    {
      if (!*v3)
      {
        v23 = GKOSLoggers();
      }

      if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        __40__GKImageSource_validateFileSystemCache__block_invoke_cold_3();
      }
    }
  }
}

- (id)fastCachedImageForKey:(id)key
{
  keyCopy = key;
  if ([(GKImageSource *)self shouldUseTestImage])
  {
    renderedTestImage = [(GKImageSource *)self renderedTestImage];
  }

  else
  {
    cacheKey = [keyCopy cacheKey];
    cache = [(GKImageSource *)self cache];
    renderedTestImage = [cache objectForKey:cacheKey];
  }

  return renderedTestImage;
}

- (id)fastCachedImageForIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(GKImageSource *)self keyForImageIdentifier:?];
    v5 = [(GKImageSource *)self fastCachedImageForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fastCachedOrDefaultImageForForKey:(id)key
{
  renderedDefaultImage = [(GKImageSource *)self fastCachedImageForKey:key];
  if (!renderedDefaultImage)
  {
    renderedDefaultImage = [(GKImageSource *)self renderedDefaultImage];
  }

  return renderedDefaultImage;
}

- (id)fastCachedOrDefaultImageForIdentifier:(id)identifier
{
  renderedDefaultImage = [(GKImageSource *)self fastCachedImageForIdentifier:identifier];
  if (!renderedDefaultImage)
  {
    renderedDefaultImage = [(GKImageSource *)self renderedDefaultImage];
  }

  return renderedDefaultImage;
}

- (id)cachedImageForKey:(id)key
{
  keyCopy = key;
  if ([(GKImageSource *)self shouldUseTestImage])
  {
    renderedTestImage = [(GKImageSource *)self renderedTestImage];
  }

  else
  {
    cacheKey = [keyCopy cacheKey];
    cache = [(GKImageSource *)self cache];
    v8 = [cache objectForKey:cacheKey];

    if (v8)
    {
      renderedTestImage = v8;
    }

    else
    {
      [(GKImageSource *)self validateFileSystemCache];
      filePath = [keyCopy filePath];
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:filePath isDirectory:0];
      renderedTestImage = [GKImageContext imageFromRawPixelsAtURL:v10];
      if (renderedTestImage)
      {
        cache2 = [(GKImageSource *)self cache];
        [cache2 setObject:renderedTestImage forKey:cacheKey];

        v12 = renderedTestImage;
      }
    }
  }

  return renderedTestImage;
}

- (id)cachedImageForIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(GKImageSource *)self keyForImageIdentifier:?];
    v5 = [(GKImageSource *)self cachedImageForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldUseTestImage
{
  if (shouldUseTestImage_onceToken != -1)
  {
    [GKImageSource shouldUseTestImage];
  }

  return shouldUseTestImage_sUseTestImage;
}

void __35__GKImageSource_shouldUseTestImage__block_invoke()
{
  v0 = [MEMORY[0x277D0C1D8] shared];
  shouldUseTestImage_sUseTestImage = [v0 shouldUseTestIcons];
}

- (id)renderedTestImage
{
  v3 = +[GKUITheme sharedTheme];
  v4 = [v3 imageNamed:@"GKTestIcon"];

  if (v4)
  {
    [(GKImageSource *)self renderedImageWithImage:v4];
  }

  else
  {
    [(GKImageSource *)self renderedDefaultImage];
  }
  v5 = ;

  return v5;
}

- (id)processAndCacheImage:(id)image forIdentifier:(id)identifier
{
  imageCopy = image;
  v7 = [(GKImageSource *)self keyForImageIdentifier:identifier];
  v8 = [(GKImageSource *)self processAndCacheImage:imageCopy forKey:v7];

  return v8;
}

- (void)_storeImage:(id)image cacheKey:(id)key path:(id)path context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  keyCopy = key;
  pathCopy = path;
  contextCopy = context;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  v28 = 0;
  v15 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v28];
  v16 = v28;

  v17 = MEMORY[0x277D0C2A0];
  v18 = MEMORY[0x277D0C290];
  if ((v15 & 1) == 0)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v19 = GKOSLoggers();
    }

    if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      [GKImageSource _storeImage:cacheKey:path:context:];
    }
  }

  v20 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:pathCopy isDirectory:0];
  v27 = 0;
  v21 = [contextCopy writeRawPixelsToURL:v20 error:&v27];
  v22 = v27;
  if ((v21 & 1) == 0)
  {
    if (!*v17)
    {
      v23 = GKOSLoggers();
    }

    v24 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v30 = pathCopy;
      v31 = 2112;
      v32 = contextCopy;
      v33 = 2112;
      v34 = v22;
      _os_log_error_impl(&dword_24E4A8000, v24, OS_LOG_TYPE_ERROR, "_storeImage path:%@ context:%@ -- error:%@", buf, 0x20u);
      if (!imageCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (imageCopy)
  {
LABEL_11:
    cache = [(GKImageSource *)self cache];
    [cache setObject:imageCopy forKey:keyCopy];
  }

LABEL_12:
  _gkMarkFileAsPurgeable();
}

- (void)cacheImageFromContext:(id)context forIdentifier:(id)identifier
{
  contextCopy = context;
  v10 = [(GKImageSource *)self keyForImageIdentifier:identifier];
  image = [contextCopy image];
  cacheKey = [v10 cacheKey];
  filePath = [v10 filePath];
  [(GKImageSource *)self _storeImage:image cacheKey:cacheKey path:filePath context:contextCopy];
}

- (id)processAndCacheImageDataInContext:(id)context withImage:(id)image forKey:(id)key
{
  contextCopy = context;
  imageCopy = image;
  keyCopy = key;
  cacheKey = [keyCopy cacheKey];
  filePath = [keyCopy filePath];
  [(GKImageSource *)self validateFileSystemCache];
  if (filePath)
  {
    imageBrush = [(GKImageSource *)self imageBrush];

    if (imageBrush)
    {
      [keyCopy size];
      v30 = contextCopy;
      v14 = [(GKImageSource *)self renderedImageWithImage:imageCopy defaultSize:&v30 returnContext:?];
      v15 = v30;

      if (!v14)
      {
        if (v15)
        {
          image = [(GKImageContext *)v15 image];
          if (image)
          {
            v14 = image;
          }

          else
          {
            if (!*MEMORY[0x277D0C2A0])
            {
              v29 = GKOSLoggers();
            }

            if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
            {
              [GKImageSource processAndCacheImageDataInContext:withImage:forKey:];
            }

            v14 = 0;
          }
        }

        else
        {
          v26 = MEMORY[0x277D0C2A0];
          v27 = *MEMORY[0x277D0C2A0];
          if (!*MEMORY[0x277D0C2A0])
          {
            v28 = GKOSLoggers();
            v27 = *v26;
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            [GKImageSource processAndCacheImageDataInContext:v27 withImage:? forKey:?];
          }

          v14 = imageCopy;
          v15 = 0;
        }
      }
    }

    else
    {
      v14 = imageCopy;
      [keyCopy size];
      if (v17 == 0.0 || (v19 = v18, v18 == 0.0))
      {
        [v14 size];
        v20 = v21;
        v19 = v22;
      }

      else
      {
        v20 = v17;
      }

      v23 = [GKImageContext alloc];
      [v14 scale];
      v15 = [(GKImageContext *)v23 initWithSize:0 scale:v20 options:v19, v24];

      UIGraphicsPushContext([(GKImageContext *)v15 CGContext]);
      [v14 drawInRect:{0.0, 0.0, v20, v19}];
      UIGraphicsPopContext();
    }

    [(GKImageSource *)self _storeImage:v14 cacheKey:cacheKey path:filePath context:v15];
    contextCopy = v15;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)processAndCacheImageDataInContext:(id)context withImage:(id)image forIdentifier:(id)identifier
{
  imageCopy = image;
  contextCopy = context;
  v10 = [(GKImageSource *)self keyForImageIdentifier:identifier];
  v11 = [(GKImageSource *)self processAndCacheImageDataInContext:contextCopy withImage:imageCopy forKey:v10];

  return v11;
}

- (void)clearCachedImageForIdentifier:(id)identifier
{
  if (identifier)
  {
    v6 = [(GKImageSource *)self keyForImageIdentifier:?];
    cacheKey = [v6 cacheKey];
    cache = [(GKImageSource *)self cache];
    [cache removeObjectForKey:cacheKey];
  }
}

- (void)_storeImage:cacheKey:path:context:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_24E4A8000, v1, OS_LOG_TYPE_ERROR, "_storeImage failed to create directory at path:%@ due to error:%@", v2, 0x16u);
}

- (void)processAndCacheImageDataInContext:(void *)a1 withImage:forKey:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5() imageBrush];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_24E4A8000, v4, v5, "processAndCacheImageDataInContext no context passed in rendering image with imageBrush %@", v6, v7, v8, v9, v10);
}

@end