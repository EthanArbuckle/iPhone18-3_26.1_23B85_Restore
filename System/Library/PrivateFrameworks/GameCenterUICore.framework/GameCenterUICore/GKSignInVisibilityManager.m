@interface GKSignInVisibilityManager
@end

@implementation GKSignInVisibilityManager

uint64_t __49__GKSignInVisibilityManager_UISingletons__shared__block_invoke()
{
  shared_sharedInstance_0 = [objc_alloc(MEMORY[0x277D0C228]) initWithPersistence];

  return MEMORY[0x2821F96F8]();
}

uint64_t __67__GKSignInVisibilityManager_UISingletons__sharedWithoutPersistence__block_invoke()
{
  sharedWithoutPersistence_sharedInstance = [objc_alloc(MEMORY[0x277D0C228]) initWithoutPersistence];

  return MEMORY[0x2821F96F8]();
}

@end