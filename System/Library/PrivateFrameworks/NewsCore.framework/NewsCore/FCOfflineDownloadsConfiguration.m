@interface FCOfflineDownloadsConfiguration
+ (BOOL)_automaticDownloadsEnabledForKey:(id)a3;
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

+ (BOOL)_automaticDownloadsEnabledForKey:(id)a3
{
  v3 = a3;
  v4 = NewsCoreUserDefaults();
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    v6 = NewsCoreUserDefaults();
    v7 = [v6 BOOLForKey:v3];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end