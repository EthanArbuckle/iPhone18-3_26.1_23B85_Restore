@interface MIBundle
+ (BOOL)bundleIsInDenyList:(id)a3;
+ (id)_URLOfFirstBundleInDirectory:(id)a3 withExtension:(id)a4 error:(id *)a5;
+ (id)_infoPlistKeysToLoad;
+ (id)bundleForURL:(id)a3 error:(id *)a4;
+ (id)bundleForURL:(id)a3 platformHint:(unsigned int)a4 forceAsPlaceholder:(BOOL)a5 error:(id *)a6;
+ (id)bundlesInParentBundle:(id)a3 subDirectory:(id)a4 matchingPredicate:(id)a5 error:(id *)a6;
- (BOOL)_getBundleRootContainsOnlyContentsDirectory:(BOOL *)a3 error:(id *)a4;
- (BOOL)_isMinimumOSVersion:(id)a3 applicableToOSVersion:(id)a4 requiredOS:(unint64_t)a5 error:(id *)a6;
- (BOOL)_setBundleParentDirectoryURL:(id)a3 forBundleArray:(id)a4 error:(id *)a5;
- (BOOL)_validateAppNSPrivacyTrackingDomainsWithError:(id *)a3;
- (BOOL)_validateExtensions:(id)a3 error:(id *)a4;
- (BOOL)_validateWithError:(id *)a3;
- (BOOL)getIsBuiltForMacPlatform:(BOOL *)a3 error:(id *)a4;
- (BOOL)getIsBuiltForiOSPlatform:(BOOL *)a3 error:(id *)a4;
- (BOOL)isApplicableToCurrentDeviceCapabilitiesWithError:(id *)a3;
- (BOOL)isApplicableToCurrentDeviceFamilyWithError:(id *)a3;
- (BOOL)isApplicableToCurrentOSVersionWithError:(id *)a3;
- (BOOL)isApplicableToOSVersion:(id)a3 error:(id *)a4;
- (BOOL)isApplicableToOSVersionEarlierThan:(id)a3;
- (BOOL)isCompatibleWithDeviceFamily:(int)a3;
- (BOOL)isDeletable;
- (BOOL)isLaunchProhibited;
- (BOOL)isPlaceholder;
- (BOOL)isRemovableSystemApp;
- (BOOL)isStaticContent;
- (BOOL)mayHaveExecutableProgram;
- (BOOL)sdkBuildVersionIsAtLeast:(id)a3;
- (BOOL)setBundleParentDirectoryURL:(id)a3 error:(id *)a4;
- (BOOL)setIsPlaceholderWithError:(id *)a3;
- (BOOL)thinningMatchesCurrentDeviceWithError:(id *)a3;
- (BOOL)validateAppMetadataWithError:(id *)a3;
- (BOOL)validateDriverKitExtensionMetadataWithError:(id *)a3;
- (BOOL)validateExtensionKitMetadataWithError:(id *)a3;
- (BOOL)validatePluginKitMetadataWithError:(id *)a3;
- (MIBundle)initWithBundleInDirectory:(id)a3 withExtension:(id)a4 error:(id *)a5;
- (MIBundle)initWithBundleParentURL:(id)a3 parentSubdirectory:(id)a4 bundleName:(id)a5 platformHint:(unsigned int)a6 forceAsPlaceholder:(BOOL)a7 error:(id *)a8;
- (MIBundle)initWithBundleURL:(id)a3 error:(id *)a4;
- (MIBundle)initWithBundleURL:(id)a3 platformHint:(unsigned int)a4 forceAsPlaceholder:(BOOL)a5 error:(id *)a6;
- (MIBundle)initWithParentBundle:(id)a3 parentSubdirectory:(id)a4 bundleName:(id)a5 platformHint:(unsigned int)a6 forceAsPlaceholder:(BOOL)a7 error:(id *)a8;
- (MIBundle)parentBundle;
- (NSArray)deviceFamilies;
- (NSArray)supportedDevices;
- (NSSet)bundleInfoPlistSupportedPlatforms;
- (NSSet)siriIntents;
- (NSString)bundleShortVersion;
- (NSString)bundleTypeDescription;
- (NSString)bundleVersion;
- (NSString)displayName;
- (NSString)emergencyOffloadVersion;
- (NSString)identifier;
- (NSString)minimumOSVersion;
- (NSString)relativePath;
- (NSString)sdkBuildVersion;
- (NSURL)bundleURL;
- (NSURL)contentsURL;
- (NSURL)infoPlistURL;
- (NSURL)plugInsDirectoryURL;
- (id)_filterExtensionBundles:(id)a3 forValidationFlags:(unsigned __int8)a4;
- (id)_filterExtensionBundlesNotInCacheIfNeeded:(id)a3;
- (id)appExtensionBundlesPerformingPlatformValidation:(unsigned __int8)a3 withError:(id *)a4;
- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)a3 withError:(id *)a4;
- (id)denormalizedURLForCFBundleURL:(id)a3;
- (id)description;
- (id)driverKitBundlesPerformingPlatformValidation:(unsigned __int8)a3 withError:(id *)a4;
- (id)extensionKitBundlesPerformingPlatformValidation:(unsigned __int8)a3 withError:(id *)a4;
- (id)frameworkBundlesWithError:(id *)a3;
- (id)infoPlistHashWithError:(id *)a3;
- (id)initForTesting;
- (id)pluginKitBundlesPerformingPlatformValidation:(unsigned __int8)a3 withError:(id *)a4;
- (id)thisBundleAndAllContainedBundlesWithError:(id *)a3;
- (id)xpcServiceBundlesWithError:(id *)a3;
- (unsigned)bundleType;
- (void)dealloc;
@end

@implementation MIBundle

- (BOOL)_validateWithError:(id *)a3
{
  v5 = [(MIBundle *)self bundleURL];
  v30 = 0;
  v31 = 0;
  v6 = MICreateCFBundleEnforcingInfoPlistSize(v5, 26214400, &v31, &v30);
  v7 = v31;
  v8 = v30;

  if (v6)
  {
    self->_cfBundle = v6;
    v9 = [objc_opt_class() _infoPlistKeysToLoad];
    v29 = v8;
    v10 = MILoadInfoPlistFromBundleWithError(v6, v9, &v29);
    v11 = v29;

    if (v10)
    {
      if ([v10 count])
      {
        v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
        objc_opt_class();
        v13 = v12;
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14 && [v14 length])
        {
          if (![v14 containsString:@"/"])
          {
            v25 = [v10 copy];
            infoPlistSubset = self->_infoPlistSubset;
            self->_infoPlistSubset = v25;

            v15 = 1;
            goto LABEL_21;
          }

          v16 = [(MIBundle *)self bundleURL];
          v17 = [v16 path];
          _CreateAndLogError("[MIBundle _validateWithError:]", 95, @"MIInstallerErrorDomain", 69, 0, &unk_1F2887B38, @"Bundle at path %@ had an invalid CFBundleIdentifier in its Info.plist: %@", v21, v17);
        }

        else
        {
          v16 = [(MIBundle *)self bundleURL];
          v17 = [v16 path];
          _CreateAndLogError("[MIBundle _validateWithError:]", 88, @"MIInstallerErrorDomain", 12, 0, &unk_1F2887B10, @"Bundle at path %@ did not have a CFBundleIdentifier in its Info.plist", v22, v17);
        }
        v8 = ;
LABEL_18:

        if (a3)
        {
          goto LABEL_19;
        }

        goto LABEL_7;
      }

      v16 = [(MIBundle *)self bundleURL];
      v17 = [v16 path];
      v18 = +[MIFileManager defaultManager];
      v28 = [v18 debugDescriptionForItemAtURL:v7];
      v8 = _CreateAndLogError("[MIBundle _validateWithError:]", 82, @"MIInstallerErrorDomain", 35, 0, &unk_1F2887AE8, @"Info.plist from bundle at path %@ had none of the keys that we expect %@", v20, v17);;
    }

    else
    {
      v16 = [(MIBundle *)self bundleURL];
      v17 = [v16 path];
      v18 = +[MIFileManager defaultManager];
      v27 = [v18 debugDescriptionForItemAtURL:v7];
      v8 = _CreateAndLogError("[MIBundle _validateWithError:]", 77, @"MIInstallerErrorDomain", 35, v11, &unk_1F2887AC0, @"Failed to load Info.plist from bundle at path %@ %@", v19, v17);;

      v10 = 0;
    }

    v14 = 0;
    v11 = v18;
    goto LABEL_18;
  }

  v10 = 0;
  v14 = 0;
  if (a3)
  {
LABEL_19:
    v23 = v8;
    v15 = 0;
    *a3 = v8;
    goto LABEL_20;
  }

LABEL_7:
  v15 = 0;
LABEL_20:
  v11 = v8;
LABEL_21:

  return v15;
}

- (void)dealloc
{
  cfBundle = self->_cfBundle;
  if (cfBundle)
  {
    CFRelease(cfBundle);
    self->_cfBundle = 0;
  }

  v4.receiver = self;
  v4.super_class = MIBundle;
  [(MIBundle *)&v4 dealloc];
}

- (id)initForTesting
{
  v3.receiver = self;
  v3.super_class = MIBundle;
  return [(MIBundle *)&v3 init];
}

- (MIBundle)initWithBundleParentURL:(id)a3 parentSubdirectory:(id)a4 bundleName:(id)a5 platformHint:(unsigned int)a6 forceAsPlaceholder:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v23.receiver = self;
  v23.super_class = MIBundle;
  v18 = [(MIBundle *)&v23 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v18->_bundleName, a5);
  objc_storeStrong(&v19->_bundleParentSubdirectory, a4);
  objc_storeStrong(&v19->_bundleParentDirectoryURL, a3);
  parentBundleID = v19->_parentBundleID;
  v19->_parentBundleID = 0;

  v19->_platformHint = a6;
  if (v9)
  {
    *&v19->_isPlaceholder = 257;
  }

  if (![(MIBundle *)v19 _validateWithError:a8])
  {
    v21 = 0;
  }

  else
  {
LABEL_5:
    v21 = v19;
  }

  return v21;
}

