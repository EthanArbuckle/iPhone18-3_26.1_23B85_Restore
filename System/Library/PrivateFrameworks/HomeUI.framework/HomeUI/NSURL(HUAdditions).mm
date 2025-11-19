@interface NSURL(HUAdditions)
+ (id)hu_appStoreURLForBundleIdentifier:()HUAdditions;
+ (id)hu_gridForecastLearnMoreURL;
+ (id)hu_homeUpdateLearnMoreURL;
+ (id)hu_learnAboutNetworkProtectionURL;
+ (id)hu_learnAboutNetworksRequiringProfilesURL;
+ (id)hu_learnAboutUnshareableNetworksURL;
+ (id)hu_learnToAddAccessoriesURL;
+ (id)hu_locationServicesSettingsURL;
+ (id)hu_losslessURL;
+ (id)hu_notificationSettingsURL;
+ (id)hu_openiCloudPreferencesURL;
+ (id)hu_wifiSettingsURL;
- (uint64_t)hu_isHomeKnowledgeBasedArticleURL;
@end

@implementation NSURL(HUAdditions)

+ (id)hu_notificationSettingsURL
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v0 = @"x-apple.systempreferences:com.apple.preference.notifications?id=com.apple.home";
  }

  else
  {
    v0 = @"prefs:root=NOTIFICATIONS_ID&path=com.apple.Home";
  }

  v1 = [MEMORY[0x277CBEBC0] URLWithString:v0];

  return v1;
}

+ (id)hu_wifiSettingsURL
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v0 = @"x-apple.systempreferences:com.apple.preference.network";
  }

  else
  {
    v0 = @"prefs:root=WIFI";
  }

  v1 = [MEMORY[0x277CBEBC0] URLWithString:v0];

  return v1;
}

+ (id)hu_locationServicesSettingsURL
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v0 = @"x-apple.systempreferences:com.apple.preference.security?Privacy";
  }

  else
  {
    v0 = @"prefs:root=Privacy&path=LOCATION";
  }

  v1 = [MEMORY[0x277CBEBC0] URLWithString:v0];

  return v1;
}

+ (id)hu_learnToAddAccessoriesURL
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 localeString];
  v4 = [v2 stringWithFormat:@"https://support.apple.com/%@/HT204893#add", v3];
  v5 = [v1 URLWithString:v4];

  return v5;
}

+ (id)hu_learnAboutUnshareableNetworksURL
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 localeString];
  v4 = [v2 stringWithFormat:@"https://support.apple.com/%@/HT209643", v3];
  v5 = [v1 URLWithString:v4];

  return v5;
}

+ (id)hu_learnAboutNetworksRequiringProfilesURL
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 localeString];
  v4 = [v2 stringWithFormat:@"https://support.apple.com/%@/HT209643", v3];
  v5 = [v1 URLWithString:v4];

  return v5;
}

+ (id)hu_openiCloudPreferencesURL
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v0 = @"x-apple.systempreferences:com.apple.preferences.AppleIDPrefPane?iCloud";
  }

  else
  {
    v0 = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE";
  }

  v1 = [MEMORY[0x277CBEBC0] URLWithString:v0];

  return v1;
}

+ (id)hu_learnAboutNetworkProtectionURL
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 localeString];
  v4 = [v2 stringWithFormat:@"https://support.apple.com/%@/HT210544?cid=iOS_UI_HomeKit_article_HT210544", v3];
  v5 = [v1 URLWithString:v4];

  return v5;
}

+ (id)hu_losslessURL
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 localeString];
  v4 = [v2 stringWithFormat:@"https://support.apple.com/%@/HT212183", v3];
  v5 = [v1 URLWithString:v4];

  return v5;
}

+ (id)hu_homeUpdateLearnMoreURL
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 localeString];
  v4 = [v2 stringWithFormat:@"https://support.apple.com/%@/102287?cid=mc-ols-home-article_102287-homeappui-02122025", v3];
  v5 = [v1 URLWithString:v4];

  return v5;
}

+ (id)hu_gridForecastLearnMoreURL
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v0 = MEMORY[0x277CBEBC0];
    v1 = @"https://support.apple.com/guide/home/clean-energy-forecast-hme04cfb2d74/mac";
  }

  else
  {
    v2 = [MEMORY[0x277D14CE8] isAnIPad];
    v0 = MEMORY[0x277CBEBC0];
    if (v2)
    {
      v1 = @"https://support.apple.com/guide/ipad/use-grid-forecast-to-plan-your-energy-usage-ipadc6934c14/ipados";
    }

    else
    {
      v1 = @"https://support.apple.com/guide/iphone/use-grid-forecast-to-plan-your-energy-usage-iph6f57f4435/ios";
    }
  }

  v3 = [v0 URLWithString:v1];

  return v3;
}

- (uint64_t)hu_isHomeKnowledgeBasedArticleURL
{
  v2 = [MEMORY[0x277CBEBC0] hu_learnToAddAccessoriesURL];
  if ([a1 isEqual:v2])
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277CBEBC0] hu_learnAboutUnshareableNetworksURL];
    if ([a1 isEqual:v4])
    {
      v3 = 1;
    }

    else
    {
      v5 = [MEMORY[0x277CBEBC0] hu_learnAboutNetworksRequiringProfilesURL];
      if ([a1 isEqual:v5])
      {
        v3 = 1;
      }

      else
      {
        v6 = [MEMORY[0x277CBEBC0] hu_learnAboutNetworkProtectionURL];
        v3 = [a1 isEqual:v6];
      }
    }
  }

  return v3;
}

+ (id)hu_appStoreURLForBundleIdentifier:()HUAdditions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACE0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:@"itms-apps"];
  [v5 setHost:&stru_2823E0EE8];
  v6 = [MEMORY[0x277CCAD18] queryItemWithName:@"bundleIdentifier" value:v4];

  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v5 setQueryItems:v7];

  v8 = [v5 URL];

  return v8;
}

@end