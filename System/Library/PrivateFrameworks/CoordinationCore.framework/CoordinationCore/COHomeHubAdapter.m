@interface COHomeHubAdapter
+ (id)sharedInstance;
- (COHomeHubAdapter)init;
- (id)accessoryIdentifierForPeerInstance:(id)a3 usingHomeKitAdapter:(id)a4;
@end

@implementation COHomeHubAdapter

- (COHomeHubAdapter)init
{
  v3.receiver = self;
  v3.super_class = COHomeHubAdapter;
  return [(COHomeHubAdapter *)&v3 init];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__COHomeHubAdapter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_result;

  return v2;
}

uint64_t __34__COHomeHubAdapter_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_result = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)accessoryIdentifierForPeerInstance:(id)a3 usingHomeKitAdapter:(id)a4
{
  v4 = [(COHomeHubAdapter *)self accessoryForPeerInstance:a3 usingHomeKitAdapter:a4];
  v5 = [v4 uniqueIdentifier];

  return v5;
}

@end