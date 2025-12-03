@interface PDSXPCAdapter
+ (id)_sharedInstance;
+ (id)defaultConnectionVendor;
- (id)_init;
- (id)connectionForMachService:(id)service;
@end

@implementation PDSXPCAdapter

+ (id)defaultConnectionVendor
{
  if (_XPCDisabled == 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PDSXPCAdapter.m" lineNumber:41 description:@"XPC was disabled!"];
  }

  return [self _sharedInstance];
}

+ (id)_sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__PDSXPCAdapter__sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_sharedInstance_onceToken != -1)
  {
    dispatch_once(&_sharedInstance_onceToken, block);
  }

  v2 = _sharedInstance_sharedInstance;

  return v2;
}

uint64_t __32__PDSXPCAdapter__sharedInstance__block_invoke(uint64_t a1)
{
  _sharedInstance_sharedInstance = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PDSXPCAdapter;
  return [(PDSXPCAdapter *)&v3 init];
}

- (id)connectionForMachService:(id)service
{
  v3 = MEMORY[0x277CCAE80];
  serviceCopy = service;
  v5 = [[v3 alloc] initWithMachServiceName:serviceCopy options:0];

  return v5;
}

@end