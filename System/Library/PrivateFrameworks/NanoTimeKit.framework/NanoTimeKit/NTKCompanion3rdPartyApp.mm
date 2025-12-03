@interface NTKCompanion3rdPartyApp
+ (BOOL)_isValidApplication:(id)application;
+ (BOOL)_isValidComplicationsInformation:(id)information;
+ (id)_URLOfFirstItemWithExtension:(id)extension inDirectory:(id)directory;
+ (id)_urlsToGalleryBundleInApplicationWithContainerBundleId:(id)id;
+ (id)companion3rdPartyRemoteApp:(id)app device:(id)device;
- (BOOL)applicationHasBeenUpdated:(id)updated;
- (BOOL)isEqual:(id)equal;
- (NSArray)supportedFamilies;
- (NSURL)urlToComplicationBundle;
- (id)_initWithDevice:(id)device remoteApplication:(id)application galleryBundles:(id)bundles watchKitBundle:(id)bundle;
- (id)_initWithWatchAppId:(id)id containerAppId:(id)appId complicationClientId:(id)clientId;
- (id)appRegistrationDate;
- (id)localizedNameForRemoteApp:(id)app;
- (unint64_t)hash;
- (void)install;
@end

@implementation NTKCompanion3rdPartyApp

+ (id)companion3rdPartyRemoteApp:(id)app device:(id)device
{
  v27 = *MEMORY[0x277D85DE8];
  appCopy = app;
  deviceCopy = device;
  if ([self _isValidApplication:appCopy])
  {
    companionAppBundleID = [appCopy companionAppBundleID];
    v24 = 0;
    v9 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:companionAppBundleID allowPlaceholder:1 error:&v24];
    v10 = v24;
    if (!v9)
    {
      v11 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[NTKCompanion3rdPartyApp companion3rdPartyRemoteApp:device:];
      }
    }

    applicationState = [v9 applicationState];
    isValid = [applicationState isValid];

    if (isValid)
    {
      v14 = [v9 URL];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 URLByAppendingPathComponent:@"Watch" isDirectory:1];
        v17 = [self _URLOfFirstItemWithExtension:@"app" inDirectory:v16];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 URLByAppendingPathComponent:@"PlugIns" isDirectory:1];
          v20 = [self _URLOfFirstItemWithExtension:@"appex" inDirectory:v19];
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

    v21 = [[NTKCompanion3rdPartyApp alloc] _initWithDevice:deviceCopy remoteApplication:appCopy galleryBundles:0 watchKitBundle:v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_initWithDevice:(id)device remoteApplication:(id)application galleryBundles:(id)bundles watchKitBundle:(id)bundle
{
  v46 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  applicationCopy = application;
  bundlesCopy = bundles;
  bundleCopy = bundle;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  companionAppBundleID = [applicationCopy companionAppBundleID];
  watchKitAppExtensionBundleID = [applicationCopy watchKitAppExtensionBundleID];
  v17 = [(NTKCompanion3rdPartyApp *)self _initWithWatchAppId:bundleIdentifier containerAppId:companionAppBundleID complicationClientId:watchKitAppExtensionBundleID];
  v18 = v17;
  if (v17)
  {
    v37 = companionAppBundleID;
    v38 = bundleIdentifier;
    v40 = deviceCopy;
    [v17 setDevice:deviceCopy];
    v19 = MEMORY[0x277CCACA8];
    databaseUUID = [applicationCopy databaseUUID];
    uUIDString = [databaseUUID UUIDString];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(applicationCopy, "sequenceNumber")}];
    stringValue = [v22 stringValue];
    v24 = [v19 stringWithFormat:@"%@-%@", uUIDString, stringValue];
    [v18 setUniqueID:v24];

    [v18 setInstalled:{objc_msgSend(v18, "_installStateFromAppConduitInstallState:", 2)}];
    v39 = bundlesCopy;
    firstObject = [bundlesCopy firstObject];
    [v18 setUrlToComplicationBundle:firstObject];

    [v18 setUrlToWatchKitBundle:bundleCopy];
    array = [MEMORY[0x277CBEB18] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    supportedComplicationFamilies = [applicationCopy supportedComplicationFamilies];
    v28 = [supportedComplicationFamilies countByEnumeratingWithState:&v41 objects:v45 count:16];
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
            objc_enumerationMutation(supportedComplicationFamilies);
          }

          if (CLKComplicationFamilyFromString())
          {
            v32 = [MEMORY[0x277CCABB0] numberWithInteger:0];
            [array addObject:v32];
          }
        }

        v29 = [supportedComplicationFamilies countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v29);
    }

    if ([array count])
    {
      [v18 setSupportedFamilies:array];
    }

    name = [v18 name];
    v34 = [name length];

    deviceCopy = v40;
    if (!v34)
    {
      v35 = [v18 localizedNameForRemoteApp:applicationCopy];
      [v18 setName:v35];
    }

    bundlesCopy = v39;
    companionAppBundleID = v37;
    bundleIdentifier = v38;
  }

  return v18;
}

