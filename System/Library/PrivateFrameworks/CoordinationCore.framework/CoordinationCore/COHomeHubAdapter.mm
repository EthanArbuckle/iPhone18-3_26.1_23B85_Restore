@interface COHomeHubAdapter
+ (id)sharedInstance;
- (COHomeHubAdapter)init;
- (id)accessoryIdentifierForPeerInstance:(id)instance usingHomeKitAdapter:(id)adapter;
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
  block[4] = self;
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

- (id)accessoryIdentifierForPeerInstance:(id)instance usingHomeKitAdapter:(id)adapter
{
  v4 = [(COHomeHubAdapter *)self accessoryForPeerInstance:instance usingHomeKitAdapter:adapter];
  uniqueIdentifier = [v4 uniqueIdentifier];

  return uniqueIdentifier;
}

@end