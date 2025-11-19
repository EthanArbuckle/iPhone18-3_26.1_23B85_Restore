@interface MIPlaceholderConstructor
+ (id)_infoPlistKeysToLoad;
- (BOOL)_constructPlaceholdersForDirectory:(id)a3 itemsWithPathExtension:(id)a4 appendingToArray:(id)a5 bundleType:(unint64_t)a6 error:(id *)a7;
- (BOOL)_copyInfoPlistLoctableToPlaceholder:(id)a3 error:(id *)a4;
- (BOOL)_copyStringsToPlaceholder:(id)a3 onlyDirectories:(BOOL)a4 error:(id *)a5;
- (BOOL)_introspectWithError:(id *)a3;
- (BOOL)_loadInfoPlistContentWithError:(id *)a3;
- (BOOL)_materializeConstructors:(id)a3 intoBundle:(id)a4 error:(id *)a5;
- (BOOL)_populateAppExtensionPlaceholderConstructorsWithError:(id *)a3;
- (BOOL)_populateEmbeddedAppClipPlaceholderConstructorsWithError:(id *)a3;
- (BOOL)_populateEmbeddedWatchAppPlaceholderConstructorsWithError:(id *)a3;
- (BOOL)_transferAndUpdateInstallSessionIDsToPlaceholder:(id)a3 error:(id *)a4;
- (BOOL)_writeIconToPlaceholder:(id)a3 infoPlistIconContent:(id *)a4 error:(id *)a5;
- (BOOL)_writeInfoPlistToPlaceholder:(id)a3 substitutingIconContent:(id)a4 withError:(id *)a5;
- (BOOL)isLaunchProhibited;
- (BOOL)materializeIntoBundleDirectory:(id)a3 error:(id *)a4;
- (MIPlaceholderConstructor)firstNetworkExtension;
- (NSString)bundleID;
- (id)_entitlementsForPath:(id)a3 error:(id *)a4;
- (void)setInstallSessionUUID:(id)a3;
- (void)setInstallUUID:(id)a3;
@end

@implementation MIPlaceholderConstructor

- (NSString)bundleID
{
  v2 = [(MIPlaceholderConstructor *)self infoPlistContent];
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
        v7 = [v6 entitlements];
        v8 = MICopyNetworkExtensionEntitlement(v7);

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
  v2 = [(MIPlaceholderConstructor *)self infoPlistContent];
  v3 = [v2 objectForKeyedSubscript:@"LSApplicationLaunchProhibited"];
  v4 = MIBooleanValue(v3, 0);

  return v4;
}

