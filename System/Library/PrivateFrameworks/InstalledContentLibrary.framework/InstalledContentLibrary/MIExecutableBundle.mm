@interface MIExecutableBundle
+ (BOOL)isGrandfatheredNonContainerizedForSigningInfo:(id)a3;
+ (id)bundlesInParentBundle:(id)a3 subDirectory:(id)a4 matchingPredicate:(id)a5 error:(id *)a6;
- (BOOL)_hasNoConflictWithSystemAppsForSigningInfo:(id)a3 error:(id *)a4;
- (BOOL)_hasNonContainerizingEntitlement:(id)a3 checkSeatbeltProfiles:(BOOL)a4;
- (BOOL)_hasResource:(id)a3 withExtension:(id)a4;
- (BOOL)_validateWithError:(id *)a3;
- (BOOL)allowsAppleAppExtensionsNotInExtensionCache;
- (BOOL)checkExecutableExistsIfRequiredWithError:(id *)a3;
- (BOOL)getIsBuiltForMacPlatform:(BOOL *)a3 error:(id *)a4;
- (BOOL)getSinfDataType:(unsigned int *)a3 withError:(id *)a4;
- (BOOL)hasExecutableSliceForCPUType:(int)a3 subtype:(int)a4 error:(id *)a5;
- (BOOL)hasExecutableSliceForPlatform:(unsigned int)a3 error:(id *)a4;
- (BOOL)hasNoConflictsWithOtherInstalledEntitiesForSigningInfo:(id)a3 forPersona:(id)a4 error:(id *)a5;
- (BOOL)hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion:(unsigned __int8)a3 error:(id *)a4;
- (BOOL)hasSinf;
- (BOOL)installsAppleAppExtensionsNotInExtensionCache;
- (BOOL)isExtensionBasedWatchKitApp;
- (BOOL)isExtensionlessWatchKitApp;
- (BOOL)isWatchOnlyApp;
- (BOOL)makeAndSetNewInstallationIdentityWithError:(id *)a3;
- (BOOL)makeExecutableWithError:(id *)a3;
- (BOOL)minimumWatchOSVersionIsPreV6;
- (BOOL)needsDataContainer;
- (BOOL)needsSinf;
- (BOOL)onlyHasExecutableSlicesForPlatform:(unsigned int)a3 error:(id *)a4;
- (BOOL)replicateRootSinfWithError:(id *)a3;
- (BOOL)setBundleParentDirectoryURL:(id)a3 error:(id *)a4;
- (BOOL)setLaunchWarningData:(id)a3 withError:(id *)a4;
- (BOOL)setSinfDataType:(unsigned int)a3 withError:(id *)a4;
- (BOOL)transferInstallationIdentityFromBundle:(id)a3 error:(id *)a4;
- (BOOL)updateMCMWithCodeSigningInfoAsAdvanceCopy:(BOOL)a3 withError:(id *)a4;
- (BOOL)updateSinfWithData:(id)a3 error:(id *)a4;
- (BOOL)validatePluginKitMetadataWithError:(id *)a3;
- (BOOL)validateSinfWithError:(id *)a3;
- (BOOL)watchKitAppRunsIndependentlyOfCompanion;
- (MIBundleContainer)bundleContainer;
- (MIExecutableBundle)initWithBundleInContainer:(id)a3 withExtension:(id)a4 error:(id *)a5;
- (NSArray)counterpartIdentifiers;
- (NSString)companionAppIdentifier;
- (NSString)executableName;
- (NSURL)executableURL;
- (NSURL)relativeExecutablePath;
- (NSURL)rootSinfURL;
- (NSURL)rootSupfURL;
- (NSURL)rootSuppURL;
- (id)_codeSigningInfoFromMCM;
- (id)_dataContainerCreatingIfNeeded:(BOOL)a3 forPersona:(id)a4 makeLive:(BOOL)a5 checkIfNeeded:(BOOL)a6 created:(BOOL *)a7 error:(id *)a8;
- (id)_discoverWatchAppBundleAsPlaceholder:(BOOL)a3 error:(id *)a4;
- (id)_nameListForPlatformSet:(id)a3;
- (id)bundleSignatureVersionWithError:(id *)a3;
- (id)codeSigningInfoByValidatingResources:(BOOL)a3 performingOnlineAuthorization:(BOOL)a4 ignoringCachedSigningInfo:(BOOL)a5 checkingTrustCacheIfApplicable:(BOOL)a6 skippingProfileIDValidation:(BOOL)a7 error:(id *)a8;
- (id)enumerateDylibsWithBlock:(id)a3;
- (id)executableImageSlicesWithError:(id *)a3;
- (id)executablePlatformsWithError:(id *)a3;
- (id)fairPlaySinfInfoWithError:(id *)a3;
- (id)initForTesting;
- (id)installationIdentitySettingIfNotSet:(BOOL)a3 withError:(id *)a4;
- (id)lsInstallTypeWithError:(id *)a3;
- (id)updateAndValidateSinf:(id)a3 withRollback:(BOOL)a4 error:(id *)a5;
- (id)watchKitAppBundleForWKVersionOrEarlier:(unsigned __int8)a3 error:(id *)a4;
- (id)watchKitAppExecutableHashWithError:(id *)a3;
- (id)watchKitPluginWithError:(id *)a3;
- (id)watchKitV2AppBundleWithError:(id *)a3;
- (int)_installEmbeddedProvisioningProfileAtURL:(id)a3 withProgress:(id)a4;
- (int)dataProtectionClass;
- (int)installEmbeddedProvisioningProfileWithProgress:(id)a3;
- (int)installMacStyleEmbeddedProvisioningProfileWithProgress:(id)a3;
- (unint64_t)compatibilityState;
- (unint64_t)dataContainerContentClass;
- (unint64_t)estimatedMemoryUsageToValidate;
- (unsigned)maxLinkedSDKVersion;
- (unsigned)watchKitVersionWithError:(id *)a3;
- (void)bestEffortRollbackSinfData:(id)a3;
- (void)removeSinf;
@end

@implementation MIExecutableBundle

- (BOOL)_validateWithError:(id *)a3
{
  v32.receiver = self;
  v32.super_class = MIExecutableBundle;
  v33 = 0;
  v5 = [(MIBundle *)&v32 _validateWithError:&v33];
  v6 = v33;
  if (!v5)
  {
    v7 = 0;
    goto LABEL_24;
  }

  v7 = [(MIExecutableBundle *)self executableURL];
  if ([(MIBundle *)self isPlaceholder])
  {
    v8 = 0;
  }

  else
  {
    v9 = +[MIFileManager defaultManager];
    v31 = v6;
    v8 = [v9 itemExistsAtURL:v7 error:&v31];
    v10 = v31;

    if ((v8 & 1) == 0)
    {
      v14 = [v10 domain];
      if ([v14 isEqualToString:*MEMORY[0x1E696A798]])
      {
        v15 = [v10 code];

        if (v15 == 2)
        {

          v6 = 0;
          goto LABEL_7;
        }
      }

      else
      {
      }

      v16 = [(MIExecutableBundle *)self relativeExecutablePath];
      v20 = _CreateAndLogError("[MIExecutableBundle _validateWithError:]", 111, @"MIInstallerErrorDomain", 71, v10, 0, @"Unable to determine if bundle executable is present at %@.", v19, v16);
      goto LABEL_23;
    }

    v6 = v10;
  }

LABEL_7:
  v11 = v6;
  self->_hasExecutable = v8;
  v30 = 0;
  v29 = v6;
  v12 = [(MIExecutableBundle *)self getIsBuiltForMacPlatform:&v30 error:&v29];
  v6 = v29;

  if (!v12)
  {
    goto LABEL_24;
  }

  if (v30)
  {
LABEL_9:
    v13 = 1;
    goto LABEL_27;
  }

  v16 = [(MIBundle *)self infoPlistSubset];
  v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E695E4E8]];
  objc_opt_class();
  v18 = v17;
  if (objc_opt_isKindOfClass())
  {
    v10 = v18;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if ([v10 length])
    {
      v21 = +[MIFileManager defaultManager];
      v22 = [(MIBundle *)self bundleURL];
      v23 = [v21 realPathForURL:v7 ifChildOfURL:v22];

      if (v23)
      {

        goto LABEL_9;
      }
    }
  }

  v24 = [(MIBundle *)self bundleURL];
  v25 = [v24 path];
  v20 = _CreateAndLogError("[MIExecutableBundle _validateWithError:]", 129, @"MIInstallerErrorDomain", 11, 0, &unk_1F28883F8, @"Bundle at path %@ has missing or invalid CFBundleExecutable in its Info.plist", v26, v25);

LABEL_23:
  v6 = v20;
LABEL_24:
  if (a3)
  {
    v27 = v6;
    v13 = 0;
    *a3 = v6;
  }

  else
  {
    v13 = 0;
  }

LABEL_27:

  return v13;
}

- (id)initForTesting
{
  v3.receiver = self;
  v3.super_class = MIExecutableBundle;
  return [(MIBundle *)&v3 initForTesting];
}

- (MIExecutableBundle)initWithBundleInContainer:(id)a3 withExtension:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 containerURL];
  v13.receiver = self;
  v13.super_class = MIExecutableBundle;
  v11 = [(MIBundle *)&v13 initWithBundleInDirectory:v10 withExtension:v9 error:a5];

  if (v11)
  {
    objc_storeWeak(&v11->_bundleContainer, v8);
  }

  return v11;
}

+ (id)bundlesInParentBundle:(id)a3 subDirectory:(id)a4 matchingPredicate:(id)a5 error:(id *)a6
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___MIExecutableBundle;
  v6 = objc_msgSendSuper2(&v8, sel_bundlesInParentBundle_subDirectory_matchingPredicate_error_, a3, a4, a5, a6);

  return v6;
}

- (BOOL)allowsAppleAppExtensionsNotInExtensionCache
{
  v3.receiver = self;
  v3.super_class = MIExecutableBundle;
  return [(MIBundle *)&v3 allowsAppleAppExtensionsNotInExtensionCache];
}

- (BOOL)installsAppleAppExtensionsNotInExtensionCache
{
  v3.receiver = self;
  v3.super_class = MIExecutableBundle;
  return [(MIBundle *)&v3 installsAppleAppExtensionsNotInExtensionCache];
}

- (NSString)executableName
{
  v3 = [(MIBundle *)self bundleURL];
  v4 = [(MIBundle *)self infoPlistSubset];
  v5 = MIBundleExecutableName(v3, v4);

  return v5;
}

- (NSURL)executableURL
{
  v3 = [(MIBundle *)self bundleURL];
  v4 = [(MIBundle *)self cfBundle];
  v5 = [(MIBundle *)self infoPlistSubset];
  v6 = MIBundleExecutableURL(v3, v4, v5);

  return v6;
}

- (NSURL)relativeExecutablePath
{
  v3 = [(MIExecutableBundle *)self executableURL];
  v4 = [v3 URLByStandardizingPath];

  v5 = [v4 path];
  v6 = [(MIBundle *)self bundleURL];
  v7 = [v6 URLByStandardizingPath];

  v8 = [v7 path];
  v9 = [v5 length];
  if (v9 <= [v8 length])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v12 = v5;
  }

  else
  {
    v10 = [v5 substringFromIndex:{objc_msgSend(v8, "length") + 1}];
    v11 = [(MIBundle *)self relativePath];
    v12 = [v11 stringByAppendingPathComponent:v10];
  }

  return v12;
}

