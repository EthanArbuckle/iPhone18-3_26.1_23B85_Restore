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
  homeManager = [v2 homeManager];
  homes = [homeManager homes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMSetupAccessoryDescription_HFAdditions__hf_home__block_invoke;
  v7[3] = &unk_277DF5E78;
  v7[4] = self;
  v5 = [homes na_firstObjectPassingTest:v7];

  return v5;
}

- (uint64_t)hf_isLogitechCircleViewDoorbell
{
  category = [self category];
  categoryType = [category categoryType];
  if ([categoryType isEqualToString:*MEMORY[0x277CCE948]])
  {
    setupAccessoryPayload = [self setupAccessoryPayload];
    productNumber = [setupAccessoryPayload productNumber];
    uppercaseString = [productNumber uppercaseString];
    v7 = [uppercaseString isEqualToString:@"9BFF8F87"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (__CFString)hf_marketingName
{
  marketingName = [self marketingName];
  if ([self hf_isLogitechCircleViewDoorbell])
  {

    marketingName = @"Logitech Circle View Doorbell";
  }

  return marketingName;
}

- (id)hf_installationGuideURL
{
  installationGuideURL = [self installationGuideURL];
  if ([self hf_isLogitechCircleViewDoorbell])
  {
    v3 = HFForceInstallationGuideUseStagingURL();
    v4 = MEMORY[0x277CBEBC0];
    if (v3)
    {
      v5 = HFStoreInstallationGuideStagingURLString();
      v6 = [v4 URLWithString:v5];

      installationGuideURL = v5;
    }

    else
    {
      v6 = [MEMORY[0x277CBEBC0] URLWithString:@"http://logi.com/circleviewdoorbell/setup"];
    }

    installationGuideURL = v6;
  }

  return installationGuideURL;
}

- (BOOL)hf_isLaunchedByHomeApp
{
  appIdentifier = [self appIdentifier];
  v2 = __HFHomeApplicationBundleIdentifiers_block_invoke();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMSetupAccessoryDescription_HFAdditions__hf_isLaunchedByHomeApp__block_invoke;
  v7[3] = &unk_277DF3130;
  v8 = appIdentifier;
  v3 = appIdentifier;
  v4 = [v2 na_firstObjectPassingTest:v7];
  v5 = v4 != 0;

  return v5;
}

- (uint64_t)hf_isLaunchedByHomeDaemon
{
  appIdentifier = [self appIdentifier];
  v2 = [appIdentifier isEqualToString:@"com.apple.homed"];

  return v2;
}

- (id)hf_localizedLaunchingAppName
{
  v1 = MEMORY[0x277CC1E90];
  appIdentifier = [self appIdentifier];
  v3 = [v1 bundleRecordWithApplicationIdentifier:appIdentifier error:0];

  localizedShortName = [v3 localizedShortName];
  v5 = localizedShortName;
  if (localizedShortName)
  {
    localizedName = localizedShortName;
  }

  else
  {
    localizedName = [v3 localizedName];
  }

  v7 = localizedName;

  return v7;
}

- (void)hf_updateWithDiscoveredAccessory:()HFAdditions
{
  v8 = a3;
  accessory = [v8 accessory];

  if (accessory)
  {
    accessory2 = [v8 accessory];
    [self updateWithAccessory:accessory2];
  }

  category = [v8 category];

  if (category)
  {
    category2 = [v8 category];
    [self updateAccessoryCategory:category2];
  }
}

@end