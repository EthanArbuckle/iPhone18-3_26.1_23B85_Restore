@interface MIBundle
+ (BOOL)bundleIsInDenyList:(id)list;
+ (id)_URLOfFirstBundleInDirectory:(id)directory withExtension:(id)extension error:(id *)error;
+ (id)_infoPlistKeysToLoad;
+ (id)bundleForURL:(id)l error:(id *)error;
+ (id)bundleForURL:(id)l platformHint:(unsigned int)hint forceAsPlaceholder:(BOOL)placeholder error:(id *)error;
+ (id)bundlesInParentBundle:(id)bundle subDirectory:(id)directory matchingPredicate:(id)predicate error:(id *)error;
- (BOOL)_getBundleRootContainsOnlyContentsDirectory:(BOOL *)directory error:(id *)error;
- (BOOL)_isMinimumOSVersion:(id)version applicableToOSVersion:(id)sVersion requiredOS:(unint64_t)s error:(id *)error;
- (BOOL)_setBundleParentDirectoryURL:(id)l forBundleArray:(id)array error:(id *)error;
- (BOOL)_validateAppNSPrivacyTrackingDomainsWithError:(id *)error;
- (BOOL)_validateExtensions:(id)extensions error:(id *)error;
- (BOOL)_validateWithError:(id *)error;
- (BOOL)getIsBuiltForMacPlatform:(BOOL *)platform error:(id *)error;
- (BOOL)getIsBuiltForiOSPlatform:(BOOL *)platform error:(id *)error;
- (BOOL)isApplicableToCurrentDeviceCapabilitiesWithError:(id *)error;
- (BOOL)isApplicableToCurrentDeviceFamilyWithError:(id *)error;
- (BOOL)isApplicableToCurrentOSVersionWithError:(id *)error;
- (BOOL)isApplicableToOSVersion:(id)version error:(id *)error;
- (BOOL)isApplicableToOSVersionEarlierThan:(id)than;
- (BOOL)isCompatibleWithDeviceFamily:(int)family;
- (BOOL)isDeletable;
- (BOOL)isLaunchProhibited;
- (BOOL)isPlaceholder;
- (BOOL)isRemovableSystemApp;
- (BOOL)isStaticContent;
- (BOOL)mayHaveExecutableProgram;
- (BOOL)sdkBuildVersionIsAtLeast:(id)least;
- (BOOL)setBundleParentDirectoryURL:(id)l error:(id *)error;
- (BOOL)setIsPlaceholderWithError:(id *)error;
- (BOOL)thinningMatchesCurrentDeviceWithError:(id *)error;
- (BOOL)validateAppMetadataWithError:(id *)error;
- (BOOL)validateDriverKitExtensionMetadataWithError:(id *)error;
- (BOOL)validateExtensionKitMetadataWithError:(id *)error;
- (BOOL)validatePluginKitMetadataWithError:(id *)error;
- (MIBundle)initWithBundleInDirectory:(id)directory withExtension:(id)extension error:(id *)error;
- (MIBundle)initWithBundleParentURL:(id)l parentSubdirectory:(id)subdirectory bundleName:(id)name platformHint:(unsigned int)hint forceAsPlaceholder:(BOOL)placeholder error:(id *)error;
- (MIBundle)initWithBundleURL:(id)l error:(id *)error;
- (MIBundle)initWithBundleURL:(id)l platformHint:(unsigned int)hint forceAsPlaceholder:(BOOL)placeholder error:(id *)error;
- (MIBundle)initWithParentBundle:(id)bundle parentSubdirectory:(id)subdirectory bundleName:(id)name platformHint:(unsigned int)hint forceAsPlaceholder:(BOOL)placeholder error:(id *)error;
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
- (id)_filterExtensionBundles:(id)bundles forValidationFlags:(unsigned __int8)flags;
- (id)_filterExtensionBundlesNotInCacheIfNeeded:(id)needed;
- (id)appExtensionBundlesPerformingPlatformValidation:(unsigned __int8)validation withError:(id *)error;
- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)platform withError:(id *)error;
- (id)denormalizedURLForCFBundleURL:(id)l;
- (id)description;
- (id)driverKitBundlesPerformingPlatformValidation:(unsigned __int8)validation withError:(id *)error;
- (id)extensionKitBundlesPerformingPlatformValidation:(unsigned __int8)validation withError:(id *)error;
- (id)frameworkBundlesWithError:(id *)error;
- (id)infoPlistHashWithError:(id *)error;
- (id)initForTesting;
- (id)pluginKitBundlesPerformingPlatformValidation:(unsigned __int8)validation withError:(id *)error;
- (id)thisBundleAndAllContainedBundlesWithError:(id *)error;
- (id)xpcServiceBundlesWithError:(id *)error;
- (unsigned)bundleType;
- (void)dealloc;
@end

@implementation MIBundle

