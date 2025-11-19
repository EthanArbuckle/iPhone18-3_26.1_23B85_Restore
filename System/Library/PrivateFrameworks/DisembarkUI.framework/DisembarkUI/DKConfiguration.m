@interface DKConfiguration
+ (id)defaultConfiguration;
+ (id)setupAssistantConfiguration;
- (DKConfiguration)init;
@end

@implementation DKConfiguration

- (DKConfiguration)init
{
  v3.receiver = self;
  v3.super_class = DKConfiguration;
  result = [(DKConfiguration *)&v3 init];
  if (result)
  {
    result->_allowNonInteractiveCloudUpload = 1;
  }

  return result;
}

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)setupAssistantConfiguration
{
  v2 = objc_alloc_init(a1);
  [v2 setPostFollowUp:1];
  [v2 setSkipBackup:1];
  [v2 setPreventOpeningSafari:1];
  [v2 setPresentsNetworkSettingsModally:1];

  return v2;
}

@end