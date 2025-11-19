@interface MDMUserConfiguration
+ (id)sharedConfiguration;
@end

@implementation MDMUserConfiguration

+ (id)sharedConfiguration
{
  if (sharedConfiguration_onceToken_1 != -1)
  {
    +[MDMUserConfiguration sharedConfiguration];
  }

  v3 = sharedConfiguration_config_1;

  return v3;
}

uint64_t __43__MDMUserConfiguration_sharedConfiguration__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedConfiguration_config_1;
  sharedConfiguration_config_1 = v0;

  v2 = sharedConfiguration_config_1;

  return [v2 refreshDetailsFromDisk];
}

@end