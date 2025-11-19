@interface NTKCompanion3rdPartyApp
+ (BOOL)_isValidApplication:(id)a3;
+ (BOOL)_isValidComplicationsInformation:(id)a3;
+ (id)_URLOfFirstItemWithExtension:(id)a3 inDirectory:(id)a4;
+ (id)_urlsToGalleryBundleInApplicationWithContainerBundleId:(id)a3;
+ (id)companion3rdPartyRemoteApp:(id)a3 device:(id)a4;
- (BOOL)applicationHasBeenUpdated:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)supportedFamilies;
- (NSURL)urlToComplicationBundle;
- (id)_initWithDevice:(id)a3 remoteApplication:(id)a4 galleryBundles:(id)a5 watchKitBundle:(id)a6;
- (id)_initWithWatchAppId:(id)a3 containerAppId:(id)a4 complicationClientId:(id)a5;
- (id)appRegistrationDate;
- (id)localizedNameForRemoteApp:(id)a3;
- (unint64_t)hash;
- (void)install;
@end

@implementation NTKCompanion3rdPartyApp

+ (id)companion3rdPartyRemoteApp:(id)a3 device:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([a1 _isValidApplication:v6])
  {
    v8 = [v6 companionAppBundleID];
    v24 = 0;
    v9 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v8 allowPlaceholder:1 error:&v24];
    v10 = v24;
    if (!v9)
    {
      v11 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[NTKCompanion3rdPartyApp companion3rdPartyRemoteApp:device:];
      }
    }

    v12 = [v9 applicationState];
    v13 = [v12 isValid];

    if (v13)
    {
      v14 = [v9 URL];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 URLByAppendingPathComponent:@"Watch" isDirectory:1];
        v17 = [a1 _URLOfFirstItemWithExtension:@"app" inDirectory:v16];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 URLByAppendingPathComponent:@"PlugIns" isDirectory:1];
          v20 = [a1 _URLOfFirstItemWithExtension:@"appex" inDirectory:v19];
          if (!v20)
          {
            log = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v26 = v9;
              _os_log_impl(&dword_22D9C5000, log, OS_LOG_TYPE_INFO, "%@ contains an extensionless watch app", buf, 0xCu);
            }
          }
        }

        else
        {
          v19 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            +[NTKCompanion3rdPartyApp companion3rdPartyRemoteApp:device:];
          }

          v20 = 0;
        }
      }

      else
      {
        v16 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          +[NTKCompanion3rdPartyApp companion3rdPartyRemoteApp:device:];
        }

        v20 = 0;
      }
    }

    else
    {
      v15 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[NTKCompanion3rdPartyApp companion3rdPartyRemoteApp:device:];
      }

      v20 = 0;
    }

    v21 = [[NTKCompanion3rdPartyApp alloc] _initWithDevice:v7 remoteApplication:v6 galleryBundles:0 watchKitBundle:v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_initWithDevice:(id)a3 remoteApplication:(id)a4 galleryBundles:(id)a5 watchKitBundle:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 bundleIdentifier];
  v15 = [v11 companionAppBundleID];
  v16 = [v11 watchKitAppExtensionBundleID];
  v17 = [(NTKCompanion3rdPartyApp *)self _initWithWatchAppId:v14 containerAppId:v15 complicationClientId:v16];
  v18 = v17;
  if (v17)
  {
    v37 = v15;
    v38 = v14;
    v40 = v10;
    [v17 setDevice:v10];
    v19 = MEMORY[0x277CCACA8];
    v20 = [v11 databaseUUID];
    v21 = [v20 UUIDString];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "sequenceNumber")}];
    v23 = [v22 stringValue];
    v24 = [v19 stringWithFormat:@"%@-%@", v21, v23];
    [v18 setUniqueID:v24];

    [v18 setInstalled:{objc_msgSend(v18, "_installStateFromAppConduitInstallState:", 2)}];
    v39 = v12;
    v25 = [v12 firstObject];
    [v18 setUrlToComplicationBundle:v25];

    [v18 setUrlToWatchKitBundle:v13];
    v26 = [MEMORY[0x277CBEB18] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v27 = [v11 supportedComplicationFamilies];
    v28 = [v27 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v42;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(v27);
          }

          if (CLKComplicationFamilyFromString())
          {
            v32 = [MEMORY[0x277CCABB0] numberWithInteger:0];
            [v26 addObject:v32];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v29);
    }

    if ([v26 count])
    {
      [v18 setSupportedFamilies:v26];
    }

    v33 = [v18 name];
    v34 = [v33 length];

    v10 = v40;
    if (!v34)
    {
      v35 = [v18 localizedNameForRemoteApp:v11];
      [v18 setName:v35];
    }

    v12 = v39;
    v15 = v37;
    v14 = v38;
  }

  return v18;
}

