@interface FCOfflineDownloadsConfiguration
+ (BOOL)_automaticDownloadsEnabledForKey:(id)key;
- (BOOL)automaticRecipeDownloadsEnabled;
@end

@implementation FCOfflineDownloadsConfiguration

- (BOOL)automaticRecipeDownloadsEnabled
{
  if ([(FCOfflineDownloadsConfiguration *)self maxRecipeDownloads]< 1)
  {
    return 0;
  }

  v2 = objc_opt_class();

  return [v2 _automaticDownloadsEnabledForKey:@"automatically_download_recipes"];
}

+ (BOOL)_automaticDownloadsEnabledForKey:(id)key
{
  keyCopy = key;
  v4 = NewsCoreUserDefaults();
  v5 = [v4 objectForKey:keyCopy];

  if (v5)
  {
    v6 = NewsCoreUserDefaults();
    v7 = [v6 BOOLForKey:keyCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end