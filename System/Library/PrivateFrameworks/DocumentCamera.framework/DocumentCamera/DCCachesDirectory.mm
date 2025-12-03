@interface DCCachesDirectory
+ (id)sharedCachesDirectory;
- (DCCachesDirectory)init;
- (void)init;
@end

@implementation DCCachesDirectory

- (DCCachesDirectory)init
{
  v15.receiver = self;
  v15.super_class = DCCachesDirectory;
  v2 = [(DCCachesDirectory *)&v15 init];
  if (v2)
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    lastObject = [v4 lastObject];
    v6 = [v3 fileURLWithPath:lastObject];

    v7 = [v6 URLByAppendingPathComponent:@"com.apple.DocumentCamera"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    LOBYTE(v6) = [defaultManager createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v14];
    v9 = v14;

    if ((v6 & 1) == 0)
    {
      v10 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(DCCachesDirectory *)v7 init];
      }
    }

    cachesDirectoryURL = v2->_cachesDirectoryURL;
    v2->_cachesDirectoryURL = v7;
    v12 = v7;
  }

  return v2;
}

+ (id)sharedCachesDirectory
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__DCCachesDirectory_sharedCachesDirectory__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCachesDirectory_onceToken != -1)
  {
    dispatch_once(&sharedCachesDirectory_onceToken, block);
  }

  v2 = sharedCachesDirectory_sharedCachesDirectory;

  return v2;
}

void __42__DCCachesDirectory_sharedCachesDirectory__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedCachesDirectory_sharedCachesDirectory;
  sharedCachesDirectory_sharedCachesDirectory = v1;
}

- (void)init
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "Failed to create directory %@ with error %@.", &v3, 0x16u);
}

@end