- (id)localizedNameForRemoteApp:(id)app
{
  appCopy = app;
  v4 = *MEMORY[0x277CBEC40];
  v5 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CBEC40]];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v7 = [appCopy localizedInfoPlistStringsForKeys:v5 fetchingFirstMatchingLocalizationInList:preferredLanguages];

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
    applicationName = [appCopy applicationName];

    v8 = applicationName;
  }

  return v8;
}

- (id)_initWithWatchAppId:(id)id containerAppId:(id)appId complicationClientId:(id)clientId
{
  idCopy = id;
  appIdCopy = appId;
  clientIdCopy = clientId;
  v24.receiver = self;
  v24.super_class = NTKCompanion3rdPartyApp;
  v11 = [(NTKCompanion3rdPartyApp *)&v24 init];
  v12 = v11;
  if (v11)
  {
    [(NTKCompanionApp *)v11 setWatchApplicationIdentifier:idCopy];
    [(NTKCompanionApp *)v12 setContainerApplicationIdentifier:appIdCopy];
    [(NTKCompanion3rdPartyApp *)v12 setComplicationClientIdentifier:clientIdCopy];
    containerApplicationIdentifier = [(NTKCompanionApp *)v12 containerApplicationIdentifier];

    if (containerApplicationIdentifier)
    {
      v14 = objc_alloc(MEMORY[0x277CC1E70]);
      containerApplicationIdentifier2 = [(NTKCompanionApp *)v12 containerApplicationIdentifier];
      v23 = 0;
      v16 = [v14 initWithBundleIdentifier:containerApplicationIdentifier2 allowPlaceholder:1 error:&v23];
      v17 = v23;

      if (v16)
      {
        localizedName = [v16 localizedName];
        [(NTKCompanionApp *)v12 setName:localizedName];

        name = [(NTKCompanionApp *)v12 name];
        v20 = [name length];

        if (v20)
        {
LABEL_9:

          goto LABEL_10;
        }

        localizedShortName = [v16 localizedShortName];
        [(NTKCompanionApp *)v12 setName:localizedShortName];
      }

      else
      {
        localizedShortName = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
        if (os_log_type_enabled(localizedShortName, OS_LOG_TYPE_ERROR))
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_galleryBundlesLoaded && !selfCopy->_urlToComplicationBundle)
  {
    containerApplicationIdentifier = [(NTKCompanionApp *)selfCopy containerApplicationIdentifier];
    v4 = [NTKCompanion3rdPartyApp _urlsToGalleryBundleInApplicationWithContainerBundleId:containerApplicationIdentifier];

    firstObject = [v4 firstObject];
    urlToComplicationBundle = selfCopy->_urlToComplicationBundle;
    selfCopy->_urlToComplicationBundle = firstObject;

    selfCopy->_galleryBundlesLoaded = 1;
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_urlToComplicationBundle;

  return v7;
}

- (unint64_t)hash
{
  watchApplicationIdentifier = [(NTKCompanionApp *)self watchApplicationIdentifier];
  v4 = [watchApplicationIdentifier hash];
  containerApplicationIdentifier = [(NTKCompanionApp *)self containerApplicationIdentifier];
  v6 = [containerApplicationIdentifier hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    watchApplicationIdentifier = [(NTKCompanionApp *)self watchApplicationIdentifier];
    watchApplicationIdentifier2 = [v5 watchApplicationIdentifier];
    if ([watchApplicationIdentifier isEqualToString:watchApplicationIdentifier2])
    {
      containerApplicationIdentifier = [(NTKCompanionApp *)self containerApplicationIdentifier];
      containerApplicationIdentifier2 = [v5 containerApplicationIdentifier];
      v10 = [containerApplicationIdentifier isEqualToString:containerApplicationIdentifier2];
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
  containerApplicationIdentifier = [(NTKCompanionApp *)self containerApplicationIdentifier];
  v10 = 0;
  v5 = [v3 initWithBundleIdentifier:containerApplicationIdentifier allowPlaceholder:1 error:&v10];
  v6 = v10;

  if (v5)
  {
    registrationDate = [v5 registrationDate];
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NTKCompanion3rdPartyApp _initWithWatchAppId:? containerAppId:? complicationClientId:?];
    }

    registrationDate = 0;
  }

  return registrationDate;
}

- (BOOL)applicationHasBeenUpdated:(id)updated
{
  updatedCopy = updated;
  if ([(NTKCompanion3rdPartyApp *)self isEqual:updatedCopy])
  {
    uniqueID = [(NTKCompanion3rdPartyApp *)self uniqueID];
    uniqueID2 = [updatedCopy uniqueID];
    v7 = [uniqueID isEqualToString:uniqueID2];

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
    urlToComplicationBundle = [(NTKCompanion3rdPartyApp *)self urlToComplicationBundle];

    if (urlToComplicationBundle)
    {
      v5 = MEMORY[0x277CCA8D8];
      urlToComplicationBundle2 = [(NTKCompanion3rdPartyApp *)self urlToComplicationBundle];
      v7 = [v5 bundleWithURL:urlToComplicationBundle2];

      v8 = [NTKComplicationBundleHelper supportedComplicationFamiliesForBundle:v7];
      [(NTKCompanion3rdPartyApp *)self setSupportedFamilies:v8];
    }
  }

  return v3;
}

- (void)install
{
  mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  watchApplicationIdentifier = [(NTKCompanionApp *)self watchApplicationIdentifier];
  device = [(NTKCompanion3rdPartyApp *)self device];
  nrDevice = [device nrDevice];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__NTKCompanion3rdPartyApp_install__block_invoke;
  v8[3] = &unk_278781338;
  v8[4] = self;
  [mEMORY[0x277CEAF80] installApplication:watchApplicationIdentifier onPairedDevice:nrDevice completion:v8];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NTKCompanion3rdPartyAppInstallStartedNotification" object:self];
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

+ (id)_URLOfFirstItemWithExtension:(id)extension inDirectory:(id)directory
{
  v25 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v23 = 0;
  v8 = [defaultManager contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:0 options:5 error:&v23];
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
          pathExtension = [v14 pathExtension];
          v16 = [pathExtension isEqualToString:extensionCopy];

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

+ (BOOL)_isValidApplication:(id)application
{
  applicationCopy = application;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v5 = [bundleIdentifier length];
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

+ (BOOL)_isValidComplicationsInformation:(id)information
{
  v3 = [information count];
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

+ (id)_urlsToGalleryBundleInApplicationWithContainerBundleId:(id)id
{
  v33 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v4 = objc_opt_new();
  v31 = 0;
  v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:idCopy allowPlaceholder:1 error:&v31];
  v6 = v31;
  if (!v5)
  {
    v7 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[NTKCompanion3rdPartyApp companion3rdPartyRemoteApp:device:];
    }
  }

  applicationState = [v5 applicationState];
  isInstalled = [applicationState isInstalled];

  if (isInstalled)
  {
    v24 = v6;
    v25 = idCopy;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [v5 URL];
    v22 = v30 = 0;
    v23 = defaultManager;
    v11 = [defaultManager contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
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
          path = [v17 path];
          v19 = [path hasSuffix:@".ckcomplication"];

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
    idCopy = v25;
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