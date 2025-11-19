@interface NUNIClassicResourceManager
+ (NUNIClassicResourceManager)sharedInstance;
+ (void)_deallocInstance:(id)a3;
- (NUNIClassicResourceManager)init;
- (id)provideAtlasBacking:(id)a3;
- (id)textureGroupWithSuffix:(id)a3;
- (void)_asyncDeallocInstance;
- (void)addClient;
- (void)dealloc;
- (void)removeClient;
@end

@implementation NUNIClassicResourceManager

+ (NUNIClassicResourceManager)sharedInstance
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!__sharedInstance)
  {
    v3 = objc_alloc_init(NUNIClassicResourceManager);
    v4 = __sharedInstance;
    __sharedInstance = v3;
  }

  objc_sync_exit(v2);

  v5 = __sharedInstance;

  return v5;
}

+ (void)_deallocInstance:(id)a3
{
  obj = a1;
  objc_sync_enter(obj);
  v3 = __sharedInstance;
  __sharedInstance = 0;

  objc_sync_exit(obj);
}

- (NUNIClassicResourceManager)init
{
  v10.receiver = self;
  v10.super_class = NUNIClassicResourceManager;
  v2 = [(NUNIClassicResourceManager *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    resourceProviderKey = v2->_resourceProviderKey;
    v2->_resourceProviderKey = v3;

    v5 = [MEMORY[0x277CFA798] sharedDevice];
    device = v2->_device;
    v2->_device = v5;

    v7 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    textureGroupHashTable = v2->_textureGroupHashTable;
    v2->_textureGroupHashTable = v7;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NUNIClassicResourceManager;
  [(NUNIClassicResourceManager *)&v2 dealloc];
}

- (void)_asyncDeallocInstance
{
  v2 = [MEMORY[0x277CCACC8] isMainThread];
  v3 = objc_opt_class();
  if (v2)
  {

    [v3 _deallocInstance:0];
  }

  else
  {

    [v3 performSelectorOnMainThread:sel__deallocInstance_ withObject:0 waitUntilDone:0];
  }
}

- (void)addClient
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_clients;
  objc_sync_exit(obj);
}

- (void)removeClient
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_clients - 1;
  v2->_clients = v3;
  objc_sync_exit(v2);

  if (!v3)
  {

    [(NUNIClassicResourceManager *)v2 _asyncDeallocInstance];
  }
}

- (id)textureGroupWithSuffix:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_textureGroupHashTable objectForKey:v4];
  if (!v5)
  {
    v6 = objc_opt_new();
    for (i = 0; i != 14; ++i)
    {
      v8 = [(__CFString *)textureGroupWithSuffix__uuids[i] stringByAppendingFormat:@"-%@", v4];
      v9 = [MEMORY[0x277CFA7C0] textureWithProviderDelegate:self uuid:v8];
      [v6 addObject:v9];
    }

    v5 = [[NUNIClassicTextureGroup alloc] initWithTextures:v6];
    [(NSMapTable *)self->_textureGroupHashTable setObject:v5 forKey:v4];
  }

  return v5;
}

- (id)provideAtlasBacking:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = NUNIBundle();
  v5 = [v4 pathForResource:v3 ofType:@"art"];

  v6 = NUNILoggingObjectForDomain(0);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_25B6D4000, v6, OS_LOG_TYPE_DEFAULT, "providing artwork for %@ at %@", &v11, 0x16u);
    }

    v8 = [MEMORY[0x277CFA750] atlasBackingWithArt:v5 uuid:v3];
  }

  else
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B6D4000, v6, OS_LOG_TYPE_DEFAULT, "missing artwork for %@", &v11, 0xCu);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end