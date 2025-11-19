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
  v8 = [v6 sourceBundleIdentifier];
  if (v7 && [v6 hasArrayEntitlement:*MEMORY[0x277CCCDE0] containing:v7])
  {
    v9 = v7;

    v8 = v9;
  }

  v10 = [v6 defaultSourceBundleIdentifier];
  v11 = [v6 entitlements];
  v12 = [v6 process];
  v13 = [v12 name];
  v14 = [a1 _sourceWithBundleIdentifier:v8 defaultBundleIdentifier:v10 appEntitlements:v11 name:v13];

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
    v5 = [a1 hd_currentDeviceSourceName];
LABEL_5:
    v8 = v5;
    goto LABEL_34;
  }

  v6 = [v4 bundleIdentifier];
  v7 = [a1 hd_isSpartanDeviceBundleIdentifier:v6];

  if (v7)
  {
    v5 = HKConnectedGymSourceName();
    goto LABEL_5;
  }

  if ([v4 _isResearchStudy])
  {
    v9 = v4;
    objc_opt_self();
    v27 = 0;
    v10 = [v9 _fetchBundleWithError:&v27];
    v11 = v27;
    if (!v10)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v29 = v9;
        v30 = 2112;
        v31 = v11;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Unable to fetch research study bundle for source %@: %@", buf, 0x16u);
      }
    }

    v13 = [v10 hk_displayName];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v10 hk_name];
    }

    v8 = v15;
  }

  else
  {
    v9 = [v4 bundleIdentifier];
    objc_opt_self();
    v16 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v9];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 appState];
      if ([v18 isValid])
      {
        v8 = [v17 localizedName];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v9;
        _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "Couldn't find application proxy for bundle identifier %@", buf, 0xCu);
      }

      v8 = 0;
    }

    if (!v8)
    {
      v20 = v9;
      objc_opt_self();
      v21 = [MEMORY[0x277CC1E60] applicationProxyForCompanionIdentifier:v20];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 appState];
        if ([v23 isValid])
        {
          v8 = [v22 localizedName];
        }

        else
        {
          v8 = 0;
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

        v8 = 0;
      }

      if (!v8)
      {
        v8 = [MEMORY[0x277CCDA08] aliasNameForSource:v4];
      }
    }
  }

LABEL_34:
  v25 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)hd_currentDeviceSourceName
{
  v0 = [MEMORY[0x277CCDD30] sharedBehavior];
  v1 = [v0 currentDeviceDisplayName];

  return v1;
}

@end