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
    v4 = [v2 defaultWebpagePreferences];
    [v4 setAllowsContentJavaScript:0];
  }

  else
  {
    [v2 _setAllowsJavaScriptMarkup:0];
  }

  if (_os_feature_enabled_impl())
  {
    v5 = [v2 preferences];
    [v5 _disableRichJavaScriptFeatures];
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [v2 preferences];
    [v6 _disableMediaPlaybackRelatedFeatures];
  }

  return v2;
}

@end