- (MIBundle)initWithParentBundle:(id)a3 parentSubdirectory:(id)a4 bundleName:(id)a5 platformHint:(unsigned int)a6 forceAsPlaceholder:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v25.receiver = self;
  v25.super_class = MIBundle;
  v17 = [(MIBundle *)&v25 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v17->_bundleName, a5);
  objc_storeStrong(&v18->_bundleParentSubdirectory, a4);
  v19 = [v14 bundleURL];
  bundleParentDirectoryURL = v18->_bundleParentDirectoryURL;
  v18->_bundleParentDirectoryURL = v19;

  v21 = [v14 identifier];
  parentBundleID = v18->_parentBundleID;
  v18->_parentBundleID = v21;

  objc_storeWeak(&v18->_parentBundle, v14);
  v18->_platformHint = a6;
  if (v9)
  {
    *&v18->_isPlaceholder = 257;
  }

  if (![(MIBundle *)v18 _validateWithError:a8])
  {
    v23 = 0;
  }

  else
  {
LABEL_5:
    v23 = v18;
  }

  return v23;
}

- (MIBundle)initWithBundleURL:(id)a3 platformHint:(unsigned int)a4 forceAsPlaceholder:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = *&a4;
  v10 = a3;
  v11 = [v10 URLByDeletingLastPathComponent];
  v12 = [v10 lastPathComponent];

  v13 = [(MIBundle *)self initWithBundleParentURL:v11 parentSubdirectory:0 bundleName:v12 platformHint:v8 forceAsPlaceholder:v7 error:a6];
  return v13;
}

- (MIBundle)initWithBundleURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 URLByDeletingLastPathComponent];
  v8 = [v6 lastPathComponent];

  v9 = [(MIBundle *)self initWithBundleParentURL:v7 parentSubdirectory:0 bundleName:v8 platformHint:0 forceAsPlaceholder:0 error:a4];
  return v9;
}

+ (id)bundleForURL:(id)a3 platformHint:(unsigned int)a4 forceAsPlaceholder:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = *&a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithBundleURL:v9 platformHint:v8 forceAsPlaceholder:v7 error:a6];

  return v10;
}

+ (id)bundleForURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithBundleURL:v5 platformHint:0 forceAsPlaceholder:0 error:a4];

  return v6;
}

+ (id)_URLOfFirstBundleInDirectory:(id)a3 withExtension:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v9 = +[MIFileManager defaultManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__MIBundle__URLOfFirstBundleInDirectory_withExtension_error___block_invoke;
  v19[3] = &unk_1E7AE1AC0;
  v10 = v8;
  v20 = v10;
  v21 = &v22;
  v11 = [v9 enumerateURLsForItemsInDirectoryAtURL:v7 ignoreSymlinks:1 withBlock:v19];

  v12 = v23[5];
  if (!v12)
  {
    v18 = [v7 path];
    v14 = _CreateAndLogError("+[MIBundle _URLOfFirstBundleInDirectory:withExtension:error:]", 213, @"MIInstallerErrorDomain", 36, 0, 0, @"Failed to locate a bundle with extension %@ in directory %@", v13, v10);

    v12 = v23[5];
    if (a5 && !v12)
    {
      v15 = v14;
      *a5 = v14;
      v12 = v23[5];
    }

    v11 = v14;
  }

  v16 = v12;

  _Block_object_dispose(&v22, 8);

  return v16;
}

uint64_t __61__MIBundle__URLOfFirstBundleInDirectory_withExtension_error___block_invoke(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  v7 = v6;
  if (a3 == 4)
  {
    v8 = [v6 pathExtension];
    v9 = [v8 isEqualToString:*(a1 + 32)];
    if (v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }

    v10 = v9 ^ 1u;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (MIBundle)initWithBundleInDirectory:(id)a3 withExtension:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() _URLOfFirstBundleInDirectory:v9 withExtension:v8 error:a5];

  if (v10)
  {
    self = [(MIBundle *)self initWithBundleURL:v10 platformHint:0 forceAsPlaceholder:0 error:a5];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)denormalizedURLForCFBundleURL:(id)a3
{
  v4 = a3;
  v5 = [(MIBundle *)self bundleURL];
  v6 = MIDenormalizedURLForCFBundleURL(v5, v4);

  return v6;
}

- (NSURL)contentsURL
{
  v3 = CFBundleCopySupportFilesDirectoryURL([(MIBundle *)self cfBundle]);
  v4 = [(MIBundle *)self denormalizedURLForCFBundleURL:v3];

  return v4;
}

- (NSURL)plugInsDirectoryURL
{
  v3 = CFBundleCopyBuiltInPlugInsURL([(MIBundle *)self cfBundle]);
  v4 = [(MIBundle *)self denormalizedURLForCFBundleURL:v3];

  return v4;
}

- (NSURL)infoPlistURL
{
  [(MIBundle *)self cfBundle];
  v3 = _CFBundleCopyInfoPlistURL();
  v4 = [(MIBundle *)self denormalizedURLForCFBundleURL:v3];

  return v4;
}

+ (id)_infoPlistKeysToLoad
{
  if (_infoPlistKeysToLoad_onceToken != -1)
  {
    +[MIBundle _infoPlistKeysToLoad];
  }

  v3 = _infoPlistKeysToLoad_keysSet;

  return v3;
}

uint64_t __32__MIBundle__infoPlistKeysToLoad__block_invoke()
{
  _infoPlistKeysToLoad_keysSet = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E695E4E8], *MEMORY[0x1E695E4F0], *MEMORY[0x1E695E148], *MEMORY[0x1E695E500], *MEMORY[0x1E695E138], *MEMORY[0x1E695E4F8], *MEMORY[0x1E695E120], @"MinimumProductVersion", @"MinimumOSVersion", @"UIDeviceFamily", @"InstallDeviceClasses", @"UIBackgroundModes", @"XPCService", @"NSExtension", @"EXAppExtensionAttributes", @"UIRequiredDeviceCapabilities", @"UISupportedDevices", @"SupportedDevices", @"WKCompanionAppBundleIdentifier", @"CLKComplicationPrincipalClass", @"CLKComplicationSupportedFamilies", @"WKApplication", @"WKWatchKitApp", @"WKWatchOnly", @"WKRunsIndependentlyOfCompanionApp", @"LSApplicationLaunchProhibited", @"LSCounterpartIdentifiers", @"INAlternativeAppNames", @"INIntentsSupported", @"ITSWatchOnlyContainer", @"DTSDKBuild", @"NSPrivacyTrackingDomains", @"OSMinimumDriverKitVersion", @"CF_MIEmergencyOffloadVersion", @"LSRequiresIPhoneOS", *MEMORY[0x1E695E158], @"DTPlatformName", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)identifier
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)bundleVersion
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695E500]];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)bundleShortVersion
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695E148]];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isRemovableSystemApp
{
  v3 = +[MIDaemonConfiguration sharedInstance];
  v4 = [v3 systemAppPlaceholderBundleIDToInfoMap];
  v5 = [(MIBundle *)self identifier];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6 != 0;

  return v7;
}

- (unsigned)bundleType
{
  v3 = [(MIBundle *)self identifier];
  if (v3)
  {
    bundleType = self->_bundleType;
    if (!bundleType)
    {
      v5 = [(MIBundle *)self bundleURL];
      v6 = [v5 pathExtension];

      v7 = MIDiskImageManagerProxy();
      if (![v6 isEqualToString:@"app"])
      {
        if ([v6 isEqualToString:@"appex"] || objc_msgSend(v6, "isEqualToString:", @"appex"))
        {
          v14 = 6;
        }

        else if ([v6 isEqualToString:@"framework"])
        {
          v14 = 7;
        }

        else if ([v6 isEqualToString:@"xpc"])
        {
          v14 = 8;
        }

        else
        {
          if (![v6 isEqualToString:@"dext"])
          {
            self->_bundleType = 0;
            goto LABEL_15;
          }

          v14 = 11;
        }

        self->_bundleType = v14;
LABEL_15:

        bundleType = self->_bundleType;
        goto LABEL_16;
      }

      v41 = [(MIBundle *)self bundleParentDirectoryURL];
      v8 = [v41 path];
      v9 = +[MIDaemonConfiguration sharedInstance];
      v10 = [v9 systemAppsDirectory];
      v11 = [v10 path];
      v12 = [v8 isEqualToString:v11];

      if (v12)
      {
        goto LABEL_5;
      }

      v15 = +[MIDaemonConfiguration sharedInstance];
      v16 = [v15 internalAppsDirectory];
      v17 = [v16 path];
      v18 = [v8 isEqualToString:v17];

      if (v18)
      {
        v13 = 2;
        goto LABEL_13;
      }

      v19 = v41;
      if ([v7 URLIsOnAttachedEntityType:1 at:v41])
      {
        v13 = 3;
        goto LABEL_14;
      }

      if ([v7 URLIsOnAttachedEntityType:2 at:v41])
      {
        v13 = 12;
        goto LABEL_14;
      }

      v21 = +[MIDaemonConfiguration sharedInstance];
      v22 = [v21 coreServicesDirectory];
      v23 = [v22 path];
      v24 = [v8 hasPrefix:v23];

      if (v24)
      {
LABEL_28:
        v13 = 5;
        goto LABEL_14;
      }

      v25 = +[MIDaemonConfiguration sharedInstance];
      v26 = [v25 systemAppPlaceholdersDirectory];
      v27 = [v26 path];
      v28 = [v8 hasPrefix:v27];

      if (v28)
      {
        v13 = 10;
        goto LABEL_14;
      }

      v29 = +[MIDaemonConfiguration sharedInstance];
      v30 = [v29 systemAppBundleIDToInfoMap];
      v31 = [v30 objectForKeyedSubscript:v3];
      if (v31)
      {
      }

      else
      {
        v40 = +[MIDaemonConfiguration sharedInstance];
        v32 = [v40 systemAppPlaceholderBundleIDToInfoMap];
        v33 = [v32 objectForKeyedSubscript:v3];

        if (!v33)
        {
          v34 = +[MIDaemonConfiguration sharedInstance];
          v35 = [v34 coreServicesAppBundleIDToInfoMap];
          v36 = [v35 objectForKeyedSubscript:v3];

          v19 = v41;
          if (!v36)
          {
            v37 = +[MIDaemonConfiguration sharedInstance];
            v38 = [v37 internalAppBundleIDToInfoMap];
            v39 = [v38 objectForKeyedSubscript:v3];

            if (v39)
            {
              v13 = 2;
              goto LABEL_14;
            }

            if ([v7 bundleID:v3 isOnAttachedEntityType:1])
            {
              v13 = 3;
            }

            else if ([v7 bundleID:v3 isOnAttachedEntityType:2])
            {
              v13 = 12;
            }

            else
            {
              v13 = 4;
            }

            goto LABEL_13;
          }

          goto LABEL_28;
        }
      }

LABEL_5:
      v13 = 1;
LABEL_13:
      v19 = v41;
LABEL_14:
      self->_bundleType = v13;

      goto LABEL_15;
    }
  }

  else
  {
    bundleType = 0;
  }

LABEL_16:

  return bundleType;
}