- (BOOL)_validateWithError:(id *)error
{
  bundleURL = [(MIBundle *)self bundleURL];
  v30 = 0;
  v31 = 0;
  v6 = MICreateCFBundleEnforcingInfoPlistSize(bundleURL, 26214400, &v31, &v30);
  v7 = v31;
  v8 = v30;

  if (v6)
  {
    self->_cfBundle = v6;
    _infoPlistKeysToLoad = [objc_opt_class() _infoPlistKeysToLoad];
    v29 = v8;
    v10 = MILoadInfoPlistFromBundleWithError(v6, _infoPlistKeysToLoad, &v29);
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

          bundleURL2 = [(MIBundle *)self bundleURL];
          path = [bundleURL2 path];
          _CreateAndLogError("[MIBundle _validateWithError:]", 95, @"MIInstallerErrorDomain", 69, 0, &unk_1F2887B38, @"Bundle at path %@ had an invalid CFBundleIdentifier in its Info.plist: %@", v21, path);
        }

        else
        {
          bundleURL2 = [(MIBundle *)self bundleURL];
          path = [bundleURL2 path];
          _CreateAndLogError("[MIBundle _validateWithError:]", 88, @"MIInstallerErrorDomain", 12, 0, &unk_1F2887B10, @"Bundle at path %@ did not have a CFBundleIdentifier in its Info.plist", v22, path);
        }
        v8 = ;
LABEL_18:

        if (error)
        {
          goto LABEL_19;
        }

        goto LABEL_7;
      }

      bundleURL2 = [(MIBundle *)self bundleURL];
      path = [bundleURL2 path];
      v18 = +[MIFileManager defaultManager];
      v28 = [v18 debugDescriptionForItemAtURL:v7];
      v8 = _CreateAndLogError("[MIBundle _validateWithError:]", 82, @"MIInstallerErrorDomain", 35, 0, &unk_1F2887AE8, @"Info.plist from bundle at path %@ had none of the keys that we expect %@", v20, path);;
    }

    else
    {
      bundleURL2 = [(MIBundle *)self bundleURL];
      path = [bundleURL2 path];
      v18 = +[MIFileManager defaultManager];
      v27 = [v18 debugDescriptionForItemAtURL:v7];
      v8 = _CreateAndLogError("[MIBundle _validateWithError:]", 77, @"MIInstallerErrorDomain", 35, v11, &unk_1F2887AC0, @"Failed to load Info.plist from bundle at path %@ %@", v19, path);;

      v10 = 0;
    }

    v14 = 0;
    v11 = v18;
    goto LABEL_18;
  }

  v10 = 0;
  v14 = 0;
  if (error)
  {
LABEL_19:
    v23 = v8;
    v15 = 0;
    *error = v8;
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

- (MIBundle)initWithBundleParentURL:(id)l parentSubdirectory:(id)subdirectory bundleName:(id)name platformHint:(unsigned int)hint forceAsPlaceholder:(BOOL)placeholder error:(id *)error
{
  placeholderCopy = placeholder;
  lCopy = l;
  subdirectoryCopy = subdirectory;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = MIBundle;
  v18 = [(MIBundle *)&v23 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v18->_bundleName, name);
  objc_storeStrong(&v19->_bundleParentSubdirectory, subdirectory);
  objc_storeStrong(&v19->_bundleParentDirectoryURL, l);
  parentBundleID = v19->_parentBundleID;
  v19->_parentBundleID = 0;

  v19->_platformHint = hint;
  if (placeholderCopy)
  {
    *&v19->_isPlaceholder = 257;
  }

  if (![(MIBundle *)v19 _validateWithError:error])
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

- (MIBundle)initWithParentBundle:(id)bundle parentSubdirectory:(id)subdirectory bundleName:(id)name platformHint:(unsigned int)hint forceAsPlaceholder:(BOOL)placeholder error:(id *)error
{
  placeholderCopy = placeholder;
  bundleCopy = bundle;
  subdirectoryCopy = subdirectory;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = MIBundle;
  v17 = [(MIBundle *)&v25 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v17->_bundleName, name);
  objc_storeStrong(&v18->_bundleParentSubdirectory, subdirectory);
  bundleURL = [bundleCopy bundleURL];
  bundleParentDirectoryURL = v18->_bundleParentDirectoryURL;
  v18->_bundleParentDirectoryURL = bundleURL;

  identifier = [bundleCopy identifier];
  parentBundleID = v18->_parentBundleID;
  v18->_parentBundleID = identifier;

  objc_storeWeak(&v18->_parentBundle, bundleCopy);
  v18->_platformHint = hint;
  if (placeholderCopy)
  {
    *&v18->_isPlaceholder = 257;
  }

  if (![(MIBundle *)v18 _validateWithError:error])
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

- (MIBundle)initWithBundleURL:(id)l platformHint:(unsigned int)hint forceAsPlaceholder:(BOOL)placeholder error:(id *)error
{
  placeholderCopy = placeholder;
  v8 = *&hint;
  lCopy = l;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  lastPathComponent = [lCopy lastPathComponent];

  v13 = [(MIBundle *)self initWithBundleParentURL:uRLByDeletingLastPathComponent parentSubdirectory:0 bundleName:lastPathComponent platformHint:v8 forceAsPlaceholder:placeholderCopy error:error];
  return v13;
}

- (MIBundle)initWithBundleURL:(id)l error:(id *)error
{
  lCopy = l;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  lastPathComponent = [lCopy lastPathComponent];

  v9 = [(MIBundle *)self initWithBundleParentURL:uRLByDeletingLastPathComponent parentSubdirectory:0 bundleName:lastPathComponent platformHint:0 forceAsPlaceholder:0 error:error];
  return v9;
}

+ (id)bundleForURL:(id)l platformHint:(unsigned int)hint forceAsPlaceholder:(BOOL)placeholder error:(id *)error
{
  placeholderCopy = placeholder;
  v8 = *&hint;
  lCopy = l;
  v10 = [objc_alloc(objc_opt_class()) initWithBundleURL:lCopy platformHint:v8 forceAsPlaceholder:placeholderCopy error:error];

  return v10;
}

+ (id)bundleForURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = [objc_alloc(objc_opt_class()) initWithBundleURL:lCopy platformHint:0 forceAsPlaceholder:0 error:error];

  return v6;
}

+ (id)_URLOfFirstBundleInDirectory:(id)directory withExtension:(id)extension error:(id *)error
{
  directoryCopy = directory;
  extensionCopy = extension;
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
  v10 = extensionCopy;
  v20 = v10;
  v21 = &v22;
  v11 = [v9 enumerateURLsForItemsInDirectoryAtURL:directoryCopy ignoreSymlinks:1 withBlock:v19];

  v12 = v23[5];
  if (!v12)
  {
    path = [directoryCopy path];
    v14 = _CreateAndLogError("+[MIBundle _URLOfFirstBundleInDirectory:withExtension:error:]", 213, @"MIInstallerErrorDomain", 36, 0, 0, @"Failed to locate a bundle with extension %@ in directory %@", v13, v10);

    v12 = v23[5];
    if (error && !v12)
    {
      v15 = v14;
      *error = v14;
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

- (MIBundle)initWithBundleInDirectory:(id)directory withExtension:(id)extension error:(id *)error
{
  extensionCopy = extension;
  directoryCopy = directory;
  v10 = [objc_opt_class() _URLOfFirstBundleInDirectory:directoryCopy withExtension:extensionCopy error:error];

  if (v10)
  {
    self = [(MIBundle *)self initWithBundleURL:v10 platformHint:0 forceAsPlaceholder:0 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)denormalizedURLForCFBundleURL:(id)l
{
  lCopy = l;
  bundleURL = [(MIBundle *)self bundleURL];
  v6 = MIDenormalizedURLForCFBundleURL(bundleURL, lCopy);

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
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v3 = [infoPlistSubset objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
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
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v3 = [infoPlistSubset objectForKeyedSubscript:*MEMORY[0x1E695E500]];
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
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v3 = [infoPlistSubset objectForKeyedSubscript:*MEMORY[0x1E695E148]];
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
  systemAppPlaceholderBundleIDToInfoMap = [v3 systemAppPlaceholderBundleIDToInfoMap];
  identifier = [(MIBundle *)self identifier];
  v6 = [systemAppPlaceholderBundleIDToInfoMap objectForKeyedSubscript:identifier];
  v7 = v6 != 0;

  return v7;
}

- (unsigned)bundleType
{
  identifier = [(MIBundle *)self identifier];
  if (identifier)
  {
    bundleType = self->_bundleType;
    if (!bundleType)
    {
      bundleURL = [(MIBundle *)self bundleURL];
      pathExtension = [bundleURL pathExtension];

      v7 = MIDiskImageManagerProxy();
      if (![pathExtension isEqualToString:@"app"])
      {
        if ([pathExtension isEqualToString:@"appex"] || objc_msgSend(pathExtension, "isEqualToString:", @"appex"))
        {
          v14 = 6;
        }

        else if ([pathExtension isEqualToString:@"framework"])
        {
          v14 = 7;
        }

        else if ([pathExtension isEqualToString:@"xpc"])
        {
          v14 = 8;
        }

        else
        {
          if (![pathExtension isEqualToString:@"dext"])
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

      bundleParentDirectoryURL = [(MIBundle *)self bundleParentDirectoryURL];
      path = [bundleParentDirectoryURL path];
      v9 = +[MIDaemonConfiguration sharedInstance];
      systemAppsDirectory = [v9 systemAppsDirectory];
      path2 = [systemAppsDirectory path];
      v12 = [path isEqualToString:path2];

      if (v12)
      {
        goto LABEL_5;
      }

      v15 = +[MIDaemonConfiguration sharedInstance];
      internalAppsDirectory = [v15 internalAppsDirectory];
      path3 = [internalAppsDirectory path];
      v18 = [path isEqualToString:path3];

      if (v18)
      {
        v13 = 2;
        goto LABEL_13;
      }

      v19 = bundleParentDirectoryURL;
      if ([v7 URLIsOnAttachedEntityType:1 at:bundleParentDirectoryURL])
      {
        v13 = 3;
        goto LABEL_14;
      }

      if ([v7 URLIsOnAttachedEntityType:2 at:bundleParentDirectoryURL])
      {
        v13 = 12;
        goto LABEL_14;
      }

      v21 = +[MIDaemonConfiguration sharedInstance];
      coreServicesDirectory = [v21 coreServicesDirectory];
      path4 = [coreServicesDirectory path];
      v24 = [path hasPrefix:path4];

      if (v24)
      {
LABEL_28:
        v13 = 5;
        goto LABEL_14;
      }

      v25 = +[MIDaemonConfiguration sharedInstance];
      systemAppPlaceholdersDirectory = [v25 systemAppPlaceholdersDirectory];
      path5 = [systemAppPlaceholdersDirectory path];
      v28 = [path hasPrefix:path5];

      if (v28)
      {
        v13 = 10;
        goto LABEL_14;
      }

      v29 = +[MIDaemonConfiguration sharedInstance];
      systemAppBundleIDToInfoMap = [v29 systemAppBundleIDToInfoMap];
      v31 = [systemAppBundleIDToInfoMap objectForKeyedSubscript:identifier];
      if (v31)
      {
      }

      else
      {
        v40 = +[MIDaemonConfiguration sharedInstance];
        systemAppPlaceholderBundleIDToInfoMap = [v40 systemAppPlaceholderBundleIDToInfoMap];
        v33 = [systemAppPlaceholderBundleIDToInfoMap objectForKeyedSubscript:identifier];

        if (!v33)
        {
          v34 = +[MIDaemonConfiguration sharedInstance];
          coreServicesAppBundleIDToInfoMap = [v34 coreServicesAppBundleIDToInfoMap];
          v36 = [coreServicesAppBundleIDToInfoMap objectForKeyedSubscript:identifier];

          v19 = bundleParentDirectoryURL;
          if (!v36)
          {
            v37 = +[MIDaemonConfiguration sharedInstance];
            internalAppBundleIDToInfoMap = [v37 internalAppBundleIDToInfoMap];
            v39 = [internalAppBundleIDToInfoMap objectForKeyedSubscript:identifier];

            if (v39)
            {
              v13 = 2;
              goto LABEL_14;
            }

            if ([v7 bundleID:identifier isOnAttachedEntityType:1])
            {
              v13 = 3;
            }

            else if ([v7 bundleID:identifier isOnAttachedEntityType:2])
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
      v19 = bundleParentDirectoryURL;
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
  selfCopy = self;
  v57 = *MEMORY[0x1E69E9840];
  bundleParentDirectoryURL = [(MIBundle *)self bundleParentDirectoryURL];
  path = [bundleParentDirectoryURL path];
  v4 = MIDiskImageManagerProxy();
  bundleType = [selfCopy bundleType];
  LOBYTE(selfCopy) = 0;
  if (bundleType > 5)
  {
    if (bundleType > 7)
    {
      if (bundleType != 8)
      {
        if (bundleType != 12)
        {
          goto LABEL_50;
        }

        v19 = v4;
        v20 = 2;
        goto LABEL_47;
      }
    }

    else if (bundleType != 6)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v9 = +[MIDaemonConfiguration sharedInstance];
      selfCopy = [v9 allFrameworksDirectories];

      v10 = [selfCopy countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (!v10)
      {
LABEL_16:

        LOBYTE(selfCopy) = 0;
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
          objc_enumerationMutation(selfCopy);
        }

        path2 = [*(*(&v42 + 1) + 8 * v13) path];
        v15 = [path hasPrefix:path2];

        if (v15)
        {
          goto LABEL_48;
        }

        if (v11 == ++v13)
        {
          v11 = [selfCopy countByEnumeratingWithState:&v42 objects:v54 count:16];
          if (v11)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }
    }

    LOBYTE(selfCopy) = 1;
    if ([v4 URLIsOnAttachedEntityType:1 at:bundleParentDirectoryURL])
    {
      goto LABEL_50;
    }

    if ([v4 URLIsOnAttachedEntityType:2 at:bundleParentDirectoryURL])
    {
LABEL_49:
      LOBYTE(selfCopy) = 1;
      goto LABEL_50;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v21 = +[MIDaemonConfiguration sharedInstance];
    selfCopy = [v21 allExtensionKitExtensionsDirectories];

    v22 = [selfCopy countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (!v22)
    {
LABEL_33:

      v28 = +[MIDaemonConfiguration sharedInstance];
      allFrameworksDirectories = [v28 allFrameworksDirectories];
      v30 = [allFrameworksDirectories mutableCopy];

      v31 = +[MIDaemonConfiguration sharedInstance];
      systemAppsDirectory = [v31 systemAppsDirectory];
      [v30 addObject:systemAppsDirectory];

      v33 = +[MIDaemonConfiguration sharedInstance];
      coreServicesDirectory = [v33 coreServicesDirectory];
      [v30 addObject:coreServicesDirectory];

      v35 = +[MIDaemonConfiguration sharedInstance];
      internalAppsDirectory = [v35 internalAppsDirectory];
      [v30 addObject:internalAppsDirectory];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = v30;
      selfCopy = [v7 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (selfCopy)
      {
        v37 = *v47;
        while (2)
        {
          for (i = 0; i != selfCopy; i = i + 1)
          {
            if (*v47 != v37)
            {
              objc_enumerationMutation(v7);
            }

            path3 = [*(*(&v46 + 1) + 8 * i) path];
            v40 = [path hasPrefix:path3];

            if (v40)
            {
              LOBYTE(selfCopy) = 1;
              goto LABEL_52;
            }
          }

          selfCopy = [v7 countByEnumeratingWithState:&v46 objects:v55 count:16];
          if (selfCopy)
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
        objc_enumerationMutation(selfCopy);
      }

      path4 = [*(*(&v50 + 1) + 8 * v25) path];
      v27 = [path hasPrefix:path4];

      if (v27)
      {
        break;
      }

      if (v23 == ++v25)
      {
        v23 = [selfCopy countByEnumeratingWithState:&v50 objects:v56 count:16];
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

  if (bundleType > 2)
  {
    if (bundleType != 3)
    {
      if (bundleType == 5)
      {
        v7 = +[MIDaemonConfiguration sharedInstance];
        coreServicesDirectory2 = [v7 coreServicesDirectory];
        path5 = [coreServicesDirectory2 path];
        v18 = [path isEqualToString:path5];
LABEL_44:
        LOBYTE(selfCopy) = v18;

LABEL_45:
        goto LABEL_50;
      }

      goto LABEL_50;
    }

    v19 = v4;
    v20 = 1;
LABEL_47:
    LOBYTE(selfCopy) = [v19 URLIsOnAttachedEntityType:v20 at:bundleParentDirectoryURL];
    goto LABEL_50;
  }

  if (bundleType == 1)
  {
    v7 = +[MIDaemonConfiguration sharedInstance];
    systemAppsDirectory2 = [v7 systemAppsDirectory];
    goto LABEL_43;
  }

  if (bundleType == 2)
  {
    v7 = +[MIDaemonConfiguration sharedInstance];
    systemAppsDirectory2 = [v7 internalAppsDirectory];
LABEL_43:
    coreServicesDirectory2 = systemAppsDirectory2;
    path5 = [systemAppsDirectory2 path];
    v18 = [path isEqual:path5];
    goto LABEL_44;
  }

LABEL_50:

  return selfCopy;
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
      parentBundle = [(MIBundle *)self parentBundle];
      v4 = parentBundle;
      if (parentBundle && [parentBundle isPlaceholder])
      {
        self->_isPlaceholder = 1;
      }

      else
      {
        v5 = +[MIFileManager defaultManager];
        bundleURL = [(MIBundle *)self bundleURL];
        self->_isPlaceholder = [v5 bundleAtURLIsPlaceholder:bundleURL];
      }
    }

    [(MIBundle *)self setIsPlaceholderStatusValid:1];
  }

  return self->_isPlaceholder;
}

- (BOOL)setIsPlaceholderWithError:(id *)error
{
  v5 = +[MIFileManager defaultManager];
  bundleURL = [(MIBundle *)self bundleURL];
  v7 = [v5 markBundleAsPlaceholder:bundleURL withError:error];

  if (v7)
  {
    self->_isPlaceholder = 1;
  }

  [(MIBundle *)self setIsPlaceholderStatusValid:v7];
  return v7;
}

+ (id)bundlesInParentBundle:(id)bundle subDirectory:(id)directory matchingPredicate:(id)predicate error:(id *)error
{
  bundleCopy = bundle;
  directoryCopy = directory;
  predicateCopy = predicate;
  v13 = objc_opt_new();
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  bundleURL = [bundleCopy bundleURL];
  v15 = [bundleURL URLByAppendingPathComponent:directoryCopy isDirectory:1];

  v16 = +[MIFileManager defaultManager];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __71__MIBundle_bundlesInParentBundle_subDirectory_matchingPredicate_error___block_invoke;
  v30[3] = &unk_1E7AE1AE8;
  v17 = predicateCopy;
  v34 = v17;
  selfCopy = self;
  v18 = bundleCopy;
  v31 = v18;
  v19 = directoryCopy;
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

    domain = [v21 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      code = [v21 code];

      if (code == 2)
      {

LABEL_6:
        v24 = [v20 copy];
        v21 = 0;
        if (!error)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    else
    {
    }

    path = [v15 path];
    v27 = _CreateAndLogError("+[MIBundle bundlesInParentBundle:subDirectory:matchingPredicate:error:]", 644, @"MIInstallerErrorDomain", 54, v21, 0, @"Failed to discover bundles in directory %@", v26, path);
    v28 = v38[5];
    v38[5] = v27;
  }

  v24 = 0;
  if (!error)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v24)
  {
    *error = v38[5];
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
  bundleType = [(MIBundle *)self bundleType];
  bundleParentDirectoryURL = [(MIBundle *)self bundleParentDirectoryURL];
  path = [bundleParentDirectoryURL path];

  if (bundleType == 4)
  {
    goto LABEL_6;
  }

  if (bundleType == 2)
  {
    v9 = +[MIDaemonConfiguration sharedInstance];
    internalAppsDirectory = [v9 internalAppsDirectory];
    path2 = [internalAppsDirectory path];
    if (([path isEqualToString:path2] & 1) == 0)
    {
LABEL_10:
      v12 = +[MIDaemonConfiguration sharedInstance];
      allowsInternalSecurityPolicy = [v12 allowsInternalSecurityPolicy];

      goto LABEL_11;
    }

LABEL_9:
    allowsInternalSecurityPolicy = 0;
LABEL_11:

    goto LABEL_12;
  }

  if (bundleType != 1 || (+[MIDaemonConfiguration sharedInstance](MIDaemonConfiguration, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 allowDeletableSystemApps], v6, !v7))
  {
    allowsInternalSecurityPolicy = 0;
    goto LABEL_12;
  }

  if (![(MIBundle *)self isRemovableSystemApp])
  {
    v9 = +[MIDaemonConfiguration sharedInstance];
    internalAppsDirectory = [v9 systemAppsDirectory];
    path2 = [internalAppsDirectory path];
    if (([path isEqualToString:path2] & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_6:
  allowsInternalSecurityPolicy = 1;
LABEL_12:

  return allowsInternalSecurityPolicy;
}

- (id)_filterExtensionBundlesNotInCacheIfNeeded:(id)needed
{
  v28 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if ([(MIBundle *)self allowsAppleAppExtensionsNotInExtensionCache])
  {
    installsAppleAppExtensionsNotInExtensionCache = [(MIBundle *)self installsAppleAppExtensionsNotInExtensionCache];
    v5 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = neededCopy;
    v6 = neededCopy;
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

        domain = [v13 domain];
        if ([domain isEqualToString:@"MIInstallerErrorDomain"])
        {
          code = [v13 code];

          if (code == 45)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }

        if (installsAppleAppExtensionsNotInExtensionCache && ([v11 installableIfAppleAppExtensionsNotInExtensionCache] & 1) != 0)
        {
          goto LABEL_13;
        }

        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          identifier = [v11 identifier];
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
        neededCopy = v20;
        goto LABEL_25;
      }
    }
  }

  v17 = neededCopy;
LABEL_25:

  return v17;
}

- (id)_filterExtensionBundles:(id)bundles forValidationFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  v35 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  v6 = bundlesCopy;
  if (flagsCopy)
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
        if (flagsCopy & 2) == 0 || ([*(*(&v30 + 1) + 8 * i) isApplicableToCurrentOSVersionWithError:0])
        {
          if ((flagsCopy & 1) == 0)
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
            [v7 addObject:{v13, v24, identifier}];
            continue;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_26;
          }

          minimumOSVersion = [v13 minimumOSVersion];
          if ([minimumOSVersion compare:@"8.2" options:64] == -1 && v15 != 0)
          {
            domain = [v15 domain];
            if ([domain isEqualToString:@"MIInstallerErrorDomain"])
            {
              code = [v15 code];

              if (code == 66)
              {
                goto LABEL_11;
              }

              goto LABEL_26;
            }
          }

LABEL_26:
          if (!gLogHandle || *(gLogHandle + 44) >= 5)
          {
            bundleTypeDescription = [v13 bundleTypeDescription];
            identifier = [v13 identifier];
            v26 = v15;
            v24 = bundleTypeDescription;
            MOLogWrite();
          }

          continue;
        }

        if (!gLogHandle || *(gLogHandle + 44) >= 5)
        {
          bundleTypeDescription2 = [v13 bundleTypeDescription];
          bundleURL = [v13 bundleURL];
          [bundleURL path];
          identifier = v24 = bundleTypeDescription2;
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

  v22 = [bundlesCopy copy];
LABEL_34:

  return v22;
}

- (id)pluginKitBundlesPerformingPlatformValidation:(unsigned __int8)validation withError:(id *)error
{
  validationCopy = validation;
  v45 = *MEMORY[0x1E69E9840];
  pluginKitBundles = [(MIBundle *)self pluginKitBundles];
  if (pluginKitBundles)
  {
    v8 = pluginKitBundles;
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
    plugInsDirectoryURL = [(MIBundle *)self plugInsDirectoryURL];
    bundleURL = [(MIBundle *)self bundleURL];
    path = [plugInsDirectoryURL path];
    path2 = [bundleURL path];
    v19 = [path substringFromIndex:{objc_msgSend(path2, "length")}];

    v40 = v13;
    v8 = [MIPluginKitBundle bundlesInParentBundle:self subDirectory:v19 matchingPredicate:&__block_literal_global_199 error:&v40];
    v9 = v40;

    v13 = plugInsDirectoryURL;
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
      bundleName = [v24 bundleName];
      v43[1] = bundleName;
      v43[2] = @"PlugIns";
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];

      v33 = v29;
      v30 = [MEMORY[0x1E696AEC0] pathWithComponents:v29];
      identifier = [v24 identifier];
      v34 = v9;
      v32 = [MIPluginKitBundle bundlesInParentBundle:self overrideParentBundleIDForValidation:identifier subDirectory:v30 matchingPredicate:&__block_literal_global_199 error:&v34];
      v13 = v34;

      if (v32)
      {
        v8 = [v12 arrayByAddingObjectsFromArray:v32];

        goto LABEL_28;
      }

LABEL_22:
      v10 = 0;
      v11 = 0;
      if (!error)
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
  v10 = [(MIBundle *)self _filterExtensionBundles:v8 forValidationFlags:validationCopy];
  v11 = [(MIBundle *)self _filterExtensionBundlesNotInCacheIfNeeded:v10];
  v12 = v8;
  v13 = v9;
  if (!error)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (!v11)
  {
    v25 = v13;
    *error = v13;
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

- (BOOL)validatePluginKitMetadataWithError:(id *)error
{
  v96 = *MEMORY[0x1E69E9840];
  isLaunchProhibited = [(MIBundle *)self isLaunchProhibited];
  identifier = [(MIBundle *)self identifier];
  v7 = [identifier isEqualToString:@"com.apple.MapsExternalComponents"];

  v92 = 0;
  v8 = [(MIBundle *)self pluginKitBundlesWithError:&v92];
  identifier2 = v92;
  if (!v8)
  {
    v78 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (error)
    {
LABEL_97:
      v62 = identifier2;
      v14 = 0;
      *error = identifier2;
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

  if (!-[MIBundle isPlaceholder](self, "isPlaceholder") && isLaunchProhibited && ![v8 count])
  {
    obj = [(MIBundle *)self identifier];
    v15 = _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 904, @"MIInstallerErrorDomain", 122, 0, &unk_1F2887B60, @"The app extension stub app %@ must have at least one app extension, but none were found.", v46, obj);
    identifier3 = 0;
    v78 = 0;
    v10 = 0;
    identifier5 = 0;
    v12 = 0;
LABEL_95:

LABEL_96:
    identifier2 = v15;
    v11 = identifier5;
    v13 = identifier3;
    if (error)
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
    identifier3 = 0;
    v78 = 0;
    v10 = 0;
    identifier7 = 0;
    identifier5 = 0;
    v15 = identifier2;
    goto LABEL_75;
  }

  identifier3 = 0;
  v78 = 0;
  v10 = 0;
  identifier7 = 0;
  identifier5 = 0;
  v73 = *v89;
  v72 = isLaunchProhibited & v7;
  v71 = !isLaunchProhibited | v7;
  v15 = identifier2;
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
        v12 = identifier7;
        goto LABEL_96;
      }

      if ([v18 isFileProviderNonUIExtension])
      {
        if (identifier3)
        {
          identifier2 = [v18 identifier];
          _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 918, @"MIInstallerErrorDomain", 62, 0, &unk_1F2887B88, @"Multiple file provider app extensions found in app but only one is allowed (found %@ ; already found %@)", v51, identifier2);
          goto LABEL_84;
        }

        identifier3 = [v18 identifier];
      }

      if (v72)
      {
        if (([v18 isMapsGeoServicesExtension] & 1) == 0)
        {
          identifier4 = [(MIBundle *)self identifier];
          v21 = [identifier4 isEqualToString:@"com.apple.MapsExternalComponents"];

          if ((v21 & 1) == 0)
          {
            identifier2 = [(MIBundle *)self identifier];
            extensionPointIdentifier = [v18 extensionPointIdentifier];
            v59 = _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 926, @"MIInstallerErrorDomain", 59, 0, &unk_1F2887BB0, @"App %@ is forbidden from providing an extension of type %@", v58, identifier2);

            v15 = v59;
            goto LABEL_94;
          }
        }
      }

      if ((v71 & 1) == 0 && ([v18 isMessagePayloadProviderExtension] & 1) == 0)
      {
        identifier2 = [v18 identifier];
        extensionPointIdentifier2 = [v18 extensionPointIdentifier];
        _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 933, @"MIInstallerErrorDomain", 123, 0, &unk_1F2887BD8, @"Messages stub apps may only have a single message payload provider app extension, but this stub app has an extension %@ of type %@", v53, identifier2);
        v55 = LABEL_88:;

        goto LABEL_93;
      }

      if ([v18 isMessagePayloadProviderExtension])
      {
        if (!identifier5)
        {
          identifier5 = [v18 identifier];
          goto LABEL_27;
        }

        identifier2 = [v18 identifier];
        _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 942, @"MIInstallerErrorDomain", 121, 0, &unk_1F2887C00, @"Multiple message payload provider extensions found in app but only one is allowed (found %@ ; already found %@)", v54, identifier2);
        v55 = LABEL_84:;

        goto LABEL_93;
      }

LABEL_27:
      if (![v18 isWatchKitExtension])
      {
        if (v69)
        {
          bundleParentSubdirectory = [v18 bundleParentSubdirectory];
          v28 = [bundleParentSubdirectory isEqualToString:@"PlugIns"];

          if (v28)
          {
            identifier2 = [v18 bundleURL];
            extensionPointIdentifier2 = [identifier2 path];
            _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 985, @"MIInstallerErrorDomain", 118, 0, &unk_1F2887CC8, @"WatchKit 2 app contains a non-WatchKit extension at %@. WatchKit apps specifying a MinimumOSVersion earlier than 3.0 must have non-WatchKit extensions embedded within the WatchKit extension.", v60, extensionPointIdentifier2);
            goto LABEL_88;
          }
        }

        if ([v18 isSiriIntentsExtension])
        {
          if (!v10)
          {
            v10 = objc_opt_new();
          }

          extensionAttributes = [v18 extensionAttributes];
          identifier2 = extensionAttributes;
          if (!extensionAttributes)
          {
            goto LABEL_70;
          }

          errorCopy2 = error;
          v68 = v8;
          v30 = [extensionAttributes objectForKeyedSubscript:@"IntentsSupported"];
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
                  identifier6 = [(MIBundle *)self identifier];
                  _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 1003, @"MIInstallerErrorDomain", 117, 0, &unk_1F2887CF0, @"More than one Siri Intents app extension in the app %@ declares the value %@ in the IntentsSupported array in the ExtensionAttributes dictionary in the NSExtensionDictionary in its Info.plist.", v48, identifier6);
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

          extensionAttributes2 = [v18 extensionAttributes];
          identifier2 = extensionAttributes2;
          if (!extensionAttributes2)
          {
            goto LABEL_70;
          }

          errorCopy2 = error;
          v68 = v8;
          v38 = [extensionAttributes2 objectForKeyedSubscript:@"IntentsSupported"];
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
                  identifier6 = [(MIBundle *)self identifier];
                  _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 1023, @"MIInstallerErrorDomain", 117, 0, &unk_1F2887D18, @"More than one Siri Intents UI app extension in the app %@ declares the value %@ in the IntentsSupported array in the ExtensionAttributes dictionary in the NSExtensionDictionary in its Info.plist.", v49, identifier6);
                  v50 = LABEL_79:;

                  v15 = v50;
                  error = errorCopy2;
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

        error = errorCopy2;
        v8 = v68;
LABEL_70:

        continue;
      }

      if (identifier7)
      {
        identifier2 = [v18 identifier];
        v57 = _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 953, @"MIInstallerErrorDomain", 82, 0, &unk_1F2887C28, @"Multiple WatchKit app extensions found in app but only one is allowed (found %@  already found %@)", v56, identifier2);;

        v15 = v57;
        v12 = identifier7;
        goto LABEL_95;
      }

      identifier7 = [v18 identifier];
      if (![(MIBundle *)self isPlaceholder])
      {
        if ([(MIBundle *)self isWatchApp])
        {
          extensionAttributes3 = [v18 extensionAttributes];
          if (!extensionAttributes3)
          {
            _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 973, @"MIInstallerErrorDomain", 93, 0, &unk_1F2887CA0, @"WatchKit 2 app extension's NSExtension.NSExtensionAttributes dictionary is not present. It must contain a WKAppBundleIdentifier key set to the WatchKit app's bundle ID.", v23, v64);
            v15 = identifier2 = v15;
            goto LABEL_94;
          }

          identifier2 = extensionAttributes3;
          v24 = [extensionAttributes3 objectForKeyedSubscript:@"WKAppBundleIdentifier"];
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

          identifier8 = [(MIBundle *)self identifier];
          v45 = [v26 isEqualToString:identifier8];

          if ((v45 & 1) == 0)
          {
            identifier9 = [(MIBundle *)self identifier];
            v55 = _CreateAndLogError("[MIBundle validatePluginKitMetadataWithError:]", 969, @"MIInstallerErrorDomain", 93, 0, &unk_1F2887C78, @"WatchKit 2 app extension's NSExtension.NSExtensionAttributes.WKAppBundleIdentifier value does not match WatchKit app's bundle ID (found %@ expected %@).", v61, v26);;

            v15 = identifier9;
LABEL_92:

LABEL_93:
            v15 = v55;
LABEL_94:
            v12 = identifier7;
            goto LABEL_95;
          }

          goto LABEL_70;
        }

        if (!gLogHandle || *(gLogHandle + 44) >= 5)
        {
          v64 = identifier7;
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
  identifier2 = v15;
  v12 = identifier7;
  v11 = identifier5;
  v13 = identifier3;
LABEL_98:

  return v14;
}

- (id)extensionKitBundlesPerformingPlatformValidation:(unsigned __int8)validation withError:(id *)error
{
  validationCopy = validation;
  extensionKitBundles = [(MIBundle *)self extensionKitBundles];
  if (extensionKitBundles)
  {
    v8 = extensionKitBundles;
    v9 = 0;
    goto LABEL_7;
  }

  bundleURL = [(MIBundle *)self bundleURL];
  v11 = [bundleURL URLByAppendingPathComponent:@"Extensions" isDirectory:1];

  v12 = +[MIFileManager defaultManager];
  v13 = [v12 itemDoesNotExistOrIsNotDirectoryAtURL:v11];

  if (v13)
  {
    v8 = objc_opt_new();
    v9 = 0;
LABEL_6:
    [(MIBundle *)self setExtensionKitBundles:v8];

LABEL_7:
    v14 = [(MIBundle *)self _filterExtensionBundles:v8 forValidationFlags:validationCopy];
    v15 = [(MIBundle *)self _filterExtensionBundlesNotInCacheIfNeeded:v14];
    if (!error)
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
  if (!error)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v15)
  {
    v16 = v9;
    *error = v9;
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

- (BOOL)_validateExtensions:(id)extensions error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  extensionsCopy = extensions;
  v6 = [extensionsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(extensionsCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * v10);
        v17 = v11;
        v13 = [v12 validateBundleMetadataWithError:&v17];
        v8 = v17;

        if (!v13)
        {

          if (error)
          {
            v14 = v8;
            v15 = 0;
            *error = v8;
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
      v7 = [extensionsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (BOOL)validateExtensionKitMetadataWithError:(id *)error
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
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v10 = v7;
    *error = v7;
  }

LABEL_7:

  return v8;
}

- (id)appExtensionBundlesPerformingPlatformValidation:(unsigned __int8)validation withError:(id *)error
{
  validationCopy = validation;
  v7 = objc_opt_new();
  v8 = [(MIBundle *)self pluginKitBundlesPerformingPlatformValidation:validationCopy withError:error];
  if (v8)
  {
    v9 = [(MIBundle *)self extensionKitBundlesPerformingPlatformValidation:validationCopy withError:error];
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

- (BOOL)validateDriverKitExtensionMetadataWithError:(id *)error
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
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v10 = v7;
    *error = v7;
  }

LABEL_7:

  return v8;
}

- (id)infoPlistHashWithError:(id *)error
{
  infoPlistURL = [(MIBundle *)self infoPlistURL];
  v6 = infoPlistURL;
  if (infoPlistURL)
  {
    v15 = 0;
    v7 = MICreateSHA256Digest(infoPlistURL, &v15);
    v9 = v15;
    if (v7)
    {
      v10 = v7;
      goto LABEL_8;
    }

    v12 = _CreateAndLogError("[MIBundle infoPlistHashWithError:]", 1196, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to compute hash for Info.plist at %@", v8, v6);

    v9 = v12;
    if (!error)
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = v9;
    v10 = 0;
    *error = v9;
    goto LABEL_8;
  }

  v9 = _CreateAndLogError("[MIBundle infoPlistHashWithError:]", 1190, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to get Info.plist path", v5, v14);
  if (error)
  {
    goto LABEL_5;
  }

LABEL_7:
  v10 = 0;
LABEL_8:

  return v10;
}

+ (BOOL)bundleIsInDenyList:(id)list
{
  listCopy = list;
  if (bundleIsInDenyList__onceToken != -1)
  {
    +[MIBundle bundleIsInDenyList:];
  }

  v4 = bundleIsInDenyList__denylist;
  path = [listCopy path];
  v6 = [v4 containsObject:path];

  if (v6 && gLogHandle && *(gLogHandle + 44) >= 7)
  {
    path2 = [listCopy path];
    MOLogWrite();
  }

  return v6;
}

uint64_t __31__MIBundle_bundleIsInDenyList___block_invoke()
{
  bundleIsInDenyList__denylist = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2888C40];

  return MEMORY[0x1EEE66BB8]();
}

- (id)frameworkBundlesWithError:(id *)error
{
  frameworkBundles = [(MIBundle *)self frameworkBundles];

  if (frameworkBundles)
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

      frameworkBundles2 = 0;
      if (!error)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    [(MIBundle *)self setFrameworkBundles:v8];
  }

  frameworkBundles2 = [(MIBundle *)self frameworkBundles];
  if (!error)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (!frameworkBundles2)
  {
    v10 = v6;
    *error = v6;
  }

LABEL_8:

  return frameworkBundles2;
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

- (id)xpcServiceBundlesWithError:(id *)error
{
  xpcServiceBundles = [(MIBundle *)self xpcServiceBundles];

  if (xpcServiceBundles)
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
      xpcServiceBundles2 = 0;
      if (!error)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    [(MIBundle *)self setXpcServiceBundles:v7];
  }

  xpcServiceBundles2 = [(MIBundle *)self xpcServiceBundles];
  if (!error)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (!xpcServiceBundles2)
  {
    v9 = v6;
    *error = v6;
  }

LABEL_8:

  return xpcServiceBundles2;
}

uint64_t __39__MIBundle_xpcServiceBundlesWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqualToString:@"xpc"];

  return v3;
}

- (id)driverKitBundlesPerformingPlatformValidation:(unsigned __int8)validation withError:(id *)error
{
  driverKitExtensionBundles = [(MIBundle *)self driverKitExtensionBundles];
  if (driverKitExtensionBundles)
  {
    v8 = driverKitExtensionBundles;
    v9 = 0;
  }

  else
  {
    v13 = 0;
    v8 = [MIDriverKitBundle bundlesInParentBundle:self subDirectory:@"SystemExtensions" matchingPredicate:&__block_literal_global_395 error:&v13];
    v9 = v13;
    if (!v8)
    {
      0xFE = 0;
      if (!error)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    [(MIBundle *)self setDriverKitExtensionBundles:v8];
  }

  0xFE = [(MIBundle *)self _filterExtensionBundles:v8 forValidationFlags:validation & 0xFE];
  if (!error)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (!0xFE)
  {
    v11 = v9;
    *error = v9;
  }

LABEL_8:

  return 0xFE;
}

uint64_t __67__MIBundle_driverKitBundlesPerformingPlatformValidation_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqualToString:@"dext"];

  return v3;
}

- (id)thisBundleAndAllContainedBundlesWithError:(id *)error
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
      if (!error)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    errorCopy = error;
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
          v26 = [v25 thisBundleAndAllContainedBundlesWithError:{&v60, errorCopy}];
          v18 = v60;

          if (!v26)
          {

            error = errorCopy;
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
      error = errorCopy;
      if (!errorCopy)
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
          v35 = [v34 thisBundleAndAllContainedBundlesWithError:{&v54, errorCopy}];
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
    error = errorCopy;
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
    if (!error)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

LABEL_53:
  if (!error)
  {
    goto LABEL_56;
  }

LABEL_54:
  if (!v36)
  {
    v45 = v7;
    *error = v7;
  }

LABEL_56:

  return v36;
}

- (NSString)relativePath
{
  parentBundle = [(MIBundle *)self parentBundle];
  relativePath = [parentBundle relativePath];

  if (relativePath)
  {
    bundleParentSubdirectory = [(MIBundle *)self bundleParentSubdirectory];
    v6 = [relativePath stringByAppendingPathComponent:bundleParentSubdirectory];
    bundleURL = [(MIBundle *)self bundleURL];
    lastPathComponent = [bundleURL lastPathComponent];
    lastPathComponent2 = [v6 stringByAppendingPathComponent:lastPathComponent];
  }

  else
  {
    bundleParentSubdirectory = [(MIBundle *)self bundleURL];
    lastPathComponent2 = [bundleParentSubdirectory lastPathComponent];
  }

  return lastPathComponent2;
}

- (NSString)displayName
{
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v4 = [infoPlistSubset objectForKeyedSubscript:*MEMORY[0x1E695E120]];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    lastPathComponent = v5;
  }

  else
  {
    lastPathComponent = 0;
  }

  if (!lastPathComponent || ![lastPathComponent length])
  {
    infoPlistSubset2 = [(MIBundle *)self infoPlistSubset];
    v8 = [infoPlistSubset2 objectForKeyedSubscript:*MEMORY[0x1E695E4F8]];
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
      lastPathComponent = v10;
    }

    else
    {
      bundleURL = [(MIBundle *)self bundleURL];
      lastPathComponent = [bundleURL lastPathComponent];
    }
  }

  return lastPathComponent;
}

- (BOOL)_setBundleParentDirectoryURL:(id)l forBundleArray:(id)array error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  arrayCopy = array;
  v9 = arrayCopy;
  if (arrayCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = arrayCopy;
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
          v18 = [v17 setBundleParentDirectoryURL:lCopy error:&v22];
          v13 = v22;

          if (!v18)
          {

            if (error)
            {
              v19 = v13;
              v20 = 0;
              *error = v13;
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

- (BOOL)setBundleParentDirectoryURL:(id)l error:(id *)error
{
  lCopy = l;
  objc_storeStrong(&self->_bundleParentDirectoryURL, l);
  bundleURL = [(MIBundle *)self bundleURL];
  cfBundle = self->_cfBundle;
  if (cfBundle)
  {
    CFRelease(cfBundle);
    self->_cfBundle = 0;
  }

  v31 = 0;
  v10 = MICreateCFBundle(bundleURL, 0, &v31);
  v11 = v31;
  if (v10)
  {
    self->_cfBundle = v10;
    pluginKitBundles = [(MIBundle *)self pluginKitBundles];
    v30 = v11;
    v13 = [(MIBundle *)self _setBundleParentDirectoryURL:bundleURL forBundleArray:pluginKitBundles error:&v30];
    v14 = v30;

    if (!v13)
    {
      goto LABEL_9;
    }

    extensionKitBundles = [(MIBundle *)self extensionKitBundles];
    v29 = v14;
    v16 = [(MIBundle *)self _setBundleParentDirectoryURL:bundleURL forBundleArray:extensionKitBundles error:&v29];
    v11 = v29;

    if (!v16)
    {
      goto LABEL_16;
    }

    frameworkBundles = [(MIBundle *)self frameworkBundles];
    v28 = v11;
    v18 = [(MIBundle *)self _setBundleParentDirectoryURL:bundleURL forBundleArray:frameworkBundles error:&v28];
    v14 = v28;

    if (!v18)
    {
LABEL_9:
      v22 = 0;
      v11 = v14;
      if (!error)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    xpcServiceBundles = [(MIBundle *)self xpcServiceBundles];
    v27 = v14;
    v20 = [(MIBundle *)self _setBundleParentDirectoryURL:bundleURL forBundleArray:xpcServiceBundles error:&v27];
    v11 = v27;

    if (v20)
    {
      driverKitExtensionBundles = [(MIBundle *)self driverKitExtensionBundles];
      v26 = v11;
      v22 = [(MIBundle *)self _setBundleParentDirectoryURL:bundleURL forBundleArray:driverKitExtensionBundles error:&v26];
      v23 = v26;

      v11 = v23;
      goto LABEL_14;
    }

LABEL_16:
    v22 = 0;
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (gLogHandle && *(gLogHandle + 44) < 3)
  {
    goto LABEL_16;
  }

  driverKitExtensionBundles = [bundleURL path];
  MOLogWrite();
  v22 = 0;
LABEL_14:

  if (!error)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (!v22)
  {
    v24 = v11;
    *error = v11;
  }

LABEL_19:

  return v22;
}

- (NSURL)bundleURL
{
  bundleParentSubdirectory = [(MIBundle *)self bundleParentSubdirectory];

  bundleParentDirectoryURL = [(MIBundle *)self bundleParentDirectoryURL];
  if (bundleParentSubdirectory)
  {
    bundleParentSubdirectory2 = [(MIBundle *)self bundleParentSubdirectory];
    v6 = [bundleParentDirectoryURL URLByAppendingPathComponent:bundleParentSubdirectory2 isDirectory:1];

    bundleParentDirectoryURL = v6;
  }

  bundleName = [(MIBundle *)self bundleName];
  v8 = [bundleParentDirectoryURL URLByAppendingPathComponent:bundleName isDirectory:1];

  return v8;
}

- (NSString)minimumOSVersion
{
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v3 = MIMinimumOSVersionForBundleInfoPlist(infoPlistSubset);

  return v3;
}

- (NSArray)deviceFamilies
{
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v3 = [infoPlistSubset objectForKeyedSubscript:@"UIDeviceFamily"];
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
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v3 = [infoPlistSubset objectForKeyedSubscript:@"LSApplicationLaunchProhibited"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_7;
    }

    bOOLValue = [v3 isEqualToString:@"YES"];
  }

  v5 = bOOLValue;
LABEL_7:

  return v5;
}

- (BOOL)mayHaveExecutableProgram
{
  bundleType = [(MIBundle *)self bundleType];
  v4 = (bundleType & 0xFE) == 8 || (bundleType - 1) < 6;
  return bundleType == 11 || v4;
}

- (NSString)emergencyOffloadVersion
{
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v3 = [infoPlistSubset objectForKeyedSubscript:@"CF_MIEmergencyOffloadVersion"];
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
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v30 = *MEMORY[0x1E695E158];
  v5 = [infoPlistSubset objectForKeyedSubscript:?];

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
    infoPlistSubset2 = [(MIBundle *)self infoPlistSubset];
    v20 = [infoPlistSubset2 objectForKeyedSubscript:@"DTPlatformName"];
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

- (BOOL)getIsBuiltForiOSPlatform:(BOOL *)platform error:(id *)error
{
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2888CE8, error, &unk_1F2888D00, 0}];
  deviceFamilies = [(MIBundle *)self deviceFamilies];
  v8 = MIIsCompatibleWithAtLeastOneDeviceFamily(deviceFamilies, v6, 1);

  if (platform)
  {
    *platform = v8;
  }

  return 1;
}

- (BOOL)_getBundleRootContainsOnlyContentsDirectory:(BOOL *)directory error:(id *)error
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
  bundleURL = [(MIBundle *)self bundleURL];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__MIBundle__getBundleRootContainsOnlyContentsDirectory_error___block_invoke;
  v13[3] = &unk_1E7AE1B58;
  v13[4] = &v14;
  v13[5] = &v18;
  v9 = [v7 enumerateURLsForItemsInDirectoryAtURL:bundleURL ignoreSymlinks:0 withBlock:v13];

  if (!directory || v9)
  {
    if (error && v9)
    {
      v11 = v9;
      *error = v9;
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

    *directory = v10 & 1;
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

- (BOOL)getIsBuiltForMacPlatform:(BOOL *)platform error:(id *)error
{
  bundleInfoPlistSupportedPlatforms = [(MIBundle *)self bundleInfoPlistSupportedPlatforms];
  v8 = bundleInfoPlistSupportedPlatforms;
  if (bundleInfoPlistSupportedPlatforms)
  {
    if ([bundleInfoPlistSupportedPlatforms containsObject:&unk_1F2888CE8])
    {
      v9 = 0;
      v10 = 1;
      if (!platform)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = [v8 containsObject:&unk_1F2888DD8];
      v9 = 0;
      if (!platform)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v12 = [infoPlistSubset objectForKeyedSubscript:@"LSRequiresIPhoneOS"];

  if (v12)
  {
    v9 = 0;
    v10 = MIBooleanValue(v12, 0) ^ 1;
    goto LABEL_11;
  }

  platformHint = [(MIBundle *)self platformHint];
  if (platformHint)
  {
    v9 = 0;
    v10 = platformHint == 1;
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
        identifier = [(MIBundle *)self identifier];
        MOLogWrite();
      }
    }

    else if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      goto LABEL_24;
    }

LABEL_11:

    if (!platform)
    {
LABEL_13:
      v14 = 1;
      goto LABEL_14;
    }

LABEL_12:
    *platform = v10;
    goto LABEL_13;
  }

  if (error)
  {
    v18 = v17;
    v14 = 0;
    *error = v9;
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (BOOL)isCompatibleWithDeviceFamily:(int)family
{
  v3 = *&family;
  deviceFamilies = [(MIBundle *)self deviceFamilies];
  LOBYTE(v3) = MIIsCompatibleWithDeviceFamily(deviceFamilies, v3);

  return v3;
}

- (BOOL)isApplicableToCurrentDeviceFamilyWithError:(id *)error
{
  deviceFamilies = [(MIBundle *)self deviceFamilies];
  LOBYTE(error) = MIIsApplicableToCurrentDeviceFamilyWithError(deviceFamilies, error);

  return error;
}

- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)platform withError:(id *)error
{
  v7 = MGCopyAnswer();
  if (v7)
  {
    v8 = 0;
    if (platform)
    {
      *platform = 1;
    }
  }

  else
  {
    v8 = _CreateAndLogError("[MIBundle currentOSVersionForValidationUsingPlatform:withError:]", 1856, @"MIInstallerErrorDomain", 4, 0, 0, @"Could not get the product version from MobileGestalt.", v6, v10);
    if (error)
    {
      v8 = v8;
      *error = v8;
    }
  }

  return v7;
}

- (BOOL)isApplicableToCurrentOSVersionWithError:(id *)error
{
  v13 = 0;
  v14 = 0;
  v5 = [(MIBundle *)self currentOSVersionForValidationUsingPlatform:&v14 withError:&v13];
  v6 = v13;
  if (v5)
  {
    minimumOSVersion = [(MIBundle *)self minimumOSVersion];
    v12 = v6;
    v8 = [(MIBundle *)self _isMinimumOSVersion:minimumOSVersion applicableToOSVersion:v5 requiredOS:v14 error:&v12];
    v9 = v12;

    v6 = v9;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v10 = v6;
    *error = v6;
  }

LABEL_7:

  return v8;
}

- (BOOL)isApplicableToOSVersion:(id)version error:(id *)error
{
  versionCopy = version;
  minimumOSVersion = [(MIBundle *)self minimumOSVersion];
  LOBYTE(error) = [(MIBundle *)self isMinimumOSVersion:minimumOSVersion applicableToOSVersion:versionCopy error:error];

  return error;
}

- (BOOL)_isMinimumOSVersion:(id)version applicableToOSVersion:(id)sVersion requiredOS:(unint64_t)s error:(id *)error
{
  sVersionCopy = sVersion;
  versionCopy = version;
  bundleURL = [(MIBundle *)self bundleURL];
  LOBYTE(error) = MIBundleHasMinimumOSApplicableToProductVersion(bundleURL, versionCopy, sVersionCopy, s, error);

  return error;
}

- (BOOL)isApplicableToOSVersionEarlierThan:(id)than
{
  thanCopy = than;
  minimumOSVersion = [(MIBundle *)self minimumOSVersion];
  if (minimumOSVersion)
  {
    v6 = [thanCopy compare:minimumOSVersion options:64] == 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isApplicableToCurrentDeviceCapabilitiesWithError:(id *)error
{
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v5 = [infoPlistSubset objectForKeyedSubscript:@"UIRequiredDeviceCapabilities"];

  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    bOOLValue = 1;
    goto LABEL_14;
  }

  v6 = +[MICapabilitiesManager defaultManager];
  v17 = 0;
  v7 = [v6 checkCapabilities:v5 withOptions:0 error:&v17];
  v8 = v17;

  if (!v7)
  {
    bOOLValue = 0;
    if (!error)
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

  bOOLValue = [v11 BOOLValue];
  if ((bOOLValue & 1) == 0)
  {
    v14 = _CreateError("[MIBundle isApplicableToCurrentDeviceCapabilitiesWithError:]", 1981, @"MIInstallerErrorDomain", 67, 0, 0, @"Device capabilities do not match requirements: %@", v13, v7);

    v8 = v14;
  }

  if (error)
  {
LABEL_12:
    if ((bOOLValue & 1) == 0)
    {
      v15 = v8;
      bOOLValue = 0;
      *error = v8;
    }
  }

LABEL_14:

  return bOOLValue;
}

- (NSArray)supportedDevices
{
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v4 = [infoPlistSubset objectForKeyedSubscript:@"UISupportedDevices"];
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
    infoPlistSubset2 = [(MIBundle *)self infoPlistSubset];
    v8 = [infoPlistSubset2 objectForKeyedSubscript:@"SupportedDevices"];
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

- (BOOL)thinningMatchesCurrentDeviceWithError:(id *)error
{
  supportedDevices = [(MIBundle *)self supportedDevices];
  if (!supportedDevices)
  {
    goto LABEL_4;
  }

  bundleType = [(MIBundle *)self bundleType];
  if ((bundleType - 1) >= 5 && bundleType != 9)
  {
    _CreateAndLogError("[MIBundle thinningMatchesCurrentDeviceWithError:]", 2019, @"MIInstallerErrorDomain", 4, 0, 0, @"Unexpectedly asked to validate thinning on a non-app bundle %@", v7, self);
    v10 = LABEL_14:;
    v11 = 0;
    goto LABEL_15;
  }

  v8 = +[MIDaemonConfiguration sharedInstance];
  skipThinningCheck = [v8 skipThinningCheck];

  if (skipThinningCheck)
  {
LABEL_4:
    v10 = 0;
    v11 = 0;
LABEL_5:
    v12 = 1;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((MIArrayContainsOnlyClass(supportedDevices) & 1) == 0)
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
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v16 = [supportedDevices firstObjectCommonWithArray:v11];

  if (v16)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v18 = +[MIDaemonConfiguration sharedInstance];
  alternateThinningModelIdentifier = [v18 alternateThinningModelIdentifier];

  if (alternateThinningModelIdentifier && [supportedDevices containsObject:alternateThinningModelIdentifier])
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
    v20 = [supportedDevices componentsJoinedByString:{@", "}];
    v23 = [v11 componentsJoinedByString:{@", "}];
    v10 = _CreateAndLogError("[MIBundle thinningMatchesCurrentDeviceWithError:]", 2054, @"MIInstallerErrorDomain", 86, 0, &unk_1F2887DB8, @"This app is not compatibile with this device. This app specifies a value for UISupportedDevices in its Info.plist as [%@], but none of the identifiers in this device's compatibility list are present in this app's supported devices. This device is compatible with [%@].", v21, v20);

    v12 = 0;
  }

  if (error)
  {
LABEL_16:
    if (!v12)
    {
      v17 = v10;
      v12 = 0;
      *error = v10;
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
  bundleURL = [(MIBundle *)self bundleURL];
  path = [bundleURL path];
  identifier = [(MIBundle *)self identifier];
  bundleTypeDescription = [(MIBundle *)self bundleTypeDescription];
  v10 = [v3 stringWithFormat:@"<%@ : path = %@ identifier = %@ type = %@>", v5, path, identifier, bundleTypeDescription];

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

            extensionAttributes = [v12 extensionAttributes];
            v14 = extensionAttributes;
            if (extensionAttributes)
            {
              v15 = [extensionAttributes objectForKeyedSubscript:@"IntentsSupported"];
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
      selfCopy = self;
      v24 = v4;
      MOLogWrite();
    }

    v9 = 0;
  }

  v16 = [(MIBundle *)self infoPlistSubset:selfCopy];
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
      selfCopy2 = self;
      v25 = v19;
      MOLogWrite();
    }
  }

  v20 = [v9 copy];

  return v20;
}

- (BOOL)_validateAppNSPrivacyTrackingDomainsWithError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v5 = [infoPlistSubset objectForKeyedSubscript:@"NSPrivacyTrackingDomains"];

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

      if (error)
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

  if (!error)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v16 = v11;
  v12 = 0;
  *error = v11;
LABEL_17:

  return v12;
}

- (BOOL)validateAppMetadataWithError:(id *)error
{
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v6 = [infoPlistSubset objectForKeyedSubscript:@"INAlternativeAppNames"];
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
    bundleURL = [(MIBundle *)self bundleURL];
    path = [bundleURL path];
    v12 = _CreateAndLogError("[MIBundle validateAppMetadataWithError:]", 2156, @"MIInstallerErrorDomain", 132, 0, &unk_1F2887DE0, @"Bundle at path %@ has %lu %@ in its Info.plist, maximum of %lu allowed", v11, path);

    goto LABEL_8;
  }

  infoPlistSubset2 = [(MIBundle *)self infoPlistSubset];
  v14 = [infoPlistSubset2 objectForKeyedSubscript:@"ITSWatchOnlyContainer"];

  if (v14)
  {
    v12 = _CreateAndLogError("[MIBundle validateAppMetadataWithError:]", 2161, @"MIInstallerErrorDomain", 137, 0, &unk_1F2887E08, @"This app has the %@ key set in its Info.plist, which identifies it as a shell app surrounding a Watch-only app these are not installable.", v15, @"ITSWatchOnlyContainer");;
LABEL_8:
    v16 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v19 = 0;
  v16 = [(MIBundle *)self _validateAppNSPrivacyTrackingDomainsWithError:&v19];
  v12 = v19;
  if (!error)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!v16)
  {
    v17 = v12;
    *error = v12;
  }

LABEL_11:

  return v16;
}

- (NSString)sdkBuildVersion
{
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v3 = [infoPlistSubset objectForKeyedSubscript:@"DTSDKBuild"];
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

- (BOOL)sdkBuildVersionIsAtLeast:(id)least
{
  leastCopy = least;
  sdkBuildVersion = [(MIBundle *)self sdkBuildVersion];
  v6 = sdkBuildVersion;
  if (sdkBuildVersion)
  {
    v7 = [sdkBuildVersion compare:leastCopy options:64] != -1;
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