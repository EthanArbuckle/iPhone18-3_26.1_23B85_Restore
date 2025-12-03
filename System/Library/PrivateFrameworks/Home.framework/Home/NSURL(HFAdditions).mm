@interface NSURL(HFAdditions)
+ (id)hf_appStoreURLForBundleIdentifier:()HFAdditions;
+ (id)hf_learnAboutNetworksRequiringProfilesURL;
+ (id)hf_learnAboutUnshareableNetworksURL;
+ (id)hf_learnToAddAccessoriesURL;
+ (id)hf_learnToUpdateAppleTVURL;
+ (id)hf_locationFromURL:()HFAdditions;
+ (id)hf_locationServicesSettingsURL;
+ (id)hf_notificationSettingsURL;
+ (id)hf_openSettingsURL;
+ (id)hf_openiCloudPreferencesURL;
+ (id)hf_setupHomeHubLearnMoreURL;
+ (id)hf_systemSoftwareUpdate;
+ (id)hf_wifiSettingsURL;
+ (id)localeString;
+ (uint64_t)hf_openiCloudPasswordAndSecurityURL;
+ (uint64_t)hf_openiCloudToggleURL;
- (uint64_t)hf_isHomeKnowledgeBasedArticleURL;
@end

@implementation NSURL(HFAdditions)

+ (id)localeString
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageIdentifier = [currentLocale languageIdentifier];
  v2 = languageIdentifier;
  v3 = @"en-us";
  if (languageIdentifier)
  {
    v3 = languageIdentifier;
  }

  v4 = v3;

  lowercaseString = [(__CFString *)v4 lowercaseString];

  return lowercaseString;
}

+ (id)hf_notificationSettingsURL
{
  if (+[HFUtilities isAMac])
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

+ (id)hf_wifiSettingsURL
{
  if (+[HFUtilities isAMac])
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

+ (id)hf_locationServicesSettingsURL
{
  if (+[HFUtilities isAMac])
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

+ (id)hf_learnToAddAccessoriesURL
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = MEMORY[0x277CCACA8];
  localeString = [self localeString];
  v4 = [v2 stringWithFormat:@"https://support.apple.com/%@/HT204893#add", localeString];
  v5 = [v1 URLWithString:v4];

  return v5;
}

+ (id)hf_learnAboutUnshareableNetworksURL
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = MEMORY[0x277CCACA8];
  localeString = [self localeString];
  v4 = [v2 stringWithFormat:@"https://support.apple.com/%@/HT209643", localeString];
  v5 = [v1 URLWithString:v4];

  return v5;
}

+ (id)hf_learnAboutNetworksRequiringProfilesURL
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = MEMORY[0x277CCACA8];
  localeString = [self localeString];
  v4 = [v2 stringWithFormat:@"https://support.apple.com/%@/HT209643", localeString];
  v5 = [v1 URLWithString:v4];

  return v5;
}

+ (id)hf_learnToUpdateAppleTVURL
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = MEMORY[0x277CCACA8];
  localeString = [self localeString];
  v4 = [v2 stringWithFormat:@"https://support.apple.com/%@/HT202716", localeString];
  v5 = [v1 URLWithString:v4];

  return v5;
}

+ (id)hf_openiCloudPreferencesURL
{
  if (+[HFUtilities isAMac])
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

+ (id)hf_openSettingsURL
{
  if (+[HFUtilities isAMac])
  {
    v0 = @"x-apple.systempreferences:";
  }

  else
  {
    v0 = @"prefs:";
  }

  v1 = [MEMORY[0x277CBEBC0] URLWithString:v0];

  return v1;
}

+ (uint64_t)hf_openiCloudPasswordAndSecurityURL
{
  if (+[HFUtilities isAMac])
  {
    v0 = @"x-apple.systempreferences:com.apple.preferences.icloud";
  }

  else
  {
    v0 = @"prefs:root=APPLE_ACCOUNT&path=PASSWORD_AND_SECURITY";
  }

  v1 = MEMORY[0x277CBEBC0];

  return [v1 URLWithString:v0];
}

+ (uint64_t)hf_openiCloudToggleURL
{
  if (+[HFUtilities isAMac])
  {
    v0 = @"x-apple.systempreferences:com.apple.preferences.icloud";
  }

  else
  {
    v0 = @"settings-navigation://com.apple.Settings.AppleAccount/ICLOUD_SERVICE/com.apple.Dataclass";
  }

  v1 = MEMORY[0x277CBEBC0];

  return [v1 URLWithString:v0];
}

+ (id)hf_setupHomeHubLearnMoreURL
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = MEMORY[0x277CCACA8];
  localeString = [self localeString];
  v4 = [v2 stringWithFormat:@"https://support.apple.com/%@/HT207057", localeString];
  v5 = [v1 URLWithString:v4];

  return v5;
}

