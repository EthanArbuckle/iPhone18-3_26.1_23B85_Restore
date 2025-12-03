@interface MIPlaceholderConstructor
+ (id)_infoPlistKeysToLoad;
- (BOOL)_constructPlaceholdersForDirectory:(id)directory itemsWithPathExtension:(id)extension appendingToArray:(id)array bundleType:(unint64_t)type error:(id *)error;
- (BOOL)_copyInfoPlistLoctableToPlaceholder:(id)placeholder error:(id *)error;
- (BOOL)_copyStringsToPlaceholder:(id)placeholder onlyDirectories:(BOOL)directories error:(id *)error;
- (BOOL)_introspectWithError:(id *)error;
- (BOOL)_loadInfoPlistContentWithError:(id *)error;
- (BOOL)_materializeConstructors:(id)constructors intoBundle:(id)bundle error:(id *)error;
- (BOOL)_populateAppExtensionPlaceholderConstructorsWithError:(id *)error;
- (BOOL)_populateEmbeddedAppClipPlaceholderConstructorsWithError:(id *)error;
- (BOOL)_populateEmbeddedWatchAppPlaceholderConstructorsWithError:(id *)error;
- (BOOL)_transferAndUpdateInstallSessionIDsToPlaceholder:(id)placeholder error:(id *)error;
- (BOOL)_writeIconToPlaceholder:(id)placeholder infoPlistIconContent:(id *)content error:(id *)error;
- (BOOL)_writeInfoPlistToPlaceholder:(id)placeholder substitutingIconContent:(id)content withError:(id *)error;
- (BOOL)isLaunchProhibited;
- (BOOL)materializeIntoBundleDirectory:(id)directory error:(id *)error;
- (MIPlaceholderConstructor)firstNetworkExtension;
- (NSString)bundleID;
- (id)_entitlementsForPath:(id)path error:(id *)error;
- (void)setInstallSessionUUID:(id)d;
- (void)setInstallUUID:(id)d;
@end

@implementation MIPlaceholderConstructor

