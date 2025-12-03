@interface NPKLibrary
+ (id)sharedInstance;
- (void)addPassData:(id)data completion:(id)completion;
@end

@implementation NPKLibrary

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__NPKLibrary_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

void __28__NPKLibrary_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;
}

- (void)addPassData:(id)data completion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__NPKLibrary_addPassData_completion___block_invoke;
    block[3] = &unk_279945198;
    v7 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

@end