@interface NUNIClassicResourceManager
+ (NUNIClassicResourceManager)sharedInstance;
+ (void)_deallocInstance:(id)instance;
- (NUNIClassicResourceManager)init;
- (id)provideAtlasBacking:(id)backing;
- (id)textureGroupWithSuffix:(id)suffix;
- (void)_asyncDeallocInstance;
- (void)addClient;
- (void)dealloc;
- (void)removeClient;
@end

@implementation NUNIClassicResourceManager

+ (NUNIClassicResourceManager)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!__sharedInstance)
  {
    v3 = objc_alloc_init(NUNIClassicResourceManager);
    v4 = __sharedInstance;
    __sharedInstance = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = __sharedInstance;

  return v5;
}

+ (void)_deallocInstance:(id)instance
{
  obj = self;
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

    mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedDevice];
    device = v2->_device;
    v2->_device = mEMORY[0x277CFA798];

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    textureGroupHashTable = v2->_textureGroupHashTable;
    v2->_textureGroupHashTable = strongToWeakObjectsMapTable;
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
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  v3 = objc_opt_class();
  if (isMainThread)
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_clients - 1;
  selfCopy->_clients = v3;
  objc_sync_exit(selfCopy);

  if (!v3)
  {

    [(NUNIClassicResourceManager *)selfCopy _asyncDeallocInstance];
  }
}

- (id)textureGroupWithSuffix:(id)suffix
{
  suffixCopy = suffix;
  v5 = [(NSMapTable *)self->_textureGroupHashTable objectForKey:suffixCopy];
  if (!v5)
  {
    v6 = objc_opt_new();
    for (i = 0; i != 14; ++i)
    {
      suffixCopy = [(__CFString *)textureGroupWithSuffix__uuids[i] stringByAppendingFormat:@"-%@", suffixCopy];
      v9 = [MEMORY[0x277CFA7C0] textureWithProviderDelegate:self uuid:suffixCopy];
      [v6 addObject:v9];
    }

    v5 = [[NUNIClassicTextureGroup alloc] initWithTextures:v6];
    [(NSMapTable *)self->_textureGroupHashTable setObject:v5 forKey:suffixCopy];
  }

  return v5;
}

- (id)provideAtlasBacking:(id)backing
{
  v15 = *MEMORY[0x277D85DE8];
  backingCopy = backing;
  v4 = NUNIBundle();
  v5 = [v4 pathForResource:backingCopy ofType:@"art"];

  v6 = NUNILoggingObjectForDomain(0);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412546;
      v12 = backingCopy;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_25B6D4000, v6, OS_LOG_TYPE_DEFAULT, "providing artwork for %@ at %@", &v11, 0x16u);
    }

    v8 = [MEMORY[0x277CFA750] atlasBackingWithArt:v5 uuid:backingCopy];
  }

  else
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = backingCopy;
      _os_log_impl(&dword_25B6D4000, v6, OS_LOG_TYPE_DEFAULT, "missing artwork for %@", &v11, 0xCu);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end