- (id)executableImageSlicesWithError:(id *)a3
{
  if ([(MIBundle *)self isPlaceholder])
  {
    v6 = @"This bundle is a placeholder and so does not have an executable, so executable image slices are not available.";
    v7 = 243;
    v8 = 4;
LABEL_7:
    v11 = _CreateAndLogError("[MIExecutableBundle executableImageSlicesWithError:]", v7, @"MIInstallerErrorDomain", v8, 0, 0, v6, v5, v20);
    v12 = 0;
    goto LABEL_8;
  }

  if (![(MIExecutableBundle *)self hasExecutable])
  {
    v6 = @"This bundle does not have an executable, so executable image slices are not available.";
    v7 = 248;
    v8 = 71;
    goto LABEL_7;
  }

  executableImageSlices = self->_executableImageSlices;
  if (executableImageSlices)
  {
    v10 = executableImageSlices;
    goto LABEL_12;
  }

  v16 = [(MIExecutableBundle *)self executableURL];
  v17 = [v16 fileSystemRepresentation];

  v21 = 0;
  v12 = MIMachOFileImageSlices(v17, &v21);
  v11 = v21;
  if (!v12)
  {
    goto LABEL_8;
  }

  if (![v12 count])
  {
    v19 = _CreateAndLogError("[MIExecutableBundle executableImageSlicesWithError:]", 263, @"MIInstallerErrorDomain", 73, 0, 0, @"Executable at %s contained no image slices", v18, v17);

    v11 = v19;
LABEL_8:
    if (a3)
    {
      v13 = v11;
      v14 = 0;
      *a3 = v11;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_11;
  }

  objc_storeStrong(&self->_executableImageSlices, v12);
  v12 = v12;
  v14 = v12;
LABEL_11:
  v10 = v14;

LABEL_12:

  return v10;
}

- (id)executablePlatformsWithError:(id *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v21 = 0;
  v6 = [(MIExecutableBundle *)self executableImageSlicesWithError:&v21];
  v7 = v21;
  if (!v6)
  {
    v14 = 0;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "platform", v17)}];
        [v5 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [v5 copy];
  if (a3)
  {
LABEL_12:
    if (!v14)
    {
      v15 = v7;
      *a3 = v7;
    }
  }

LABEL_14:

  return v14;
}

- (BOOL)hasExecutableSliceForPlatform:(unsigned int)a3 error:(id *)a4
{
  v5 = *&a3;
  v18 = 0;
  v7 = [(MIExecutableBundle *)self executablePlatformsWithError:&v18];
  v8 = v18;
  if (v7)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
    v10 = [v7 containsObject:v9];

    if (v10)
    {
      v11 = 1;
      goto LABEL_8;
    }

    v12 = MIMachOStringForPlatform(v5);
    v13 = [(MIExecutableBundle *)self relativeExecutablePath];
    v15 = _CreateError("[MIExecutableBundle hasExecutableSliceForPlatform:error:]", 319, @"MIInstallerErrorDomain", 198, 0, 0, @"Executable at %@ did not contain a slice built for platform %@.", v14, v13);

    v8 = v15;
  }

  if (a4)
  {
    v16 = v8;
    v11 = 0;
    *a4 = v8;
  }

  else
  {
    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (id)_nameListForPlatformSet:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = MIMachOStringForPlatform([*(*(&v14 + 1) + 8 * i) unsignedIntValue]);
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 allObjects];
  v12 = [v11 componentsJoinedByString:{@", "}];

  return v12;
}

- (BOOL)onlyHasExecutableSlicesForPlatform:(unsigned int)a3 error:(id *)a4
{
  v5 = *&a3;
  v7 = MIMachOStringForPlatform(*&a3);
  v25 = 0;
  v8 = [(MIExecutableBundle *)self executablePlatformsWithError:&v25];
  v9 = v25;
  if (!v8)
  {
    goto LABEL_11;
  }

  v10 = [v8 count];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v12 = [v8 containsObject:v11];

  if (v10 == 1)
  {
    if (v12)
    {
      v13 = 1;
      goto LABEL_14;
    }

    v19 = [v8 allObjects];
    v14 = [v19 firstObject];

    v16 = MIMachOStringForPlatform([v14 unsignedIntValue]);
    v17 = [(MIExecutableBundle *)self relativeExecutablePath];
    _CreateError("[MIExecutableBundle onlyHasExecutableSlicesForPlatform:error:]", 375, @"MIInstallerErrorDomain", 198, 0, 0, @"Executable at %@ did not contain a slice built for platform %@ (found only platform %@).", v20, v17);
  }

  else
  {
    if (!v12)
    {
      v14 = [(MIExecutableBundle *)self _nameListForPlatformSet:v8];
      v16 = [(MIExecutableBundle *)self relativeExecutablePath];
      v21 = _CreateError("[MIExecutableBundle onlyHasExecutableSlicesForPlatform:error:]", 368, @"MIInstallerErrorDomain", 198, 0, 0, @"Expected to find one or more platform slices for %@ in executable at %@ but only found other platforms: %@", v22, v7);
      goto LABEL_10;
    }

    v14 = [v8 mutableCopy];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
    [v14 removeObject:v15];

    v16 = [(MIExecutableBundle *)self _nameListForPlatformSet:v14];
    v17 = [(MIExecutableBundle *)self relativeExecutablePath];
    _CreateError("[MIExecutableBundle onlyHasExecutableSlicesForPlatform:error:]", 363, @"MIInstallerErrorDomain", 198, 0, 0, @"Expected to find only one or more platform slices for %@ in executable at %@ but also found other platforms: %@", v18, v7);
  }
  v21 = ;

  v9 = v17;
LABEL_10:

  v9 = v21;
LABEL_11:
  if (a4)
  {
    v23 = v9;
    v13 = 0;
    *a4 = v9;
  }

  else
  {
    v13 = 0;
  }

LABEL_14:

  return v13;
}

- (BOOL)hasExecutableSliceForCPUType:(int)a3 subtype:(int)a4 error:(id *)a5
{
  v7 = *&a3;
  v34 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v9 = [(MIExecutableBundle *)self executableImageSlicesWithError:&v32];
  v10 = v32;
  if (v9)
  {
    v26 = self;
    v27 = a5;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = [v16 cpuSubtype];
          if ([v16 cpuType] == v7 && (v17 & 0xFFFFFF) == a4)
          {

            v23 = 1;
            goto LABEL_18;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v19 = [(MIBundle *)v26 bundleURL];
    v25 = [v19 path];
    v21 = _CreateError("[MIExecutableBundle hasExecutableSliceForCPUType:subtype:error:]", 406, @"MIInstallerErrorDomain", 198, 0, 0, @"Did not find at least one executable slice with CPU type %d and subtype %d in bundle %@", v20, v7);

    v10 = v21;
    a5 = v27;
  }

  if (a5)
  {
    v22 = v10;
    v23 = 0;
    *a5 = v10;
  }

  else
  {
    v23 = 0;
  }

LABEL_18:

  return v23;
}

- (BOOL)getIsBuiltForMacPlatform:(BOOL *)a3 error:(id *)a4
{
  if ([(MIBundle *)self isPlaceholder])
  {
    v17.receiver = self;
    v17.super_class = MIExecutableBundle;
    v7 = [(MIBundle *)&v17 getIsBuiltForMacPlatform:a3 error:a4];
LABEL_9:
    v12 = v7;
    v10 = 0;
    goto LABEL_10;
  }

  if (![(MIExecutableBundle *)self hasExecutable])
  {
    v16.receiver = self;
    v16.super_class = MIExecutableBundle;
    v7 = [(MIBundle *)&v16 getIsBuiltForMacPlatform:a3 error:a4];
    goto LABEL_9;
  }

  v15 = 0;
  v8 = [(MIExecutableBundle *)self executablePlatformsWithError:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    if ([v8 containsObject:&unk_1F2888E08])
    {
      v11 = 1;
      if (!a3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = [v8 containsObject:&unk_1F2888E20];
      if (!a3)
      {
LABEL_16:
        v12 = 1;
        goto LABEL_11;
      }
    }

    *a3 = v11;
    goto LABEL_16;
  }

  if (a4)
  {
    v14 = v9;
    v12 = 0;
    v8 = 0;
    *a4 = v10;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_10:
  v8 = 0;
LABEL_11:

  return v12;
}

- (id)lsInstallTypeWithError:(id *)a3
{
  if (self->_lsInstallType)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    goto LABEL_14;
  }

  v6 = [(MIExecutableBundle *)self bundleContainer];
  v8 = v6;
  if (!v6)
  {
    v14 = _CreateAndLogError("[MIExecutableBundle lsInstallTypeWithError:]", 520, @"MIInstallerErrorDomain", 158, 0, 0, @"Could not get install type because no bundle container relation is set on %@", v7, self);
    v9 = 0;
    goto LABEL_11;
  }

  v19 = 0;
  v9 = [v6 bundleMetadataWithError:&v19];
  v11 = v19;
  if (!v9)
  {
    v15 = _CreateAndLogError("[MIExecutableBundle lsInstallTypeWithError:]", 526, @"MIInstallerErrorDomain", 158, v11, 0, @"Could not get install type because bundle metadata could not be read from %@", v10, v8);
LABEL_10:
    v14 = v15;

LABEL_11:
    v16 = +[MIFileManager defaultManager];
    v17 = [(MIBundle *)self bundleURL];
    v4 = [v16 installTypeFromExtendedAttributeOnBundle:v17 error:a3];

    if (v4)
    {
      self->_lsInstallType = [v4 unsignedIntegerValue];
    }

    goto LABEL_13;
  }

  v12 = [v9 installType];
  if (!v12)
  {
    v15 = _CreateError("[MIExecutableBundle lsInstallTypeWithError:]", 532, @"MIInstallerErrorDomain", 158, 0, 0, @"Install type not set in bundle metadata for %@", v13, v8);
    goto LABEL_10;
  }

  self->_lsInstallType = v12;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];

LABEL_13:
LABEL_14:

  return v4;
}

- (BOOL)setBundleParentDirectoryURL:(id)a3 error:(id *)a4
{
  v16.receiver = self;
  v16.super_class = MIExecutableBundle;
  v17 = 0;
  v6 = [(MIBundle *)&v16 setBundleParentDirectoryURL:a3 error:&v17];
  v7 = v17;
  if (!v6)
  {
    v8 = 0;
    if (!a4)
    {
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

LABEL_6:
    v13 = v7;
    v12 = 0;
    *a4 = v7;
    goto LABEL_10;
  }

  v8 = [(MIExecutableBundle *)self wk2AppBundle];
  if (!v8)
  {
    v12 = 1;
    goto LABEL_10;
  }

  v9 = [(MIBundle *)self bundleURL];
  v15 = v7;
  v10 = [v8 setBundleParentDirectoryURL:v9 error:&v15];
  v11 = v15;

  if ((v10 & 1) == 0)
  {
    v7 = v11;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v12 = 1;
  v7 = v11;
LABEL_10:

  return v12;
}

- (id)watchKitAppExecutableHashWithError:(id *)a3
{
  v5 = [(MIExecutableBundle *)self watchKitAppExecutableHash];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    goto LABEL_13;
  }

  if ([(MIBundle *)self isPlaceholder]|| [(MIBundle *)self bundleType]!= 4)
  {
    v14 = [(MIBundle *)self identifier];
    v8 = _CreateError("[MIExecutableBundle watchKitAppExecutableHashWithError:]", 618, @"MIInstallerErrorDomain", 85, 0, 0, @"%@ is not expected to contain watch app executables", v15, v14);

    v7 = 0;
  }

  else
  {
    v21 = 0;
    v9 = [(MIExecutableBundle *)self watchKitAppBundleForWKVersionOrEarlier:3 error:&v21];
    v10 = v21;
    if (!v9)
    {
LABEL_8:

      v7 = 0;
      v8 = v10;
      goto LABEL_10;
    }

    if ([v9 isPlaceholder])
    {
      v11 = [(MIBundle *)self identifier];
      v13 = _CreateError("[MIExecutableBundle watchKitAppExecutableHashWithError:]", 610, @"MIInstallerErrorDomain", 139, 0, 0, @"%@ contains a placeholder watch app, so an executable hash is not possible.", v12, v11);

      v10 = v13;
      goto LABEL_8;
    }

    v7 = [v9 executableURL];

    v20 = v10;
    v6 = MICreateSHA256Digest(v7, &v20);
    v8 = v20;

    if (v6)
    {
      [(MIExecutableBundle *)self setWatchKitAppExecutableHash:v6];
      goto LABEL_13;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v18 = [(MIBundle *)self identifier];
      v19 = [v7 path];
      MOLogWrite();
    }
  }

LABEL_10:
  if (a3)
  {
    v16 = v8;
    v6 = 0;
    *a3 = v8;
  }

  else
  {
    v6 = 0;
  }

LABEL_13:

  return v6;
}

- (id)installationIdentitySettingIfNotSet:(BOOL)a3 withError:(id *)a4
{
  v5 = a3;
  v7 = [(MIExecutableBundle *)self installationIdentity];

  if (v7)
  {
    v8 = [(MIExecutableBundle *)self installationIdentity];
  }

  else
  {
    v8 = [MIInstallationIdentity installationIdentityForBundle:self settingIfNotSet:v5 error:a4];
    [(MIExecutableBundle *)self setInstallationIdentity:v8];
  }

  return v8;
}

- (BOOL)transferInstallationIdentityFromBundle:(id)a3 error:(id *)a4
{
  v15 = 0;
  v6 = [MIInstallationIdentity identityForUpdateOfBundle:a3 error:&v15];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    v14 = v7;
    v9 = [v6 writeToBundle:self error:&v14];
    v10 = v14;

    if (v9)
    {
      [(MIExecutableBundle *)self setInstallationIdentity:v6];
      v11 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = v7;
  }

  if (a4)
  {
    v12 = v10;
    *a4 = v10;
  }

  [(MIExecutableBundle *)self setInstallationIdentity:0];
  v11 = 0;
LABEL_8:

  return v11;
}

- (BOOL)makeAndSetNewInstallationIdentityWithError:(id *)a3
{
  v5 = [MIInstallationIdentity newIdentityForBundle:self];
  v6 = [v5 writeToBundle:self error:a3];
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  [(MIExecutableBundle *)self setInstallationIdentity:v7];

  return v6;
}

- (unsigned)maxLinkedSDKVersion
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(MIExecutableBundle *)self executableImageSlices];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) sdkVersion];
        if (v5 <= v8)
        {
          v5 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)estimatedMemoryUsageToValidate
{
  v2 = [(MIBundle *)self contentsURL];
  v3 = [v2 URLByAppendingPathComponent:@"_CodeSignature/CodeResources" isDirectory:0];

  memset(&v8, 0, sizeof(v8));
  if (lstat([v3 fileSystemRepresentation], &v8))
  {
    v4 = *__error();
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v5 = [v3 path];
      strerror(v4);
      MOLogWrite();
    }

    v6 = 0;
  }

  else
  {
    v6 = (v8.st_size * 3.9);
  }

  return v6;
}

