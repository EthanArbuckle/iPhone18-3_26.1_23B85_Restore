@interface GKImageSource
+ (id)cacheDirectoryForImageID:(id)a3;
+ (id)sharedCache;
+ (id)syncQueue;
+ (void)clearCache;
- (BOOL)shouldUseTestImage;
- (GKImageSource)initWithName:(id)a3 imageBrush:(id)a4;
- (GKUtilityService)utilityService;
- (UIImage)renderedDefaultImage;
- (id)cachedImageForIdentifier:(id)a3;
- (id)cachedImageForKey:(id)a3;
- (id)fastCachedImageForIdentifier:(id)a3;
- (id)fastCachedImageForKey:(id)a3;
- (id)fastCachedOrDefaultImageForForKey:(id)a3;
- (id)fastCachedOrDefaultImageForIdentifier:(id)a3;
- (id)processAndCacheImage:(id)a3 forIdentifier:(id)a4;
- (id)processAndCacheImageDataInContext:(id)a3 withImage:(id)a4 forIdentifier:(id)a5;
- (id)processAndCacheImageDataInContext:(id)a3 withImage:(id)a4 forKey:(id)a5;
- (id)renderedImageWithImage:(id)a3 defaultSize:(CGSize)a4 returnContext:(id *)a5;
- (id)renderedTestImage;
- (id)subsourceWithBrush:(id)a3;
- (void)_storeImage:(id)a3 cacheKey:(id)a4 path:(id)a5 context:(id)a6;
- (void)cacheImageFromContext:(id)a3 forIdentifier:(id)a4;
- (void)clearCachedImageForIdentifier:(id)a3;
- (void)dealloc;
- (void)validateFileSystemCache;
@end

@implementation GKImageSource

- (GKUtilityService)utilityService
{
  v2 = [MEMORY[0x277D0C010] daemonProxy];
  v3 = [v2 utilityService];

  return v3;
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
  v2 = [objc_opt_class() sharedCache];
  [v2 removeAllObjects];
}

- (GKImageSource)initWithName:(id)a3 imageBrush:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = GKImageSource;
  v9 = [(GKImageSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_imageBrush, a4);
    v11 = [objc_opt_class() sharedCache];
    cache = v10->_cache;
    v10->_cache = v11;
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKImageSource;
  [(GKImageSource *)&v4 dealloc];
}

- (id)subsourceWithBrush:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithName:self->_name imageBrush:v4];

  objc_storeStrong((v5 + 40), self->_defaultImage);
  objc_storeStrong((v5 + 16), self->_cache);
  *(v5 + 8) = self->_shouldRenderDefaultImageWithBrush;

  return v5;
}