- (NSString)bundleID
{
  infoPlistContent = [(MIPlaceholderConstructor *)self infoPlistContent];
  v3 = [infoPlistContent objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
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

- (MIPlaceholderConstructor)firstNetworkExtension
{
  v16 = *MEMORY[0x1E69E9840];
  [(MIPlaceholderConstructor *)self appExtensionPlaceholderConstructors];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        entitlements = [v6 entitlements];
        v8 = MICopyNetworkExtensionEntitlement(entitlements);

        if (v8)
        {
          v3 = v6;

          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isLaunchProhibited
{
  infoPlistContent = [(MIPlaceholderConstructor *)self infoPlistContent];
  v3 = [infoPlistContent objectForKeyedSubscript:@"LSApplicationLaunchProhibited"];
  v4 = MIBooleanValue(v3, 0);

  return v4;
}

- (id)_entitlementsForPath:(id)path error:(id *)error
{
  pathCopy = path;
  information = 0;
  staticCode = 0;
  if (SecStaticCodeCreateWithPath(pathCopy, 0, &staticCode))
  {
    v6 = *MEMORY[0x1E69A8D00];
    path = [pathCopy path];
    _CreateAndLogError("[MIPlaceholderConstructor _entitlementsForPath:error:]", 196, v6, 13, 0, 0, @"Failed to construct SecStaticCode for %@ : %d", v8, path);
    v11 = LABEL_5:;
    v12 = 0;
    v13 = 0;
LABEL_6:

    goto LABEL_7;
  }

  if (SecCodeCopySigningInformation(staticCode, 4u, &information))
  {
    v9 = *MEMORY[0x1E69A8D00];
    path = [pathCopy path];
    _CreateAndLogError("[MIPlaceholderConstructor _entitlementsForPath:error:]", 202, v9, 13, 0, 0, @"SecCodeCopySigningInformation for %@ returned error %d", v10, path);
    goto LABEL_5;
  }

  v12 = information;
  information = 0;
  v16 = [(__CFDictionary *)v12 objectForKeyedSubscript:*MEMORY[0x1E697B068]];
  if (v16)
  {
    path = v16;
    v13 = [v16 copy];
    v11 = 0;
    goto LABEL_6;
  }

  v11 = 0;
  v13 = MEMORY[0x1E695E0F8];
LABEL_7:
  if (information)
  {
    CFRelease(information);
    information = 0;
  }

  if (staticCode)
  {
    CFRelease(staticCode);
    staticCode = 0;
  }

  if (error && !v13)
  {
    v14 = v11;
    *error = v11;
  }

  return v13;
}

+ (id)_infoPlistKeysToLoad
{
  if (_infoPlistKeysToLoad_onceToken != -1)
  {
    +[MIPlaceholderConstructor _infoPlistKeysToLoad];
  }

  v3 = _infoPlistKeysToLoad_keysSet;

  return v3;
}

uint64_t __48__MIPlaceholderConstructor__infoPlistKeysToLoad__block_invoke()
{
  v0 = *MEMORY[0x1E695E4E8];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E695E4F0], *MEMORY[0x1E695E4E8], *MEMORY[0x1E695E148], *MEMORY[0x1E695E500], *MEMORY[0x1E695E4F8], *MEMORY[0x1E695E120], @"MinimumOSVersion", @"LSApplicationLaunchProhibited", @"NSExtension", @"EXAppExtensionAttributes", @"UIRequiredDeviceCapabilities", @"SBAppTags", @"LSCounterpartIdentifiers", @"SBIconMasqueradeIdentifier", @"WKCompanionAppBundleIdentifier", @"WKWatchOnly", @"WKRunsIndependentlyOfCompanionApp", @"NSApplicationRequiresArcade", 0}];
  v2 = _infoPlistKeysToLoad_keysSet;
  _infoPlistKeysToLoad_keysSet = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (BOOL)_loadInfoPlistContentWithError:(id *)error
{
  bundleURL = [(MIPlaceholderConstructor *)self bundleURL];
  if (-[MIPlaceholderConstructor preserveFullInfoPlist](self, "preserveFullInfoPlist") || ([objc_opt_class() _infoPlistKeysToLoad], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = MILoadRawInfoPlist();
    v9 = 0;
    v8 = [v7 mutableCopy];
  }

  else
  {
    v7 = v6;
    v8 = MILoadInfoPlistWithError();
    v9 = 0;
  }

  if (v8)
  {
    if ([v8 count])
    {
      v10 = [v8 copy];
      [(MIPlaceholderConstructor *)self setInfoPlistContent:v10];

      v11 = 1;
      goto LABEL_14;
    }

    v15 = *MEMORY[0x1E69A8D00];
    path = [bundleURL path];
    _CreateAndLogError("[MIPlaceholderConstructor _loadInfoPlistContentWithError:]", 288, v15, 4, 0, 0, @"Found no keys in Info.plist in bundle at %@", v16, path);
  }

  else
  {
    v12 = *MEMORY[0x1E69A8D00];
    path = [bundleURL path];
    _CreateAndLogError("[MIPlaceholderConstructor _loadInfoPlistContentWithError:]", 283, v12, 4, v9, 0, @"Failed to load Info.plist from %@", v14, path);
  }
  v17 = ;

  if (error)
  {
    v18 = v17;
    v11 = 0;
    *error = v17;
  }

  else
  {
    v11 = 0;
  }

  v9 = v17;
LABEL_14:

  return v11;
}

- (BOOL)_constructPlaceholdersForDirectory:(id)directory itemsWithPathExtension:(id)extension appendingToArray:(id)array bundleType:(unint64_t)type error:(id *)error
{
  directoryCopy = directory;
  extensionCopy = extension;
  arrayCopy = array;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = 0;
  defaultManager = [MEMORY[0x1E69A8D78] defaultManager];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __120__MIPlaceholderConstructor__constructPlaceholdersForDirectory_itemsWithPathExtension_appendingToArray_bundleType_error___block_invoke;
  v27[3] = &unk_1E80BA5D8;
  v16 = extensionCopy;
  v28 = v16;
  selfCopy = self;
  v31 = &v33;
  typeCopy = type;
  v17 = arrayCopy;
  v30 = v17;
  v18 = [defaultManager enumerateURLsForItemsInDirectoryAtURL:directoryCopy ignoreSymlinks:1 withBlock:v27];

  v19 = v34[5];
  if (!v19)
  {
    domain = [v18 domain];
    v23 = *MEMORY[0x1E696A798];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]] && objc_msgSend(v18, "code") == 20)
    {
    }

    else
    {
      domain2 = [v18 domain];
      if (([domain2 isEqualToString:v23] & 1) == 0)
      {

        goto LABEL_3;
      }

      code = [v18 code];

      if (code != 2)
      {
        goto LABEL_4;
      }
    }

    v18 = 0;
    v21 = 1;
    goto LABEL_13;
  }

  domain = v18;
  v18 = v19;
LABEL_3:

LABEL_4:
  v21 = v18 == 0;
  if (error && v18)
  {
    v22 = v18;
    v21 = 0;
    *error = v18;
  }

LABEL_13:

  _Block_object_dispose(&v33, 8);
  return v21;
}