- (unint64_t)compatibilityState
{
  if ([(MIBundle *)self isPlaceholder]|| [(MIBundle *)self bundleType]== 7 || [(MIBundle *)self bundleType]== 9)
  {
    v3 = 0;
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v6 = [(MIExecutableBundle *)self executableURL];
  v11 = 0;
  v7 = MIMachOFileMatchesMyArchitecture([v6 fileSystemRepresentation], &v11);
  v3 = v11;

  if (v7)
  {
    goto LABEL_5;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v8 = [(MIBundle *)self identifier];
    v9 = [(MIBundle *)self bundleURL];
    v10 = [v9 path];
    MOLogWrite();
  }

  v3 = 0;
  v4 = 2;
LABEL_6:

  return v4;
}

+ (BOOL)isGrandfatheredNonContainerizedForSigningInfo:(id)a3
{
  v3 = isGrandfatheredNonContainerizedForSigningInfo__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[MIExecutableBundle isGrandfatheredNonContainerizedForSigningInfo:];
  }

  v5 = isGrandfatheredNonContainerizedForSigningInfo__grandfatheredSigningIDs;
  v6 = [v4 codeInfoIdentifier];

  v7 = [v5 containsObject:v6];
  return v7;
}

uint64_t __68__MIExecutableBundle_isGrandfatheredNonContainerizedForSigningInfo___block_invoke()
{
  isGrandfatheredNonContainerizedForSigningInfo__grandfatheredSigningIDs = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2888C70];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_hasNonContainerizingEntitlement:(id)a3 checkSeatbeltProfiles:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 entitlements];
  v8 = MIHasNoContainerEntitlement(v7);

  if (v8)
  {
    if (![objc_opt_class() isGrandfatheredNonContainerizedForSigningInfo:v6] || !gLogHandle || *(gLogHandle + 44) < 7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = [v6 entitlements];
  v10 = MIHasNoSandboxEntitlement(v9);

  if (v10)
  {
    if (![objc_opt_class() isGrandfatheredNonContainerizedForSigningInfo:v6] || !gLogHandle || *(gLogHandle + 44) < 7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!v4 || ([v6 entitlements], v14 = objc_claimAutoreleasedReturnValue(), v15 = MIHasSeatbeltProfilesEntitlement(v14), v14, !v15))
  {
    v12 = 0;
    goto LABEL_12;
  }

  if ([objc_opt_class() isGrandfatheredNonContainerizedForSigningInfo:v6] && gLogHandle && *(gLogHandle + 44) >= 7)
  {
LABEL_10:
    v11 = [(MIBundle *)self identifier];
    MOLogWrite();
  }

LABEL_11:
  v12 = 1;
LABEL_12:

  return v12;
}

- (BOOL)needsDataContainer
{
  v3 = [(MIExecutableBundle *)self codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:0 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:0];
  v4 = [(MIBundle *)self bundleType];
  v5 = 0;
  if (v4 <= 4)
  {
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        goto LABEL_31;
      }

      v6 = [(MIExecutableBundle *)self _hasNonContainerizingEntitlement:v3 checkSeatbeltProfiles:0];
    }

    else
    {
      if (v4 != 1)
      {
        if (v4 != 2)
        {
LABEL_21:
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unhandled bundle type %hhu", -[MIBundle bundleType](self, "bundleType")}];
LABEL_30:
          v5 = 0;
          goto LABEL_31;
        }

        goto LABEL_13;
      }

      if (!v3)
      {
        if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_28;
        }

LABEL_27:
        v10 = [(MIBundle *)self identifier];
        MOLogWrite();

LABEL_28:
        v5 = 1;
        goto LABEL_31;
      }

      v8 = [v3 entitlements];
      v9 = MIHasContainerRequiredEntitlement(v8);

      if (v9)
      {
        if (![objc_opt_class() isGrandfatheredNonContainerizedForSigningInfo:v3] || !gLogHandle || *(gLogHandle + 44) < 7)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if ([(MIExecutableBundle *)self _hasNonContainerizingEntitlement:v3 checkSeatbeltProfiles:1])
      {
        goto LABEL_30;
      }

      v6 = [objc_opt_class() isGrandfatheredNonContainerizedForSigningInfo:v3];
    }

    v5 = v6 ^ 1;
    goto LABEL_31;
  }

  if ((v4 - 7) < 6)
  {
    goto LABEL_31;
  }

  if (v4 != 5)
  {
    if (v4 != 6)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

LABEL_13:
  if (!v3)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v12 = [(MIBundle *)self identifier];
      MOLogWrite();
    }

    goto LABEL_30;
  }

  v7 = [v3 entitlements];
  v5 = MIHasContainerRequiredEntitlement(v7);

LABEL_31:
  return v5;
}

- (int)dataProtectionClass
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [(MIExecutableBundle *)self codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:0 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:0];
  v3 = [v2 entitlements];
  v4 = MICopyDataProtectionIfAvailableEntitlement(v3);
  if (!v4)
  {
    goto LABEL_23;
  }

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
    objc_opt_class();
    v8 = v5;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = _ProtectionClassForString(*(*(&v19 + 1) + 8 * i));
            if (v15)
            {
              v7 = v15;
              goto LABEL_22;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v7 = 0;
LABEL_22:

      if (v7)
      {
        goto LABEL_30;
      }
    }

LABEL_23:
    v16 = MICopyDataProtectionClassEntitlement(v3);
    v17 = v16;
    if (v16)
    {
      v7 = _ProtectionClassForString(v16);
      if (v7)
      {
LABEL_29:

        goto LABEL_30;
      }

      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }
    }

    v7 = 0;
    goto LABEL_29;
  }

  v7 = _ProtectionClassForString(v5);
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_30:

  return v7;
}

- (BOOL)updateMCMWithCodeSigningInfoAsAdvanceCopy:(BOOL)a3 withError:(id *)a4
{
  v5 = a3;
  if ([(MIExecutableBundle *)self codeSignatureVerificationState]- 1 >= 2)
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      MOLogWrite();
    }

    goto LABEL_21;
  }

  v7 = [(MIBundle *)self bundleType];
  if ((v7 - 1) >= 6 && v7 != 12)
  {
LABEL_21:
    v20 = 0;
    v21 = 1;
    goto LABEL_22;
  }

  v8 = objc_opt_new();
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MIExecutableBundle dataContainerContentClass](self, "dataContainerContentClass")}];
  [v8 setObject:v9 forKeyedSubscript:@"com.apple.MobileContainerManager.DataContainerClass"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(MIBundle *)self parentBundleID];
    [v8 setObject:v10 forKeyedSubscript:@"com.apple.MobileContainerManager.ParentBundleID"];
  }

  if ([(MIBundle *)self isPlaceholder])
  {
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"com.apple.MobileContainerManager.PlaceholderEntitlements"];
  }

  if (v5)
  {
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"com.apple.MobileContainerManager.AdvanceCopy"];
  }

  v11 = [(MIExecutableBundle *)self codeSigningInfo];
  v12 = [v11 dictionaryRepresentation];

  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    [(MIBundle *)self identifier];
    v25 = v12;
    v24 = v26 = v8;
    MOLogWrite();
  }

  v13 = [(MIBundle *)self identifier:v24];
  [v13 UTF8String];
  v14 = _CFXPCCreateXPCObjectFromCFObject();
  v15 = _CFXPCCreateXPCObjectFromCFObject();
  v16 = container_set_code_signing_info_for_identifier();

  if (v16 == 1)
  {

    goto LABEL_21;
  }

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MIContainerManagerErrorDomain" code:v16 userInfo:0];
  v18 = [(MIBundle *)self identifier];
  [(MIBundle *)self isPlaceholder];
  v20 = _CreateAndLogError("[MIExecutableBundle updateMCMWithCodeSigningInfoAsAdvanceCopy:withError:]", 1069, @"MIInstallerErrorDomain", 110, v17, 0, @"Failed to set code signing info with MCM for %@, isPlaceholder: %c", v19, v18);

  v21 = 0;
  if (a4 && v20)
  {
    v22 = v20;
    v21 = 0;
    *a4 = v20;
  }

LABEL_22:

  return v21;
}

- (id)_codeSigningInfoFromMCM
{
  v3 = [(MIBundle *)self bundleType];
  if ((v3 - 1) >= 6 && v3 != 12)
  {
    v12 = 0;
    goto LABEL_21;
  }

  v5 = [(MIBundle *)self identifier];
  [v5 UTF8String];
  v6 = container_copy_code_signing_info_for_identifier();

  if (!v6)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v13 = [(MIBundle *)self identifier];
      MOLogWrite();
    }

    v8 = 0;
    goto LABEL_19;
  }

  v7 = _CFXPCCreateCFObjectFromXPCObject();
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v10 = [[MICodeSigningInfo alloc] initWithDictionaryRepresentation:v8 fromSource:3];
LABEL_20:
  v12 = v10;

LABEL_21:

  return v12;
}

