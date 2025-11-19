@interface DEDImageResourceManager
+ (id)sharedInstance;
- (id)cachedImageFromKey:(id)a3;
- (void)asynchronousDataFromURL:(id)a3 key:(id)a4 completionBlock:(id)a5;
@end

@implementation DEDImageResourceManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__DEDImageResourceManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_once_1 != -1)
  {
    dispatch_once(&sharedInstance_once_1, block);
  }

  v2 = sharedInstance__sharedInstance;

  return v2;
}

uint64_t __41__DEDImageResourceManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v2;

  v4 = objc_alloc_init(ResourceLoader);
  v5 = *(sharedInstance__sharedInstance + 8);
  *(sharedInstance__sharedInstance + 8) = v4;

  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  v7 = *(sharedInstance__sharedInstance + 16);
  *(sharedInstance__sharedInstance + 16) = v6;

  return MEMORY[0x2821F96F8]();
}

- (void)asynchronousDataFromURL:(id)a3 key:(id)a4 completionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(DEDImageResourceManager *)self loader];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__DEDImageResourceManager_asynchronousDataFromURL_key_completionBlock___block_invoke;
  v14[3] = &unk_278F65C38;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  [v11 asynchronousDataFromURL:v10 completionBlock:v14];
}

void __71__DEDImageResourceManager_asynchronousDataFromURL_key_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"data"];
  v6 = v3;
  if (*(a1 + 32))
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = [*(a1 + 40) imageCache];
    [v5 setObject:v6 forKeyedSubscript:*(a1 + 32)];
  }

  (*(*(a1 + 48) + 16))();
}

- (id)cachedImageFromKey:(id)a3
{
  v4 = a3;
  v5 = [(DEDImageResourceManager *)self imageCache];
  v6 = [v5 valueForKey:v4];

  return v6;
}

@end