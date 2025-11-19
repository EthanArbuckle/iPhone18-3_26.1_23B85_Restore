@interface ISCustomIconManager
+ (id)sharedInstance;
- (id)_init;
@end

@implementation ISCustomIconManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[ISCustomIconManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_3;

  return v3;
}

uint64_t __37__ISCustomIconManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_3 = [[ISCustomIconManager alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = ISCustomIconManager;
  return [(ISCustomIconManager *)&v3 init];
}

@end