- (id)codeSigningInfoByValidatingResources:(BOOL)a3 performingOnlineAuthorization:(BOOL)a4 ignoringCachedSigningInfo:(BOOL)a5 checkingTrustCacheIfApplicable:(BOOL)a6 skippingProfileIDValidation:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v12 = a4;
  v13 = a3;
  v15 = [(MIBundle *)self identifier];
  v16 = [(MIExecutableBundle *)self codeSignatureVerificationState];
  v17 = v16;
  if (a5 || v16 - 3 < 0xFFFFFFFFFFFFFFFELL)
  {
    v19 = [(MIBundle *)self bundleType];
    v20 = [(MIBundle *)self bundleURL];
    if (v17 == 6 || v17 == 3)
    {
      if (a8)
      {
        v21 = v20;
        [(MIExecutableBundle *)self codeSigningInfoError];
        *a8 = v18 = 0;
        v20 = v21;
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_98;
    }

    v70 = v20;
    if (a5 || v19 != 4)
    {
      v23 = [(MIBundle *)self isStaticContent];
      if (v23 && v19 == 7)
      {
        if (![(MIExecutableBundle *)self hasExecutable])
        {
          self->_codeSignatureVerificationState = 4;
          v37 = _CreateError("[MIExecutableBundle codeSigningInfoByValidatingResources:performingOnlineAuthorization:ignoringCachedSigningInfo:checkingTrustCacheIfApplicable:skippingProfileIDValidation:error:]", 1160, @"MIInstallerErrorDomain", 71, 0, 0, @"Built in framework is expectedly missing its bundle executable.", v24, v67);
          if (a8)
          {
            v37 = v37;
            *a8 = v37;
          }

          v18 = 0;
          goto LABEL_97;
        }

        v23 = 1;
      }
    }

    else
    {
      v22 = [(MIExecutableBundle *)self _codeSigningInfoFromMCM];
      if (v22)
      {
        v18 = v22;
        [(MIExecutableBundle *)self setCodeSigningInfo:v22];
        self->_codeSignatureVerificationState = 5;
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          MOLogWrite();
        }

        goto LABEL_97;
      }

      v23 = [(MIBundle *)self isStaticContent];
    }

    if ([(MIBundle *)self isPlaceholder])
    {
      self->_codeSignatureVerificationState = 1;
      v74 = 0;
      v25 = MICopyPlaceholderEntitlements(v70, &v74);
      v26 = v74;
      v27 = v26;
      if (v25)
      {
        if ([v25 count] || gLogHandle && *(gLogHandle + 44) < 5)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v38 = [v26 domain];
      if ([v38 isEqualToString:*MEMORY[0x1E696A250]])
      {
        v39 = [v27 code];

        if (v39 == 260)
        {
          if (v19 == 1)
          {
            if (gLogHandle && *(gLogHandle + 44) < 5)
            {
              goto LABEL_29;
            }
          }

          else if (!gLogHandle || *(gLogHandle + 44) < 7)
          {
            goto LABEL_29;
          }

LABEL_28:
          v28 = [v70 path];
          MOLogWrite();

LABEL_29:
          v29 = [[MICodeSigningInfo alloc] initWithSignerIdentity:@"Unsigned Placeholder" signerOrganization:@"Unsigned Placeholder" codeInfoIdentifier:v15 teamIdentifier:@"Unsigned Placeholder" signatureVersion:&unk_1F2888E38 entitlements:v25 signerType:6 profileType:1 signingInfoSource:1 launchWarningData:0];
          [(MIExecutableBundle *)self setCodeSigningInfo:v29];

          v18 = [(MIExecutableBundle *)self codeSigningInfo];
LABEL_96:

          goto LABEL_97;
        }
      }

      else
      {
      }

      v43 = [v70 path];
      v45 = _CreateAndLogError("[MIExecutableBundle codeSigningInfoByValidatingResources:performingOnlineAuthorization:ignoringCachedSigningInfo:checkingTrustCacheIfApplicable:skippingProfileIDValidation:error:]", 1179, @"MIInstallerErrorDomain", 4, v27, 0, @"Failed to read placeholder entitlements file from %@", v44, v43);

      if (a8)
      {
        v46 = v45;
        v18 = 0;
        *a8 = v45;
      }

      else
      {
        v18 = 0;
      }

      v27 = v45;
      goto LABEL_96;
    }

    v30 = [MICodeSigningVerifier codeSigningVerifierForBundle:self];
    v32 = v30;
    if (!v30)
    {
      v40 = _CreateAndLogError("[MIExecutableBundle codeSigningInfoByValidatingResources:performingOnlineAuthorization:ignoringCachedSigningInfo:checkingTrustCacheIfApplicable:skippingProfileIDValidation:error:]", 1205, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to create verifier for executable %@", v31, v70);
      if (a8)
      {
        v40 = v40;
        *a8 = v40;
      }

      v18 = 0;
      goto LABEL_93;
    }

    if (v13)
    {
      [v30 setValidateResources:1];
      if (!v12)
      {
        goto LABEL_33;
      }
    }

    else if (!v12)
    {
LABEL_33:
      if (!v9)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    [v32 setPerformOnlineAuthorization:1];
    if (!v9)
    {
LABEL_35:
      v33 = [(MIBundle *)self parentBundle];
      v34 = +[MIDaemonConfiguration sharedInstance];
      v35 = [v34 codeSigningEnforcementIsDisabled];

      if (v35)
      {
        [v32 setAllowAdhocSigning:1];
        [v32 setVerifyTrustCachePresence:0];
        [v32 setValidateUsingDetachedSignature:0];
        if (-[MIBundle isRemovableSystemApp](self, "isRemovableSystemApp") || [v33 isRemovableSystemApp])
        {
          [v32 setValidateResources:0];
        }

        if (!v23 && ![(MIBundle *)self isRemovableSystemApp])
        {
          v36 = [v33 isRemovableSystemApp] ^ 1;
          if (a6)
          {
            goto LABEL_74;
          }

          goto LABEL_73;
        }

        goto LABEL_72;
      }

      if ([(MIBundle *)self isRemovableSystemApp])
      {
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          v67 = v15;
          MOLogWrite();
        }

        [v32 setAllowAdhocSigning:{1, v67}];
        v41 = v32;
        v42 = 1;
      }

      else
      {
        if (![v33 isRemovableSystemApp])
        {
          if (v23)
          {
            if (gLogHandle && *(gLogHandle + 44) >= 7)
            {
              v67 = v15;
              MOLogWrite();
            }

            [v32 setAllowAdhocSigning:{1, v67}];
            [v32 setVerifyTrustCachePresence:1];
            [v32 setValidateResources:0];
          }

          else
          {
            if (!MGGetBoolAnswer())
            {
              v73 = 0;
              v64 = +[MITestManager sharedInstance];
              v72 = 0;
              v65 = [v64 isRunningInTestMode:&v73 outError:&v72];
              v66 = v72;

              if ((v65 & 1) == 0)
              {
                if (!gLogHandle || *(gLogHandle + 44) >= 3)
                {
                  v67 = v66;
                  MOLogWrite();
                }

                v73 = 0;

                v66 = 0;
              }

              v36 = v73;
              if (v73 == 1)
              {
                if (!gLogHandle || *(gLogHandle + 44) >= 5)
                {
                  v67 = [v70 path];
                  MOLogWrite();
                }

                [v32 setAllowAdhocSigning:{1, v67}];
              }

              if (a6)
              {
LABEL_74:
                v71 = 0;
                v47 = [v32 performValidationWithError:{&v71, v67}];
                v48 = v71;
                if (v47)
                {
                  v49 = [v32 signingInfo];
                  v50 = [v49 codeInfoIdentifier];
                  v51 = [v50 isEqualToString:v15];

                  if (v51)
                  {
                    self->_codeSignatureVerificationState = 2;
                    v52 = [v32 signingInfo];
                    [(MIExecutableBundle *)self setCodeSigningInfo:v52];

                    if (v36)
                    {
                      v53 = [(MIExecutableBundle *)self codeSigningInfo];
                      v54 = [v53 codeSignerType];

                      if (v54 == 1 && (!gLogHandle || *(gLogHandle + 44) >= 5))
                      {
                        v68 = [v70 path];
                        MOLogWrite();
                      }
                    }

                    v18 = [(MIExecutableBundle *)self codeSigningInfo];
                    goto LABEL_92;
                  }

                  self->_codeSignatureVerificationState = 6;
                  v56 = [v32 signingInfo];
                  v57 = [v56 codeInfoIdentifier];
                  v69 = [v70 path];
                  v59 = _CreateAndLogError("[MIExecutableBundle codeSigningInfoByValidatingResources:performingOnlineAuthorization:ignoringCachedSigningInfo:checkingTrustCacheIfApplicable:skippingProfileIDValidation:error:]", 1306, @"MIInstallerErrorDomain", 77, 0, &unk_1F2888420, @"Code signing identifier (%@) does not match bundle identifier (%@) for %@", v58, v57);
                  [(MIExecutableBundle *)self setCodeSigningInfoError:v59];

                  if (a8)
                  {
                    *a8 = [(MIExecutableBundle *)self codeSigningInfoError];
                  }

                  if ([(MIExecutableBundle *)self hasExecutable])
                  {
                    v60 = [(MIExecutableBundle *)self executableURL];
                    v61 = [v60 fileSystemRepresentation];

                    if (lchmod(v61, 0x1A4u))
                    {
                      v62 = *__error();
                      if (!gLogHandle || *(gLogHandle + 44) >= 3)
                      {
                        strerror(v62);
                        MOLogWrite();
                      }
                    }
                  }
                }

                else
                {
                  self->_codeSignatureVerificationState = 3;
                  [(MIExecutableBundle *)self setCodeSigningInfoError:v48];
                  if (a8)
                  {
                    v55 = v48;
                    v18 = 0;
                    *a8 = v48;
LABEL_92:

LABEL_93:
LABEL_97:
                    v20 = v70;
LABEL_98:

                    goto LABEL_99;
                  }
                }

                v18 = 0;
                goto LABEL_92;
              }

LABEL_73:
              [v32 setVerifyTrustCachePresence:{0, v67}];
              goto LABEL_74;
            }

            if (!gLogHandle || *(gLogHandle + 44) >= 5)
            {
              v67 = [v70 path];
              MOLogWrite();
            }

            [v32 setAllowAdhocSigning:{1, v67}];
          }

LABEL_72:
          v36 = 0;
          if (a6)
          {
            goto LABEL_74;
          }

          goto LABEL_73;
        }

        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          v67 = v15;
          MOLogWrite();
        }

        [v32 setAllowAdhocSigning:{1, v67}];
        [v32 setValidateResources:0];
        v41 = v32;
        v42 = 0;
      }

      [v41 setValidateUsingDetachedSignature:v42];
      [v32 setVerifyTrustCachePresence:1];
      goto LABEL_72;
    }

LABEL_34:
    [v32 setSkipProfileIDValidation:1];
    goto LABEL_35;
  }

  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v67 = v15;
    MOLogWrite();
  }

  v18 = [(MIExecutableBundle *)self codeSigningInfo];
LABEL_99:

  return v18;
}

- (int)_installEmbeddedProvisioningProfileAtURL:(id)a3 withProgress:(id)a4
{
  v5 = a3;
  v6 = a4;
  memset(&v10, 0, sizeof(v10));
  if (lstat([v5 fileSystemRepresentation], &v10))
  {
    v7 = *__error();
    if (v7 != 2 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      [v5 fileSystemRepresentation];
      strerror(v7);
      MOLogWrite();
    }

    v8 = 0;
  }

  else
  {
    if (v6)
    {
      v6[2](v6, @"InstallingEmbeddedProfile", 0);
    }

    v8 = MIInstallProfileAtURL(v5);
  }

  return v8;
}

- (int)installEmbeddedProvisioningProfileWithProgress:(id)a3
{
  v4 = a3;
  v5 = [(MIBundle *)self bundleURL];
  v6 = [v5 URLByAppendingPathComponent:@"embedded.mobileprovision" isDirectory:0];

  LODWORD(self) = [(MIExecutableBundle *)self _installEmbeddedProvisioningProfileAtURL:v6 withProgress:v4];
  return self;
}

- (int)installMacStyleEmbeddedProvisioningProfileWithProgress:(id)a3
{
  v4 = a3;
  v5 = [(MIBundle *)self bundleURL];
  v6 = [v5 URLByAppendingPathComponent:@"embedded.provisionprofile" isDirectory:0];

  LODWORD(self) = [(MIExecutableBundle *)self _installEmbeddedProvisioningProfileAtURL:v6 withProgress:v4];
  return self;
}