- (BOOL)isStaticContent
{
  v6 = self;
  v57 = *MEMORY[0x1E69E9840];
  v2 = [(MIBundle *)self bundleParentDirectoryURL];
  v3 = [v2 path];
  v4 = MIDiskImageManagerProxy();
  v5 = [v6 bundleType];
  LOBYTE(v6) = 0;
  if (v5 > 5)
  {
    if (v5 > 7)
    {
      if (v5 != 8)
      {
        if (v5 != 12)
        {
          goto LABEL_50;
        }

        v19 = v4;
        v20 = 2;
        goto LABEL_47;
      }
    }

    else if (v5 != 6)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v9 = +[MIDaemonConfiguration sharedInstance];
      v6 = [v9 allFrameworksDirectories];

      v10 = [v6 countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (!v10)
      {
LABEL_16:

        LOBYTE(v6) = 0;
        goto LABEL_50;
      }

      v11 = v10;
      v12 = *v43;
LABEL_10:
      v13 = 0;
      while (1)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = [*(*(&v42 + 1) + 8 * v13) path];
        v15 = [v3 hasPrefix:v14];

        if (v15)
        {
          goto LABEL_48;
        }

        if (v11 == ++v13)
        {
          v11 = [v6 countByEnumeratingWithState:&v42 objects:v54 count:16];
          if (v11)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }
    }

    LOBYTE(v6) = 1;
    if ([v4 URLIsOnAttachedEntityType:1 at:v2])
    {
      goto LABEL_50;
    }

    if ([v4 URLIsOnAttachedEntityType:2 at:v2])
    {
LABEL_49:
      LOBYTE(v6) = 1;
      goto LABEL_50;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v21 = +[MIDaemonConfiguration sharedInstance];
    v6 = [v21 allExtensionKitExtensionsDirectories];

    v22 = [v6 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (!v22)
    {
LABEL_33:

      v28 = +[MIDaemonConfiguration sharedInstance];
      v29 = [v28 allFrameworksDirectories];
      v30 = [v29 mutableCopy];

      v31 = +[MIDaemonConfiguration sharedInstance];
      v32 = [v31 systemAppsDirectory];
      [v30 addObject:v32];

      v33 = +[MIDaemonConfiguration sharedInstance];
      v34 = [v33 coreServicesDirectory];
      [v30 addObject:v34];

      v35 = +[MIDaemonConfiguration sharedInstance];
      v36 = [v35 internalAppsDirectory];
      [v30 addObject:v36];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = v30;
      v6 = [v7 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v6)
      {
        v37 = *v47;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v47 != v37)
            {
              objc_enumerationMutation(v7);
            }

            v39 = [*(*(&v46 + 1) + 8 * i) path];
            v40 = [v3 hasPrefix:v39];

            if (v40)
            {
              LOBYTE(v6) = 1;
              goto LABEL_52;
            }
          }

          v6 = [v7 countByEnumeratingWithState:&v46 objects:v55 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_52:

      goto LABEL_45;
    }

    v23 = v22;
    v24 = *v51;
LABEL_27:
    v25 = 0;
    while (1)
    {
      if (*v51 != v24)
      {
        objc_enumerationMutation(v6);
      }

      v26 = [*(*(&v50 + 1) + 8 * v25) path];
      v27 = [v3 hasPrefix:v26];

      if (v27)
      {
        break;
      }

      if (v23 == ++v25)
      {
        v23 = [v6 countByEnumeratingWithState:&v50 objects:v56 count:16];
        if (v23)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }
    }

LABEL_48:

    goto LABEL_49;
  }

  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 == 5)
      {
        v7 = +[MIDaemonConfiguration sharedInstance];
        v16 = [v7 coreServicesDirectory];
        v17 = [v16 path];
        v18 = [v3 isEqualToString:v17];
LABEL_44:
        LOBYTE(v6) = v18;

LABEL_45:
        goto LABEL_50;
      }

      goto LABEL_50;
    }

    v19 = v4;
    v20 = 1;
LABEL_47:
    LOBYTE(v6) = [v19 URLIsOnAttachedEntityType:v20 at:v2];
    goto LABEL_50;
  }

  if (v5 == 1)
  {
    v7 = +[MIDaemonConfiguration sharedInstance];
    v8 = [v7 systemAppsDirectory];
    goto LABEL_43;
  }

  if (v5 == 2)
  {
    v7 = +[MIDaemonConfiguration sharedInstance];
    v8 = [v7 internalAppsDirectory];
LABEL_43:
    v16 = v8;
    v17 = [v8 path];
    v18 = [v3 isEqual:v17];
    goto LABEL_44;
  }

LABEL_50:

  return v6;
}

- (NSString)bundleTypeDescription
{
  v2 = [(MIBundle *)self bundleType]- 1;
  if (v2 > 0xB)
  {
    return @"unknown bundle type";
  }

  else
  {
    return &off_1E7AE1B78[v2]->isa;
  }
}

- (BOOL)isPlaceholder
{
  if (![(MIBundle *)self isPlaceholderStatusValid])
  {
    if ([(MIBundle *)self bundleType]== 10)
    {
      self->_isPlaceholder = 1;
    }

    else
    {
      v3 = [(MIBundle *)self parentBundle];
      v4 = v3;
      if (v3 && [v3 isPlaceholder])
      {
        self->_isPlaceholder = 1;
      }

      else
      {
        v5 = +[MIFileManager defaultManager];
        v6 = [(MIBundle *)self bundleURL];
        self->_isPlaceholder = [v5 bundleAtURLIsPlaceholder:v6];
      }
    }

    [(MIBundle *)self setIsPlaceholderStatusValid:1];
  }

  return self->_isPlaceholder;
}

- (BOOL)setIsPlaceholderWithError:(id *)a3
{
  v5 = +[MIFileManager defaultManager];
  v6 = [(MIBundle *)self bundleURL];
  v7 = [v5 markBundleAsPlaceholder:v6 withError:a3];

  if (v7)
  {
    self->_isPlaceholder = 1;
  }

  [(MIBundle *)self setIsPlaceholderStatusValid:v7];
  return v7;
}

+ (id)bundlesInParentBundle:(id)a3 subDirectory:(id)a4 matchingPredicate:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  v14 = [v10 bundleURL];
  v15 = [v14 URLByAppendingPathComponent:v11 isDirectory:1];

  v16 = +[MIFileManager defaultManager];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __71__MIBundle_bundlesInParentBundle_subDirectory_matchingPredicate_error___block_invoke;
  v30[3] = &unk_1E7AE1AE8;
  v17 = v12;
  v34 = v17;
  v36 = a1;
  v18 = v10;
  v31 = v18;
  v19 = v11;
  v32 = v19;
  v35 = &v37;
  v20 = v13;
  v33 = v20;
  v21 = [v16 enumerateURLsForItemsInDirectoryAtURL:v15 ignoreSymlinks:1 withBlock:v30];

  if (!v38[5])
  {
    if (!v21)
    {
      goto LABEL_6;
    }

    v22 = [v21 domain];
    if ([v22 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v23 = [v21 code];

      if (v23 == 2)
      {

LABEL_6:
        v24 = [v20 copy];
        v21 = 0;
        if (!a6)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    else
    {
    }

    v25 = [v15 path];
    v27 = _CreateAndLogError("+[MIBundle bundlesInParentBundle:subDirectory:matchingPredicate:error:]", 644, @"MIInstallerErrorDomain", 54, v21, 0, @"Failed to discover bundles in directory %@", v26, v25);
    v28 = v38[5];
    v38[5] = v27;
  }

  v24 = 0;
  if (!a6)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v24)
  {
    *a6 = v38[5];
  }

LABEL_13:

  _Block_object_dispose(&v37, 8);

  return v24;
}

BOOL __71__MIBundle_bundlesInParentBundle_subDirectory_matchingPredicate_error___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3 == 4 && ((v6 = *(a1 + 56)) == 0 || (*(v6 + 16))(v6, v5)))
  {
    v7 = objc_alloc(objc_opt_class());
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [v5 lastPathComponent];
    v16 = 0;
    v11 = [v7 initWithParentBundle:v8 parentSubdirectory:v9 bundleName:v10 platformHint:0 forceAsPlaceholder:0 error:&v16];
    v12 = v16;
    v13 = v16;

    v14 = v11 != 0;
    if (v11)
    {
      [*(a1 + 48) addObject:v11];
    }

    else
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v12);
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)isDeletable
{
  v3 = [(MIBundle *)self bundleType];
  v4 = [(MIBundle *)self bundleParentDirectoryURL];
  v5 = [v4 path];

  if (v3 == 4)
  {
    goto LABEL_6;
  }

  if (v3 == 2)
  {
    v9 = +[MIDaemonConfiguration sharedInstance];
    v10 = [v9 internalAppsDirectory];
    v11 = [v10 path];
    if (([v5 isEqualToString:v11] & 1) == 0)
    {
LABEL_10:
      v12 = +[MIDaemonConfiguration sharedInstance];
      v8 = [v12 allowsInternalSecurityPolicy];

      goto LABEL_11;
    }

LABEL_9:
    v8 = 0;
LABEL_11:

    goto LABEL_12;
  }

  if (v3 != 1 || (+[MIDaemonConfiguration sharedInstance](MIDaemonConfiguration, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 allowDeletableSystemApps], v6, !v7))
  {
    v8 = 0;
    goto LABEL_12;
  }

  if (![(MIBundle *)self isRemovableSystemApp])
  {
    v9 = +[MIDaemonConfiguration sharedInstance];
    v10 = [v9 systemAppsDirectory];
    v11 = [v10 path];
    if (([v5 isEqualToString:v11] & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_6:
  v8 = 1;
LABEL_12:

  return v8;
}

- (id)_filterExtensionBundlesNotInCacheIfNeeded:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MIBundle *)self allowsAppleAppExtensionsNotInExtensionCache])
  {
    v21 = [(MIBundle *)self installsAppleAppExtensionsNotInExtensionCache];
    v5 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (!v7)
    {
      goto LABEL_23;
    }

    v8 = v7;
    v9 = *v24;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        if (![v11 targetsAppleExtensionPoint])
        {
          v13 = 0;
LABEL_13:
          [v5 addObject:v11];
          goto LABEL_14;
        }

        v22 = 0;
        v12 = [v11 extensionCacheEntryWithError:&v22];
        v13 = v22;

        if (v12)
        {
          goto LABEL_13;
        }

        v14 = [v13 domain];
        if ([v14 isEqualToString:@"MIInstallerErrorDomain"])
        {
          v15 = [v13 code];

          if (v15 == 45)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }

        if (v21 && ([v11 installableIfAppleAppExtensionsNotInExtensionCache] & 1) != 0)
        {
          goto LABEL_13;
        }

        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v19 = [v11 identifier];
          MOLogWrite();
        }

