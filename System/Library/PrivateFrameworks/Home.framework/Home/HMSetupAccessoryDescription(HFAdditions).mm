@interface HMSetupAccessoryDescription(HFAdditions)
- (BOOL)hf_isLaunchedByHomeApp;
- (__CFString)hf_marketingName;
- (id)hf_home;
- (id)hf_installationGuideURL;
- (id)hf_localizedLaunchingAppName;
- (uint64_t)hf_isLaunchedByHomeDaemon;
- (uint64_t)hf_isLogitechCircleViewDoorbell;
- (void)hf_updateWithDiscoveredAccessory:()HFAdditions;
@end

@implementation HMSetupAccessoryDescription(HFAdditions)

- (id)hf_home
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 homeManager];
  v4 = [v3 homes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMSetupAccessoryDescription_HFAdditions__hf_home__block_invoke;
  v7[3] = &unk_277DF5E78;
  v7[4] = a1;
  v5 = [v4 na_firstObjectPassingTest:v7];

  return v5;
}

- (uint64_t)hf_isLogitechCircleViewDoorbell
{
  v2 = [a1 category];
  v3 = [v2 categoryType];
  if ([v3 isEqualToString:*MEMORY[0x277CCE948]])
  {
    v4 = [a1 setupAccessoryPayload];
    v5 = [v4 productNumber];
    v6 = [v5 uppercaseString];
    v7 = [v6 isEqualToString:@"9BFF8F87"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (__CFString)hf_marketingName
{
  v2 = [a1 marketingName];
  if ([a1 hf_isLogitechCircleViewDoorbell])
  {

    v2 = @"Logitech Circle View Doorbell";
  }

  return v2;
}

- (id)hf_installationGuideURL
{
  v2 = [a1 installationGuideURL];
  if ([a1 hf_isLogitechCircleViewDoorbell])
  {
    v3 = HFForceInstallationGuideUseStagingURL();
    v4 = MEMORY[0x277CBEBC0];
    if (v3)
    {
      v5 = HFStoreInstallationGuideStagingURLString();
      v6 = [v4 URLWithString:v5];

      v2 = v5;
    }

    else
    {
      v6 = [MEMORY[0x277CBEBC0] URLWithString:@"http://logi.com/circleviewdoorbell/setup"];
    }

    v2 = v6;
  }

  return v2;
}

- (BOOL)hf_isLaunchedByHomeApp
{
  v1 = [a1 appIdentifier];
  v2 = __HFHomeApplicationBundleIdentifiers_block_invoke();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMSetupAccessoryDescription_HFAdditions__hf_isLaunchedByHomeApp__block_invoke;
  v7[3] = &unk_277DF3130;
  v8 = v1;
  v3 = v1;
  v4 = [v2 na_firstObjectPassingTest:v7];
  v5 = v4 != 0;

  return v5;
}

- (uint64_t)hf_isLaunchedByHomeDaemon
{
  v1 = [a1 appIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.homed"];

  return v2;
}

- (id)hf_localizedLaunchingAppName
{
  v1 = MEMORY[0x277CC1E90];
  v2 = [a1 appIdentifier];
  v3 = [v1 bundleRecordWithApplicationIdentifier:v2 error:0];

  v4 = [v3 localizedShortName];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 localizedName];
  }

  v7 = v6;

  return v7;
}

- (void)hf_updateWithDiscoveredAccessory:()HFAdditions
{
  v8 = a3;
  v4 = [v8 accessory];

  if (v4)
  {
    v5 = [v8 accessory];
    [a1 updateWithAccessory:v5];
  }

  v6 = [v8 category];

  if (v6)
  {
    v7 = [v8 category];
    [a1 updateAccessoryCategory:v7];
  }
}

@end