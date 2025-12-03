@interface CKContainer
+ (id)chsh_applicationBundleIdentifierOverrideForNetworkAttribution;
+ (id)chsh_secureContainer;
@end

@implementation CKContainer

+ (id)chsh_applicationBundleIdentifierOverrideForNetworkAttribution
{
  if (MGGetSInt32Answer() == 1)
  {
    return @"com.apple.mobilephone";
  }

  else
  {
    return @"com.apple.facetime";
  }
}

+ (id)chsh_secureContainer
{
  v3 = objc_alloc_init(CKContainerOptions);
  chsh_applicationBundleIdentifierOverrideForNetworkAttribution = [self chsh_applicationBundleIdentifierOverrideForNetworkAttribution];
  [v3 setApplicationBundleIdentifierOverrideForNetworkAttribution:chsh_applicationBundleIdentifierOverrideForNetworkAttribution];

  [v3 setUseZoneWidePCS:1];
  v5 = [CKContainer containerWithIdentifier:@"com.apple.callhistory.cloud-storage2"];
  v6 = [CKContainer alloc];
  containerID = [v5 containerID];
  v8 = [v6 initWithContainerID:containerID options:v3];

  return v8;
}

@end