- (id)_entitlementsForPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  information = 0;
  staticCode = 0;
  if (SecStaticCodeCreateWithPath(v5, 0, &staticCode))
  {
    v6 = *MEMORY[0x1E69A8D00];
    v7 = [v5 path];
    _CreateAndLogError("[MIPlaceholderConstructor _entitlementsForPath:error:]", 196, v6, 13, 0, 0, @"Failed to construct SecStaticCode for %@ : %d", v8, v7);
    v11 = LABEL_5:;
    v12 = 0;
    v13 = 0;
LABEL_6:

    goto LABEL_7;
  }

  if (SecCodeCopySigningInformation(staticCode, 4u, &information))
  {
    v9 = *MEMORY[0x1E69A8D00];
    v7 = [v5 path];
    _CreateAndLogError("[MIPlaceholderConstructor _entitlementsForPath:error:]", 202, v9, 13, 0, 0, @"SecCodeCopySigningInformation for %@ returned error %d", v10, v7);
    goto LABEL_5;
  }

  v12 = information;
  information = 0;
  v16 = [(__CFDictionary *)v12 objectForKeyedSubscript:*MEMORY[0x1E697B068]];
  if (v16)
  {
    v7 = v16;
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

  if (a4 && !v13)
  {
    v14 = v11;
    *a4 = v11;
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

- (BOOL)_loadInfoPlistContentWithError:(id *)a3
{
  v5 = [(MIPlaceholderConstructor *)self bundleURL];
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
    v13 = [v5 path];
    _CreateAndLogError("[MIPlaceholderConstructor _loadInfoPlistContentWithError:]", 288, v15, 4, 0, 0, @"Found no keys in Info.plist in bundle at %@", v16, v13);
  }

  else
  {
    v12 = *MEMORY[0x1E69A8D00];
    v13 = [v5 path];
    _CreateAndLogError("[MIPlaceholderConstructor _loadInfoPlistContentWithError:]", 283, v12, 4, v9, 0, @"Failed to load Info.plist from %@", v14, v13);
  }
  v17 = ;

  if (a3)
  {
    v18 = v17;
    v11 = 0;
    *a3 = v17;
  }

  else
  {
    v11 = 0;
  }

  v9 = v17;
LABEL_14:

  return v11;
}

- (BOOL)_constructPlaceholdersForDirectory:(id)a3 itemsWithPathExtension:(id)a4 appendingToArray:(id)a5 bundleType:(unint64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = 0;
  v15 = [MEMORY[0x1E69A8D78] defaultManager];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __120__MIPlaceholderConstructor__constructPlaceholdersForDirectory_itemsWithPathExtension_appendingToArray_bundleType_error___block_invoke;
  v27[3] = &unk_1E80BA5D8;
  v16 = v13;
  v28 = v16;
  v29 = self;
  v31 = &v33;
  v32 = a6;
  v17 = v14;
  v30 = v17;
  v18 = [v15 enumerateURLsForItemsInDirectoryAtURL:v12 ignoreSymlinks:1 withBlock:v27];

  v19 = v34[5];
  if (!v19)
  {
    v20 = [v18 domain];
    v23 = *MEMORY[0x1E696A798];
    if ([v20 isEqualToString:*MEMORY[0x1E696A798]] && objc_msgSend(v18, "code") == 20)
    {
    }

    else
    {
      v24 = [v18 domain];
      if (([v24 isEqualToString:v23] & 1) == 0)
      {

        goto LABEL_3;
      }

      v25 = [v18 code];

      if (v25 != 2)
      {
        goto LABEL_4;
      }
    }

    v18 = 0;
    v21 = 1;
    goto LABEL_13;
  }

  v20 = v18;
  v18 = v19;
LABEL_3:

LABEL_4:
  v21 = v18 == 0;
  if (a7 && v18)
  {
    v22 = v18;
    v21 = 0;
    *a7 = v18;
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

- (BOOL)_populateAppExtensionPlaceholderConstructorsWithError:(id *)a3
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
    v23 = a3;
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

        v12 = [*(*(&v25 + 1) + 8 * v10) unsignedIntegerValue];
        v13 = [(MIPlaceholderConstructor *)self bundleURL];
        v14 = v13;
        if ((v12 - 1) > 3)
        {
          v15 = 0;
        }

        else
        {
          v15 = off_1E80BA670[v12 - 1];
        }

        v16 = [v13 URLByAppendingPathComponent:v15 isDirectory:1];

        v24 = v11;
        v17 = [(MIPlaceholderConstructor *)self _constructPlaceholdersForDirectory:v16 itemsWithPathExtension:@"appex" appendingToArray:v5 bundleType:v12 error:&v24];
        v8 = v24;

        if (!v17)
        {
          if (v23)
          {
            v18 = v8;
            v19 = 0;
            *v23 = v8;
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

- (BOOL)_populateEmbeddedWatchAppPlaceholderConstructorsWithError:(id *)a3
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
  v8 = [(MIPlaceholderConstructor *)self bundleURL];
  v5 = [v8 URLByAppendingPathComponent:@"Watch" isDirectory:1];

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

  if (a3)
  {
    v14 = v10;
    v12 = 0;
    *a3 = v7;
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return v12;
}

- (BOOL)_populateEmbeddedAppClipPlaceholderConstructorsWithError:(id *)a3
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
  v8 = [(MIPlaceholderConstructor *)self bundleURL];
  v5 = [v8 URLByAppendingPathComponent:@"AppClips" isDirectory:1];

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

  if (a3)
  {
    v14 = v10;
    v12 = 0;
    *a3 = v7;
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return v12;
}

- (BOOL)_introspectWithError:(id *)a3
{
  v19 = 0;
  v5 = [(MIPlaceholderConstructor *)self _loadInfoPlistContentWithError:&v19];
  v6 = v19;
  if (v5)
  {
    v7 = [(MIPlaceholderConstructor *)self bundleURL];
    v18 = v6;
    v8 = [(MIPlaceholderConstructor *)self _entitlementsForPath:v7 error:&v18];
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
      if (!a3)
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

      if (!a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_9:
      v12 = 0;
      v6 = v9;
      if (!a3)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v12 = 0;
    v8 = 0;
    if (!a3)
    {
      goto LABEL_14;
    }
  }

LABEL_12:
  if (!v12)
  {
    v13 = v6;
    *a3 = v6;
  }

LABEL_14:

  return v12;
}

- (void)setInstallUUID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_installUUID, a3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(MIPlaceholderConstructor *)self appExtensionPlaceholderConstructors];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) setInstallUUID:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setInstallSessionUUID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_installSessionUUID, a3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(MIPlaceholderConstructor *)self appExtensionPlaceholderConstructors];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) setInstallSessionUUID:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)_writeInfoPlistToPlaceholder:(id)a3 substitutingIconContent:(id)a4 withError:(id *)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(MIPlaceholderConstructor *)self infoPlistContent];
  v11 = [v8 URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
  v12 = [v10 mutableCopy];
  [v12 setObject:@"Executable" forKeyedSubscript:*MEMORY[0x1E695E4E8]];
  v13 = [(MIPlaceholderConstructor *)self placeholderType];
  MIMinimumOSVersionForBundleInfoPlist();
  v41 = v40 = a5;
  if (v41)
  {
    v14 = MIBundleMinimumOSVersionIsPreV6() ^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v42 = v10;
  v43 = v8;
  v15 = v11;
  if (MEMORY[0x1EEE8A788])
  {
    v16 = v9;
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

    v9 = v16;
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
    if (!((v13 != 3) | v14 & 1))
    {
      goto LABEL_22;
    }

    v22 = @"CF_MIPlaceholderConstructorVersion";
  }

  v23 = MICopyCurrentBuildVersion();
  [v12 setObject:v23 forKeyedSubscript:v22];

  v11 = v15;
  if (v13 == 3)
  {
LABEL_22:
    v24 = [(MIPlaceholderConstructor *)self watchKitExtensionPlaceholderConstructor];

    if (!v24)
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
  v25 = [(MIPlaceholderConstructor *)self bundleURL];
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
  v34 = [v11 path];
  v36 = _CreateAndLogError("[MIPlaceholderConstructor _writeInfoPlistToPlaceholder:substitutingIconContent:withError:]", 602, v33, 4, v27, 0, @"Failed to write Info.plist file to %@", v35, v34);

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

- (BOOL)_copyStringsToPlaceholder:(id)a3 onlyDirectories:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  v9 = [(MIPlaceholderConstructor *)self bundleURL];
  v10 = [MEMORY[0x1E69A8D78] defaultManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__MIPlaceholderConstructor__copyStringsToPlaceholder_onlyDirectories_error___block_invoke;
  v20[3] = &unk_1E80BA600;
  v11 = v8;
  v21 = v11;
  v12 = v10;
  v22 = v12;
  v23 = &v25;
  v24 = a4;
  v13 = [v12 enumerateURLsForItemsInDirectoryAtURL:v9 ignoreSymlinks:1 withBlock:v20];
  v15 = v13;
  if (!v26[5])
  {
    if (!v13)
    {
      v16 = 1;
      goto LABEL_8;
    }

    v17 = _CreateAndLogError("[MIPlaceholderConstructor _copyStringsToPlaceholder:onlyDirectories:error:]", 663, *MEMORY[0x1E69A8D00], 4, v13, 0, @"Encountered error while enumerating %@ to copy strings", v14, v9);
    v18 = v26[5];
    v26[5] = v17;

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    goto LABEL_8;
  }

  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = 0;
  *a5 = v26[5];
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

- (BOOL)_copyInfoPlistLoctableToPlaceholder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIPlaceholderConstructor *)self bundleURL];
  v8 = [v7 URLByAppendingPathComponent:@"InfoPlist.loctable" isDirectory:0];

  v9 = [v6 URLByAppendingPathComponent:@"InfoPlist.loctable" isDirectory:0];

  v10 = [MEMORY[0x1E69A8D78] defaultManager];
  v16 = 0;
  v11 = [v10 copyItemAtURL:v8 toURL:v9 error:&v16];
  v12 = v16;
  v13 = v12;
  if (a4 && (v11 & 1) == 0)
  {
    v14 = v12;
    *a4 = v13;
  }

  return v11;
}

- (BOOL)_writeIconToPlaceholder:(id)a3 infoPlistIconContent:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(MIPlaceholderConstructor *)self bundleURL];
  if (!MEMORY[0x1EEE8A780])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v13 = 0;
    v12 = 0;