LABEL_14:

        ++v10;
      }

      while (v8 != v10);
      v16 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v8 = v16;
      if (!v16)
      {
LABEL_23:

        v17 = [v5 copy];
        v4 = v20;
        goto LABEL_25;
      }
    }
  }

  v17 = v4;
LABEL_25:

  return v17;
}

- (id)_filterExtensionBundles:(id)a3 forValidationFlags:(unsigned __int8)a4
{
  v4 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v9)
    {
      goto LABEL_32;
    }

    v10 = v9;
    v11 = *v31;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        if (v4 & 2) == 0 || ([*(*(&v30 + 1) + 8 * i) isApplicableToCurrentOSVersionWithError:0])
        {
          if ((v4 & 1) == 0)
          {
            goto LABEL_12;
          }

          v29 = 0;
          v14 = [v13 isApplicableToCurrentDeviceCapabilitiesWithError:&v29];
          v15 = v29;
          if (v14)
          {
LABEL_11:

LABEL_12:
            [v7 addObject:{v13, v24, v25}];
            continue;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_26;
          }

          v18 = [v13 minimumOSVersion];
          if ([v18 compare:@"8.2" options:64] == -1 && v15 != 0)
          {
            v20 = [v15 domain];
            if ([v20 isEqualToString:@"MIInstallerErrorDomain"])
            {
              v28 = [v15 code];

              if (v28 == 66)
              {
                goto LABEL_11;
              }

              goto LABEL_26;
            }
          }

LABEL_26:
          if (!gLogHandle || *(gLogHandle + 44) >= 5)
          {
            v21 = [v13 bundleTypeDescription];
            v25 = [v13 identifier];
            v26 = v15;
            v24 = v21;
            MOLogWrite();
          }

          continue;
        }

        if (!gLogHandle || *(gLogHandle + 44) >= 5)
        {
          v16 = [v13 bundleTypeDescription];
          v17 = [v13 bundleURL];
          [v17 path];
          v25 = v24 = v16;
          MOLogWrite();
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v10)
      {
LABEL_32:

        v22 = [v7 copy];
        v6 = v27;
        goto LABEL_34;
      }
    }
  }

  v22 = [v5 copy];
LABEL_34:

  return v22;
}

- (id)pluginKitBundlesPerformingPlatformValidation:(unsigned __int8)a3 withError:(id *)a4
{
  v5 = a3;
  v45 = *MEMORY[0x1E69E9840];
  v7 = [(MIBundle *)self pluginKitBundles];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    goto LABEL_3;
  }

  v42 = 0;
  v41 = 0;
  v14 = [(MIBundle *)self getIsBuiltForMacPlatform:&v42 error:&v41];
  v13 = v41;
  if (!v14)
  {
    v12 = 0;
    goto LABEL_22;
  }

  if (v42 == 1)
  {
    v15 = [(MIBundle *)self plugInsDirectoryURL];
    v16 = [(MIBundle *)self bundleURL];
    v17 = [v15 path];
    v18 = [v16 path];
    v19 = [v17 substringFromIndex:{objc_msgSend(v18, "length")}];

    v40 = v13;
    v8 = [MIPluginKitBundle bundlesInParentBundle:self subDirectory:v19 matchingPredicate:&__block_literal_global_199 error:&v40];
    v9 = v40;

    v13 = v15;
  }

  else
  {
    v39 = v13;
    v8 = [MIPluginKitBundle bundlesInParentBundle:self subDirectory:@"PlugIns" matchingPredicate:&__block_literal_global_199 error:&v39];
    v9 = v39;
  }

  if (!v8)
  {
    v12 = 0;
    v13 = v9;
    goto LABEL_22;
  }

  if ([(MIBundle *)self isWatchApp])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = v8;
    v20 = [v12 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
LABEL_14:
      v23 = 0;
      while (1)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v12);
        }

        v24 = *(*(&v35 + 1) + 8 * v23);
        if ([v24 isWatchKitExtension])
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [v12 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v21)
          {
            goto LABEL_14;
          }

          goto LABEL_20;
        }
      }

      v43[0] = @"PlugIns";
      v28 = [v24 bundleName];
      v43[1] = v28;
      v43[2] = @"PlugIns";
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];

      v33 = v29;
      v30 = [MEMORY[0x1E696AEC0] pathWithComponents:v29];
      v31 = [v24 identifier];
      v34 = v9;
      v32 = [MIPluginKitBundle bundlesInParentBundle:self overrideParentBundleIDForValidation:v31 subDirectory:v30 matchingPredicate:&__block_literal_global_199 error:&v34];
      v13 = v34;

      if (v32)
      {
        v8 = [v12 arrayByAddingObjectsFromArray:v32];

        goto LABEL_28;
      }

LABEL_22:
      v10 = 0;
      v11 = 0;
      if (!a4)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_20:
    v8 = v12;
    v13 = v9;
LABEL_28:

    v9 = v13;
  }

  [(MIBundle *)self setPluginKitBundles:v8];
LABEL_3:
  v10 = [(MIBundle *)self _filterExtensionBundles:v8 forValidationFlags:v5];
  v11 = [(MIBundle *)self _filterExtensionBundlesNotInCacheIfNeeded:v10];
  v12 = v8;
  v13 = v9;
  if (!a4)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (!v11)
  {
    v25 = v13;
    *a4 = v13;
  }

LABEL_25:
  v26 = v11;

  return v11;
}

uint64_t __67__MIBundle_pluginKitBundlesPerformingPlatformValidation_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqualToString:@"appex"];

  return v3;
}

- (BOOL)validatePluginKitMetadataWithError:(id *)a3
{
  v96 = *MEMORY[0x1E69E9840];
  v5 = [(MIBundle *)self isLaunchProhibited];
  v6 = [(MIBundle *)self identifier];
  v7 = [v6 isEqualToString:@"com.apple.MapsExternalComponents"];

  v92 = 0;
  v8 = [(MIBundle *)self pluginKitBundlesWithError:&v92];
  v9 = v92;
  if (!v8)
  {
    v78 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (a3)
    {
LABEL_97:
      v62 = v9;
      v14 = 0;
      *a3 = v9;
      goto LABEL_98;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_98;
  }

  if ([(MIBundle *)self isWatchApp])
  {
    v69 = [(MIBundle *)self isApplicableToOSVersion:@"2.9.9" error:0];
  }

  else
  {
    v69 = 0;
  }

  if (!-[MIBundle isPlaceholder](self, "isPlaceholder") && v5 && ![v8 count])
  {
    obj = [(MIBundle *)self identifier];
    v15 = _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 904, @"MIInstallerErrorDomain", 122, 0, &unk_1F2887B60, @"The app extension stub app %@ must have at least one app extension, but none were found.", v46, obj);
    v77 = 0;
    v78 = 0;
    v10 = 0;
    v76 = 0;
    v12 = 0;
LABEL_95:

LABEL_96:
    v9 = v15;
    v11 = v76;
    v13 = v77;
    if (a3)
    {
      goto LABEL_97;
    }

    goto LABEL_5;
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v8;
  v70 = [obj countByEnumeratingWithState:&v88 objects:v95 count:16];
  if (!v70)
  {
    v77 = 0;
    v78 = 0;
    v10 = 0;
    v75 = 0;
    v76 = 0;
    v15 = v9;
    goto LABEL_75;
  }

  v77 = 0;
  v78 = 0;
  v10 = 0;
  v75 = 0;
  v76 = 0;
  v73 = *v89;
  v72 = v5 & v7;
  v71 = !v5 | v7;
  v15 = v9;
  while (2)
  {
    for (i = 0; i != v70; ++i)
    {
      v17 = v15;
      if (*v89 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v88 + 1) + 8 * i);
      v87 = v15;
      v19 = [v18 validateBundleMetadataWithError:{&v87, v64}];
      v15 = v87;

      if (!v19)
      {
        v12 = v75;
        goto LABEL_96;
      }

      if ([v18 isFileProviderNonUIExtension])
      {
        if (v77)
        {
          v9 = [v18 identifier];
          _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 918, @"MIInstallerErrorDomain", 62, 0, &unk_1F2887B88, @"Multiple file provider app extensions found in app but only one is allowed (found %@ ; already found %@)", v51, v9);
          goto LABEL_84;
        }

        v77 = [v18 identifier];
      }

      if (v72)
      {
        if (([v18 isMapsGeoServicesExtension] & 1) == 0)
        {
          v20 = [(MIBundle *)self identifier];
          v21 = [v20 isEqualToString:@"com.apple.MapsExternalComponents"];

          if ((v21 & 1) == 0)
          {
            v9 = [(MIBundle *)self identifier];
            v65 = [v18 extensionPointIdentifier];
            v59 = _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 926, @"MIInstallerErrorDomain", 59, 0, &unk_1F2887BB0, @"App %@ is forbidden from providing an extension of type %@", v58, v9);

            v15 = v59;
            goto LABEL_94;
          }
        }
      }

      if ((v71 & 1) == 0 && ([v18 isMessagePayloadProviderExtension] & 1) == 0)
      {
        v9 = [v18 identifier];
        v52 = [v18 extensionPointIdentifier];
        _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 933, @"MIInstallerErrorDomain", 123, 0, &unk_1F2887BD8, @"Messages stub apps may only have a single message payload provider app extension, but this stub app has an extension %@ of type %@", v53, v9);
        v55 = LABEL_88:;

        goto LABEL_93;
      }

      if ([v18 isMessagePayloadProviderExtension])
      {
        if (!v76)
        {
          v76 = [v18 identifier];
          goto LABEL_27;
        }

        v9 = [v18 identifier];
        _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 942, @"MIInstallerErrorDomain", 121, 0, &unk_1F2887C00, @"Multiple message payload provider extensions found in app but only one is allowed (found %@ ; already found %@)", v54, v9);
        v55 = LABEL_84:;

        goto LABEL_93;
      }

