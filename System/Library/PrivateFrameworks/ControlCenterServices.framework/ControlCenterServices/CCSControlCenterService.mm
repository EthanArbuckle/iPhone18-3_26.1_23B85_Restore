@interface CCSControlCenterService
+ (id)sharedInstance;
- (id)_init;
@end

@implementation CCSControlCenterService

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CCSControlCenterService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __41__CCSControlCenterService_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_0 = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = CCSControlCenterService;
  v2 = [(CCSControlCenterService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CCSRemoteServiceConnection);
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

@end