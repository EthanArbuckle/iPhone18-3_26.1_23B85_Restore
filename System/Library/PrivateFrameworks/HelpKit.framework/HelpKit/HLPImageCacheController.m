@interface HLPImageCacheController
+ (id)defaultInMemoryImageCache;
+ (id)sharedInstance;
- (BOOL)isURLValid:(id)a3;
- (id)formattedDataWithData:(id)a3;
- (id)formattedDataWithFileURL:(id)a3;
- (id)getImageForPath:(id)a3;
- (id)imageFromMemoryCacheForPath:(id)a3;
- (id)newDataCache;
- (void)addInMemoryCacheForImage:(id)a3 identifier:(id)a4 cost:(unint64_t)a5;
- (void)addInMemoryCacheForImage:(id)a3 path:(id)a4 cost:(unint64_t)a5;
- (void)commonInit;
- (void)formattedDataWithFileURL:(id)a3 completionHandler:(id)a4;
- (void)removeAllDataCache;
- (void)removeInMemoryCache;
- (void)removeInMemoryCacheForPath:(id)a3;
@end

@implementation HLPImageCacheController

+ (id)sharedInstance
{
  if (sharedInstance_predicate_0 != -1)
  {
    +[HLPImageCacheController sharedInstance];
  }

  v3 = sharedInstance_gHLPImageCacheController;

  return v3;
}

uint64_t __41__HLPImageCacheController_sharedInstance__block_invoke()
{
  v0 = [(HLPDataCacheController *)[HLPImageCacheController alloc] initWithIdentifier:@"HLPImageCacheIdentifier" directoryName:@"com.apple.helpkit.Images" maxCacheSize:20971520 URLSessionDataType:4];
  v1 = sharedInstance_gHLPImageCacheController;
  sharedInstance_gHLPImageCacheController = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)defaultInMemoryImageCache
{
  if (defaultInMemoryImageCache_predicate != -1)
  {
    +[HLPImageCacheController defaultInMemoryImageCache];
  }

  v3 = defaultInMemoryImageCache_gInMemoryImageCache;

  return v3;
}

uint64_t __52__HLPImageCacheController_defaultInMemoryImageCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = defaultInMemoryImageCache_gInMemoryImageCache;
  defaultInMemoryImageCache_gInMemoryImageCache = v0;

  v2 = defaultInMemoryImageCache_gInMemoryImageCache;

  return [v2 setTotalCostLimit:10485760];
}

- (void)commonInit
{
  v4.receiver = self;
  v4.super_class = HLPImageCacheController;
  [(HLPDataCacheController *)&v4 commonInit];
  LODWORD(v3) = *MEMORY[0x277CCA798];
  [(HLPDataCacheController *)self setDefaultPriority:v3];
}

- (id)newDataCache
{
  v2 = objc_alloc_init(HLPDataCache);
  [(HLPDataCache *)v2 setCacheType:3];
  [(HLPDataCache *)v2 setMaxAge:345600];
  return v2;
}

- (void)removeAllDataCache
{
  v3.receiver = self;
  v3.super_class = HLPImageCacheController;
  [(HLPDataCacheController *)&v3 removeAllDataCache];
  [(HLPImageCacheController *)self removeInMemoryCache];
}

- (void)removeInMemoryCache
{
  v2 = +[HLPImageCacheController defaultInMemoryImageCache];
  [v2 removeAllObjects];
}

- (void)addInMemoryCacheForImage:(id)a3 path:(id)a4 cost:(unint64_t)a5
{
  v8 = a3;
  v9 = [a4 lastPathComponent];
  [(HLPImageCacheController *)self addInMemoryCacheForImage:v8 identifier:v9 cost:a5];
}

- (void)addInMemoryCacheForImage:(id)a3 identifier:(id)a4 cost:(unint64_t)a5
{
  v10 = a3;
  v7 = a4;
  if (v10)
  {
    v8 = +[HLPImageCacheController defaultInMemoryImageCache];
    v9 = v8;
    if (a5)
    {
      [v8 setObject:v10 forKey:v7 cost:a5];
    }

    else
    {
      [v8 setObject:v10 forKey:v7];
    }
  }
}

- (void)removeInMemoryCacheForPath:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[HLPImageCacheController defaultInMemoryImageCache];
    [v4 removeObjectForKey:v3];
  }
}

- (id)imageFromMemoryCacheForPath:(id)a3
{
  v3 = [a3 lastPathComponent];
  v4 = +[HLPImageCacheController defaultInMemoryImageCache];
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (id)getImageForPath:(id)a3
{
  v4 = a3;
  v5 = [(HLPImageCacheController *)self imageFromMemoryCacheForPath:v4];
  if (!v5)
  {
    v6 = [v4 lastPathComponent];
    v7 = [(HLPDataCacheController *)self dataCacheForIdentifier:v6];
    v8 = [(HLPDataCacheController *)self cacheFileURLForDataCache:v7];
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x277D755B8];
      v11 = [v8 path];
      v5 = [v10 imageWithContentsOfFile:v11];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isURLValid:(id)a3
{
  v4 = [a3 path];
  v5 = [(HLPImageCacheController *)self imageFromMemoryCacheForPath:v4];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v7 fileExistsAtPath:v4];
  }

  return v6;
}

- (void)formattedDataWithFileURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 path];
  v9 = [(HLPImageCacheController *)self imageFromMemoryCacheForPath:v8];
  if (v9)
  {
    v7[2](v7, v9, 0);
  }

  else if (v6 && ([MEMORY[0x277CCAA00] defaultManager], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "path"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "fileExistsAtPath:", v11), v11, v10, v12))
  {
    v13 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HLPImageCacheController_formattedDataWithFileURL_completionHandler___block_invoke;
    block[3] = &unk_2797074D8;
    v15 = v6;
    v16 = self;
    v17 = v7;
    dispatch_async(v13, block);
  }

  else
  {
    v7[2](v7, 0, 0);
  }
}

void __70__HLPImageCacheController_formattedDataWithFileURL_completionHandler___block_invoke(id *a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEA90]);
  v3 = [a1[4] path];
  v4 = [v2 initWithContentsOfFile:v3];

  v5 = [a1[5] formattedDataWithData:v4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HLPImageCacheController_formattedDataWithFileURL_completionHandler___block_invoke_2;
  block[3] = &unk_279706C10;
  v10 = v5;
  v6 = a1[6];
  v11 = v4;
  v12 = v6;
  v7 = v4;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __70__HLPImageCacheController_formattedDataWithFileURL_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    return (*(v3 + 16))(v3, v2, a1[5]);
  }

  else
  {
    return (*(v3 + 16))(v3, 0, 0);
  }
}

- (id)formattedDataWithFileURL:(id)a3
{
  v4 = [a3 path];
  v5 = [v4 lastPathComponent];
  v6 = [(HLPDataCacheController *)self cacheFileURLForIdentifier:v5];

  if (v6)
  {
    v7 = MEMORY[0x277D755B8];
    v8 = [v6 path];
    v9 = [v7 imageWithContentsOfFile:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)formattedDataWithData:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277D755B8] imageWithData:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end