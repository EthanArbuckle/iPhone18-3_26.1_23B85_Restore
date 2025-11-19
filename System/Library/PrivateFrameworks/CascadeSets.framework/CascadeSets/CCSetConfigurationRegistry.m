@interface CCSetConfigurationRegistry
+ (id)allSetConfigurations;
+ (id)configurationForSetIdentifier:(id)a3;
@end

@implementation CCSetConfigurationRegistry

+ (id)configurationForSetIdentifier:(id)a3
{
  v3 = a3;
  v4 = CCSetLibraryConfigurationRegistryBridge();
  v5 = [v4 configurationForSetIdentifier:v3];

  return v5;
}

+ (id)allSetConfigurations
{
  v2 = CCSetLibraryConfigurationRegistryBridge();
  v3 = [v2 allSetConfigurations];

  return v3;
}

@end