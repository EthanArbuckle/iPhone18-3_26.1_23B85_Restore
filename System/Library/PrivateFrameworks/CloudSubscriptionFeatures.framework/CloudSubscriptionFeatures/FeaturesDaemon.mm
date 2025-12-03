@interface FeaturesDaemon
+ (id)sharedInstance;
- (FeaturesDaemon)init;
- (void)start;
@end

@implementation FeaturesDaemon

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FeaturesDaemon sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __32__FeaturesDaemon_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (FeaturesDaemon)init
{
  v6.receiver = self;
  v6.super_class = FeaturesDaemon;
  v2 = [(FeaturesDaemon *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    controller = v2->_controller;
    v2->_controller = v3;
  }

  return v2;
}

- (void)start
{
  controller = [(FeaturesDaemon *)self controller];
  [controller start];
}

@end