LABEL_12:
    if (!a4)
    {
LABEL_14:
      v15 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v14 = v12;
    *a4 = v12;
    goto LABEL_14;
  }

  v10 = [(MIPlaceholderConstructor *)self alternateIconName];
  v11 = IFCaptureIconContent();
  v12 = 0;
  v13 = 0;

  if (v11)
  {
    if (![v12 count] && (!gLogHandle || *(gLogHandle + 44) >= 5))
    {
      v18 = [v9 path];
      MOLogWrite();

      if (!a4)
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
      v20 = [v9 path];
      MOLogWrite();
    }

    v13 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v19 = [v9 path];
    MOLogWrite();
  }

  if (a5)
  {
    v17 = v13;
    v15 = 0;
    *a5 = v13;
  }

  else
  {
    v15 = 0;
  }

LABEL_15:

  return v15;
}

- (BOOL)_transferAndUpdateInstallSessionIDsToPlaceholder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E69A8D78] defaultManager];
  v8 = [(MIPlaceholderConstructor *)self installSessionUUID];
  v9 = [(MIPlaceholderConstructor *)self installUUID];
  v10 = v9;
  if (v8)
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = [(MIPlaceholderConstructor *)self infoPlistContent];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E695E4E8]];

  if (!v15)
  {
    v18 = *MEMORY[0x1E69A8D00];
    v19 = [(MIPlaceholderConstructor *)self bundleURL];
    v20 = [v19 path];
    v11 = _CreateAndLogError("[MIPlaceholderConstructor _transferAndUpdateInstallSessionIDsToPlaceholder:error:]", 762, v18, 4, 0, 0, @"Failed to get CFBundleExecutable key from Info.plist of %@", v21, v20);

    v13 = 0;
    goto LABEL_15;
  }

  v16 = [(MIPlaceholderConstructor *)self bundleURL];
  v13 = [v16 URLByAppendingPathComponent:v15 isDirectory:0];

  v28 = 0;
  v8 = [v7 dataForExtendedAttributeNamed:@"com.apple.install_session_uuid" length:16 fromURL:v13 error:&v28];
  v17 = v28;
  v11 = v17;
  if (v8)
  {
    goto LABEL_8;
  }

  v22 = [v17 domain];
  if (![v22 isEqualToString:*MEMORY[0x1E696A798]])
  {

    goto LABEL_15;
  }

  v23 = [v11 code];

  if (v23 != 93)
  {
LABEL_15:

    LOBYTE(v12) = 0;
    v8 = 0;
    goto LABEL_16;
  }

  v8 = _UUIDData();

  v11 = 0;
