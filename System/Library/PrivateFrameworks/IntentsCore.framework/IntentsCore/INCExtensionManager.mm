@interface INCExtensionManager
+ (id)sharedManager;
+ (void)initialize;
- (INCExtensionManager)init;
@end

@implementation INCExtensionManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__INCExtensionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

void __109__INCExtensionManager_fetchExtensionForIntent_extensionInputItems_requiresTCC_requiresTrustCheck_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[INCExtensionManager fetchExtensionForIntent:extensionInputItems:requiresTCC:requiresTrustCheck:completion:]_block_invoke";
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_255503000, v7, OS_LOG_TYPE_INFO, "%s Found extension: %@. Starting extension connection...", buf, 0x16u);
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 48) + 8);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __109__INCExtensionManager_fetchExtensionForIntent_extensionInputItems_requiresTCC_requiresTrustCheck_completion___block_invoke_12;
    v12[3] = &unk_2797E7610;
    v14 = *(a1 + 56);
    v13 = v5;
    [v13 _intents_startExtensionConnectionWithExtensionInputItems:v8 intent:v9 queue:v10 completion:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __109__INCExtensionManager_fetchExtensionForIntent_extensionInputItems_requiresTCC_requiresTrustCheck_completion___block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a3)
  {
    return (*(v4 + 16))(v4, 0, 0, a3);
  }

  else
  {
    return (*(v4 + 16))(v4, *(a1 + 32), a2);
  }
}

- (INCExtensionManager)init
{
  v7.receiver = self;
  v7.super_class = INCExtensionManager;
  v2 = [(INCExtensionManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("INCExtensionManagerQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

uint64_t __36__INCExtensionManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_sharedManager = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    INLogInitIfNeeded();
  }
}

@end