- (BOOL)_hasNoConflictWithSystemAppsForSigningInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIBundle *)self bundleTypeDescription];
  v8 = [(MIBundle *)self identifier];
  v9 = [(MIBundle *)self parentBundle];
  if ([(MIBundle *)self bundleType]== 1 && [(MIBundle *)self isRemovableSystemApp])
  {
    v10 = [v6 entitlements];
    if ([v10 count])
    {
      if (MIHasSystemApplicationEntitlement(v10))
      {
        v37 = v6;
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          v36 = v8;
          MOLogWrite();
        }

        v13 = +[MIDaemonConfiguration sharedInstance];
        v14 = [v13 systemAppPlaceholderXPCServiceBundleIDs];
        v43 = 0;
        hasNoConflictWithSystemAppBundleIDs = _hasNoConflictWithSystemAppBundleIDs(v14, v8, @"System App XPC Service", v7, &v43);
        v16 = v43;

        if (hasNoConflictWithSystemAppBundleIDs)
        {
          v17 = +[MIDaemonConfiguration sharedInstance];
          v18 = [v17 systemAppPlaceholderAppExtensionBundleIDs];
          v42 = v16;
          v19 = _hasNoConflictWithSystemAppBundleIDs(v18, v8, @"System App Extension", v7, &v42);
          v20 = v42;

          if (v19)
          {
            v21 = 1;
            v6 = v37;
LABEL_26:
            v16 = v20;
            goto LABEL_30;
          }

          v21 = 0;
          v16 = v20;
        }

        else
        {
          v21 = 0;
        }

        v6 = v37;
        goto LABEL_30;
      }

      _CreateAndLogError("[MIExecutableBundle _hasNoConflictWithSystemAppsForSigningInfo:error:]", 1475, @"MIInstallerErrorDomain", 127, 0, &unk_1F2888470, @"This app has the same bundle ID (%@) as a known deletable system app but is missing the required entitlement %@ = true (BOOLean).", v12, v8);
    }

    else
    {
      _CreateAndLogError("[MIExecutableBundle _hasNoConflictWithSystemAppsForSigningInfo:error:]", 1459, @"MIInstallerErrorDomain", 127, 0, &unk_1F2888448, @"This app has the same bundle ID (%@) as a known deletable system app, but was signed with no entitlements at all and thus is missing the required entitlement %@ = true (BOOLean).", v11, v8);
    }
    v20 = ;
    v21 = 0;
    goto LABEL_26;
  }

  v22 = +[MIDaemonConfiguration sharedInstance];
  v23 = [v22 systemAppPlaceholderBundleIDs];
  v41 = 0;
  v24 = _hasNoConflictWithSystemAppBundleIDs(v23, v8, @"System App", v7, &v41);
  v16 = v41;

  if (!v24)
  {
    v21 = 0;
    goto LABEL_31;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_21:
    v38 = a4;
    v28 = v6;
    v29 = +[MIDaemonConfiguration sharedInstance];
    v30 = [v29 systemAppPlaceholderXPCServiceBundleIDs];
    v40 = v16;
    v31 = _hasNoConflictWithSystemAppBundleIDs(v30, v8, @"System App XPC Service", v7, &v40);
    v32 = v40;

    if (v31)
    {
      v10 = +[MIDaemonConfiguration sharedInstance];
      v33 = [v10 systemAppPlaceholderAppExtensionBundleIDs];
      v39 = v32;
      v21 = _hasNoConflictWithSystemAppBundleIDs(v33, v8, @"System App Extension", v7, &v39);
      v16 = v39;

      v6 = v28;
      a4 = v38;
LABEL_30:

      goto LABEL_31;
    }

    v21 = 0;
    v16 = v32;
    v6 = v28;
    a4 = v38;
LABEL_31:
    if (a4 && (v21 & 1) == 0)
    {
      v34 = v16;
      v21 = 0;
      *a4 = v16;
    }

    goto LABEL_34;
  }

  v25 = [v9 codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:0 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:0];
  v26 = [v25 entitlements];
  v27 = MIHasSystemApplicationEntitlement(v26);

  if (!v27)
  {

    goto LABEL_21;
  }

  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    MOLogWrite();
  }

  v21 = 1;
LABEL_34:

  return v21;
}

- (BOOL)hasNoConflictsWithOtherInstalledEntitiesForSigningInfo:(id)a3 forPersona:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MIBundle *)self bundleTypeDescription];
  v11 = [(MIBundle *)self bundleType];
  if (v11 > 0xC)
  {
    goto LABEL_21;
  }

  v13 = 1;
  if (((1 << v11) & 0x101E) != 0)
  {
    v15 = [(MIBundle *)self identifier];
    v39 = 0;
    v16 = _checkIdentifierForConflict(v15, v9, 4, @"App Extension", v10, &v39);
    v17 = v39;

    if (v16)
    {
      v38 = v17;
      v18 = [(MIExecutableBundle *)self _hasNoConflictWithSystemAppsForSigningInfo:v8 error:&v38];
      v14 = v38;

      if (v18)
      {
        v19 = [v8 codeInfoIdentifier];
        if (v19)
        {
          v20 = v19;
          v21 = [v8 codeInfoIdentifier];
          v37 = v14;
          v22 = _checkIdentifierForConflict(v21, v9, 4, @"App Extension", v10, &v37);
          v23 = v37;
          goto LABEL_9;
        }

LABEL_24:
        v13 = 1;
        goto LABEL_27;
      }

LABEL_22:
      if (!a5)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

LABEL_19:
    v14 = v17;
    if (!a5)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (((1 << v11) & 0xB80) == 0)
  {
    if (v11 == 6)
    {
      v25 = [(MIBundle *)self identifier];
      v44 = 0;
      v26 = _checkIdentifierForConflict(v25, v9, 2, @"App", v10, &v44);
      v14 = v44;

      if (!v26)
      {
        goto LABEL_22;
      }

      v43 = v14;
      v27 = [(MIExecutableBundle *)self _hasNoConflictWithSystemAppsForSigningInfo:v8 error:&v43];
      v17 = v43;

      if (v27)
      {
        v28 = [v8 codeInfoIdentifier];
        if (!v28 || (v29 = v28, [v8 codeInfoIdentifier], v30 = objc_claimAutoreleasedReturnValue(), v42 = v17, v31 = _checkIdentifierForConflict(v30, v9, 2, @"App", v10, &v42), v14 = v42, v17, v30, v29, v17 = v14, v31))
        {
          v32 = [(MIBundle *)self identifier];
          v41 = v17;
          hasNoConflictWithNonContainerizedSystemApp = _hasNoConflictWithNonContainerizedSystemApp(v32, v10, &v41);
          v14 = v41;

          if (hasNoConflictWithNonContainerizedSystemApp)
          {
            v34 = [v8 codeInfoIdentifier];
            if (v34)
            {
              v20 = v34;
              v21 = [v8 codeInfoIdentifier];
              v40 = v14;
              v22 = _hasNoConflictWithNonContainerizedSystemApp(v21, v10, &v40);
              v23 = v40;
LABEL_9:
              v24 = v23;

              if (v22)
              {
                v13 = 1;
                v14 = v24;
                goto LABEL_27;
              }

              v14 = v24;
              if (!a5)
              {
LABEL_26:
                v13 = 0;
                goto LABEL_27;
              }

LABEL_23:
              v35 = v14;
              v13 = 0;
              *a5 = v14;
              goto LABEL_27;
            }

            goto LABEL_24;
          }
        }

        goto LABEL_22;
      }

      goto LABEL_19;
    }

LABEL_21:
    v14 = _CreateAndLogError("[MIExecutableBundle hasNoConflictsWithOtherInstalledEntitiesForSigningInfo:forPersona:error:]", 1648, @"MIInstallerErrorDomain", 4, 0, 0, @"Don't know how to check bundle %@ for conflicts.", v12, self);
    goto LABEL_22;
  }

  v14 = 0;
LABEL_27:

  return v13;
}

- (unint64_t)dataContainerContentClass
{
  v2 = [(MIBundle *)self bundleType];
  if (v2 > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_1B175DB78[v2];
  }
}

- (id)_dataContainerCreatingIfNeeded:(BOOL)a3 forPersona:(id)a4 makeLive:(BOOL)a5 checkIfNeeded:(BOOL)a6 created:(BOOL *)a7 error:(id *)a8
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v14 = a4;
  if (v10 && ![(MIExecutableBundle *)self needsDataContainer])
  {
    v23 = [(MIBundle *)self bundleURL];
    v19 = _CreateAndLogError("[MIExecutableBundle _dataContainerCreatingIfNeeded:forPersona:makeLive:checkIfNeeded:created:error:]", 1718, @"MIInstallerErrorDomain", 4, 0, 0, @"Asked for data container for %@ but none is needed.", v24, v23);

    v15 = 0;
    if (a8)
    {
      goto LABEL_29;
    }

LABEL_23:
    v20 = 0;
    goto LABEL_30;
  }

  v35 = 0;
  v15 = [(objc_class *)[(MIExecutableBundle *)self dataContainerClass] dataContainerForExecutableBundle:self forPersona:v14 createIfNeeded:v12 temporary:0 created:a7 error:&v35];
  v16 = v35;
  v17 = v16;
  if (!v15)
  {
    if (!v12)
    {
      v21 = [v16 domain];
      if ([v21 isEqualToString:@"MIContainerManagerErrorDomain"])
      {
        v22 = [v17 code];

        if (v22 == 21)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v31 = [(MIBundle *)self identifier];
      MOLogWrite();
    }

LABEL_28:
    v15 = 0;
    v19 = v17;
    if (a8)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (!v12 || !v11)
  {
    goto LABEL_8;
  }

  v34 = v16;
  v18 = [v15 makeContainerLiveWithError:&v34];
  v19 = v34;

  if (v18)
  {
    v17 = v19;
LABEL_8:
    v20 = v15;
    v15 = v20;
    v19 = v17;
    goto LABEL_30;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v30 = [(MIBundle *)self identifier];
    v32 = v19;
    MOLogWrite();
  }

  v25 = [(MIBundle *)self identifier:v30];
  v33 = 0;
  v26 = [v15 removeUnderlyingContainerWaitingForDeletion:0 error:&v33];
  v27 = v33;
  if ((v26 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }

  if (!a8)
  {
    goto LABEL_23;
  }

LABEL_29:
  v28 = v19;
  v20 = 0;
  *a8 = v19;
LABEL_30:

  return v20;
}

- (BOOL)checkExecutableExistsIfRequiredWithError:(id *)a3
{
  if ([(MIBundle *)self isPlaceholder]|| [(MIExecutableBundle *)self hasExecutable])
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v8 = [(MIBundle *)self relativePath];
    v11 = [(MIExecutableBundle *)self relativeExecutablePath];
    v5 = _CreateAndLogError("[MIExecutableBundle checkExecutableExistsIfRequiredWithError:]", 1764, @"MIInstallerErrorDomain", 71, 0, 0, @"%@ is missing its bundle executable. Please check your build settings to make sure that a bundle executable is produced at the path %@.", v9, v8);

    if (a3)
    {
      v10 = v5;
      v6 = 0;
      *a3 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)makeExecutableWithError:(id *)a3
{
  if (-[MIBundle isLaunchProhibited](self, "isLaunchProhibited") || -[MIBundle isPlaceholder](self, "isPlaceholder") || (-[MIExecutableBundle executableURL](self, "executableURL"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 fileSystemRepresentation], v5, !lchmod(v6, 0x1EDu)))
  {
    v11 = 0;
    v13 = 1;
  }

  else
  {
    v7 = __error();
    v8 = *v7;
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*v7 userInfo:0];
    strerror(v8);
    v11 = _CreateAndLogError("[MIExecutableBundle makeExecutableWithError:]", 1804, @"MIInstallerErrorDomain", 4, v9, &unk_1F2888498, @"Failed to chmod %s : %s", v10, v6);

    if (a3)
    {
      v12 = v11;
      v13 = 0;
      *a3 = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)setLaunchWarningData:(id)a3 withError:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25 = +[MIFileManager defaultManager];
  v32 = 0;
  v7 = [(MIBundle *)self thisBundleAndAllContainedBundlesWithError:&v32];
  v8 = v32;
  if (v7)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v23 = a4;
      v12 = *v29;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 mayHaveExecutableProgram])
          {
            v15 = [v14 executableURL];
            if (v6)
            {
              v27 = v8;
              v16 = [v25 setData:v6 forExtendedAttributeNamed:@"com.apple.mis.warning" onURL:v15 error:&v27];
              v17 = v27;

              if ((v16 & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v26 = v8;
              v18 = [v25 removeExtendedAttributeNamed:@"com.apple.mis.warning" fromURL:v15 error:&v26];
              v17 = v26;

              if (!v18)
              {
LABEL_18:
                v8 = v15;
                a4 = v23;
                v7 = v24;
                goto LABEL_19;
              }
            }

            v8 = v17;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v19 = 1;
    v17 = v8;
    v7 = v24;
  }

  else
  {
    v9 = [(MIBundle *)self identifier];
    v17 = _CreateAndLogError("[MIExecutableBundle setLaunchWarningData:withError:]", 1826, @"MIInstallerErrorDomain", 4, v8, 0, @"Failed to get all bundles within app %@", v20, v9);
LABEL_19:

    if (a4)
    {
      v21 = v17;
      v19 = 0;
      *a4 = v17;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (BOOL)validatePluginKitMetadataWithError:(id *)a3
{
  v19.receiver = self;
  v19.super_class = MIExecutableBundle;
  v20 = 0;
  v5 = [(MIBundle *)&v19 validatePluginKitMetadataWithError:&v20];
  v6 = v20;
  if (v5)
  {
    v7 = [(MIExecutableBundle *)self watchKitV2AppBundleWithError:0];
    v8 = v7;
    if (!v7)
    {
      v11 = 1;
      goto LABEL_16;
    }

    v9 = [v7 siriIntents];
    if (!v9)
    {
      v11 = 1;
LABEL_15:

LABEL_16:
      if (!a3)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v10 = [(MIBundle *)self siriIntents];
    if (v10)
    {
      if ([v9 isSubsetOfSet:v10])
      {
        v11 = 1;
LABEL_14:

        goto LABEL_15;
      }

      v12 = [v8 identifier];
      v13 = [(MIBundle *)self identifier];
      _CreateAndLogError("[MIExecutableBundle validatePluginKitMetadataWithError:]", 1882, @"MIInstallerErrorDomain", 126, 0, &unk_1F28884E8, @"Siri Intents in the WatchKit app %@ are not a subset of the Siri Intents in the companion app %@", v15, v12);
    }

    else
    {
      v12 = [v8 identifier];
      v13 = [(MIBundle *)self identifier];
      _CreateAndLogError("[MIExecutableBundle validatePluginKitMetadataWithError:]", 1879, @"MIInstallerErrorDomain", 126, 0, &unk_1F28884C0, @"Siri Intents app extension is present in the WatchKit app %@ but there are no Siri Intents in the companion app %@", v14, v12);
    }
    v16 = ;

    v11 = 0;
    v6 = v16;
    goto LABEL_14;
  }

  v11 = 0;
  if (!a3)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (!v11)
  {
    v17 = v6;
    *a3 = v6;
  }

LABEL_19:

  return v11;
}

- (id)bundleSignatureVersionWithError:(id *)a3
{
  v13 = 0;
  v5 = [(MIExecutableBundle *)self executableURL];
  v6 = MIFetchSignatureVersionForExecutableURL(v5, &v13);

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(MIExecutableBundle *)self relativeExecutablePath];
    v12 = MIErrorStringForMISError(v13);
    v7 = _CreateAndLogError("[MIExecutableBundle bundleSignatureVersionWithError:]", 1903, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to fetch signature version for executable at %@ with libMIS error %@", v9, v8);

    if (a3)
    {
      v10 = v7;
      *a3 = v7;
    }
  }

  return v6;
}

- (id)enumerateDylibsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(MIBundle *)self bundleURL];
  v6 = [v5 URLByAppendingPathComponent:@"Frameworks" isDirectory:1];

  v7 = +[MIFileManager defaultManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__MIExecutableBundle_enumerateDylibsWithBlock___block_invoke;
  v16[3] = &unk_1E7AE2118;
  v17 = v4;
  v8 = v4;
  v9 = [v7 enumerateURLsForItemsInDirectoryAtURL:v6 ignoreSymlinks:1 withBlock:v16];

  if (!v9)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v10 = [v9 domain];
  if (![v10 isEqualToString:*MEMORY[0x1E696A798]])
  {

    goto LABEL_7;
  }

  v11 = [v9 code];

  if (v11 != 2)
  {
LABEL_7:
    v13 = [v6 path];
    v12 = _CreateAndLogError("[MIExecutableBundle enumerateDylibsWithBlock:]", 1936, @"MIInstallerErrorDomain", 54, v9, 0, @"Failed to discover dylibs in directory %@", v14, v13);

    v9 = v13;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_8:

LABEL_9:

  return v12;
}

uint64_t __47__MIExecutableBundle_enumerateDylibsWithBlock___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 8 && ([v5 pathExtension], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"dylib"), v7, v8))
  {
    v9 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (NSURL)rootSinfURL
{
  v3 = [(MIBundle *)self bundleURL];
  v4 = [v3 URLByAppendingPathComponent:@"SC_Info" isDirectory:1];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(MIExecutableBundle *)self executableName];
  v7 = [v5 stringWithFormat:@"%@.sinf", v6];
  v8 = [v4 URLByAppendingPathComponent:v7 isDirectory:0];

  return v8;
}

- (NSURL)rootSuppURL
{
  v3 = [(MIBundle *)self bundleURL];
  v4 = [v3 URLByAppendingPathComponent:@"SC_Info" isDirectory:1];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(MIExecutableBundle *)self executableName];
  v7 = [v5 stringWithFormat:@"%@.supp", v6];
  v8 = [v4 URLByAppendingPathComponent:v7 isDirectory:0];

  return v8;
}

- (NSURL)rootSupfURL
{
  v3 = [(MIBundle *)self bundleURL];
  v4 = [v3 URLByAppendingPathComponent:@"SC_Info" isDirectory:1];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(MIExecutableBundle *)self executableName];
  v7 = [v5 stringWithFormat:@"%@.supf", v6];
  v8 = [v4 URLByAppendingPathComponent:v7 isDirectory:0];

  return v8;
}

- (BOOL)updateSinfWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[MIDaemonConfiguration sharedInstance];
  v8 = [v7 uid];

  v9 = +[MIDaemonConfiguration sharedInstance];
  v10 = [v9 gid];

  v11 = [(MIBundle *)self bundleURL];
  v12 = [(MIExecutableBundle *)self executableName];
  v17 = 0;
  v13 = MIUpdateSinfWithData(v6, v11, v12, v8, v10, &v17);

  v14 = v17;
  if (a4 && (v13 & 1) == 0)
  {
    v15 = v14;
    *a4 = v14;
  }

  return v13;
}

- (void)bestEffortRollbackSinfData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = 0;
    v5 = [(MIExecutableBundle *)self updateSinfWithData:v4 error:&v9];
    v6 = v9;
    if (!v5 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v8 = [(MIBundle *)self identifier];
      MOLogWrite();
    }
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v7 = [(MIBundle *)self identifier];
      MOLogWrite();
    }

    [(MIExecutableBundle *)self removeSinf];
    v6 = 0;
  }
}

