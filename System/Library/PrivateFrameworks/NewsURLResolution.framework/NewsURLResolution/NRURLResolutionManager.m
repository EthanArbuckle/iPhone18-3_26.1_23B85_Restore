@interface NRURLResolutionManager
+ (id)sharedManager;
- (BOOL)userHasBundleSubscription;
- (NRURLResolutionManager)init;
- (id)createResolutionOperationForNewsURL:(id)a3;
- (id)createResolutionOperationForWebURL:(id)a3;
@end

@implementation NRURLResolutionManager

- (NRURLResolutionManager)init
{
  v6.receiver = self;
  v6.super_class = NRURLResolutionManager;
  v2 = [(NRURLResolutionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    bloomFilterInfoService = v2->_bloomFilterInfoService;
    v2->_bloomFilterInfoService = v3;
  }

  return v2;
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NRURLResolutionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_result;

  return v2;
}

uint64_t __39__NRURLResolutionManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_result = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)createResolutionOperationForWebURL:(id)a3
{
  v4 = a3;
  v5 = [NRWebURLResolutionOperation alloc];
  v6 = [(NRURLResolutionManager *)self bloomFilterInfoService];
  v7 = [(NRWebURLResolutionOperation *)v5 initWithWebURL:v4 bloomFilterInfoService:v6];

  return v7;
}

- (id)createResolutionOperationForNewsURL:(id)a3
{
  v3 = a3;
  v4 = [[NRNewsURLResolutionOperation alloc] initWithNewsURL:v3];

  return v4;
}

- (BOOL)userHasBundleSubscription
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.newscore"];
  v3 = [v2 BOOLForKey:@"news_url_resolution_subscription_status"];

  return v3;
}

@end