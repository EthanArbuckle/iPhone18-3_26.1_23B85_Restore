@interface PBUIWallpaperCache
+ (id)wallpaperCache;
- (PBUIWallpaperCache)initWithOptions:(id)options;
- (id)colorBoxesForKey:(id)key generatingIfNeceesaryFromImage:(id)image;
- (id)imageURLForKey:(id)key;
- (void)removeEverythingWithCompletion:(id)completion;
@end

@implementation PBUIWallpaperCache

+ (id)wallpaperCache
{
  if (wallpaperCache_once != -1)
  {
    +[PBUIWallpaperCache wallpaperCache];
  }

  v3 = wallpaperCache_cache;

  return v3;
}

void __36__PBUIWallpaperCache_wallpaperCache__block_invoke()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  v1 = [v0 isEphemeralMultiUser];

  if (v1)
  {
    [MEMORY[0x277CF0CA0] pathProviderForSystemContainerForCurrentProcess];
  }

  else
  {
    [MEMORY[0x277CF0CA0] pathProviderForCurrentContainer];
  }
  v5 = ;
  v2 = [MEMORY[0x277CF0D70] optionsWithContainerPathProvider:v5];
  v3 = [[PBUIWallpaperCache alloc] initWithOptions:v2];
  v4 = wallpaperCache_cache;
  wallpaperCache_cache = v3;
}

- (PBUIWallpaperCache)initWithOptions:(id)options
{
  optionsCopy = options;
  v28.receiver = self;
  v28.super_class = PBUIWallpaperCache;
  v5 = [(PBUIWallpaperCache *)&v28 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [objc_alloc(MEMORY[0x277CF0D68]) initWithUniqueIdentifier:@"Wallpaper" options:optionsCopy];
  imageCache = v5->_imageCache;
  v5->_imageCache = v6;

  containerPathProvider = [optionsCopy containerPathProvider];
  cachesPath = [containerPathProvider cachesPath];

  v10 = [cachesPath URLByAppendingPathComponent:@"MappedImageCache"];
  v11 = [v10 URLByAppendingPathComponent:@"Wallpaper"];

  objc_storeStrong(&v5->_imageCachePath, v11);
  containerPathProvider2 = [optionsCopy containerPathProvider];
  cachesPath2 = [containerPathProvider2 cachesPath];
  path = [cachesPath2 path];
  v15 = [path stringByAppendingPathComponent:@"com.apple.springboard"];
  v16 = [v15 stringByAppendingPathComponent:@"WallpaperColorBoxesCache"];

  if (v16)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v27 = 0;
    v18 = [defaultManager createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v27];
    v19 = v27;

    if (v18)
    {
      path = v5->_path;
      v5->_path = v16;
      v21 = v16;

      v22 = BSDispatchQueueCreateWithQualityOfService();
      queue = v5->_queue;
      v5->_queue = v22;

LABEL_5:
      v24 = v5;
      goto LABEL_10;
    }
  }

  else
  {
    v19 = 0;
  }

  v25 = PBUILogCommon();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [(PBUIWallpaperCache *)v16 initWithOptions:v19, v25];
  }

  v24 = 0;
LABEL_10:

  return v24;
}

- (id)imageURLForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = [(NSURL *)self->_imageCachePath URLByAppendingPathComponent:keyCopy];
    v6 = [v5 URLByAppendingPathExtension:@"cpbitmap"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v6 path];
    v9 = [defaultManager fileExistsAtPath:path];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (id)colorBoxesForKey:(id)key generatingIfNeceesaryFromImage:(id)image
{
  keyCopy = key;
  imageCopy = image;
  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  if ([mEMORY[0x277CF0CA8] deviceClass])
  {
    v9 = soft_PUIFeatureEnabled(0);

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [keyCopy stringByAppendingPathExtension:@".colorboxes"];
      v13 = [(NSString *)self->_path stringByAppendingPathComponent:v12];
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__1;
      v32 = __Block_byref_object_dispose__1;
      v33 = 0;
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__PBUIWallpaperCache_colorBoxesForKey_generatingIfNeceesaryFromImage___block_invoke;
      block[3] = &unk_278362640;
      v27 = &v28;
      v15 = v13;
      v26 = v15;
      dispatch_sync(queue, block);
      if (!v29[5] || ([MEMORY[0x277CCAAC8] unarchivedObjectOfClass:getPLKColorBoxesClass() fromData:v29[5] error:0], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v16 = [getPLKColorBoxesClass() colorBoxesForImage:imageCopy];
        v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:0];
        v18 = self->_queue;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __70__PBUIWallpaperCache_colorBoxesForKey_generatingIfNeceesaryFromImage___block_invoke_2;
        v22[3] = &unk_2783622E0;
        v23 = v17;
        v24 = v15;
        v19 = v17;
        dispatch_async(v18, v22);
      }

      v20 = v26;
      v10 = v16;

      _Block_object_dispose(&v28, 8);
      objc_autoreleasePoolPop(v11);
    }
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

uint64_t __70__PBUIWallpaperCache_colorBoxesForKey_generatingIfNeceesaryFromImage___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:*(a1 + 32) options:1 error:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)removeEverythingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  dispatch_group_enter(v5);
  v6 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PBUIWallpaperCache_removeEverythingWithCompletion___block_invoke;
  block[3] = &unk_278362668;
  v20 = completionCopy;
  v7 = completionCopy;
  dispatch_group_notify(v5, v6, block);

  imageCache = self->_imageCache;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__PBUIWallpaperCache_removeEverythingWithCompletion___block_invoke_2;
  v17[3] = &unk_278361E18;
  v9 = v5;
  v18 = v9;
  [(BSUIMappedImageCache *)imageCache removeAllImagesWithCompletion:v17];
  v10 = self->_path;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__PBUIWallpaperCache_removeEverythingWithCompletion___block_invoke_3;
  v14[3] = &unk_2783622E0;
  v15 = v10;
  v16 = v9;
  v12 = v9;
  v13 = v10;
  dispatch_async(queue, v14);
}

uint64_t __53__PBUIWallpaperCache_removeEverythingWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __53__PBUIWallpaperCache_removeEverythingWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtPath:*(a1 + 32) error:0];
  [v2 createDirectoryAtPath:*(a1 + 32) withIntermediateDirectories:1 attributes:0 error:0];
  dispatch_group_leave(*(a1 + 40));
}

- (void)initWithOptions:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[PBUIWallpaperCache initWithOptions:]";
  v5 = 2114;
  v6 = a1;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_21E67D000, log, OS_LOG_TYPE_ERROR, "Error in %s: Couldn't create directory at %{public}@ with error %{public}@", &v3, 0x20u);
}

@end