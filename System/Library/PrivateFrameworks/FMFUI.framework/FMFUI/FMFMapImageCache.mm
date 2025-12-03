@interface FMFMapImageCache
+ (id)sharedInstance;
- (NSCache)_cache;
- (id)_imageForMap:(id)map;
- (id)_keyForHandles:(id)handles;
- (id)_orientationKey;
- (id)cachedMapForHandles:(id)handles;
- (void)cacheMap:(id)map forHandles:(id)handles;
- (void)dealloc;
@end

@implementation FMFMapImageCache

+ (id)sharedInstance
{
  if (sharedInstance_dispatch_predicate != -1)
  {
    +[FMFMapImageCache sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

void __34__FMFMapImageCache_sharedInstance__block_invoke()
{
  v0 = LogCategory_Daemon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_24A4E3000, v0, OS_LOG_TYPE_INFO, "Creating shared instance of FMFMapImageCache", v3, 2u);
  }

  v1 = objc_alloc_init(FMFMapImageCache);
  v2 = sharedInstance__instance;
  sharedInstance__instance = v1;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->__cache name:*MEMORY[0x277D76670] object:0];

  v4.receiver = self;
  v4.super_class = FMFMapImageCache;
  [(FMFMapImageCache *)&v4 dealloc];
}

- (void)cacheMap:(id)map forHandles:(id)handles
{
  mapCopy = map;
  v9 = [(FMFMapImageCache *)self _keyForHandles:handles];
  v7 = [(FMFMapImageCache *)self _imageForMap:mapCopy];

  if (v7)
  {
    _cache = [(FMFMapImageCache *)self _cache];
    [_cache setObject:v7 forKey:v9];
  }
}

- (id)cachedMapForHandles:(id)handles
{
  v4 = [(FMFMapImageCache *)self _keyForHandles:handles];
  _cache = [(FMFMapImageCache *)self _cache];
  v6 = [_cache objectForKey:v4];

  return v6;
}

- (id)_orientationKey
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if (([mEMORY[0x277D75128] statusBarOrientation] - 3) >= 2)
  {
    v3 = @"p";
  }

  else
  {
    v3 = @"l";
  }

  v4 = v3;

  return v3;
}

- (id)_keyForHandles:(id)handles
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC98];
  handlesCopy = handles;
  v6 = [v4 sortDescriptorWithKey:@"identifier" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v14[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v8 = [handlesCopy sortedArrayUsingDescriptors:v7];

  v9 = [v8 description];
  _orientationKey = [(FMFMapImageCache *)self _orientationKey];
  v11 = [v9 stringByAppendingString:_orientationKey];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_imageForMap:(id)map
{
  mapCopy = map;
  [mapCopy bounds];
  v10.width = v4;
  v10.height = v5;
  UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext)
  {
    layer = [mapCopy layer];
    [layer renderInContext:CurrentContext];

    CurrentContext = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return CurrentContext;
}

- (NSCache)_cache
{
  cache = self->__cache;
  if (!cache)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [(FMFMapImageCache *)self set_cache:v4];

    [(NSCache *)self->__cache setCountLimit:25];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self->__cache selector:sel_removeAllObjects name:*MEMORY[0x277D76670] object:0];

    cache = self->__cache;
  }

  return cache;
}

@end