LABEL_27:
      if (![v18 isWatchKitExtension])
      {
        if (v69)
        {
          v27 = [v18 bundleParentSubdirectory];
          v28 = [v27 isEqualToString:@"PlugIns"];

          if (v28)
          {
            v9 = [v18 bundleURL];
            v52 = [v9 path];
            _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 985, @"MIInstallerErrorDomain", 118, 0, &unk_1F2887CC8, @"WatchKit 2 app contains a non-WatchKit extension at %@. WatchKit apps specifying a MinimumOSVersion earlier than 3.0 must have non-WatchKit extensions embedded within the WatchKit extension.", v60, v52);
            goto LABEL_88;
          }
        }

        if ([v18 isSiriIntentsExtension])
        {
          if (!v10)
          {
            v10 = objc_opt_new();
          }

          v29 = [v18 extensionAttributes];
          v9 = v29;
          if (!v29)
          {
            goto LABEL_70;
          }

          v67 = a3;
          v68 = v8;
          v30 = [v29 objectForKeyedSubscript:@"IntentsSupported"];
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v31 = v30;
          v32 = [v31 countByEnumeratingWithState:&v83 objects:v94 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v84;
            while (2)
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v84 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                if ([v10 containsObject:*(*(&v83 + 1) + 8 * j)])
                {
                  v47 = [(MIBundle *)self identifier];
                  _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 1003, @"MIInstallerErrorDomain", 117, 0, &unk_1F2887CF0, @"More than one Siri Intents app extension in the app %@ declares the value %@ in the IntentsSupported array in the ExtensionAttributes dictionary in the NSExtensionDictionary in its Info.plist.", v48, v47);
                  goto LABEL_79;
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v83 objects:v94 count:16];
              if (v33)
              {
                continue;
              }

              break;
            }
          }

          v36 = v10;
        }

        else
        {
          if (![v18 isSiriIntentsUIExtension])
          {
            continue;
          }

          if (!v78)
          {
            v78 = objc_opt_new();
          }

          v37 = [v18 extensionAttributes];
          v9 = v37;
          if (!v37)
          {
            goto LABEL_70;
          }

          v67 = a3;
          v68 = v8;
          v38 = [v37 objectForKeyedSubscript:@"IntentsSupported"];
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v31 = v38;
          v39 = [v31 countByEnumeratingWithState:&v79 objects:v93 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v80;
            while (2)
            {
              for (k = 0; k != v40; ++k)
              {
                if (*v80 != v41)
                {
                  objc_enumerationMutation(v31);
                }

                if ([v78 containsObject:*(*(&v79 + 1) + 8 * k)])
                {
                  v47 = [(MIBundle *)self identifier];
                  _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 1023, @"MIInstallerErrorDomain", 117, 0, &unk_1F2887D18, @"More than one Siri Intents UI app extension in the app %@ declares the value %@ in the IntentsSupported array in the ExtensionAttributes dictionary in the NSExtensionDictionary in its Info.plist.", v49, v47);
                  v50 = LABEL_79:;

                  v15 = v50;
                  a3 = v67;
                  v8 = v68;
                  goto LABEL_94;
                }
              }

              v40 = [v31 countByEnumeratingWithState:&v79 objects:v93 count:16];
              if (v40)
              {
                continue;
              }

              break;
            }
          }

          v36 = v78;
        }

        [v36 addObjectsFromArray:v31];

        a3 = v67;
        v8 = v68;
LABEL_70:

        continue;
      }

      if (v75)
      {
        v9 = [v18 identifier];
        v57 = _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 953, @"MIInstallerErrorDomain", 82, 0, &unk_1F2887C28, @"Multiple WatchKit app extensions found in app but only one is allowed (found %@  already found %@)", v56, v9);;

        v15 = v57;
        v12 = v75;
        goto LABEL_95;
      }

      v75 = [v18 identifier];
      if (![(MIBundle *)self isPlaceholder])
      {
        if ([(MIBundle *)self isWatchApp])
        {
          v22 = [v18 extensionAttributes];
          if (!v22)
          {
            _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 973, @"MIInstallerErrorDomain", 93, 0, &unk_1F2887CA0, @"WatchKit 2 app extension's NSExtension.NSExtensionAttributes dictionary is not present. It must contain a WKAppBundleIdentifier key set to the WatchKit app's bundle ID.", v23, v64);
            v15 = v9 = v15;
            goto LABEL_94;
          }

          v9 = v22;
          v24 = [v22 objectForKeyedSubscript:@"WKAppBundleIdentifier"];
          objc_opt_class();
          v25 = v24;
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          if (!v26)
          {
            v55 = _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 966, @"MIInstallerErrorDomain", 93, 0, &unk_1F2887C50, @"WatchKit 2 app extension's NSExtension.NSExtensionAttributes.WKAppBundleIdentifier value is missing (should be WatchKit app's bundle ID).", v43, v64);
            goto LABEL_92;
          }

          v44 = [(MIBundle *)self identifier];
          v45 = [v26 isEqualToString:v44];

          if ((v45 & 1) == 0)
          {
            v66 = [(MIBundle *)self identifier];
            v55 = _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 969, @"MIInstallerErrorDomain", 93, 0, &unk_1F2887C78, @"WatchKit 2 app extension's NSExtension.NSExtensionAttributes.WKAppBundleIdentifier value does not match WatchKit app's bundle ID (found %@ expected %@).", v61, v26);;

            v15 = v66;
LABEL_92:

LABEL_93:
            v15 = v55;
LABEL_94:
            v12 = v75;
            goto LABEL_95;
          }

          goto LABEL_70;
        }

        if (!gLogHandle || *(gLogHandle + 44) >= 5)
        {
          v64 = v75;
          MOLogWrite();
        }
      }
    }

    v70 = [obj countByEnumeratingWithState:&v88 objects:v95 count:16];
    if (v70)
    {
      continue;
    }

    break;
  }

LABEL_75:

  v14 = 1;
  v9 = v15;
  v12 = v75;
  v11 = v76;
  v13 = v77;
LABEL_98:

  return v14;
}

- (id)extensionKitBundlesPerformingPlatformValidation:(unsigned __int8)a3 withError:(id *)a4
{
  v5 = a3;
  v7 = [(MIBundle *)self extensionKitBundles];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    goto LABEL_7;
  }

  v10 = [(MIBundle *)self bundleURL];
  v11 = [v10 URLByAppendingPathComponent:@"Extensions" isDirectory:1];

  v12 = +[MIFileManager defaultManager];
  v13 = [v12 itemDoesNotExistOrIsNotDirectoryAtURL:v11];

  if (v13)
  {
    v8 = objc_opt_new();
    v9 = 0;
LABEL_6:
    [(MIBundle *)self setExtensionKitBundles:v8];

LABEL_7:
    v14 = [(MIBundle *)self _filterExtensionBundles:v8 forValidationFlags:v5];
    v15 = [(MIBundle *)self _filterExtensionBundlesNotInCacheIfNeeded:v14];
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v19 = 0;
  v8 = [MIExtensionKitBundle bundlesInParentBundle:self subDirectory:@"Extensions" matchingPredicate:&__block_literal_global_332 error:&v19];
  v9 = v19;
  if (v8)
  {
    goto LABEL_6;
  }

  v14 = 0;
  v15 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v15)
  {
    v16 = v9;
    *a4 = v9;
  }

LABEL_10:
  v17 = v15;

  return v15;
}

uint64_t __70__MIBundle_extensionKitBundlesPerformingPlatformValidation_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqualToString:@"appex"];

  return v3;
}

- (BOOL)_validateExtensions:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * v10);
        v17 = v11;
        v13 = [v12 validateBundleMetadataWithError:&v17];
        v8 = v17;

        if (!v13)
        {

          if (a4)
          {
            v14 = v8;
            v15 = 0;
            *a4 = v8;
          }

          else
          {
            v15 = 0;
          }

          goto LABEL_15;
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = 1;
LABEL_15:

  return v15;
}

- (BOOL)validateExtensionKitMetadataWithError:(id *)a3
{
  v13 = 0;
  v5 = [(MIBundle *)self extensionKitBundlesWithError:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    v12 = v6;
    v8 = [(MIBundle *)self _validateExtensions:v5 error:&v12];
    v9 = v12;

    v7 = v9;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v10 = v7;
    *a3 = v7;
  }

LABEL_7:

  return v8;
}

