@interface TSUTemporaryDocumentCacheManager
+ (id)baseDirectoryURL;
+ (id)sharedManager;
- (id)newDirectoryForDocumentUUID:(id)d;
@end

@implementation TSUTemporaryDocumentCacheManager

+ (id)baseDirectoryURL
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = 0;
  v3 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v6];

  if (v3)
  {
    v4 = [v3 URLByAppendingPathComponent:@"DocumentCaches"];
  }

  else
  {
    if (TSUDefaultCat_init_token != -1)
    {
      +[TSUTemporaryDocumentCacheManager baseDirectoryURL];
    }

    v4 = 0;
  }

  return v4;
}

void __52__TSUTemporaryDocumentCacheManager_baseDirectoryURL__block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__TSUTemporaryDocumentCacheManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

void __49__TSUTemporaryDocumentCacheManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;
}

- (id)newDirectoryForDocumentUUID:(id)d
{
  uUIDString = [d UUIDString];
  v5 = [(TSUTemporaryDirectoryManager *)self newDirectoryWithFilename:uUIDString];

  return v5;
}

@end