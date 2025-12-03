@interface _CRSServiceBundleManager
+ (id)sharedInstance;
- (void)getServiceBundlesWithCompletion:(id)completion;
@end

@implementation _CRSServiceBundleManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___CRSServiceBundleManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sServiceBundleManager;

  return v2;
}

- (void)getServiceBundlesWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60___CRSServiceBundleManager_getServiceBundlesWithCompletion___block_invoke;
  v7[3] = &unk_278DA4F48;
  v8 = completionCopy;
  v6.receiver = self;
  v6.super_class = _CRSServiceBundleManager;
  v5 = completionCopy;
  [(CRBundleManager *)&v6 getBundlesWithCompletion:v7];
}

@end