- (id)appExtensionBundlesPerformingPlatformValidation:(unsigned __int8)a3 withError:(id *)a4
{
  v5 = a3;
  v7 = objc_opt_new();
  v8 = [(MIBundle *)self pluginKitBundlesPerformingPlatformValidation:v5 withError:a4];
  if (v8)
  {
    v9 = [(MIBundle *)self extensionKitBundlesPerformingPlatformValidation:v5 withError:a4];
    if (v9)
    {
      [v7 addObjectsFromArray:v8];
      [v7 addObjectsFromArray:v9];
      v10 = [v7 copy];
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

- (BOOL)validateDriverKitExtensionMetadataWithError:(id *)a3
{
  v13 = 0;
  v5 = [(MIBundle *)self driverKitExtensionBundlesWithError:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    v12 = v6;
    v8 = [(MIBundle *)self _validateExtensions:v5 error:&v12];
    v9 = v12;

    v7 = v9;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v10 = v7;
    *a3 = v7;
  }

LABEL_7:

  return v8;
}

- (id)infoPlistHashWithError:(id *)a3
{
  v4 = [(MIBundle *)self infoPlistURL];
  v6 = v4;
  if (v4)
  {
    v15 = 0;
    v7 = MICreateSHA256Digest(v4, &v15);
    v9 = v15;
    if (v7)
    {
      v10 = v7;
      goto LABEL_8;
    }

    v12 = _CreateAndLogError("[MIBundle infoPlistHashWithError:]", 1196, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to compute hash for Info.plist at %@", v8, v6);

    v9 = v12;
    if (!a3)
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = v9;
    v10 = 0;
    *a3 = v9;
    goto LABEL_8;
  }

  v9 = _CreateAndLogError("[MIBundle infoPlistHashWithError:]", 1190, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to get Info.plist path", v5, v14);
  if (a3)
  {
    goto LABEL_5;
  }

LABEL_7:
  v10 = 0;
LABEL_8:

  return v10;
}

+ (BOOL)bundleIsInDenyList:(id)a3
{
  v3 = a3;
  if (bundleIsInDenyList__onceToken != -1)
  {
    +[MIBundle bundleIsInDenyList:];
  }

  v4 = bundleIsInDenyList__denylist;
  v5 = [v3 path];
  v6 = [v4 containsObject:v5];

  if (v6 && gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v8 = [v3 path];
    MOLogWrite();
  }

  return v6;
}

uint64_t __31__MIBundle_bundleIsInDenyList___block_invoke()
{
  bundleIsInDenyList__denylist = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2888C40];

  return MEMORY[0x1EEE66BB8]();
}

- (id)frameworkBundlesWithError:(id *)a3
{
  v5 = [(MIBundle *)self frameworkBundles];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __38__MIBundle_frameworkBundlesWithError___block_invoke;
    v13[3] = &unk_1E7AE1B30;
    v13[4] = self;
    v7 = MEMORY[0x1B2733890](v13);
    v12 = 0;
    v8 = [MIExecutableBundle bundlesInParentBundle:self subDirectory:@"Frameworks" matchingPredicate:v7 error:&v12];
    v6 = v12;
    if (!v8)
    {

      v9 = 0;
      if (!a3)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    [(MIBundle *)self setFrameworkBundles:v8];
  }

  v9 = [(MIBundle *)self frameworkBundles];
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (!v9)
  {
    v10 = v6;
    *a3 = v6;
  }

LABEL_8:

  return v9;
}

uint64_t __38__MIBundle_frameworkBundlesWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 pathExtension];
  if ([v3 isEqualToString:@"framework"])
  {
    v4 = [objc_opt_class() bundleIsInDenyList:v2] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)xpcServiceBundlesWithError:(id *)a3
{
  v5 = [(MIBundle *)self xpcServiceBundles];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v11 = 0;
    v7 = [MIExecutableBundle bundlesInParentBundle:self subDirectory:@"XPCServices" matchingPredicate:&__block_literal_global_390 error:&v11];
    v6 = v11;
    if (!v7)
    {
      v8 = 0;
      if (!a3)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    [(MIBundle *)self setXpcServiceBundles:v7];
  }

  v8 = [(MIBundle *)self xpcServiceBundles];
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (!v8)
  {
    v9 = v6;
    *a3 = v6;
  }

LABEL_8:

  return v8;
}

uint64_t __39__MIBundle_xpcServiceBundlesWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqualToString:@"xpc"];

  return v3;
}

- (id)driverKitBundlesPerformingPlatformValidation:(unsigned __int8)a3 withError:(id *)a4
{
  v7 = [(MIBundle *)self driverKitExtensionBundles];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v13 = 0;
    v8 = [MIDriverKitBundle bundlesInParentBundle:self subDirectory:@"SystemExtensions" matchingPredicate:&__block_literal_global_395 error:&v13];
    v9 = v13;
    if (!v8)
    {
      v10 = 0;
      if (!a4)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    [(MIBundle *)self setDriverKitExtensionBundles:v8];
  }

  v10 = [(MIBundle *)self _filterExtensionBundles:v8 forValidationFlags:a3 & 0xFE];
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (!v10)
  {
    v11 = v9;
    *a4 = v9;
  }

LABEL_8:

  return v10;
}

uint64_t __67__MIBundle_driverKitBundlesPerformingPlatformValidation_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqualToString:@"dext"];

  return v3;
}

- (id)thisBundleAndAllContainedBundlesWithError:(id *)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  [v5 addObject:self];
  if ([(MIBundle *)self mayContainAppExtensions])
  {
    v71 = 0;
    v6 = [(MIBundle *)self appExtensionBundlesPerformingPlatformValidation:0 withError:&v71];
    v7 = v71;
    if (!v6)
    {
LABEL_52:
      v36 = 0;
      goto LABEL_53;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v68;
      while (2)
      {
        v12 = 0;
        v13 = v7;
        do
        {
          if (*v68 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v67 + 1) + 8 * v12);
          v66 = v13;
          v15 = [v14 thisBundleAndAllContainedBundlesWithError:&v66];
          v7 = v66;

          if (!v15)
          {

            goto LABEL_52;
          }

          [v5 unionSet:v15];

          ++v12;
          v13 = v7;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v67 objects:v75 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v16 = v7;
  }

  else
  {
    v16 = 0;
  }

  if ([(MIBundle *)self isAppTypeBundle])
  {
    v65 = v16;
    v17 = [(MIBundle *)self xpcServiceBundlesWithError:&v65];
    v18 = v65;

    if (!v17)
    {
LABEL_49:

      v36 = 0;
      v7 = v18;
      if (!a3)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    v47 = a3;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v61 objects:v74 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v62;
      while (2)
      {
        v23 = 0;
        v24 = v18;
        do
        {
          if (*v62 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v61 + 1) + 8 * v23);
          v60 = v24;
          v26 = [v25 thisBundleAndAllContainedBundlesWithError:{&v60, v47}];
          v18 = v60;

          if (!v26)
          {

            a3 = v47;
            goto LABEL_49;
          }

          [v5 unionSet:v26];

          ++v23;
          v24 = v18;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v61 objects:v74 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v59 = v18;
    v27 = [(MIBundle *)self driverKitBundlesPerformingPlatformValidation:0 withError:&v59];
    v7 = v59;

    if (!v27)
    {
LABEL_60:

      v36 = 0;
      a3 = v47;
      if (!v47)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    v58 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v55 objects:v73 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v56;
      while (2)
      {
        v32 = 0;
        v33 = v7;
        do
        {
          if (*v56 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v55 + 1) + 8 * v32);
          v54 = v33;
          v35 = [v34 thisBundleAndAllContainedBundlesWithError:{&v54, v47}];
          v7 = v54;

          if (!v35)
          {

            goto LABEL_60;
          }

          [v5 unionSet:v35];

          ++v32;
          v33 = v7;
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v55 objects:v73 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

    v16 = v7;
    a3 = v47;
  }

  if (![(MIBundle *)self mayContainFrameworks])
  {
    v7 = v16;
    goto LABEL_46;
  }

  v53 = v16;
  v36 = [(MIBundle *)self frameworkBundlesWithError:&v53];
  v7 = v53;

  if (v36)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v37 = v36;
    v38 = [v37 countByEnumeratingWithState:&v49 objects:v72 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v50;
      while (2)
      {
        v41 = 0;
        v42 = v7;
        do
        {
          if (*v50 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v49 + 1) + 8 * v41);
          v48 = v42;
          v44 = [v43 thisBundleAndAllContainedBundlesWithError:&v48];
          v7 = v48;

          if (!v44)
          {

            goto LABEL_52;
          }

          [v5 unionSet:v44];

          ++v41;
          v42 = v7;
        }

        while (v39 != v41);
        v39 = [v37 countByEnumeratingWithState:&v49 objects:v72 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

LABEL_46:
    v36 = [v5 copy];
    if (!a3)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

LABEL_53:
  if (!a3)
  {
    goto LABEL_56;
  }

LABEL_54:
  if (!v36)
  {
    v45 = v7;
    *a3 = v7;
  }

LABEL_56:

  return v36;
}

- (NSString)relativePath
{
  v3 = [(MIBundle *)self parentBundle];
  v4 = [v3 relativePath];

  if (v4)
  {
    v5 = [(MIBundle *)self bundleParentSubdirectory];
    v6 = [v4 stringByAppendingPathComponent:v5];
    v7 = [(MIBundle *)self bundleURL];
    v8 = [v7 lastPathComponent];
    v9 = [v6 stringByAppendingPathComponent:v8];
  }

  else
  {
    v5 = [(MIBundle *)self bundleURL];
    v9 = [v5 lastPathComponent];
  }

  return v9;
}

- (NSString)displayName
{
  v3 = [(MIBundle *)self infoPlistSubset];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695E120]];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || ![v6 length])
  {
    v7 = [(MIBundle *)self infoPlistSubset];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695E4F8]];
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10 && [v10 length])
    {
      v6 = v10;
    }

    else
    {
      v11 = [(MIBundle *)self bundleURL];
      v6 = [v11 lastPathComponent];
    }
  }

  return v6;
}

- (BOOL)_setBundleParentDirectoryURL:(id)a3 forBundleArray:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v24;
      while (2)
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v23 + 1) + 8 * v15);
          v22 = v16;
          v18 = [v17 setBundleParentDirectoryURL:v7 error:&v22];
          v13 = v22;

          if (!v18)
          {

            if (a5)
            {
              v19 = v13;
              v20 = 0;
              *a5 = v13;
            }

            else
            {
              v20 = 0;
            }

            goto LABEL_17;
          }

          ++v15;
          v16 = v13;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v20 = 1;
