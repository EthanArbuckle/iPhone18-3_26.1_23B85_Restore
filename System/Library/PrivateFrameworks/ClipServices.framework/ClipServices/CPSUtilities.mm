@interface CPSUtilities
+ (BOOL)_associatedDomainIsApprovedForURL:(id)l applicationIdentifier:(id)identifier serviceType:(id)type;
+ (BOOL)deviceHasCapabilities:(id)capabilities;
+ (BOOL)deviceHasHomeButton;
+ (BOOL)deviceIsPad;
+ (BOOL)isBundleIdentifierBeingInstalled:(id)installed;
+ (BOOL)isNetworkConstrained;
+ (BOOL)shouldPlayHaptics;
+ (id)localizedDeviceName;
+ (id)lowercasedDeviceFamilyName;
+ (id)openURL:(id)l withOptions:(id)options;
+ (id)oppositeDeviceFamilyName;
+ (id)osVersion;
+ (id)poweredByCaptionForAppName:(id)name;
+ (id)productVariants;
+ (id)versionIdentifierForAppWithBundleIdentifier:(id)identifier isPlaceholder:(BOOL *)placeholder;
+ (int)_deviceClass;
+ (void)openAppWithBundleIdentifier:(id)identifier;
+ (void)uninstallAppWithBundleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CPSUtilities

+ (id)openURL:(id)l withOptions:(id)options
{
  v5 = MEMORY[0x277CC1E80];
  optionsCopy = options;
  lCopy = l;
  defaultWorkspace = [v5 defaultWorkspace];
  v12 = 0;
  [defaultWorkspace openURL:lCopy withOptions:optionsCopy error:&v12];

  v9 = v12;
  v10 = v12;

  return v9;
}

+ (void)openAppWithBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CC1E80];
  identifierCopy = identifier;
  defaultWorkspace = [v3 defaultWorkspace];
  [defaultWorkspace openApplicationWithBundleID:identifierCopy];
}

+ (id)versionIdentifierForAppWithBundleIdentifier:(id)identifier isPlaceholder:(BOOL *)placeholder
{
  v5 = MEMORY[0x277CC1E70];
  identifierCopy = identifier;
  v7 = [[v5 alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];

  if (placeholder)
  {
    *placeholder = [v7 isPlaceholder];
  }

  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    iTunesMetadata = [v7 iTunesMetadata];
    v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "versionIdentifier")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)uninstallAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UninstallClip", "start uninstall clip", buf, 2u);
  }

  v8 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];
  appClipMetadata = [v8 appClipMetadata];

  if (appClipMetadata)
  {
    v10 = MEMORY[0x277D1C148];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__CPSUtilities_uninstallAppWithBundleIdentifier_completion___block_invoke;
    v13[3] = &unk_278DCDBB0;
    v14 = identifierCopy;
    v15 = completionCopy;
    [v10 uninstallAppWithBundleID:v14 requestUserConfirmation:0 completion:v13];

    v11 = v14;
LABEL_8:

    goto LABEL_9;
  }

  v12 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CPSUtilities uninstallAppWithBundleIdentifier:identifierCopy completion:v12];
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (completionCopy)
  {
LABEL_7:
    v11 = [MEMORY[0x277CCA9B8] cps_errorWithCode:1];
    (*(completionCopy + 2))(completionCopy, v11);
    goto LABEL_8;
  }

LABEL_9:
}

void __60__CPSUtilities_uninstallAppWithBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__CPSUtilities_uninstallAppWithBundleIdentifier_completion___block_invoke_cold_1(a1, v5, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v10 = 138477827;
    v11 = v6;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_INFO, "CPSUtilities: successfully uninstalled app %{private}@", &v10, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "UninstallClip", "end uninstall clip", &v10, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)poweredByCaptionForAppName:(id)name
{
  v3 = MEMORY[0x277CCACA8];
  nameCopy = name;
  v5 = _CPSLocalizedString(@"Powered by %@", &_CPSLocalizableStringsBundleOnceToken, &_CPSLocalizableStringsBundle);
  nameCopy = [v3 stringWithFormat:v5, nameCopy];

  return nameCopy;
}

+ (int)_deviceClass
{
  if (_deviceClass_onceToken != -1)
  {
    +[CPSUtilities _deviceClass];
  }

  return _deviceClass_deviceClass;
}

uint64_t __28__CPSUtilities__deviceClass__block_invoke()
{
  result = MGGetSInt32Answer();
  _deviceClass_deviceClass = result;
  return result;
}

+ (id)localizedDeviceName
{
  if (localizedDeviceName_onceToken != -1)
  {
    +[CPSUtilities localizedDeviceName];
  }

  v3 = localizedDeviceName_localizedDeviceName;

  return v3;
}

uint64_t __35__CPSUtilities_localizedDeviceName__block_invoke()
{
  localizedDeviceName_localizedDeviceName = MGGetStringAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (id)lowercasedDeviceFamilyName
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CPSUtilities_lowercasedDeviceFamilyName__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (lowercasedDeviceFamilyName_onceToken != -1)
  {
    dispatch_once(&lowercasedDeviceFamilyName_onceToken, block);
  }

  v2 = lowercasedDeviceFamilyName_lowercasedDeviceFamilyName;

  return v2;
}

void __42__CPSUtilities_lowercasedDeviceFamilyName__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() _deviceClass];
  if (v2 == 1)
  {
    v3 = @"iphone";
  }

  else
  {
    if (v2 != 3)
    {
      return;
    }

    v3 = @"ipad";
  }

  v4 = lowercasedDeviceFamilyName_lowercasedDeviceFamilyName;
  lowercasedDeviceFamilyName_lowercasedDeviceFamilyName = v3;
}