- (id)localizedNameForRemoteApp:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277CBEC40];
  v5 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CBEC40]];
  v6 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v7 = [v3 localizedInfoPlistStringsForKeys:v5 fetchingFirstMatchingLocalizationInList:v6];

  if (v7)
  {
    v8 = [v7 objectForKey:v4];
  }

  else
  {
    v8 = 0;
  }

  if (![v8 length])
  {
    v9 = [v3 applicationName];

    v8 = v9;
  }

  return v8;
}

- (id)_initWithWatchAppId:(id)a3 containerAppId:(id)a4 complicationClientId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = NTKCompanion3rdPartyApp;
  v11 = [(NTKCompanion3rdPartyApp *)&v24 init];
  v12 = v11;
  if (v11)
  {
    [(NTKCompanionApp *)v11 setWatchApplicationIdentifier:v8];
    [(NTKCompanionApp *)v12 setContainerApplicationIdentifier:v9];
    [(NTKCompanion3rdPartyApp *)v12 setComplicationClientIdentifier:v10];
    v13 = [(NTKCompanionApp *)v12 containerApplicationIdentifier];

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x277CC1E70]);
      v15 = [(NTKCompanionApp *)v12 containerApplicationIdentifier];
      v23 = 0;
      v16 = [v14 initWithBundleIdentifier:v15 allowPlaceholder:1 error:&v23];
      v17 = v23;

      if (v16)
      {
        v18 = [v16 localizedName];
        [(NTKCompanionApp *)v12 setName:v18];

        v19 = [(NTKCompanionApp *)v12 name];
        v20 = [v19 length];

        if (v20)
        {
LABEL_9:

          goto LABEL_10;
        }

        v21 = [v16 localizedShortName];
        [(NTKCompanionApp *)v12 setName:v21];
      }

      else
      {
        v21 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [NTKCompanion3rdPartyApp _initWithWatchAppId:v12 containerAppId:? complicationClientId:?];
        }
      }

      goto LABEL_9;
    }
  }

LABEL_10:

  return v12;
}