- (id)updateAndValidateSinf:(id)a3 withRollback:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if (!v6)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v9 = MEMORY[0x1E695DEF0];
  v10 = [(MIExecutableBundle *)self rootSinfURL];
  v31 = 0;
  v11 = [v9 dataWithContentsOfURL:v10 options:2 error:&v31];
  v12 = v31;

  if (!v11)
  {
    v13 = [v12 domain];
    if ([v13 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v14 = [v12 code];

      if (v14 == 260)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v15 = [(MIExecutableBundle *)self rootSinfURL];
      v16 = [v15 path];
      v26 = [(MIBundle *)self identifier];
      v27 = v12;
      v25 = v16;
      MOLogWrite();
    }
  }

LABEL_11:

LABEL_12:
  v30 = 0;
  v17 = [(MIExecutableBundle *)self updateSinfWithData:v8 error:&v30, v25, v26, v27];
  v18 = v30;
  v19 = v18;
  if (!v17)
  {
    v22 = 0;
    if (!a5)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v29 = v18;
  v20 = [(MIExecutableBundle *)self validateSinfWithError:&v29];
  v21 = v29;

  if (v20)
  {
    v28 = v21;
    v22 = [(MIExecutableBundle *)self fairPlaySinfInfoWithError:&v28];
    v19 = v28;

    if (!a5)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v6)
  {
    [(MIExecutableBundle *)self bestEffortRollbackSinfData:v11];
  }

  v22 = 0;
  v19 = v21;
  if (a5)
  {
LABEL_21:
    if (!v22)
    {
      v23 = v19;
      *a5 = v19;
    }
  }

LABEL_23:

  return v22;
}

- (BOOL)replicateRootSinfWithError:(id *)a3
{
  v5 = [(MIBundle *)self bundleURL];
  v6 = [(MIExecutableBundle *)self executableName];
  v7 = +[MIDaemonConfiguration sharedInstance];
  v8 = [v7 uid];
  v9 = +[MIDaemonConfiguration sharedInstance];
  LOBYTE(a3) = MIReplicateRootSinf(v5, v6, v8, [v9 gid], a3);

  return a3;
}

- (void)removeSinf
{
  v4 = [(MIBundle *)self bundleURL];
  v3 = [(MIExecutableBundle *)self executableName];
  MIRemoveSinf(v4, v3);
}

- (BOOL)needsSinf
{
  v3 = +[MIFileManager defaultManager];
  v4 = [(MIExecutableBundle *)self rootSuppURL];
  if ([v3 itemExistsAtURL:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[MIFileManager defaultManager];
    v7 = [(MIExecutableBundle *)self rootSupfURL];
    v5 = [v6 itemExistsAtURL:v7];
  }

  return v5;
}

- (BOOL)hasSinf
{
  v3 = +[MIFileManager defaultManager];
  v4 = [(MIExecutableBundle *)self rootSinfURL];
  v5 = [v3 itemExistsAtURL:v4];

  return v5;
}

- (id)fairPlaySinfInfoWithError:(id *)a3
{
  v37 = -1;
  v36 = 0;
  v5 = [(MIExecutableBundle *)self getSinfDataType:&v37 withError:&v36];
  v6 = v36;
  if (!v5)
  {
    v8 = 0;
    v9 = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  if (!v37)
  {
    v8 = [(MIExecutableBundle *)self rootSinfURL];
    v35 = v6;
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8 options:2 error:&v35];
    v10 = v35;

    if (v9)
    {
      v34 = 0;
      hZZRqgZwI([v9 bytes], objc_msgSend(v9, "length"), 42, &v34);
      if (v14 == -42031)
      {
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          v29 = [v8 path];
          MOLogWrite();
        }

        v34 = 0;
      }

      else if (v14)
      {
        v15 = [v8 path];
        _CreateAndLogError("[MIExecutableBundle fairPlaySinfInfoWithError:]", 2107, @"MIInstallerErrorDomain", 4, 0, 0, @"Could not get MID-based SINF status from SINF at %@: %ld", v16, v15);
        v6 = LABEL_33:;

        goto LABEL_5;
      }

      v33 = 0;
      hZZRqgZwI([v9 bytes], objc_msgSend(v9, "length"), 1, &v33);
      if (v19)
      {
        v15 = [v8 path];
        _CreateAndLogError("[MIExecutableBundle fairPlaySinfInfoWithError:]", 2119, @"MIInstallerErrorDomain", 4, 0, 0, @"Could not get purchaser DSID from SINF at %@: %ld", v20, v15);
      }

      else
      {
        v32 = 0;
        hZZRqgZwI([v9 bytes], objc_msgSend(v9, "length"), 41, &v32);
        if (v21)
        {
          v15 = [v8 path];
          _CreateAndLogError("[MIExecutableBundle fairPlaySinfInfoWithError:]", 2127, @"MIInstallerErrorDomain", 4, 0, 0, @"Could not get family ID from SINF at %@: %ld", v22, v15);
        }

        else
        {
          v31 = 0;
          hZZRqgZwI([v9 bytes], objc_msgSend(v9, "length"), 40, &v31);
          if (!v23)
          {
            v25 = v34 != 0;
            v7 = objc_opt_new();
            v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v33];
            [v7 setApplicationDSID:v26];

            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v32];
            [v7 setFamilyID:v27];

            v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v31];
            [v7 setDownloaderDSID:v28];

            [v7 setHasMIDBasedSINF:v25];
            [v7 setIsMissingRequiredSINF:0];
            goto LABEL_7;
          }

          v15 = [v8 path];
          _CreateAndLogError("[MIExecutableBundle fairPlaySinfInfoWithError:]", 2135, @"MIInstallerErrorDomain", 4, 0, 0, @"Could not get downloader DSID from SINF at %@: %ld", v24, v15);
        }
      }

      goto LABEL_33;
    }

    v17 = [v10 domain];
    if ([v17 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v18 = [v10 code];

      if (v18 == 260)
      {
LABEL_28:
        v9 = 0;
        v7 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v30 = [v8 path];
      MOLogWrite();
    }

    goto LABEL_28;
  }

  v7 = objc_opt_new();
  [v7 setIsMissingRequiredSINF:0];
  v8 = 0;
  v9 = 0;
LABEL_6:
  v10 = v6;
LABEL_7:
  if (a3 && !v7)
  {
    v11 = v10;
    *a3 = v10;
  }

  v12 = v7;

  return v7;
}

