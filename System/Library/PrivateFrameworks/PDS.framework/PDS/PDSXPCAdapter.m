@interface PDSXPCAdapter
+ (id)_sharedInstance;
+ (id)defaultConnectionVendor;
- (id)_init;
- (id)connectionForMachService:(id)a3;
@end

@implementation PDSXPCAdapter

+ (id)defaultConnectionVendor
{
  if (_XPCDisabled == 1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:a2 object:a1 file:@"PDSXPCAdapter.m" lineNumber:41 description:@"XPC was disabled!"];
  }

  return [a1 _sharedInstance];
}

+ (id)_sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__PDSXPCAdapter__sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)connectionForMachService:(id)a3
{
  v3 = MEMORY[0x277CCAE80];
  v4 = a3;
  v5 = [[v3 alloc] initWithMachServiceName:v4 options:0];

  return v5;
}

@end