LABEL_17:

  return v20;
}

- (BOOL)setBundleParentDirectoryURL:(id)a3 error:(id *)a4
{
  v7 = a3;
  objc_storeStrong(&self->_bundleParentDirectoryURL, a3);
  v8 = [(MIBundle *)self bundleURL];
  cfBundle = self->_cfBundle;
  if (cfBundle)
  {
    CFRelease(cfBundle);
    self->_cfBundle = 0;
  }

  v31 = 0;
  v10 = MICreateCFBundle(v8, 0, &v31);
  v11 = v31;
  if (v10)
  {
    self->_cfBundle = v10;
    v12 = [(MIBundle *)self pluginKitBundles];
    v30 = v11;
    v13 = [(MIBundle *)self _setBundleParentDirectoryURL:v8 forBundleArray:v12 error:&v30];
    v14 = v30;

    if (!v13)
    {
      goto LABEL_9;
    }

    v15 = [(MIBundle *)self extensionKitBundles];
    v29 = v14;
    v16 = [(MIBundle *)self _setBundleParentDirectoryURL:v8 forBundleArray:v15 error:&v29];
    v11 = v29;

    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = [(MIBundle *)self frameworkBundles];
    v28 = v11;
    v18 = [(MIBundle *)self _setBundleParentDirectoryURL:v8 forBundleArray:v17 error:&v28];
    v14 = v28;

    if (!v18)
    {
LABEL_9:
      v22 = 0;
      v11 = v14;
      if (!a4)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v19 = [(MIBundle *)self xpcServiceBundles];
    v27 = v14;
    v20 = [(MIBundle *)self _setBundleParentDirectoryURL:v8 forBundleArray:v19 error:&v27];
    v11 = v27;

    if (v20)
    {
      v21 = [(MIBundle *)self driverKitExtensionBundles];
      v26 = v11;
      v22 = [(MIBundle *)self _setBundleParentDirectoryURL:v8 forBundleArray:v21 error:&v26];
      v23 = v26;

      v11 = v23;
      goto LABEL_14;
    }

LABEL_16:
    v22 = 0;
    if (!a4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (gLogHandle && *(gLogHandle + 44) < 3)
  {
    goto LABEL_16;
  }

  v21 = [v8 path];
  MOLogWrite();
  v22 = 0;
LABEL_14:

  if (!a4)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (!v22)
  {
    v24 = v11;
    *a4 = v11;
  }

LABEL_19:

  return v22;
}

- (NSURL)bundleURL
{
  v3 = [(MIBundle *)self bundleParentSubdirectory];

  v4 = [(MIBundle *)self bundleParentDirectoryURL];
  if (v3)
  {
    v5 = [(MIBundle *)self bundleParentSubdirectory];
    v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:1];

    v4 = v6;
  }

  v7 = [(MIBundle *)self bundleName];
  v8 = [v4 URLByAppendingPathComponent:v7 isDirectory:1];

  return v8;
}

- (NSString)minimumOSVersion
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = MIMinimumOSVersionForBundleInfoPlist(v2);

  return v3;
}

- (NSArray)deviceFamilies
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = [v2 objectForKeyedSubscript:@"UIDeviceFamily"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isLaunchProhibited
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = [v2 objectForKeyedSubscript:@"LSApplicationLaunchProhibited"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v4 = [v3 isEqualToString:@"YES"];
  }

  v5 = v4;
LABEL_7:

  return v5;
}

- (BOOL)mayHaveExecutableProgram
{
  v2 = [(MIBundle *)self bundleType];
  v4 = (v2 & 0xFE) == 8 || (v2 - 1) < 6;
  return v2 == 11 || v4;
}

- (NSString)emergencyOffloadVersion
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = [v2 objectForKeyedSubscript:@"CF_MIEmergencyOffloadVersion"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSSet)bundleInfoPlistSupportedPlatforms
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(MIBundle *)self infoPlistSubset];
  v30 = *MEMORY[0x1E695E158];
  v5 = [v4 objectForKeyedSubscript:?];

  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  if (v7)
  {
    v29 = v6;
    v8 = MIArrayFilteredToContainOnlyClass(v6);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = [&unk_1F2887D40 objectForKeyedSubscript:{v13, v25, v27}];
          if (v14)
          {
            [v3 addObject:v14];
          }

          else if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v25 = v30;
            v27 = v13;
            MOLogWrite();
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }

    v6 = v29;
  }

  else
  {
    v15 = v6;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = [&unk_1F2887D40 objectForKeyedSubscript:v15];
      if (v17)
      {
        [v3 addObject:v17];
      }

      else if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v25 = v30;
        v27 = v15;
        MOLogWrite();
      }
    }
  }

  if ([v3 count])
  {
    v18 = [v3 copy];
  }

  else
  {
    v19 = [(MIBundle *)self infoPlistSubset];
    v20 = [v19 objectForKeyedSubscript:@"DTPlatformName"];
    objc_opt_class();
    v21 = v20;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v23 = [&unk_1F2887D68 objectForKeyedSubscript:v22];
      if (v23)
      {
        [v3 addObject:v23];
      }

      else if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v26 = @"DTPlatformName";
        v28 = v22;
        MOLogWrite();
      }
    }

    if ([v3 count])
    {
      v18 = [v3 copy];
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (BOOL)getIsBuiltForiOSPlatform:(BOOL *)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2888CE8, a4, &unk_1F2888D00, 0}];
  v7 = [(MIBundle *)self deviceFamilies];
  v8 = MIIsCompatibleWithAtLeastOneDeviceFamily(v7, v6, 1);

  if (a3)
  {
    *a3 = v8;
  }

  return 1;
}

- (BOOL)_getBundleRootContainsOnlyContentsDirectory:(BOOL *)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = +[MIFileManager defaultManager];
  v8 = [(MIBundle *)self bundleURL];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__MIBundle__getBundleRootContainsOnlyContentsDirectory_error___block_invoke;
  v13[3] = &unk_1E7AE1B58;
  v13[4] = &v14;
  v13[5] = &v18;
  v9 = [v7 enumerateURLsForItemsInDirectoryAtURL:v8 ignoreSymlinks:0 withBlock:v13];

  if (!a3 || v9)
  {
    if (a4 && v9)
    {
      v11 = v9;
      *a4 = v9;
    }
  }

  else
  {
    if (*(v15 + 24) == 1)
    {
      v10 = *(v19 + 24) ^ 1;
    }

    else
    {
      v10 = 0;
    }

    *a3 = v10 & 1;
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v9 == 0;
}

uint64_t __62__MIBundle__getBundleRootContainsOnlyContentsDirectory_error___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 4 && ([v5 lastPathComponent], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"Contents"), v7, (v8 & 1) != 0))
  {
    v9 = 1;
    v10 = 32;
  }

  else
  {
    v9 = 0;
    v10 = 40;
  }

  *(*(*(a1 + v10) + 8) + 24) = 1;

  return v9;
}

- (BOOL)getIsBuiltForMacPlatform:(BOOL *)a3 error:(id *)a4
{
  v7 = [(MIBundle *)self bundleInfoPlistSupportedPlatforms];
  v8 = v7;
  if (v7)
  {
    if ([v7 containsObject:&unk_1F2888CE8])
    {
      v9 = 0;
      v10 = 1;
      if (!a3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = [v8 containsObject:&unk_1F2888DD8];
      v9 = 0;
      if (!a3)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  v11 = [(MIBundle *)self infoPlistSubset];
  v12 = [v11 objectForKeyedSubscript:@"LSRequiresIPhoneOS"];

  if (v12)
  {
    v9 = 0;
    v10 = MIBooleanValue(v12, 0) ^ 1;
    goto LABEL_11;
  }

  v13 = [(MIBundle *)self platformHint];
  if (v13)
  {
    v9 = 0;
    v10 = v13 == 1;
    goto LABEL_11;
  }

  v21 = 0;
  v20 = 0;
  v16 = [(MIBundle *)self _getBundleRootContainsOnlyContentsDirectory:&v21 error:&v20];
  v17 = v20;
  v9 = v17;
  if (v16)
  {
    v10 = v21;
    if (v21 == 1)
    {
      if (gLogHandle && *(gLogHandle + 44) > 6)
      {
LABEL_24:
        v19 = [(MIBundle *)self identifier];
        MOLogWrite();
      }
    }

    else if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      goto LABEL_24;
    }

LABEL_11:

    if (!a3)
    {
LABEL_13:
      v14 = 1;
      goto LABEL_14;
    }

LABEL_12:
    *a3 = v10;
    goto LABEL_13;
  }

  if (a4)
  {
    v18 = v17;
    v14 = 0;
    *a4 = v9;
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (BOOL)isCompatibleWithDeviceFamily:(int)a3
{
  v3 = *&a3;
  v4 = [(MIBundle *)self deviceFamilies];
  LOBYTE(v3) = MIIsCompatibleWithDeviceFamily(v4, v3);

  return v3;
}

- (BOOL)isApplicableToCurrentDeviceFamilyWithError:(id *)a3
{
  v4 = [(MIBundle *)self deviceFamilies];
  LOBYTE(a3) = MIIsApplicableToCurrentDeviceFamilyWithError(v4, a3);

  return a3;
}

- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)a3 withError:(id *)a4
{
  v7 = MGCopyAnswer();
  if (v7)
  {
    v8 = 0;
    if (a3)
    {
      *a3 = 1;
    }
  }

  else
  {
    v8 = _CreateAndLogError("[MIBundle currentOSVersionForValidationUsingPlatform:withError:]", 1856, @"MIInstallerErrorDomain", 4, 0, 0, @"Could not get the product version from MobileGestalt.", v6, v10);
    if (a4)
    {
      v8 = v8;
      *a4 = v8;
    }
  }

  return v7;
}

- (BOOL)isApplicableToCurrentOSVersionWithError:(id *)a3
{
  v13 = 0;
  v14 = 0;
  v5 = [(MIBundle *)self currentOSVersionForValidationUsingPlatform:&v14 withError:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = [(MIBundle *)self minimumOSVersion];
    v12 = v6;
    v8 = [(MIBundle *)self _isMinimumOSVersion:v7 applicableToOSVersion:v5 requiredOS:v14 error:&v12];
    v9 = v12;

    v6 = v9;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v10 = v6;
    *a3 = v6;
  }

LABEL_7:

  return v8;
}

- (BOOL)isApplicableToOSVersion:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIBundle *)self minimumOSVersion];
  LOBYTE(a4) = [(MIBundle *)self isMinimumOSVersion:v7 applicableToOSVersion:v6 error:a4];

  return a4;
}

