@interface MSWebKitWebViewConfigurationFactory
+ (id)commonWebViewConfiguration;
@end

@implementation MSWebKitWebViewConfigurationFactory

+ (id)commonWebViewConfiguration
{
  v2 = objc_alloc_init(MEMORY[0x277CE3858]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB98]);
  [v2 _setAllowedNetworkHosts:v3];

  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    defaultWebpagePreferences = [v2 defaultWebpagePreferences];
    [defaultWebpagePreferences setAllowsContentJavaScript:0];
  }

  else
  {
    [v2 _setAllowsJavaScriptMarkup:0];
  }

  if (_os_feature_enabled_impl())
  {
    preferences = [v2 preferences];
    [preferences _disableRichJavaScriptFeatures];
  }

  if (_os_feature_enabled_impl())
  {
    preferences2 = [v2 preferences];
    [preferences2 _disableMediaPlaybackRelatedFeatures];
  }

  return v2;
}

@end