+ (id)hf_systemSoftwareUpdate
{
  if (+[HFUtilities isAMac])
  {
    v0 = @"x-apple.systempreferences:com.apple.Software-Update-Settings.extension";
  }

  else
  {
    v0 = @"prefs:root=General%23-64&path=SOFTWARE_UPDATE_LINK%23-64";
  }

  v1 = [MEMORY[0x277CBEBC0] URLWithString:v0];

  return v1;
}

- (uint64_t)hf_isHomeKnowledgeBasedArticleURL
{
  hf_learnToAddAccessoriesURL = [MEMORY[0x277CBEBC0] hf_learnToAddAccessoriesURL];
  if ([self isEqual:hf_learnToAddAccessoriesURL])
  {
    v3 = 1;
  }

  else
  {
    hf_learnAboutUnshareableNetworksURL = [MEMORY[0x277CBEBC0] hf_learnAboutUnshareableNetworksURL];
    if ([self isEqual:hf_learnAboutUnshareableNetworksURL])
    {
      v3 = 1;
    }

    else
    {
      hf_learnAboutNetworksRequiringProfilesURL = [MEMORY[0x277CBEBC0] hf_learnAboutNetworksRequiringProfilesURL];
      if ([self isEqual:hf_learnAboutNetworksRequiringProfilesURL])
      {
        v3 = 1;
      }

      else
      {
        hf_learnAboutNetworkProtectionURL = [MEMORY[0x277CBEBC0] hf_learnAboutNetworkProtectionURL];
        if ([self isEqual:hf_learnAboutNetworkProtectionURL])
        {
          v3 = 1;
        }

        else
        {
          hf_losslessURL = [MEMORY[0x277CBEBC0] hf_losslessURL];
          if ([self isEqual:hf_losslessURL])
          {
            v3 = 1;
          }

          else
          {
            hf_homeHubRequiredLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homeHubRequiredLearnMoreURL];
            if ([self isEqual:hf_homeHubRequiredLearnMoreURL])
            {
              v3 = 1;
            }

            else
            {
              hf_homePodNetworkIssueDHCPAcquisitionFailureLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueDHCPAcquisitionFailureLearnMoreURL];
              if ([self isEqual:hf_homePodNetworkIssueDHCPAcquisitionFailureLearnMoreURL])
              {
                v3 = 1;
              }

              else
              {
                hf_homePodNetworkIssueDNSServerOutageLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueDNSServerOutageLearnMoreURL];
                if ([self isEqual:hf_homePodNetworkIssueDNSServerOutageLearnMoreURL])
                {
                  v3 = 1;
                }

                else
                {
                  hf_homePodNetworkIssueWifiDisassociationLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueWifiDisassociationLearnMoreURL];
                  if ([self isEqual:?])
                  {
                    v3 = 1;
                  }

                  else
                  {
                    hf_homePodNetworkIssueDoubleNATLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueDoubleNATLearnMoreURL];
                    if ([self isEqual:?])
                    {
                      v3 = 1;
                    }

                    else
                    {
                      hf_homePodNetworkIssuePeerToPeerLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssuePeerToPeerLearnMoreURL];
                      if ([self isEqual:?])
                      {
                        v3 = 1;
                      }

                      else
                      {
                        hf_homePodNetworkIssueMultipleNetworksLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueMultipleNetworksLearnMoreURL];
                        if ([self isEqual:?])
                        {
                          v3 = 1;
                        }

                        else
                        {
                          hf_homePodNetworkIssueInternetOutageURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueInternetOutageURL];
                          if ([self isEqual:?])
                          {
                            v3 = 1;
                          }

                          else
                          {
                            hf_homePodNetworkMisconfigurationUnknownLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkMisconfigurationUnknownLearnMoreURL];
                            if ([self isEqual:?])
                            {
                              v3 = 1;
                            }

                            else
                            {
                              hf_threadNetworkRequiredLearnMoreURL = [MEMORY[0x277CBEBC0] hf_threadNetworkRequiredLearnMoreURL];
                              v3 = [self isEqual:hf_threadNetworkRequiredLearnMoreURL];
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

+ (id)hf_appStoreURLForBundleIdentifier:()HFAdditions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACE0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:@"itms-apps"];
  [v5 setHost:&stru_2824B1A78];
  v6 = [MEMORY[0x277CCAD18] queryItemWithName:@"bundleIdentifier" value:v4];

  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v5 setQueryItems:v7];

  v8 = [v5 URL];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)hf_locationFromURL:()HFAdditions
{
  v3 = a3;
  v4 = [[HFURLComponents alloc] initWithURL:v3];

  v5 = [(HFURLComponents *)v4 valueForParameter:@"latitude"];
  v6 = [(HFURLComponents *)v4 valueForParameter:@"longitude"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v13 = 0;
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277CE41F8]);
    [v5 doubleValue];
    v11 = v10;
    [v7 doubleValue];
    v13 = [v9 initWithLatitude:v11 longitude:v12];
  }

  return v13;
}

@end