LABEL_8:
  [(MIPlaceholderConstructor *)self setInstallSessionUUID:v8];

  if (!v10)
  {
LABEL_3:
    v10 = _UUIDData();
    [(MIPlaceholderConstructor *)self setInstallUUID:v10];
  }

LABEL_4:
  v27 = v11;
  v12 = [v7 setData:v8 forExtendedAttributeNamed:@"com.apple.install_session_uuid" onURL:v6 error:&v27];
  v13 = v27;

  if (v12)
  {
    v26 = v13;
    LOBYTE(v12) = [v7 setData:v10 forExtendedAttributeNamed:@"com.apple.install_uuid" onURL:v6 error:&v26];
    v11 = v26;
LABEL_16:

    v13 = v11;
  }

  if (a4 && (v12 & 1) == 0)
  {
    v24 = v13;
    *a4 = v13;
  }

  return v12;
}

- (BOOL)_materializeConstructors:(id)a3 intoBundle:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v32 = a4;
  v31 = [MEMORY[0x1E69A8D78] defaultManager];
  v8 = objc_opt_new();
  if (v7 && [v7 count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = v7;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v27 = a5;
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
          v14 = [v13 placeholderType];
          if ((v14 - 1) >= 4)
          {
            v18 = _CreateAndLogError("[MIPlaceholderConstructor _materializeConstructors:intoBundle:error:]", 827, *MEMORY[0x1E69A8D00], 4, 0, 0, @"Unknown placeholder type %lu", v15, v14);
            v17 = v11;
            goto LABEL_23;
          }

          v16 = off_1E80BA670[v14 - 1];
          v17 = [v32 URLByAppendingPathComponent:v16 isDirectory:1];
          if ([v8 containsObject:v16])
          {
            v18 = v11;
          }

          else
          {
            v34 = v11;
            v19 = [v31 createDirectoryAtURL:v17 withIntermediateDirectories:0 mode:493 error:&v34];
            v18 = v34;

            if (!v19)
            {
              goto LABEL_23;
            }

            [v8 addObject:v16];
          }

          v20 = [v13 bundleURL];
          v21 = [v20 lastPathComponent];
          v22 = [v17 URLByAppendingPathComponent:v21 isDirectory:1];

          v33 = v18;
          LODWORD(v20) = [v13 materializeIntoBundleDirectory:v22 error:&v33];
          v11 = v33;

          if (!v20)
          {
            v18 = v11;
LABEL_23:

            v7 = v28;
            if (v27)
            {
              v26 = v18;
              v23 = 0;
              *v27 = v18;
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
    v7 = v28;
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

- (BOOL)materializeIntoBundleDirectory:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E69A8D78] defaultManager];
  v8 = [(MIPlaceholderConstructor *)self entitlements];
  v49 = 0;
  v9 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:0 mode:493 class:4 error:&v49];
  v10 = v49;
  if (!v9)
  {
    v13 = 0;
LABEL_6:
    v14 = 0;
    goto LABEL_31;
  }

  if ([v8 count])
  {
    v48 = v10;
    v11 = MIWritePlaceholderEntitlements(v6, v8, &v48);
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
  v15 = [(MIPlaceholderConstructor *)self _copyInfoPlistLoctableToPlaceholder:v6 error:&v47];
  v16 = v47;
  v13 = v16;
  if (!v15)
  {
    v23 = [v16 domain];
    if ([v23 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v24 = [v13 code];

      if (v24 == 2)
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
  v17 = [(MIPlaceholderConstructor *)self _copyStringsToPlaceholder:v6 onlyDirectories:v15 error:&v46];
  v10 = v46;

  if (!v17)
  {
    goto LABEL_6;
  }

  v44 = v10;
  v45 = 0;
  v18 = [(MIPlaceholderConstructor *)self _writeIconToPlaceholder:v6 infoPlistIconContent:&v45 error:&v44];
  v14 = v45;
  v12 = v44;

  if (!v18)
  {
    goto LABEL_30;
  }

  v43 = v12;
  v19 = [(MIPlaceholderConstructor *)self _writeInfoPlistToPlaceholder:v6 substitutingIconContent:v14 withError:&v43];
  v10 = v43;

  if (!v19)
  {
    goto LABEL_31;
  }

  if ([(MIPlaceholderConstructor *)self performPlaceholderInstallActions])
  {
    v42 = v10;
    v20 = [(MIPlaceholderConstructor *)self _transferAndUpdateInstallSessionIDsToPlaceholder:v6 error:&v42];
    v12 = v42;

    if (!v20)
    {
      goto LABEL_30;
    }

    v41 = v12;
    v21 = [v7 markBundleAsPlaceholder:v6 withError:&v41];
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

  v25 = [(MIPlaceholderConstructor *)self appExtensionPlaceholderConstructors];
  v40 = v10;
  v35 = [(MIPlaceholderConstructor *)self _materializeConstructors:v25 intoBundle:v6 error:&v40];
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
      v28 = [(MIPlaceholderConstructor *)self embeddedAppClipPlaceholderConstructors];
      v38 = v10;
      v29 = [(MIPlaceholderConstructor *)self _materializeConstructors:v28 intoBundle:v6 error:&v38];
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

  v27 = [(MIPlaceholderConstructor *)self embeddedWatchAppPlaceholderConstructors];
  v39 = v26;
  v36 = [(MIPlaceholderConstructor *)self _materializeConstructors:v27 intoBundle:v6 error:&v39];
  v10 = v39;

  if (v36)
  {
    goto LABEL_27;
  }

LABEL_31:
  v37 = 0;
  v30 = [v7 removeItemAtURL:v6 error:&v37];
  v31 = v37;
  if ((v30 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v34 = [v6 path];
    MOLogWrite();
  }

  if (a4)
  {
    v32 = v10;
    v22 = 0;
    *a4 = v10;
  }

  else
  {
    v22 = 0;
  }

LABEL_38:

  return v22;
}

@end