- (BOOL)setSinfDataType:(unsigned int)a3 withError:(id *)a4
{
  v5 = *&a3;
  v46 = *MEMORY[0x1E69E9840];
  if (![(MIBundle *)self isPlaceholder])
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__9;
    v43 = __Block_byref_object_dispose__9;
    v44 = 0;
    [(MIExecutableBundle *)self setSinfDataType:v5];
    [(MIExecutableBundle *)self setSinfDataTypeIsSet:1];
    if ([(MIBundle *)self isAppTypeBundle])
    {
      v8 = [(MIExecutableBundle *)self needsSinf];
      if (v5)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (!v9)
      {
        goto LABEL_8;
      }
    }

    else if (!v5)
    {
LABEL_8:
      v10 = 0;
      v7 = 1;
LABEL_31:

      _Block_object_dispose(&v39, 8);
      return v7;
    }

    v11 = v40 + 5;
    obj = v40[5];
    v29 = [(MIBundle *)self thisBundleAndAllContainedBundlesWithError:&obj];
    v28 = a4;
    objc_storeStrong(v11, obj);
    if (v29)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = v29;
      v13 = [v12 countByEnumeratingWithState:&v34 objects:v45 count:16];
      v30 = v12;
      if (v13)
      {
        v14 = *v35;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v35 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v34 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v16 executableURL];
              v18 = v40 + 5;
              v33 = v40[5];
              v19 = MISetSinfDataType(v17, v5, &v33);
              objc_storeStrong(v18, v33);
              if ((v19 & 1) == 0)
              {
                goto LABEL_28;
              }

              if ([v16 isAppTypeBundle])
              {
                v20 = v40[5];
                v40[5] = 0;

                v31[0] = MEMORY[0x1E69E9820];
                v31[1] = 3221225472;
                v31[2] = __48__MIExecutableBundle_setSinfDataType_withError___block_invoke;
                v31[3] = &unk_1E7AE2140;
                v32 = v5;
                v31[4] = &v39;
                v21 = [(MIExecutableBundle *)self enumerateDylibsWithBlock:v31];
                v22 = v21;
                if (v40[5])
                {
                  goto LABEL_27;
                }

                if (v21)
                {
                  objc_storeStrong(v40 + 5, v21);
LABEL_27:

                  goto LABEL_28;
                }
              }

              v12 = v30;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v34 objects:v45 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v7 = 1;
      v10 = v30;
    }

    else
    {
      v23 = v40[5];
      v24 = [(MIBundle *)self identifier];
      v26 = _CreateAndLogError("[MIExecutableBundle setSinfDataType:withError:]", 2183, @"MIInstallerErrorDomain", 4, v23, 0, @"Failed to get all bundles within app %@", v25, v24);
      v30 = v24;
      v17 = v40[5];
      v40[5] = v26;
LABEL_28:

      v7 = 0;
      if (v28)
      {
        *v28 = v40[5];
      }

      v10 = v29;
    }

    goto LABEL_31;
  }

  return 1;
}

uint64_t __48__MIExecutableBundle_setSinfDataType_withError___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v9 = 0;
  v5 = MISetSinfDataType(a2, v4, &v9);
  v6 = v9;
  v7 = v9;
  if ((v5 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
  }

  return v5;
}

- (BOOL)getSinfDataType:(unsigned int *)a3 withError:(id *)a4
{
  if ([(MIExecutableBundle *)self sinfDataTypeIsSet])
  {
    if (*a3)
    {
      *a3 = [(MIExecutableBundle *)self sinfDataType];
    }

    return 1;
  }

  else
  {
    v8 = [(MIExecutableBundle *)self executableURL];
    v9 = MIGetSinfDataType(v8, a3, a4);

    return v9;
  }
}

- (BOOL)validateSinfWithError:(id *)a3
{
  if (![(MIExecutableBundle *)self hasSinf]|| [(MIBundle *)self isPlaceholder])
  {
    v5 = 0;
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  v22 = -1;
  v21 = 0;
  v8 = [(MIExecutableBundle *)self getSinfDataType:&v22 withError:&v21];
  v5 = v21;
  if (v8)
  {
    if (v22)
    {
      goto LABEL_4;
    }

    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v19 = self;
      MOLogWrite();
    }

    v9 = [(MIExecutableBundle *)self executableURL];
    [v9 fileSystemRepresentation];
    mm0Euuzhc();
    v11 = v10;

    switch(v11)
    {
      case -42057:
        v12 = [(MIBundle *)self bundleURL];
        v13 = [v12 path];
        _CreateAndLogError("[MIExecutableBundle validateSinfWithError:]", 2279, @"MIInstallerErrorDomain", 174, 0, &unk_1F2888538, @"The SINF provided for the bundle at %@ does not have a matching key in the FairPlay keybag.", v15, v13);
        break;
      case 0:
        goto LABEL_4;
      case -42056:
        v12 = [(MIBundle *)self bundleURL];
        v13 = [v12 path];
        _CreateAndLogError("[MIExecutableBundle validateSinfWithError:]", 2276, @"MIInstallerErrorDomain", 120, 0, &unk_1F2888510, @"The SINF provided for the bundle at %@ is not valid so this application will not run.", v14, v13);
        break;
      default:
        if (!gLogHandle || *(gLogHandle + 44) >= 5)
        {
          v18 = [(MIBundle *)self bundleURL];
          v20 = [v18 path];
          MOLogWrite();
        }

        goto LABEL_4;
    }
    v16 = ;

    v5 = v16;
  }

  if (a3)
  {
    v17 = v5;
    v6 = 0;
    *a3 = v5;
  }

  else
  {
    v6 = 0;
  }

LABEL_5:

  return v6;
}

- (BOOL)_hasResource:(id)a3 withExtension:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MIBundle *)self cfBundle];
  if (v8)
  {
    v9 = CFBundleCopyResourceURL(v8, v6, v7, 0);
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isExtensionBasedWatchKitApp
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = [v2 objectForKeyedSubscript:@"WKWatchKitApp"];
  v4 = MIBooleanValue(v3, 0);

  return v4;
}

- (BOOL)isExtensionlessWatchKitApp
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = [v2 objectForKeyedSubscript:@"WKApplication"];
  v4 = MIBooleanValue(v3, 0);

  return v4;
}

- (NSString)companionAppIdentifier
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = [v2 objectForKeyedSubscript:@"WKCompanionAppBundleIdentifier"];
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

- (NSArray)counterpartIdentifiers
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(MIBundle *)self bundleType]== 1 || [(MIBundle *)self bundleType]== 10)
  {
    v3 = [(MIBundle *)self infoPlistSubset];
    v4 = [v3 objectForKeyedSubscript:@"LSCounterpartIdentifiers"];
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

    objc_opt_class();
    if (MIArrayContainsOnlyClass(v6))
    {
      goto LABEL_15;
    }
  }

  if ([(MIBundle *)self bundleType]== 4)
  {
    v7 = [(MIExecutableBundle *)self watchKitAppBundleForWKVersionOrEarlier:3 error:0];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 identifier];
      v12[0] = v9;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

