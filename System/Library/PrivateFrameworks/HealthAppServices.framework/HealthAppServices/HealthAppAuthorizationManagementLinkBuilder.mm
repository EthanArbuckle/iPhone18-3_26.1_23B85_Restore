@interface HealthAppAuthorizationManagementLinkBuilder
+ (BOOL)canOpenAuthorizationManagementWithValidIdentifier:(id)a3;
+ (BOOL)canOpenLinkWithSourceIdentifier:(id)a3 destinationIdentifier:(id)a4;
- (id)_URLForAuthorizationManagementFromLocation:(int64_t)a3 bundleIdentifier:(id)a4;
- (id)_URLForAuthorizationManagementLocationHealthProfileWithBundleIdentifier:(id)a3;
- (id)_URLForAuthorizationManagementLocationHealthSharingWithBundleIdentifier:(id)a3;
- (id)_URLForAuthorizationManagementLocationSettingsWithBundleIdentifier:(id)a3;
- (id)appendBundleIdentifierIfNecessary:(id)a3 toPath:(id)a4;
@end

@implementation HealthAppAuthorizationManagementLinkBuilder

+ (BOOL)canOpenLinkWithSourceIdentifier:(id)a3 destinationIdentifier:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBEBD0]);
  v9 = [v8 initWithSuiteName:*MEMORY[0x277CCE378]];
  v10 = [v9 stringForKey:@"SourceApplicationBundleIdentifierOverride"];
  v11 = v10;
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;
  v14 = [a1 canOpenAuthorizationManagementWithValidIdentifier:v13];
  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = objc_opt_class();
    v18 = @"nil";
    v24 = 138544386;
    v25 = v17;
    if (v7)
    {
      v19 = v7;
    }

    else
    {
      v19 = @"nil";
    }

    v26 = 2048;
    v27 = v14;
    if (v6)
    {
      v20 = v6;
    }

    else
    {
      v20 = @"nil";
    }

    v28 = 2112;
    v29 = v19;
    if (v13)
    {
      v18 = v13;
    }

    v30 = 2112;
    v31 = v20;
    v32 = 2112;
    v33 = v18;
    v21 = v17;
    _os_log_impl(&dword_2512F1000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ [Authorization] Can Open Link: %ld Destination: %@ Source: %@ Derived: %@", &v24, 0x34u);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)canOpenAuthorizationManagementWithValidIdentifier:(id)a3
{
  v11[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CBEB18];
    v4 = a3;
    v5 = [v3 alloc];
    v11[0] = @"com.apple.installcoordinationd";
    v11[1] = @"com.hip.PistoPilot";
    v11[2] = *MEMORY[0x277CCE558];
    v11[3] = @"com.apple.journal";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
    v7 = [v5 initWithArray:v6];

    v8 = [v7 containsObject:v4];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_URLForAuthorizationManagementFromLocation:(int64_t)a3 bundleIdentifier:(id)a4
{
  v7 = a4;
  if (a3)
  {
    if (a3 == 1)
    {
      v8 = [(HealthAppAuthorizationManagementLinkBuilder *)self _URLForAuthorizationManagementLocationHealthSharingWithBundleIdentifier:v7];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_8;
      }

      v8 = [(HealthAppAuthorizationManagementLinkBuilder *)self _URLForAuthorizationManagementLocationSettingsWithBundleIdentifier:v7];
    }
  }

  else
  {
    v8 = [(HealthAppAuthorizationManagementLinkBuilder *)self _URLForAuthorizationManagementLocationHealthProfileWithBundleIdentifier:v7];
  }

  v4 = v8;
LABEL_8:

  return v4;
}

- (id)_URLForAuthorizationManagementLocationSettingsWithBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x277CCACE0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 isAppleWatch];

  if (v8)
  {
    v9 = +[HAServicesDefines nanoInternalSettingsAppURLScheme];
    [v6 setScheme:v9];

    v10 = +[HAServicesDefines nanoHealthSettingsBundleIdentifier];
    [v6 setHost:v10];

    v11 = MEMORY[0x277CCACA8];
    v12 = +[HAServicesDefines authorizationManagementHostName];
    v13 = [v11 stringWithFormat:@"/%@", v12];
  }

  else
  {
    v14 = +[HAServicesDefines internalSettingsAppURLScheme];
    [v6 setScheme:v14];

    v15 = +[HAServicesDefines internalAppSettingsURLHost];
    [v6 setHost:v15];

    v16 = MEMORY[0x277CCACA8];
    v12 = +[HAServicesDefines healthSettingsBundleIdentifier];
    v17 = +[HAServicesDefines healthSettingsSourcesItemSpecifier];
    v13 = [v16 stringWithFormat:@"/%@/%@", v12, v17];
  }

  v18 = [(HealthAppAuthorizationManagementLinkBuilder *)self appendBundleIdentifierIfNecessary:v5 toPath:v13];

  [v6 setPath:v18];
  v19 = [v6 URL];

  return v19;
}

- (id)_URLForAuthorizationManagementLocationHealthProfileWithBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x277CCACE0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = +[HAServicesDefines internalHealthAppURLScheme];
  [v6 setScheme:v7];

  v8 = +[HAServicesDefines authorizationManagementHostName];
  [v6 setHost:v8];

  v9 = [(HealthAppAuthorizationManagementLinkBuilder *)self appendBundleIdentifierIfNecessary:v5];

  [v6 setPath:v9];
  v10 = [v6 URL];

  return v10;
}

- (id)_URLForAuthorizationManagementLocationHealthSharingWithBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x277CCACE0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = +[HAServicesDefines internalHealthAppURLScheme];
  [v6 setScheme:v7];

  v8 = +[HAServicesDefines sharingOverviewHostName];
  [v6 setHost:v8];

  v9 = MEMORY[0x277CCACA8];
  v10 = +[HAServicesDefines authorizationManagementHostName];
  v11 = [v9 stringWithFormat:@"/%@", v10];

  v12 = [(HealthAppAuthorizationManagementLinkBuilder *)self appendBundleIdentifierIfNecessary:v5 toPath:v11];

  [v6 setPath:v12];
  v13 = [v6 URL];

  return v13;
}

- (id)appendBundleIdentifierIfNecessary:(id)a3 toPath:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v13[0] = @"/";
    v13[1] = a3;
    v7 = MEMORY[0x277CBEA60];
    v8 = a3;
    v9 = [v7 arrayWithObjects:v13 count:2];

    v10 = [v9 componentsJoinedByString:&stru_28635B3F0];
    v6 = [v5 stringByAppendingString:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

@end