- (NSURL)urlToComplicationBundle
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_galleryBundlesLoaded && !v2->_urlToComplicationBundle)
  {
    v3 = [(NTKCompanionApp *)v2 containerApplicationIdentifier];
    v4 = [NTKCompanion3rdPartyApp _urlsToGalleryBundleInApplicationWithContainerBundleId:v3];

    v5 = [v4 firstObject];
    urlToComplicationBundle = v2->_urlToComplicationBundle;
    v2->_urlToComplicationBundle = v5;

    v2->_galleryBundlesLoaded = 1;
  }

  objc_sync_exit(v2);

  v7 = v2->_urlToComplicationBundle;

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NTKCompanionApp *)self watchApplicationIdentifier];
  v4 = [v3 hash];
  v5 = [(NTKCompanionApp *)self containerApplicationIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NTKCompanionApp *)self watchApplicationIdentifier];
    v7 = [v5 watchApplicationIdentifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(NTKCompanionApp *)self containerApplicationIdentifier];
      v9 = [v5 containerApplicationIdentifier];
      v10 = [v8 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)appRegistrationDate
{
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  v4 = [(NTKCompanionApp *)self containerApplicationIdentifier];
  v10 = 0;
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = [v5 registrationDate];
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NTKCompanion3rdPartyApp _initWithWatchAppId:? containerAppId:? complicationClientId:?];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)applicationHasBeenUpdated:(id)a3
{
  v4 = a3;
  if ([(NTKCompanion3rdPartyApp *)self isEqual:v4])
  {
    v5 = [(NTKCompanion3rdPartyApp *)self uniqueID];
    v6 = [v4 uniqueID];
    v7 = [v5 isEqualToString:v6];

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)supportedFamilies
{
  v3 = self->_supportedFamilies;
  if (!v3)
  {
    v4 = [(NTKCompanion3rdPartyApp *)self urlToComplicationBundle];

    if (v4)
    {
      v5 = MEMORY[0x277CCA8D8];
      v6 = [(NTKCompanion3rdPartyApp *)self urlToComplicationBundle];
      v7 = [v5 bundleWithURL:v6];

      v8 = [NTKComplicationBundleHelper supportedComplicationFamiliesForBundle:v7];
      [(NTKCompanion3rdPartyApp *)self setSupportedFamilies:v8];
    }
  }

  return v3;
}

- (void)install
{
  v3 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  v4 = [(NTKCompanionApp *)self watchApplicationIdentifier];
  v5 = [(NTKCompanion3rdPartyApp *)self device];
  v6 = [v5 nrDevice];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__NTKCompanion3rdPartyApp_install__block_invoke;
  v8[3] = &unk_278781338;
  v8[4] = self;
  [v3 installApplication:v4 onPairedDevice:v6 completion:v8];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"NTKCompanion3rdPartyAppInstallStartedNotification" object:self];
}

void __34__NTKCompanion3rdPartyApp_install__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __34__NTKCompanion3rdPartyApp_install__block_invoke_cold_1(a1);
    }
  }

  [*(a1 + 32) setInstalled:{objc_msgSend(*(a1 + 32), "_installStateFromAppConduitInstallState:", a2)}];
}

+ (id)_URLOfFirstItemWithExtension:(id)a3 inDirectory:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v23 = 0;
  v8 = [v7 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:5 error:&v23];
  v9 = v23;

  if (v8)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v18 = v9;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 pathExtension];
          v16 = [v15 isEqualToString:v5];

          if (v16)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v9 = v18;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_isValidApplication:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  v5 = [v4 length];
  if (!v5)
  {
    v6 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[NTKCompanion3rdPartyApp _isValidApplication:];
    }
  }

  return v5 != 0;
}

+ (BOOL)_isValidComplicationsInformation:(id)a3
{
  v3 = [a3 count];
  if (!v3)
  {
    v4 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [NTKCompanion3rdPartyApp _isValidComplicationsInformation:v4];
    }
  }

  return v3 != 0;
}

+ (id)_urlsToGalleryBundleInApplicationWithContainerBundleId:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v31 = 0;
  v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v31];
  v6 = v31;
  if (!v5)
  {
    v7 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[NTKCompanion3rdPartyApp companion3rdPartyRemoteApp:device:];
    }
  }

  v8 = [v5 applicationState];
  v9 = [v8 isInstalled];

  if (v9)
  {
    v24 = v6;
    v25 = v3;
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    [v5 URL];
    v22 = v30 = 0;
    v23 = v10;
    v11 = [v10 contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
    v21 = v30;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          v18 = [v17 path];
          v19 = [v18 hasSuffix:@".ckcomplication"];

          if (v19)
          {
            [v4 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v14);
    }

    v6 = v24;
    v3 = v25;
  }

  return v4;
}

- (void)_initWithWatchAppId:(void *)a1 containerAppId:complicationClientId:.cold.1(void *a1)
{
  v1 = [a1 containerApplicationIdentifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_10(&dword_22D9C5000, v2, v3, "App record missing for ID %@ - %@", v4, v5, v6, v7, v8);
}

void __34__NTKCompanion3rdPartyApp_install__block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) watchApplicationIdentifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_10(&dword_22D9C5000, v2, v3, "Installation failed for %@. Error: %@", v4, v5, v6, v7, v8);
}

@end