LABEL_13:
      goto LABEL_15;
    }
  }

  else if ([(MIBundle *)self bundleType]== 9)
  {
    v8 = [(MIExecutableBundle *)self companionAppIdentifier];
    v11 = v8;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (BOOL)minimumWatchOSVersionIsPreV6
{
  v2 = [(MIBundle *)self minimumOSVersion];
  IsPreV6 = MIBundleMinimumOSVersionIsPreV6(v2);

  return IsPreV6;
}

- (BOOL)watchKitAppRunsIndependentlyOfCompanion
{
  v3 = [(MIBundle *)self infoPlistSubset];
  v4 = [v3 objectForKeyedSubscript:@"WKRunsIndependentlyOfCompanionApp"];
  v5 = MIBooleanValue(v4, 0);

  if (v5)
  {
    return 1;
  }

  v7 = [(MIBundle *)self bundleType];
  v6 = 0;
  if (v7 <= 0xA && ((1 << v7) & 0x63E) != 0)
  {
    v15 = 0;
    v8 = [(MIExecutableBundle *)self watchKitPluginWithError:&v15];
    v9 = v15;
    v10 = v9;
    if (v8)
    {
      v6 = [v8 watchKitAppRunsIndependentlyOfCompanion];
LABEL_15:

      return v6;
    }

    v11 = [v9 domain];
    if ([v11 isEqualToString:@"MIInstallerErrorDomain"])
    {
      v12 = [v10 code];

      if (v12 == 96)
      {

        v6 = 0;
        v10 = 0;
        goto LABEL_15;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v14 = [(MIBundle *)self identifier];
      MOLogWrite();
    }

    v6 = 0;
    goto LABEL_15;
  }

  return v6;
}

- (BOOL)isWatchOnlyApp
{
  v3 = [(MIBundle *)self infoPlistSubset];
  v4 = [v3 objectForKeyedSubscript:@"WKWatchOnly"];
  v5 = MIBooleanValue(v4, 0);

  if (v5)
  {
    return 1;
  }

  v7 = [(MIBundle *)self bundleType];
  v6 = 0;
  if (v7 <= 0xA && ((1 << v7) & 0x63E) != 0)
  {
    v15 = 0;
    v8 = [(MIExecutableBundle *)self watchKitPluginWithError:&v15];
    v9 = v15;
    v10 = v9;
    if (v8)
    {
      v6 = [v8 isWatchOnlyApp];
LABEL_15:

      return v6;
    }

    v11 = [v9 domain];
    if ([v11 isEqualToString:@"MIInstallerErrorDomain"])
    {
      v12 = [v10 code];

      if (v12 == 96)
      {

        v6 = 0;
        v10 = 0;
        goto LABEL_15;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v14 = [(MIBundle *)self identifier];
      MOLogWrite();
    }

    v6 = 0;
    goto LABEL_15;
  }

  return v6;
}

- (id)watchKitPluginWithError:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [(MIExecutableBundle *)self watchKitPlugin];

  if (v5)
  {
    v6 = [(MIExecutableBundle *)self watchKitPlugin];
  }

  else
  {
    v7 = [(MIBundle *)self pluginKitBundlesWithError:a3];
    v8 = v7;
    if (!v7)
    {
      goto LABEL_14;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if ([v14 isWatchKitExtension])
          {
            [(MIExecutableBundle *)self setWatchKitPlugin:v14];
            v6 = v14;

            goto LABEL_16;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if (a3)
    {
      _CreateError("[MIExecutableBundle watchKitPluginWithError:]", 2451, @"MIInstallerErrorDomain", 96, 0, 0, @"No WatchKit extension found", v15, v17);
      *a3 = v6 = 0;
    }

    else
    {
LABEL_14:
      v6 = 0;
    }

LABEL_16:
  }

  return v6;
}

- (unsigned)watchKitVersionWithError:(id *)a3
{
  if ([(MIExecutableBundle *)self isExtensionlessWatchKitApp])
  {
    return 3;
  }

  if ([(MIExecutableBundle *)self isExtensionBasedWatchKitApp])
  {
    v14 = 0;
    v6 = [(MIExecutableBundle *)self watchKitPluginWithError:&v14];
    v7 = v14;
    v8 = v7;
    if (v6)
    {
      v5 = 3;
LABEL_17:

      return v5;
    }

    v9 = [v7 domain];
    if ([v9 isEqualToString:@"MIInstallerErrorDomain"])
    {
      v10 = [v8 code];

      if (v10 == 96)
      {
        v5 = 2;
        goto LABEL_17;
      }
    }

    else
    {
    }

    if (a3)
    {
      v11 = v8;
      v5 = 0;
      *a3 = v8;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_17;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v13 = [(MIBundle *)self identifier];
    MOLogWrite();
  }

  return 1;
}

- (id)watchKitAppBundleForWKVersionOrEarlier:(unsigned __int8)a3 error:(id *)a4
{
  if (a3 == 3)
  {
    v9 = 0;
    v6 = [(MIExecutableBundle *)self watchKitV2AppBundleWithError:&v9];
    v7 = v9;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (a3 == 2)
    {
      _CreateAndLogError("[MIExecutableBundle watchKitAppBundleForWKVersionOrEarlier:error:]", 2490, @"MIInstallerErrorDomain", 133, 0, 0, @"WatchKit version enum value %hhu is no longer supported", v4, 2);
    }

    else
    {
      _CreateAndLogError("[MIExecutableBundle watchKitAppBundleForWKVersionOrEarlier:error:]", 2497, @"MIInstallerErrorDomain", 4, 0, 0, @"Unknown WatchKit version enum value %hhu", v4, a3);
    }
    v7 = ;
    v6 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  if (!v6)
  {
    v7 = v7;
    *a4 = v7;
  }

LABEL_10:

  return v6;
}

- (id)_discoverWatchAppBundleAsPlaceholder:(BOOL)a3 error:(id *)a4
{
  if (a3)
  {
    v7 = @"com.apple.WatchPlaceholder";
  }

  else
  {
    v7 = @"Watch";
  }

  v8 = [(MIBundle *)self bundleURL];
  v9 = [v8 URLByAppendingPathComponent:v7 isDirectory:1];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__9;
  v35 = __Block_byref_object_dispose__9;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__9;
  v29 = __Block_byref_object_dispose__9;
  v30 = 0;
  v10 = +[MIFileManager defaultManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__MIExecutableBundle__discoverWatchAppBundleAsPlaceholder_error___block_invoke;
  v19[3] = &unk_1E7AE2168;
  v22 = &v31;
  v23 = &v25;
  v20 = v7;
  v21 = self;
  v24 = a3;
  v11 = [v10 enumerateURLsForItemsInDirectoryAtURL:v9 ignoreSymlinks:1 withBlock:v19];

  if (v11)
  {
    if (!v26[5])
    {
      objc_storeStrong(v26 + 5, v11);
    }

    v12 = v32[5];
    v32[5] = 0;
    goto LABEL_8;
  }

  if (!v32[5] && !v26[5])
  {
    v12 = [(MIBundle *)self identifier];
    v17 = _CreateError("[MIExecutableBundle _discoverWatchAppBundleAsPlaceholder:error:]", 2563, @"MIInstallerErrorDomain", 85, 0, 0, @"No WatchKit 2.0 app bundle or placeholder found for app %@", v16, v12);
    v18 = v26[5];
    v26[5] = v17;

LABEL_8:
  }

  v13 = v32[5];
  if (a4 && !v13)
  {
    *a4 = v26[5];
    v13 = v32[5];
  }

  v14 = v13;

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

uint64_t __65__MIExecutableBundle__discoverWatchAppBundleAsPlaceholder_error___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 4)
  {
    v7 = [v5 pathExtension];
    if ([v7 isEqualToString:@"app"])
    {
      if (*(*(*(a1 + 48) + 8) + 40))
      {
        v8 = [v6 lastPathComponent];
        v9 = [*(*(*(a1 + 48) + 8) + 40) bundleURL];
        v37 = [v9 lastPathComponent];
        v11 = _CreateAndLogError("[MIExecutableBundle _discoverWatchAppBundleAsPlaceholder:error:]_block_invoke", 2530, @"MIInstallerErrorDomain", 91, 0, &unk_1F2888560, @"Unexpectedly found a second watch app, %@, in this app's %@ directory when we had already found %@ in that directory. An iOS app may only have one embedded watch app.", v10, v8);
        v12 = *(*(a1 + 56) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v14 = *(*(a1 + 48) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = 0;

LABEL_5:
        v16 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v17 = [MIEmbeddedWatchBundle alloc];
      v19 = *(a1 + 32);
      v18 = *(a1 + 40);
      v20 = [v6 lastPathComponent];
      v21 = *(a1 + 64);
      v38 = 0;
      v22 = [(MIBundle *)v17 initWithParentBundle:v18 parentSubdirectory:v19 bundleName:v20 platformHint:4 forceAsPlaceholder:v21 error:&v38];
      v23 = v38;
      v24 = *(*(a1 + 48) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v22;

      v26 = *(*(*(a1 + 48) + 8) + 40);
      if (!v26)
      {
        v31 = [v6 path];
        v33 = _CreateAndLogError("[MIExecutableBundle _discoverWatchAppBundleAsPlaceholder:error:]_block_invoke", 2538, @"MIInstallerErrorDomain", 92, v23, &unk_1F2888588, @"Could not create bundle for WatchKit app at %@", v32, v31);
        v34 = *(*(a1 + 56) + 8);
        v35 = *(v34 + 40);
        *(v34 + 40) = v33;

        goto LABEL_5;
      }

      if (([v26 isApplicableToKnownWatchOSVersion] & 1) == 0)
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 5)
        {
          v27 = [*(*(*(a1 + 48) + 8) + 40) bundleURL];
          v36 = [v27 path];
          MOLogWrite();
        }

        v28 = *(*(a1 + 48) + 8);
        v29 = *(v28 + 40);
        *(v28 + 40) = 0;
      }
    }

    v16 = 1;
    goto LABEL_15;
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (id)watchKitV2AppBundleWithError:(id *)a3
{
  v5 = [(MIExecutableBundle *)self wk2AppBundle];
  if (v5)
  {

    goto LABEL_4;
  }

  v6 = [(MIExecutableBundle *)self wk2AppBundleError];

  if (!v6)
  {
    v39 = 0;
    v10 = [(MIExecutableBundle *)self _discoverWatchAppBundleAsPlaceholder:0 error:&v39];
    v11 = v39;
    v12 = v11;
    if (v10)
    {
LABEL_12:
      if ([v10 isExtensionBasedWatchKitApp] & 1) != 0 || (objc_msgSend(v10, "isExtensionlessWatchKitApp"))
      {
        v37 = v12;
        v13 = [v10 watchKitVersionWithError:&v37];
        v14 = v37;

        if (v13 == 3)
        {
          v12 = v14;
LABEL_38:
          [(MIExecutableBundle *)self setWk2AppBundle:v10];
          [(MIExecutableBundle *)self setWk2AppBundleError:v12];
          v8 = v10;

          goto LABEL_8;
        }

        v12 = [v10 bundleURL];
        v18 = [v12 path];
        v20 = _CreateAndLogError("[MIExecutableBundle watchKitV2AppBundleWithError:]", 2616, @"MIInstallerErrorDomain", 92, v14, &unk_1F2888628, @"Found WatchKit app at %@ but it was not a WatchKit 2 app. Is it missing its app extension?", v19, v18);
      }

      else
      {
        v25 = [v10 bundleURL];
        v26 = [v25 path];
        v20 = _CreateAndLogError("[MIExecutableBundle watchKitV2AppBundleWithError:]", 2608, @"MIInstallerErrorDomain", 92, 0, &unk_1F2888600, @"Found WatchKit 2.0 app at %@ but it does not have a WKWatchKitApp or WKApplication key set to true in its Info.plist", v27, v26);

        v12 = v25;
      }

      goto LABEL_34;
    }

    v15 = [v11 domain];
    v16 = *MEMORY[0x1E696A798];
    if (![v15 isEqualToString:*MEMORY[0x1E696A798]] || objc_msgSend(v12, "code") != 2)
    {
      v17 = [v12 domain];
      if (![v17 isEqualToString:v16] || objc_msgSend(v12, "code") != 20)
      {
        v21 = [v12 domain];
        if ([v21 isEqualToString:@"MIInstallerErrorDomain"])
        {
          v22 = [v12 code];

          if (v22 == 85)
          {
            goto LABEL_25;
          }
        }

        else
        {
        }

        v10 = [(MIBundle *)self bundleURL];
        _CreateAndLogError("[MIExecutableBundle watchKitV2AppBundleWithError:]", 2591, @"MIInstallerErrorDomain", 92, v12, &unk_1F28885B0, @"Could not get contents of Watch directory in %@", v28, v10);
        goto LABEL_32;
      }
    }

LABEL_25:
    v38 = 0;
    v10 = [(MIExecutableBundle *)self _discoverWatchAppBundleAsPlaceholder:1 error:&v38];
    v23 = v38;
    v12 = v23;
    if (v10)
    {
      goto LABEL_12;
    }

    v24 = [v23 domain];
    if ([v24 isEqualToString:v16] && objc_msgSend(v12, "code") == 2)
    {

LABEL_41:
      v10 = [(MIBundle *)self identifier];
      v29 = _CreateError("[MIExecutableBundle watchKitV2AppBundleWithError:]", 2599, @"MIInstallerErrorDomain", 85, 0, 0, @"No WatchKit 2.0 placeholder found for app %@", v33, v10);
      goto LABEL_33;
    }

    v31 = [v12 domain];
    if ([v31 isEqualToString:v16])
    {
      v32 = [v12 code];

      if (v32 == 20)
      {
        goto LABEL_41;
      }
    }

    else
    {
    }

    v34 = [v12 domain];
    if ([v34 isEqualToString:@"MIInstallerErrorDomain"])
    {
      v35 = [v12 code];

      if (v35 == 85)
      {
LABEL_35:
        if (a3)
        {
          v30 = v12;
          v10 = 0;
          *a3 = v12;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_38;
      }
    }

    else
    {
    }

    v10 = [(MIBundle *)self bundleURL];
    _CreateAndLogError("[MIExecutableBundle watchKitV2AppBundleWithError:]", 2601, @"MIInstallerErrorDomain", 92, v12, &unk_1F28885D8, @"Could not get contents of watch placeholder directory in %@", v36, v10);
    v29 = LABEL_32:;
LABEL_33:
    v20 = v29;
LABEL_34:

    v12 = v20;
    goto LABEL_35;
  }

LABEL_4:
  if (a3)
  {
    v7 = [(MIExecutableBundle *)self wk2AppBundle];

    if (!v7)
    {
      *a3 = [(MIExecutableBundle *)self wk2AppBundleError];
    }
  }

  v8 = [(MIExecutableBundle *)self wk2AppBundle];
LABEL_8:

  return v8;
}

- (BOOL)hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion:(unsigned __int8)a3 error:(id *)a4
{
  v5 = a3;
  v32 = *MEMORY[0x1E69E9840];
  if (hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion_error__onceToken != -1)
  {
    [MIExecutableBundle hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion:error:];
  }

  if ((v5 & 0xFE) != 2)
  {
    [MIExecutableBundle hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion:error:];
  }

  v7 = [(MIBundle *)self bundleURL];
  v8 = MILoadInfoPlist(v7, 0);

  v9 = &hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion_error__allowedV1Keys;
  if (v5 != 2)
  {
    v9 = &hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion_error__allowedV2Keys;
  }

  v10 = *v9;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
LABEL_8:
    v15 = 0;
    while (1)
    {
      if (*v28 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v27 + 1) + 8 * v15);
      objc_opt_class();
      v17 = v16;
      v18 = (objc_opt_isKindOfClass() & 1) != 0 ? v17 : 0;

      if (!v18)
      {
        break;
      }

      if (([v10 containsObject:v17] & 1) == 0)
      {
        v24 = @"Unknown";
        if (v5 == 3)
        {
          v24 = @"2.0";
        }

        if (v5 == 2)
        {
          v24 = @"1.0";
        }

        _CreateAndLogError("[MIExecutableBundle hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion:error:]", 2729, @"MIInstallerErrorDomain", 99, 0, &unk_1F2888678, @"WatchKit %@ app has disallowed Info.plist key: %@", v20, v24);
        v21 = LABEL_29:;

        if (a4)
        {
          v25 = v21;
          v22 = 0;
          *a4 = v21;
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_32;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v13)
        {
          goto LABEL_8;
        }

        goto LABEL_18;
      }
    }

    v23 = @"Unknown";
    if (v5 == 3)
    {
      v23 = @"2.0";
    }

    if (v5 == 2)
    {
      v23 = @"1.0";
    }

    _CreateAndLogError("[MIExecutableBundle hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion:error:]", 2724, @"MIInstallerErrorDomain", 98, 0, &unk_1F2888650, @"WatchKit %@ app had an Info.plist key that was not a string.", v19, v23);
    goto LABEL_29;
  }

LABEL_18:

  v21 = 0;
  v22 = 1;
LABEL_32:

  return v22;
}

uint64_t __85__MIExecutableBundle_hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion_error___block_invoke()
{
  v0 = hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion_error__allowedV1Keys;
  hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion_error__allowedV1Keys = &unk_1F2888C88;

  hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion_error__allowedV2Keys = [&unk_1F2888C88 arrayByAddingObjectsFromArray:&unk_1F2888CA0];

  return MEMORY[0x1EEE66BB8]();
}

- (MIBundleContainer)bundleContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_bundleContainer);

  return WeakRetained;
}

@end