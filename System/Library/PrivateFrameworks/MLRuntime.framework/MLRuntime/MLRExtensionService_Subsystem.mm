@interface MLRExtensionService_Subsystem
+ (id)sharedInstance;
@end

@implementation MLRExtensionService_Subsystem

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MLRExtensionService_Subsystem_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  v2 = sharedInstance___instance;

  return v2;
}

@end