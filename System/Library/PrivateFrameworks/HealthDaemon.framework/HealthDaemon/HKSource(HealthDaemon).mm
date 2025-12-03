@interface HKSource(HealthDaemon)
+ (id)hd_currentDeviceSourceName;
+ (id)hd_getNameForSource:()HealthDaemon;
+ (id)hd_sourceForClient:()HealthDaemon bundleIdentifier:;
@end

@implementation HKSource(HealthDaemon)

+ (id)hd_sourceForClient:()HealthDaemon bundleIdentifier:
{
  v6 = a3;
  v7 = a4;
  sourceBundleIdentifier = [v6 sourceBundleIdentifier];
  if (v7 && [v6 hasArrayEntitlement:*MEMORY[0x277CCCDE0] containing:v7])
  {
    v9 = v7;

    sourceBundleIdentifier = v9;
  }

  defaultSourceBundleIdentifier = [v6 defaultSourceBundleIdentifier];
  entitlements = [v6 entitlements];
  process = [v6 process];
  name = [process name];
  v14 = [self _sourceWithBundleIdentifier:sourceBundleIdentifier defaultBundleIdentifier:defaultSourceBundleIdentifier appEntitlements:entitlements name:name];

  v15 = [objc_opt_class() hd_getNameForSource:v14];
  if (v15)
  {
    [v14 _setName:v15];
  }

  return v14;
}

+ (id)hd_getNameForSource:()HealthDaemon
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 _isLocalDevice])
  {
    hd_currentDeviceSourceName = [self hd_currentDeviceSourceName];
LABEL_5:
    localizedName = hd_currentDeviceSourceName;
    goto LABEL_34;
  }

  bundleIdentifier = [v4 bundleIdentifier];
  v7 = [self hd_isSpartanDeviceBundleIdentifier:bundleIdentifier];

  if (v7)
  {
    hd_currentDeviceSourceName = HKConnectedGymSourceName();
    goto LABEL_5;
  }

  if ([v4 _isResearchStudy])
  {
    bundleIdentifier2 = v4;
    objc_opt_self();
    v27 = 0;
    v10 = [bundleIdentifier2 _fetchBundleWithError:&v27];
    v11 = v27;
    if (!v10)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v29 = bundleIdentifier2;
        v30 = 2112;
        v31 = v11;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Unable to fetch research study bundle for source %@: %@", buf, 0x16u);
      }
    }

    hk_displayName = [v10 hk_displayName];
    v14 = hk_displayName;
    if (hk_displayName)
    {
      hk_name = hk_displayName;
    }

    else
    {
      hk_name = [v10 hk_name];
    }

    localizedName = hk_name;
  }

  else
  {
    bundleIdentifier2 = [v4 bundleIdentifier];
    objc_opt_self();
    v16 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:bundleIdentifier2];
    v17 = v16;
    if (v16)
    {
      appState = [v16 appState];
      if ([appState isValid])
      {
        localizedName = [v17 localizedName];
      }

      else
      {
        localizedName = 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = bundleIdentifier2;
        _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "Couldn't find application proxy for bundle identifier %@", buf, 0xCu);
      }

      localizedName = 0;
    }

    if (!localizedName)
    {
      v20 = bundleIdentifier2;
      objc_opt_self();
      v21 = [MEMORY[0x277CC1E60] applicationProxyForCompanionIdentifier:v20];
      v22 = v21;
      if (v21)
      {
        appState2 = [v21 appState];
        if ([appState2 isValid])
        {
          localizedName = [v22 localizedName];
        }

        else
        {
          localizedName = 0;
        }
      }

      else
      {
        _HKInitializeLogging();
        v24 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v20;
          _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "Couldn't find application proxy for companion bundle identifier %@", buf, 0xCu);
        }

        localizedName = 0;
      }

      if (!localizedName)
      {
        localizedName = [MEMORY[0x277CCDA08] aliasNameForSource:v4];
      }
    }
  }

LABEL_34:
  v25 = *MEMORY[0x277D85DE8];

  return localizedName;
}

+ (id)hd_currentDeviceSourceName
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  currentDeviceDisplayName = [mEMORY[0x277CCDD30] currentDeviceDisplayName];

  return currentDeviceDisplayName;
}

@end