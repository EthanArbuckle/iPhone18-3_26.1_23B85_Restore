@interface NACEndpointObserver
+ (NACEndpointObserver)sharedObserver;
- (NACEndpointObserver)init;
- (void)fetchRouteForOriginIdentifier:(id)identifier completion:(id)completion;
- (void)invalidateDiscoverySession;
@end

@implementation NACEndpointObserver

+ (NACEndpointObserver)sharedObserver
{
  if (sharedObserver_onceToken != -1)
  {
    +[NACEndpointObserver sharedObserver];
  }

  v3 = sharedObserver_sharedInstance;

  return v3;
}

uint64_t __37__NACEndpointObserver_sharedObserver__block_invoke()
{
  sharedObserver_sharedInstance = objc_alloc_init(NACEndpointObserver);

  return MEMORY[0x2821F96F8]();
}

- (NACEndpointObserver)init
{
  v8.receiver = self;
  v8.super_class = NACEndpointObserver;
  v2 = [(NACEndpointObserver *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoAudioControl.EndpointObserver", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_invalidateDiscoverySession name:*MEMORY[0x277CD6128] object:0];
  }

  return v2;
}

- (void)invalidateDiscoverySession
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NACEndpointObserver_invalidateDiscoverySession__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __49__NACEndpointObserver_invalidateDiscoverySession__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 16))
  {
    v2 = NMLogForCategory(4);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 16);
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_25AEBF000, v2, OS_LOG_TYPE_DEFAULT, "[NACEndpointObserver] Invalidating session %@", &v7, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchRouteForOriginIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__NACEndpointObserver_fetchRouteForOriginIdentifier_completion___block_invoke;
  block[3] = &unk_27992B538;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(serialQueue, block);
}

uint64_t __64__NACEndpointObserver_fetchRouteForOriginIdentifier_completion___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1[4] + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(_NACAVRoutingDiscoverySession);
    v4 = a1[4];
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v6 = NMLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1[4] + 16);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_25AEBF000, v6, OS_LOG_TYPE_DEFAULT, "[NACEndpointObserver] Starting a new discovery session %@", &v10, 0xCu);
    }

    v2 = *(a1[4] + 16);
  }

  result = [v2 fetchRouteForOriginIdentifier:a1[5] completion:a1[6]];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end