+ (id)oppositeDeviceFamilyName
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CPSUtilities_oppositeDeviceFamilyName__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (oppositeDeviceFamilyName_onceToken != -1)
  {
    dispatch_once(&oppositeDeviceFamilyName_onceToken, block);
  }

  v2 = oppositeDeviceFamilyName_oppositeDeviceFamilyName;

  return v2;
}

void __40__CPSUtilities_oppositeDeviceFamilyName__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() _deviceClass];
  if (v2 == 1)
  {
    v3 = @"iPad";
  }

  else
  {
    if (v2 != 3)
    {
      return;
    }

    v3 = @"iPhone";
  }

  v4 = oppositeDeviceFamilyName_oppositeDeviceFamilyName;
  oppositeDeviceFamilyName_oppositeDeviceFamilyName = v3;
}

+ (BOOL)deviceIsPad
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__CPSUtilities_deviceIsPad__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (deviceIsPad_onceToken != -1)
  {
    dispatch_once(&deviceIsPad_onceToken, block);
  }

  return deviceIsPad_isPad;
}

uint64_t __27__CPSUtilities_deviceIsPad__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _deviceClass];
  deviceIsPad_isPad = result == 3;
  return result;
}

+ (BOOL)deviceHasHomeButton
{
  if (deviceHasHomeButton_onceToken != -1)
  {
    +[CPSUtilities deviceHasHomeButton];
  }

  return deviceHasHomeButton_hasHomeButton;
}

uint64_t __35__CPSUtilities_deviceHasHomeButton__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceHasHomeButton_hasHomeButton = result != 2;
  return result;
}

+ (BOOL)shouldPlayHaptics
{
  if (shouldPlayHaptics_onceToken != -1)
  {
    +[CPSUtilities shouldPlayHaptics];
  }

  if (shouldPlayHaptics_supportsHaptics != 1)
  {
    return 0;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"effects-haptic", @"com.apple.preferences.sounds", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 0;
  }

  return !v3;
}

uint64_t __33__CPSUtilities_shouldPlayHaptics__block_invoke()
{
  result = MGGetBoolAnswer();
  shouldPlayHaptics_supportsHaptics = result;
  return result;
}

+ (BOOL)isBundleIdentifierBeingInstalled:(id)installed
{
  v3 = [MEMORY[0x277D1C148] existingCoordinatorForAppWithBundleID:installed error:0];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)isNetworkConstrained
{
  mEMORY[0x277CD9200] = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  path = [mEMORY[0x277CD9200] path];
  isConstrained = [path isConstrained];

  return isConstrained;
}

+ (BOOL)deviceHasCapabilities:(id)capabilities
{
  v14 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  if ([capabilitiesCopy count])
  {
    v4 = [capabilitiesCopy safari_filterObjectsUsingBlock:&__block_literal_global_51];

    v5 = MGCopyMultipleAnswers();
    v6 = [v5 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_55];
    v7 = [v6 count];
    v8 = v7 == [v4 count];
    if (!v8)
    {
      v9 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_INFO, "CPSUtilities: app clip requires capabilities that is not supported by this device [ %@].", &v12, 0xCu);
      }
    }
  }

  else
  {
    v8 = 1;
    v4 = capabilitiesCopy;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __38__CPSUtilities_deviceHasCapabilities___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB68];
  v3 = a2;
  v4 = [v2 null];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

void *__38__CPSUtilities_deviceHasCapabilities___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 BOOLValue])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (BOOL)_associatedDomainIsApprovedForURL:(id)l applicationIdentifier:(id)identifier serviceType:(id)type
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typeCopy = type;
  if (l)
  {
    v9 = [MEMORY[0x277CCACE0] componentsWithURL:l resolvingAgainstBaseURL:1];
    host = [v9 host];
    if (host)
    {
      v11 = [objc_alloc(MEMORY[0x277D547B0]) initWithServiceType:typeCopy applicationIdentifier:identifierCopy domain:0];
      [MEMORY[0x277D547A8] serviceDetailsWithServiceSpecifier:v11 error:0];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = v25 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v21 = v11;
        v14 = *v23;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            if ([v16 isApproved])
            {
              serviceSpecifier = [v16 serviceSpecifier];
              v18 = [serviceSpecifier domainEncompassesDomain:host];

              if (v18)
              {
                LOBYTE(v13) = 1;
                goto LABEL_16;
              }
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

LABEL_16:
        v11 = v21;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)productVariants
{
  if (productVariants_onceToken != -1)
  {
    +[CPSUtilities productVariants];
  }

  v3 = productVariants_productVariants;

  return v3;
}

uint64_t __31__CPSUtilities_productVariants__block_invoke()
{
  productVariants_productVariants = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (id)osVersion
{
  if (osVersion_onceToken != -1)
  {
    +[CPSUtilities osVersion];
  }

  v3 = osVersion_productVersion;

  return v3;
}

uint64_t __25__CPSUtilities_osVersion__block_invoke()
{
  osVersion_productVersion = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (void)openURL:inAppWithBundleIdentifier:promptForUnlock:originIsControlCenter:completionHandler:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCCUIAppLaunchOriginControlCenter(void)"];
  [v0 handleFailureInFunction:v1 file:@"CPSUtilities.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)uninstallAppWithBundleIdentifier:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138477827;
  v4 = a1;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "CPSUtilities: Not an app clip (%{private}@). Skipping deletion.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __60__CPSUtilities_uninstallAppWithBundleIdentifier_completion___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  v8 = 138478083;
  v9 = v4;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_2436ED000, v5, OS_LOG_TYPE_ERROR, "CPSUtilities: Error in uninstalling app %{private}@: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end