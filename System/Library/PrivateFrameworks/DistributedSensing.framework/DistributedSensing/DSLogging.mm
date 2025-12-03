@interface DSLogging
+ (id)sharedInstance;
- (DSLogging)init;
@end

@implementation DSLogging

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__DSLogging_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_Obj;

  return v2;
}

uint64_t __27__DSLogging_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_Obj = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (DSLogging)init
{
  v5.receiver = self;
  v5.super_class = DSLogging;
  v2 = [(DSLogging *)&v5 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.distributedsensing", "SpatialAudio");
    [(DSLogging *)v2 setDsLogger:v3];
  }

  return v2;
}

@end