BOOL __120__MIPlaceholderConstructor__constructPlaceholdersForDirectory_itemsWithPathExtension_appendingToArray_bundleType_error___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 4 && ([v5 pathExtension], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *(a1 + 32)), v7, v8))
  {
    v9 = *(a1 + 40);
    v10 = objc_alloc(objc_opt_class());
    v11 = [*(a1 + 40) preserveFullInfoPlist];
    v12 = *(a1 + 64);
    v20 = 0;
    v13 = [v10 _initWithSource:v6 byPreservingFullInfoPlist:v11 forBundleType:v12 error:&v20];
    v14 = v20;
    v15 = v20;
    v16 = v13 != 0;
    if (v13)
    {
      if (*(a1 + 64) == 2)
      {
        v17 = [v13 infoPlistContent];
        IsWatchKitForInfoPlist = MIExtensionPointIsWatchKitForInfoPlist();

        if (IsWatchKitForInfoPlist)
        {
          [v13 setIsWatchKitExtension:1];
          [*(a1 + 40) setWatchKitExtensionPlaceholderConstructor:v13];
        }
      }

      [*(a1 + 48) addObject:v13];
    }

    else
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v14);
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)_populateAppExtensionPlaceholderConstructorsWithError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [&unk_1F3DE9A68 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    errorCopy = error;
    v8 = 0;
    v9 = *v26;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(&unk_1F3DE9A68);
        }

        unsignedIntegerValue = [*(*(&v25 + 1) + 8 * v10) unsignedIntegerValue];
        bundleURL = [(MIPlaceholderConstructor *)self bundleURL];
        v14 = bundleURL;
        if ((unsignedIntegerValue - 1) > 3)
        {
          v15 = 0;
        }

        else
        {
          v15 = off_1E80BA670[unsignedIntegerValue - 1];
        }

        v16 = [bundleURL URLByAppendingPathComponent:v15 isDirectory:1];

        v24 = v11;
        v17 = [(MIPlaceholderConstructor *)self _constructPlaceholdersForDirectory:v16 itemsWithPathExtension:@"appex" appendingToArray:v5 bundleType:unsignedIntegerValue error:&v24];
        v8 = v24;

        if (!v17)
        {
          if (errorCopy)
          {
            v18 = v8;
            v19 = 0;
            *errorCopy = v8;
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_18;
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [&unk_1F3DE9A68 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

  v20 = [v5 copy];
  [(MIPlaceholderConstructor *)self setAppExtensionPlaceholderConstructors:v20];

  v19 = 1;
LABEL_18:

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)_populateEmbeddedWatchAppPlaceholderConstructorsWithError:(id *)error
{
  if ([(MIPlaceholderConstructor *)self placeholderType])
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
LABEL_5:
    v12 = 1;
    goto LABEL_6;
  }

  v6 = objc_opt_new();
  bundleURL = [(MIPlaceholderConstructor *)self bundleURL];
  v5 = [bundleURL URLByAppendingPathComponent:@"Watch" isDirectory:1];

  v15 = 0;
  v9 = [(MIPlaceholderConstructor *)self _constructPlaceholdersForDirectory:v5 itemsWithPathExtension:@"app" appendingToArray:v6 bundleType:3 error:&v15];
  v10 = v15;
  v7 = v10;
  if (v9)
  {
    v11 = [v6 copy];
    [(MIPlaceholderConstructor *)self setEmbeddedWatchAppPlaceholderConstructors:v11];

    goto LABEL_5;
  }

  if (error)
  {
    v14 = v10;
    v12 = 0;
    *error = v7;
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return v12;
}

- (BOOL)_populateEmbeddedAppClipPlaceholderConstructorsWithError:(id *)error
{
  if ([(MIPlaceholderConstructor *)self placeholderType])
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
LABEL_5:
    v12 = 1;
    goto LABEL_6;
  }

  v6 = objc_opt_new();
  bundleURL = [(MIPlaceholderConstructor *)self bundleURL];
  v5 = [bundleURL URLByAppendingPathComponent:@"AppClips" isDirectory:1];

  v15 = 0;
  v9 = [(MIPlaceholderConstructor *)self _constructPlaceholdersForDirectory:v5 itemsWithPathExtension:@"app" appendingToArray:v6 bundleType:4 error:&v15];
  v10 = v15;
  v7 = v10;
  if (v9)
  {
    v11 = [v6 copy];
    [(MIPlaceholderConstructor *)self setEmbeddedAppClipPlaceholderConstructors:v11];

    goto LABEL_5;
  }

  if (error)
  {
    v14 = v10;
    v12 = 0;
    *error = v7;
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return v12;
}

- (BOOL)_introspectWithError:(id *)error
{
  v19 = 0;
  v5 = [(MIPlaceholderConstructor *)self _loadInfoPlistContentWithError:&v19];
  v6 = v19;
  if (v5)
  {
    bundleURL = [(MIPlaceholderConstructor *)self bundleURL];
    v18 = v6;
    v8 = [(MIPlaceholderConstructor *)self _entitlementsForPath:bundleURL error:&v18];
    v9 = v18;

    if (!v8)
    {
      goto LABEL_9;
    }

    [(MIPlaceholderConstructor *)self setEntitlements:v8];
    v17 = v9;
    v10 = [(MIPlaceholderConstructor *)self _populateAppExtensionPlaceholderConstructorsWithError:&v17];
    v6 = v17;

    if (!v10)
    {
      v12 = 0;
      if (!error)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v16 = v6;
    v11 = [(MIPlaceholderConstructor *)self _populateEmbeddedWatchAppPlaceholderConstructorsWithError:&v16];
    v9 = v16;

    if (v11)
    {
      v15 = v9;
      v12 = [(MIPlaceholderConstructor *)self _populateEmbeddedAppClipPlaceholderConstructorsWithError:&v15];
      v6 = v15;

      if (!error)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_9:
      v12 = 0;
      v6 = v9;
      if (!error)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v12 = 0;
    v8 = 0;
    if (!error)
    {
      goto LABEL_14;
    }
  }

LABEL_12:
  if (!v12)
  {
    v13 = v6;
    *error = v6;
  }

LABEL_14:

  return v12;
}

- (void)setInstallUUID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  objc_storeStrong(&self->_installUUID, d);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  appExtensionPlaceholderConstructors = [(MIPlaceholderConstructor *)self appExtensionPlaceholderConstructors];
  v7 = [appExtensionPlaceholderConstructors countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(appExtensionPlaceholderConstructors);
        }

        [*(*(&v12 + 1) + 8 * v10++) setInstallUUID:dCopy];
      }

      while (v8 != v10);
      v8 = [appExtensionPlaceholderConstructors countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setInstallSessionUUID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  objc_storeStrong(&self->_installSessionUUID, d);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  appExtensionPlaceholderConstructors = [(MIPlaceholderConstructor *)self appExtensionPlaceholderConstructors];
  v7 = [appExtensionPlaceholderConstructors countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(appExtensionPlaceholderConstructors);
        }

        [*(*(&v12 + 1) + 8 * v10++) setInstallSessionUUID:dCopy];
      }

      while (v8 != v10);
      v8 = [appExtensionPlaceholderConstructors countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)_writeInfoPlistToPlaceholder:(id)placeholder substitutingIconContent:(id)content withError:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  placeholderCopy = placeholder;
  contentCopy = content;
  infoPlistContent = [(MIPlaceholderConstructor *)self infoPlistContent];
  v11 = [placeholderCopy URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
  v12 = [infoPlistContent mutableCopy];
  [v12 setObject:@"Executable" forKeyedSubscript:*MEMORY[0x1E695E4E8]];
  placeholderType = [(MIPlaceholderConstructor *)self placeholderType];
  MIMinimumOSVersionForBundleInfoPlist();
  v41 = v40 = error;
  if (v41)
  {
    v14 = MIBundleMinimumOSVersionIsPreV6() ^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v42 = infoPlistContent;
  v43 = placeholderCopy;
  v15 = v11;
  if (MEMORY[0x1EEE8A788])
  {
    v16 = contentCopy;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v17 = IFTopLevelAppBundlePlistKeys();
    v18 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v46;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v12 setObject:0 forKeyedSubscript:*(*(&v45 + 1) + 8 * i)];
        }

        v19 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v19);
    }

    contentCopy = v16;
    v11 = v15;
    if (v16)
    {
      [v12 addEntriesFromDictionary:v16];
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  if ([(MIPlaceholderConstructor *)self performPlaceholderInstallActions])
  {
    v22 = @"CF_MIEmergencyOffloadVersion";
  }

  else
  {
    if (!((placeholderType != 3) | v14 & 1))
    {
      goto LABEL_22;
    }

    v22 = @"CF_MIPlaceholderConstructorVersion";
  }

  v23 = MICopyCurrentBuildVersion();
  [v12 setObject:v23 forKeyedSubscript:v22];

  v11 = v15;
  if (placeholderType == 3)
  {
LABEL_22:
    watchKitExtensionPlaceholderConstructor = [(MIPlaceholderConstructor *)self watchKitExtensionPlaceholderConstructor];

    if (!watchKitExtensionPlaceholderConstructor)
    {
      goto LABEL_24;
    }
  }

  if (![(MIPlaceholderConstructor *)self isWatchKitExtension])
  {
    v27 = 0;
    goto LABEL_27;
  }

LABEL_24:
  bundleURL = [(MIPlaceholderConstructor *)self bundleURL];
  v44[1] = 0;
  v26 = MIBundleSupportedArchitecturesForPlaceholderInfoPlist();
  v27 = 0;

  if (!v26)
  {
    v28 = v42;
    v29 = v43;
    goto LABEL_31;
  }

  [v12 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69A8D10]];

LABEL_27:
  v28 = v42;
  v29 = v43;
  v30 = v27;
  v44[0] = v27;
  v31 = [v12 MI_writeToURL:v11 format:200 options:0x10000000 error:v44];
  v27 = v44[0];

  if (v31)
  {
    v32 = 1;
    goto LABEL_34;
  }

  v33 = *MEMORY[0x1E69A8D00];
  path = [v11 path];
  v36 = _CreateAndLogError("[MIPlaceholderConstructor _writeInfoPlistToPlaceholder:substitutingIconContent:withError:]", 602, v33, 4, v27, 0, @"Failed to write Info.plist file to %@", v35, path);

  v27 = v36;
LABEL_31:
  if (v40)
  {
    v37 = v27;
    v32 = 0;
    *v40 = v27;
  }

  else
  {
    v32 = 0;
  }

LABEL_34:

  v38 = *MEMORY[0x1E69E9840];
  return v32;
}

- (BOOL)_copyStringsToPlaceholder:(id)placeholder onlyDirectories:(BOOL)directories error:(id *)error
{
  placeholderCopy = placeholder;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  bundleURL = [(MIPlaceholderConstructor *)self bundleURL];
  defaultManager = [MEMORY[0x1E69A8D78] defaultManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__MIPlaceholderConstructor__copyStringsToPlaceholder_onlyDirectories_error___block_invoke;
  v20[3] = &unk_1E80BA600;
  v11 = placeholderCopy;
  v21 = v11;
  v12 = defaultManager;
  v22 = v12;
  v23 = &v25;
  directoriesCopy = directories;
  v13 = [v12 enumerateURLsForItemsInDirectoryAtURL:bundleURL ignoreSymlinks:1 withBlock:v20];
  v15 = v13;
  if (!v26[5])
  {
    if (!v13)
    {
      v16 = 1;
      goto LABEL_8;
    }

    v17 = _CreateAndLogError("[MIPlaceholderConstructor _copyStringsToPlaceholder:onlyDirectories:error:]", 663, *MEMORY[0x1E69A8D00], 4, v13, 0, @"Encountered error while enumerating %@ to copy strings", v14, bundleURL);
    v18 = v26[5];
    v26[5] = v17;

    if (error)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    goto LABEL_8;
  }

  if (!error)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = 0;
  *error = v26[5];
LABEL_8:

  _Block_object_dispose(&v25, 8);
  return v16;
}

uint64_t __76__MIPlaceholderConstructor__copyStringsToPlaceholder_onlyDirectories_error___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 4)
  {
    v7 = [v5 pathExtension];
    v8 = [v7 isEqualToString:@"lproj"];

    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = [v6 lastPathComponent];
      v11 = [v9 URLByAppendingPathComponent:v10 isDirectory:1];

      v12 = *(a1 + 40);
      v28 = 0;
      LOBYTE(v10) = [v12 createDirectoryAtURL:v11 withIntermediateDirectories:0 mode:493 error:&v28];
      v14 = v28;
      if (v10)
      {
        if (*(a1 + 56))
        {
          v15 = 1;
LABEL_10:

          goto LABEL_11;
        }

        v18 = [v6 URLByAppendingPathComponent:@"InfoPlist.strings" isDirectory:0];
        if (([*(a1 + 40) itemDoesNotExistAtURL:v18] & 1) == 0)
        {
          v21 = [v11 URLByAppendingPathComponent:@"InfoPlist.strings" isDirectory:0];
          v22 = *(a1 + 40);
          v27 = v14;
          v15 = [v22 copyItemAtURL:v18 toURL:v21 error:&v27];
          v19 = v27;

          if ((v15 & 1) == 0)
          {
            v24 = _CreateAndLogError("[MIPlaceholderConstructor _copyStringsToPlaceholder:onlyDirectories:error:]_block_invoke", 651, *MEMORY[0x1E69A8D00], 4, v19, 0, @"Failed to copy InfoPlist.strings from %@ to %@", v23, v18);
            v25 = *(*(a1 + 48) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v24;
          }

          goto LABEL_9;
        }

        v15 = 1;
      }

      else
      {
        v16 = _CreateAndLogError("[MIPlaceholderConstructor _copyStringsToPlaceholder:onlyDirectories:error:]_block_invoke", 634, *MEMORY[0x1E69A8D00], 4, v14, 0, @"Failed to create destination lproj directory at %@", v13, v11);
        v15 = 0;
        v17 = *(*(a1 + 48) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;
      }

      v19 = v14;
LABEL_9:

      v14 = v19;
      goto LABEL_10;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

- (BOOL)_copyInfoPlistLoctableToPlaceholder:(id)placeholder error:(id *)error
{
  placeholderCopy = placeholder;
  bundleURL = [(MIPlaceholderConstructor *)self bundleURL];
  v8 = [bundleURL URLByAppendingPathComponent:@"InfoPlist.loctable" isDirectory:0];

  v9 = [placeholderCopy URLByAppendingPathComponent:@"InfoPlist.loctable" isDirectory:0];

  defaultManager = [MEMORY[0x1E69A8D78] defaultManager];
  v16 = 0;
  v11 = [defaultManager copyItemAtURL:v8 toURL:v9 error:&v16];
  v12 = v16;
  v13 = v12;
  if (error && (v11 & 1) == 0)
  {
    v14 = v12;
    *error = v13;
  }

  return v11;
}

- (BOOL)_writeIconToPlaceholder:(id)placeholder infoPlistIconContent:(id *)content error:(id *)error
{
  placeholderCopy = placeholder;
  bundleURL = [(MIPlaceholderConstructor *)self bundleURL];
  if (!MEMORY[0x1EEE8A780])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v13 = 0;
    v12 = 0;
LABEL_12:
    if (!content)
    {
LABEL_14:
      v15 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v14 = v12;
    *content = v12;
    goto LABEL_14;
  }

  alternateIconName = [(MIPlaceholderConstructor *)self alternateIconName];
  v11 = IFCaptureIconContent();
  v12 = 0;
  v13 = 0;

  if (v11)
  {
    if (![v12 count] && (!gLogHandle || *(gLogHandle + 44) >= 5))
    {
      path = [bundleURL path];
      MOLogWrite();

      if (!content)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!v13)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      path2 = [bundleURL path];
      MOLogWrite();
    }

    v13 = 0;
    if (!content)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    path3 = [bundleURL path];
    MOLogWrite();
  }

  if (error)
  {
    v17 = v13;
    v15 = 0;
    *error = v13;
  }

  else
  {
    v15 = 0;
  }

LABEL_15:

  return v15;
}

- (BOOL)_transferAndUpdateInstallSessionIDsToPlaceholder:(id)placeholder error:(id *)error
{
  placeholderCopy = placeholder;
  defaultManager = [MEMORY[0x1E69A8D78] defaultManager];
  installSessionUUID = [(MIPlaceholderConstructor *)self installSessionUUID];
  installUUID = [(MIPlaceholderConstructor *)self installUUID];
  v10 = installUUID;
  if (installSessionUUID)
  {
    v11 = 0;
    if (installUUID)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  infoPlistContent = [(MIPlaceholderConstructor *)self infoPlistContent];
  v15 = [infoPlistContent objectForKeyedSubscript:*MEMORY[0x1E695E4E8]];

  if (!v15)
  {
    v18 = *MEMORY[0x1E69A8D00];
    bundleURL = [(MIPlaceholderConstructor *)self bundleURL];
    path = [bundleURL path];
    v11 = _CreateAndLogError("[MIPlaceholderConstructor _transferAndUpdateInstallSessionIDsToPlaceholder:error:]", 762, v18, 4, 0, 0, @"Failed to get CFBundleExecutable key from Info.plist of %@", v21, path);

    v13 = 0;
    goto LABEL_15;
  }

  bundleURL2 = [(MIPlaceholderConstructor *)self bundleURL];
  v13 = [bundleURL2 URLByAppendingPathComponent:v15 isDirectory:0];

  v28 = 0;
  installSessionUUID = [defaultManager dataForExtendedAttributeNamed:@"com.apple.install_session_uuid" length:16 fromURL:v13 error:&v28];
  v17 = v28;
  v11 = v17;
  if (installSessionUUID)
  {
    goto LABEL_8;
  }

  domain = [v17 domain];
  if (![domain isEqualToString:*MEMORY[0x1E696A798]])
  {

    goto LABEL_15;
  }

  code = [v11 code];

  if (code != 93)
  {
LABEL_15:

    LOBYTE(v12) = 0;
    installSessionUUID = 0;
    goto LABEL_16;
  }

  installSessionUUID = _UUIDData();

  v11 = 0;
LABEL_8:
  [(MIPlaceholderConstructor *)self setInstallSessionUUID:installSessionUUID];

  if (!v10)
  {
LABEL_3:
    v10 = _UUIDData();
    [(MIPlaceholderConstructor *)self setInstallUUID:v10];
  }

LABEL_4:
  v27 = v11;
  v12 = [defaultManager setData:installSessionUUID forExtendedAttributeNamed:@"com.apple.install_session_uuid" onURL:placeholderCopy error:&v27];
  v13 = v27;

  if (v12)
  {
    v26 = v13;
    LOBYTE(v12) = [defaultManager setData:v10 forExtendedAttributeNamed:@"com.apple.install_uuid" onURL:placeholderCopy error:&v26];
    v11 = v26;
LABEL_16:

    v13 = v11;
  }

  if (error && (v12 & 1) == 0)
  {
    v24 = v13;
    *error = v13;
  }

  return v12;
}

- (BOOL)_materializeConstructors:(id)constructors intoBundle:(id)bundle error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  constructorsCopy = constructors;
  bundleCopy = bundle;
  defaultManager = [MEMORY[0x1E69A8D78] defaultManager];
  v8 = objc_opt_new();
  if (constructorsCopy && [constructorsCopy count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = constructorsCopy;
    obj = constructorsCopy;
    v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      errorCopy = error;
      v11 = 0;
      v30 = *v36;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          placeholderType = [v13 placeholderType];
          if ((placeholderType - 1) >= 4)
          {
            v18 = _CreateAndLogError("[MIPlaceholderConstructor _materializeConstructors:intoBundle:error:]", 827, *MEMORY[0x1E69A8D00], 4, 0, 0, @"Unknown placeholder type %lu", v15, placeholderType);
            v17 = v11;
            goto LABEL_23;
          }

          v16 = off_1E80BA670[placeholderType - 1];
          v17 = [bundleCopy URLByAppendingPathComponent:v16 isDirectory:1];
          if ([v8 containsObject:v16])
          {
            v18 = v11;
          }

          else
          {
            v34 = v11;
            v19 = [defaultManager createDirectoryAtURL:v17 withIntermediateDirectories:0 mode:493 error:&v34];
            v18 = v34;

            if (!v19)
            {
              goto LABEL_23;
            }

            [v8 addObject:v16];
          }

          bundleURL = [v13 bundleURL];
          lastPathComponent = [bundleURL lastPathComponent];
          v22 = [v17 URLByAppendingPathComponent:lastPathComponent isDirectory:1];

          v33 = v18;
          LODWORD(bundleURL) = [v13 materializeIntoBundleDirectory:v22 error:&v33];
          v11 = v33;

          if (!bundleURL)
          {
            v18 = v11;
LABEL_23:

            constructorsCopy = v28;
            if (errorCopy)
            {
              v26 = v18;
              v23 = 0;
              *errorCopy = v18;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_18;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
    }

    v23 = 1;
    v18 = v11;
    constructorsCopy = v28;
  }

  else
  {
    v18 = 0;
    v23 = 1;
  }

LABEL_18:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)materializeIntoBundleDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  defaultManager = [MEMORY[0x1E69A8D78] defaultManager];
  entitlements = [(MIPlaceholderConstructor *)self entitlements];
  v49 = 0;
  v9 = [defaultManager createDirectoryAtURL:directoryCopy withIntermediateDirectories:0 mode:493 class:4 error:&v49];
  v10 = v49;
  if (!v9)
  {
    v13 = 0;
LABEL_6:
    v14 = 0;
    goto LABEL_31;
  }

  if ([entitlements count])
  {
    v48 = v10;
    v11 = MIWritePlaceholderEntitlements(directoryCopy, entitlements, &v48);
    v12 = v48;

    if (!v11)
    {
      v13 = 0;
      v14 = 0;
LABEL_30:
      v10 = v12;
      goto LABEL_31;
    }
  }

  else
  {
    v12 = v10;
  }

  v47 = 0;
  v15 = [(MIPlaceholderConstructor *)self _copyInfoPlistLoctableToPlaceholder:directoryCopy error:&v47];
  v16 = v47;
  v13 = v16;
  if (!v15)
  {
    domain = [v16 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      code = [v13 code];

      if (code == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = v13;

    v14 = 0;
    v10 = v13;
    goto LABEL_31;
  }

LABEL_9:
  v46 = v12;
  v17 = [(MIPlaceholderConstructor *)self _copyStringsToPlaceholder:directoryCopy onlyDirectories:v15 error:&v46];
  v10 = v46;

  if (!v17)
  {
    goto LABEL_6;
  }

  v44 = v10;
  v45 = 0;
  v18 = [(MIPlaceholderConstructor *)self _writeIconToPlaceholder:directoryCopy infoPlistIconContent:&v45 error:&v44];
  v14 = v45;
  v12 = v44;

  if (!v18)
  {
    goto LABEL_30;
  }

  v43 = v12;
  v19 = [(MIPlaceholderConstructor *)self _writeInfoPlistToPlaceholder:directoryCopy substitutingIconContent:v14 withError:&v43];
  v10 = v43;

  if (!v19)
  {
    goto LABEL_31;
  }

  if ([(MIPlaceholderConstructor *)self performPlaceholderInstallActions])
  {
    v42 = v10;
    v20 = [(MIPlaceholderConstructor *)self _transferAndUpdateInstallSessionIDsToPlaceholder:directoryCopy error:&v42];
    v12 = v42;

    if (!v20)
    {
      goto LABEL_30;
    }

    v41 = v12;
    v21 = [defaultManager markBundleAsPlaceholder:directoryCopy withError:&v41];
    v10 = v41;

    if (!v21)
    {
      goto LABEL_31;
    }
  }

  if ([(MIPlaceholderConstructor *)self basicIOSPlaceholderForWatchOSLessThanSix])
  {
LABEL_16:
    v22 = 1;
    goto LABEL_38;
  }

  appExtensionPlaceholderConstructors = [(MIPlaceholderConstructor *)self appExtensionPlaceholderConstructors];
  v40 = v10;
  v35 = [(MIPlaceholderConstructor *)self _materializeConstructors:appExtensionPlaceholderConstructors intoBundle:directoryCopy error:&v40];
  v12 = v40;

  if (!v35)
  {
    goto LABEL_30;
  }

  v26 = v12;
  if (![(MIPlaceholderConstructor *)self includeWatchAppPlaceholders])
  {
    v10 = v12;
LABEL_27:
    if ([(MIPlaceholderConstructor *)self includeAppClipPlaceholders])
    {
      embeddedAppClipPlaceholderConstructors = [(MIPlaceholderConstructor *)self embeddedAppClipPlaceholderConstructors];
      v38 = v10;
      v29 = [(MIPlaceholderConstructor *)self _materializeConstructors:embeddedAppClipPlaceholderConstructors intoBundle:directoryCopy error:&v38];
      v12 = v38;

      if (v29)
      {
        v22 = 1;
        v10 = v12;
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    goto LABEL_16;
  }

  embeddedWatchAppPlaceholderConstructors = [(MIPlaceholderConstructor *)self embeddedWatchAppPlaceholderConstructors];
  v39 = v26;
  v36 = [(MIPlaceholderConstructor *)self _materializeConstructors:embeddedWatchAppPlaceholderConstructors intoBundle:directoryCopy error:&v39];
  v10 = v39;

  if (v36)
  {
    goto LABEL_27;
  }

LABEL_31:
  v37 = 0;
  v30 = [defaultManager removeItemAtURL:directoryCopy error:&v37];
  v31 = v37;
  if ((v30 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    path = [directoryCopy path];
    MOLogWrite();
  }

  if (error)
  {
    v32 = v10;
    v22 = 0;
    *error = v10;
  }

  else
  {
    v22 = 0;
  }

LABEL_38:

  return v22;
}

@end