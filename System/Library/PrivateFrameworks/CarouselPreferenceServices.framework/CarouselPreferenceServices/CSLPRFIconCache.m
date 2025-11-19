@interface CSLPRFIconCache
+ (id)sharedIconCache;
- (CSLPRFIconCache)init;
- (id)_loadMMappedImageWithName:(id)a3;
- (id)_path;
- (id)_pathForIconName:(id)a3;
- (id)iconForName:(id)a3 fallBackToPersistentStoreIfNecessary:(BOOL)a4;
- (void)_writeMMappedImage:(id)a3 withName:(id)a4;
- (void)setIcon:(id)a3 forName:(id)a4;
@end

@implementation CSLPRFIconCache

- (void)_writeMMappedImage:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CSLPRFIconCache__writeMMappedImage_withName___block_invoke;
  block[3] = &unk_278745368;
  block[4] = self;
  if (_writeMMappedImage_withName__onceToken != -1)
  {
    dispatch_once(&_writeMMappedImage_withName__onceToken, block);
  }

  v8 = dispatch_get_global_queue(-2, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__CSLPRFIconCache__writeMMappedImage_withName___block_invoke_2;
  v11[3] = &unk_2787453E0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

void __47__CSLPRFIconCache__writeMMappedImage_withName___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) _path];
  v4 = 0;
  [v2 createDirectoryAtPath:v3 withIntermediateDirectories:0 attributes:0 error:&v4];
}

void __47__CSLPRFIconCache__writeMMappedImage_withName___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _pathForIconName:*(a1 + 48)];
  [v1 writeToCPBitmapFile:v2 flags:0];
}

- (id)_loadMMappedImageWithName:(id)a3
{
  v3 = MEMORY[0x277D755B8];
  v4 = [(CSLPRFIconCache *)self _pathForIconName:a3];
  v5 = [v3 imageWithContentsOfCPBitmapFile:v4 flags:0];

  return v5;
}

- (id)_pathForIconName:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(CSLPRFIconCache *)self _path];
  v7 = [v4 stringWithFormat:@"%@%@.cpbitmap", v6, v5];

  return v7;
}

- (id)_path
{
  if (_path_onceToken != -1)
  {
    dispatch_once(&_path_onceToken, &__block_literal_global_3);
  }

  v3 = _path_path;

  return v3;
}

void __24__CSLPRFIconCache__path__block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v4 userCachesDirectory];
  v2 = [v0 stringWithFormat:@"%@/CSLPRFIconCache/", v1];
  v3 = _path_path;
  _path_path = v2;
}

- (void)setIcon:(id)a3 forName:(id)a4
{
  cache = self->_cache;
  v7 = a4;
  v8 = a3;
  [(NSCache *)cache setObject:v8 forKey:v7];
  [(CSLPRFIconCache *)self _writeMMappedImage:v8 withName:v7];
}

- (id)iconForName:(id)a3 fallBackToPersistentStoreIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSCache *)self->_cache objectForKey:v6];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    v7 = [(CSLPRFIconCache *)self _loadMMappedImageWithName:v6];
  }

  return v7;
}

- (CSLPRFIconCache)init
{
  v6.receiver = self;
  v6.super_class = CSLPRFIconCache;
  v2 = [(CSLPRFIconCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v2->_cache;
    v2->_cache = v3;

    [(NSCache *)v2->_cache setEvictsObjectsWhenApplicationEntersBackground:0];
    [(NSCache *)v2->_cache setCountLimit:50];
  }

  return v2;
}

+ (id)sharedIconCache
{
  if (sharedIconCache_onceToken != -1)
  {
    dispatch_once(&sharedIconCache_onceToken, &__block_literal_global_406);
  }

  v3 = sharedIconCache_shared;

  return v3;
}

uint64_t __34__CSLPRFIconCache_sharedIconCache__block_invoke()
{
  sharedIconCache_shared = objc_alloc_init(CSLPRFIconCache);

  return MEMORY[0x2821F96F8]();
}

@end