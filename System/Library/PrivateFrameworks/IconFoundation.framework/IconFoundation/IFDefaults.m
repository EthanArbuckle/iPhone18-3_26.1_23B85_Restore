@interface IFDefaults
+ (id)sharedInstance;
- (BOOL)isSolariumEnabled;
- (IFDefaults)init;
@end

@implementation IFDefaults

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[IFDefaults sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

uint64_t __28__IFDefaults_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(IFDefaults);
  v1 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (IFDefaults)init
{
  v3.receiver = self;
  v3.super_class = IFDefaults;
  return [(IFDefaults *)&v3 init];
}

- (BOOL)isSolariumEnabled
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

@end