+ (id)cacheDirectoryForImageID:(id)a3
{
  if (a3)
  {
    v4 = GKImageCacheRoot();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)renderedImageWithImage:(id)a3 defaultSize:(CGSize)a4 returnContext:(id *)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = [(GKImageSource *)self imageBrush];
  v11 = v10;
  if (v10)
  {
    [v10 scaleForInput:v9];
    v13 = v12;
    v14 = MEMORY[0x277CBF3A0];
    if (v9)
    {
      [v11 sizeForInput:v9];
      width = v15;
      height = v16;
    }

    v17 = *v14;
    v18 = v14[1];
    if (!a5 || (v19 = *a5) == 0)
    {
      v19 = [[GKImageContext alloc] initWithSize:0 scale:width options:height, v13];
    }

    [v11 drawInRect:-[GKImageContext CGContext](v19 withContext:"CGContext") input:{v9, v17, v18, width, height}];
    v20 = [(GKImageContext *)v19 image];
    if (a5)
    {
      v21 = v19;
      *a5 = v19;
    }
  }

  else
  {
    v20 = v9;
  }

  return v20;
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

- (id)fastCachedImageForKey:(id)a3
{
  v4 = a3;
  if ([(GKImageSource *)self shouldUseTestImage])
  {
    v5 = [(GKImageSource *)self renderedTestImage];
  }

  else
  {
    v6 = [v4 cacheKey];
    v7 = [(GKImageSource *)self cache];
    v5 = [v7 objectForKey:v6];
  }

  return v5;
}

- (id)fastCachedImageForIdentifier:(id)a3
{
  if (a3)
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

- (id)fastCachedOrDefaultImageForForKey:(id)a3
{
  v4 = [(GKImageSource *)self fastCachedImageForKey:a3];
  if (!v4)
  {
    v4 = [(GKImageSource *)self renderedDefaultImage];
  }

  return v4;
}

- (id)fastCachedOrDefaultImageForIdentifier:(id)a3
{
  v4 = [(GKImageSource *)self fastCachedImageForIdentifier:a3];
  if (!v4)
  {
    v4 = [(GKImageSource *)self renderedDefaultImage];
  }

  return v4;
}

- (id)cachedImageForKey:(id)a3
{
  v4 = a3;
  if ([(GKImageSource *)self shouldUseTestImage])
  {
    v5 = [(GKImageSource *)self renderedTestImage];
  }

  else
  {
    v6 = [v4 cacheKey];
    v7 = [(GKImageSource *)self cache];
    v8 = [v7 objectForKey:v6];

    if (v8)
    {
      v5 = v8;
    }

    else
    {
      [(GKImageSource *)self validateFileSystemCache];
      v9 = [v4 filePath];
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v9 isDirectory:0];
      v5 = [GKImageContext imageFromRawPixelsAtURL:v10];
      if (v5)
      {
        v11 = [(GKImageSource *)self cache];
        [v11 setObject:v5 forKey:v6];

        v12 = v5;
      }
    }
  }

  return v5;
}

- (id)cachedImageForIdentifier:(id)a3
{
  if (a3)
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

- (id)processAndCacheImage:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(GKImageSource *)self keyForImageIdentifier:a4];
  v8 = [(GKImageSource *)self processAndCacheImage:v6 forKey:v7];

  return v8;
}

- (void)_storeImage:(id)a3 cacheKey:(id)a4 path:(id)a5 context:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v11 stringByDeletingLastPathComponent];
  v28 = 0;
  v15 = [v13 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v28];
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

  v20 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v11 isDirectory:0];
  v27 = 0;
  v21 = [v12 writeRawPixelsToURL:v20 error:&v27];
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
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v22;
      _os_log_error_impl(&dword_24E4A8000, v24, OS_LOG_TYPE_ERROR, "_storeImage path:%@ context:%@ -- error:%@", buf, 0x20u);
      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (v9)
  {
LABEL_11:
    v25 = [(GKImageSource *)self cache];
    [v25 setObject:v9 forKey:v10];
  }

LABEL_12:
  _gkMarkFileAsPurgeable();
}

- (void)cacheImageFromContext:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v10 = [(GKImageSource *)self keyForImageIdentifier:a4];
  v7 = [v6 image];
  v8 = [v10 cacheKey];
  v9 = [v10 filePath];
  [(GKImageSource *)self _storeImage:v7 cacheKey:v8 path:v9 context:v6];
}

- (id)processAndCacheImageDataInContext:(id)a3 withImage:(id)a4 forKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 cacheKey];
  v12 = [v10 filePath];
  [(GKImageSource *)self validateFileSystemCache];
  if (v12)
  {
    v13 = [(GKImageSource *)self imageBrush];

    if (v13)
    {
      [v10 size];
      v30 = v8;
      v14 = [(GKImageSource *)self renderedImageWithImage:v9 defaultSize:&v30 returnContext:?];
      v15 = v30;

      if (!v14)
      {
        if (v15)
        {
          v16 = [(GKImageContext *)v15 image];
          if (v16)
          {
            v14 = v16;
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

          v14 = v9;
          v15 = 0;
        }
      }
    }

    else
    {
      v14 = v9;
      [v10 size];
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

    [(GKImageSource *)self _storeImage:v14 cacheKey:v11 path:v12 context:v15];
    v8 = v15;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)processAndCacheImageDataInContext:(id)a3 withImage:(id)a4 forIdentifier:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(GKImageSource *)self keyForImageIdentifier:a5];
  v11 = [(GKImageSource *)self processAndCacheImageDataInContext:v9 withImage:v8 forKey:v10];

  return v11;
}

- (void)clearCachedImageForIdentifier:(id)a3
{
  if (a3)
  {
    v6 = [(GKImageSource *)self keyForImageIdentifier:?];
    v4 = [v6 cacheKey];
    v5 = [(GKImageSource *)self cache];
    [v5 removeObjectForKey:v4];
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