- (BOOL)_isMinimumOSVersion:(id)a3 applicableToOSVersion:(id)a4 requiredOS:(unint64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(MIBundle *)self bundleURL];
  LOBYTE(a6) = MIBundleHasMinimumOSApplicableToProductVersion(v12, v11, v10, a5, a6);

  return a6;
}

- (BOOL)isApplicableToOSVersionEarlierThan:(id)a3
{
  v4 = a3;
  v5 = [(MIBundle *)self minimumOSVersion];
  if (v5)
  {
    v6 = [v4 compare:v5 options:64] == 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isApplicableToCurrentDeviceCapabilitiesWithError:(id *)a3
{
  v4 = [(MIBundle *)self infoPlistSubset];
  v5 = [v4 objectForKeyedSubscript:@"UIRequiredDeviceCapabilities"];

  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v12 = 1;
    goto LABEL_14;
  }

  v6 = +[MICapabilitiesManager defaultManager];
  v17 = 0;
  v7 = [v6 checkCapabilities:v5 withOptions:0 error:&v17];
  v8 = v17;

  if (!v7)
  {
    v12 = 0;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v9 = [v7 objectForKeyedSubscript:@"CapabilitiesMatch"];
  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 BOOLValue];
  if ((v12 & 1) == 0)
  {
    v14 = _CreateError("[MIBundle isApplicableToCurrentDeviceCapabilitiesWithError:]", 1981, @"MIInstallerErrorDomain", 67, 0, 0, @"Device capabilities do not match requirements: %@", v13, v7);

    v8 = v14;
  }

  if (a3)
  {
LABEL_12:
    if ((v12 & 1) == 0)
    {
      v15 = v8;
      v12 = 0;
      *a3 = v8;
    }
  }

LABEL_14:

  return v12;
}

- (NSArray)supportedDevices
{
  v3 = [(MIBundle *)self infoPlistSubset];
  v4 = [v3 objectForKeyedSubscript:@"UISupportedDevices"];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = [(MIBundle *)self infoPlistSubset];
    v8 = [v7 objectForKeyedSubscript:@"SupportedDevices"];
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)thinningMatchesCurrentDeviceWithError:(id *)a3
{
  v5 = [(MIBundle *)self supportedDevices];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [(MIBundle *)self bundleType];
  if ((v6 - 1) >= 5 && v6 != 9)
  {
    _CreateAndLogError("[MIBundle thinningMatchesCurrentDeviceWithError:]", 2019, @"MIInstallerErrorDomain", 4, 0, 0, @"Unexpectedly asked to validate thinning on a non-app bundle %@", v7, self);
    v10 = LABEL_14:;
    v11 = 0;
    goto LABEL_15;
  }

  v8 = +[MIDaemonConfiguration sharedInstance];
  v9 = [v8 skipThinningCheck];

  if (v9)
  {
LABEL_4:
    v10 = 0;
    v11 = 0;
LABEL_5:
    v12 = 1;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((MIArrayContainsOnlyClass(v5) & 1) == 0)
  {
    _CreateAndLogError("[MIBundle thinningMatchesCurrentDeviceWithError:]", 2029, @"MIInstallerErrorDomain", 87, 0, &unk_1F2887D90, @"The value of the UISupportedDevices key in this app's Info.plist key must contain only string values.", v14, v22);
    goto LABEL_14;
  }

  v11 = MGCopyAnswer();
  if (!v11)
  {
    v10 = _CreateAndLogError("[MIBundle thinningMatchesCurrentDeviceWithError:]", 2039, @"MIInstallerErrorDomain", 4, 0, 0, @"MGCopyAnswer for kMGOCompatibleAppVariants returned NULL", v15, v22);
LABEL_15:
    v12 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v16 = [v5 firstObjectCommonWithArray:v11];

  if (v16)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v18 = +[MIDaemonConfiguration sharedInstance];
  v19 = [v18 alternateThinningModelIdentifier];

  if (v19 && [v5 containsObject:v19])
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      MOLogWrite();
    }

    v10 = 0;
    v12 = 1;
  }

  else
  {
    v20 = [v5 componentsJoinedByString:{@", "}];
    v23 = [v11 componentsJoinedByString:{@", "}];
    v10 = _CreateAndLogError("[MIBundle thinningMatchesCurrentDeviceWithError:]", 2054, @"MIInstallerErrorDomain", 86, 0, &unk_1F2887DB8, @"This app is not compatibile with this device. This app specifies a value for UISupportedDevices in its Info.plist as [%@], but none of the identifiers in this device's compatibility list are present in this app's supported devices. This device is compatible with [%@].", v21, v20);

    v12 = 0;
  }

  if (a3)
  {
LABEL_16:
    if (!v12)
    {
      v17 = v10;
      v12 = 0;
      *a3 = v10;
    }
  }

LABEL_6:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MIBundle *)self bundleURL];
  v7 = [v6 path];
  v8 = [(MIBundle *)self identifier];
  v9 = [(MIBundle *)self bundleTypeDescription];
  v10 = [v3 stringWithFormat:@"<%@ : path = %@ identifier = %@ type = %@>", v5, v7, v8, v9];

  return v10;
}

- (NSSet)siriIntents
{
  v34 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v3 = [(MIBundle *)self pluginKitBundlesWithError:&v32];
  v4 = v32;
  v5 = v4;
  if (v3)
  {
    v26 = v4;
    v27 = v3;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          if ([v12 isSiriIntentsExtension])
          {
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            v13 = [v12 extensionAttributes];
            v14 = v13;
            if (v13)
            {
              v15 = [v13 objectForKeyedSubscript:@"IntentsSupported"];
              if (v15)
              {
                [v9 addObjectsFromArray:v15];
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v5 = v26;
    v3 = v27;
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v22 = self;
      v24 = v4;
      MOLogWrite();
    }

    v9 = 0;
  }

  v16 = [(MIBundle *)self infoPlistSubset:v22];
  v17 = [v16 objectForKeyedSubscript:@"INIntentsSupported"];
  objc_opt_class();
  v18 = v17;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    objc_opt_class();
    if (MIArrayContainsOnlyClass(v19))
    {
      if (!v9)
      {
        v9 = objc_opt_new();
      }

      [v9 addObjectsFromArray:v19];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v23 = self;
      v25 = v19;
      MOLogWrite();
    }
  }

  v20 = [v9 copy];

  return v20;
}

- (BOOL)_validateAppNSPrivacyTrackingDomainsWithError:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [(MIBundle *)self infoPlistSubset];
  v5 = [v4 objectForKeyedSubscript:@"NSPrivacyTrackingDomains"];

  if (!v5)
  {
LABEL_12:
    v11 = 0;
    v12 = 1;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v11 = _CreateAndLogError("[MIBundle _validateAppNSPrivacyTrackingDomainsWithError:]", 2130, @"MIInstallerErrorDomain", 193, 0, 0, @"The NSPrivacyTrackingDomains key in the app's Info.plist must have an array value containing strings. An entry was found in that array of non-string type: %@", v19, v18);

      if (a3)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_11:

    goto LABEL_12;
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v11 = _CreateAndLogError("[MIBundle _validateAppNSPrivacyTrackingDomainsWithError:]", 2123, @"MIInstallerErrorDomain", 193, 0, 0, @"The NSPrivacyTrackingDomains key in the app's Info.plist must have an array value. An entry was found of non-array type %@.", v15, v14);

  if (!a3)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v16 = v11;
  v12 = 0;
  *a3 = v11;
LABEL_17:

  return v12;
}

- (BOOL)validateAppMetadataWithError:(id *)a3
{
  v5 = [(MIBundle *)self infoPlistSubset];
  v6 = [v5 objectForKeyedSubscript:@"INAlternativeAppNames"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([v8 count] >= 4)
  {
    v9 = [(MIBundle *)self bundleURL];
    v10 = [v9 path];
    v12 = _CreateAndLogError("[MIBundle validateAppMetadataWithError:]", 2156, @"MIInstallerErrorDomain", 132, 0, &unk_1F2887DE0, @"Bundle at path %@ has %lu %@ in its Info.plist, maximum of %lu allowed", v11, v10);

    goto LABEL_8;
  }

  v13 = [(MIBundle *)self infoPlistSubset];
  v14 = [v13 objectForKeyedSubscript:@"ITSWatchOnlyContainer"];

  if (v14)
  {
    v12 = _CreateAndLogError("[MIBundle validateAppMetadataWithError:]", 2161, @"MIInstallerErrorDomain", 137, 0, &unk_1F2887E08, @"This app has the %@ key set in its Info.plist, which identifies it as a shell app surrounding a Watch-only app these are not installable.", v15, @"ITSWatchOnlyContainer");;
LABEL_8:
    v16 = 0;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v19 = 0;
  v16 = [(MIBundle *)self _validateAppNSPrivacyTrackingDomainsWithError:&v19];
  v12 = v19;
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!v16)
  {
    v17 = v12;
    *a3 = v12;
  }

LABEL_11:

  return v16;
}

- (NSString)sdkBuildVersion
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = [v2 objectForKeyedSubscript:@"DTSDKBuild"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)sdkBuildVersionIsAtLeast:(id)a3
{
  v4 = a3;
  v5 = [(MIBundle *)self sdkBuildVersion];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 compare:v4 options:64] != -1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MIBundle)parentBundle
{
  WeakRetained = objc_loadWeakRetained(&self->_parentBundle);

  return WeakRetained;
}

@end