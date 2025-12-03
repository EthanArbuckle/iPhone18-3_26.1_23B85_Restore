@interface MIAppExtensionBundle
- (BOOL)targetsAppleExtensionPoint;
- (BOOL)validateBundleMetadataWithError:(id *)error;
- (BOOL)validateHasCorrespondingEntitlements:(id)entitlements error:(id *)error;
- (BOOL)validateHasNoDotInBundleIDSuffix:(id *)suffix;
- (id)dataContainerCreatingIfNeeded:(BOOL)needed forPersona:(id)persona makeLive:(BOOL)live created:(BOOL *)created error:(id *)error;
- (id)dataContainerForPersona:(id)persona error:(id *)error;
- (id)extensionCacheEntryWithError:(id *)error;
- (id)initForTesting;
- (id)minimumOSVersion;
- (unint64_t)extensionPoint;
@end

@implementation MIAppExtensionBundle

- (id)initForTesting
{
  v3.receiver = self;
  v3.super_class = MIAppExtensionBundle;
  return [(MIExecutableBundle *)&v3 initForTesting];
}

- (id)minimumOSVersion
{
  v6.receiver = self;
  v6.super_class = MIAppExtensionBundle;
  minimumOSVersion = [(MIBundle *)&v6 minimumOSVersion];
  if (!minimumOSVersion)
  {
    parentBundle = [(MIBundle *)self parentBundle];
    minimumOSVersion = [parentBundle minimumOSVersion];
  }

  return minimumOSVersion;
}

- (BOOL)targetsAppleExtensionPoint
{
  extensionPointIdentifier = [(MIAppExtensionBundle *)self extensionPointIdentifier];
  v3 = [extensionPointIdentifier hasPrefix:@"com.apple."];

  return v3;
}

- (unint64_t)extensionPoint
{
  extensionPoint = self->_extensionPoint;
  if (!extensionPoint)
  {
    extensionPointIdentifier = [(MIAppExtensionBundle *)self extensionPointIdentifier];
    if ([extensionPointIdentifier isEqualToString:@"com.apple.web-browser-engine.content"])
    {
      extensionPoint = 1;
    }

    else if ([extensionPointIdentifier isEqualToString:@"com.apple.web-browser-engine.networking"])
    {
      extensionPoint = 3;
    }

    else if ([extensionPointIdentifier isEqualToString:@"com.apple.web-browser-engine.rendering"])
    {
      extensionPoint = 2;
    }

    else if ([extensionPointIdentifier isEqualToString:@"com.apple.app-migration"])
    {
      extensionPoint = 4;
    }

    else
    {
      extensionPoint = -1;
    }

    self->_extensionPoint = extensionPoint;
  }

  return extensionPoint;
}

- (id)dataContainerForPersona:(id)persona error:(id *)error
{
  v6.receiver = self;
  v6.super_class = MIAppExtensionBundle;
  v4 = [(MIExecutableBundle *)&v6 dataContainerForPersona:persona error:error];

  return v4;
}

- (id)dataContainerCreatingIfNeeded:(BOOL)needed forPersona:(id)persona makeLive:(BOOL)live created:(BOOL *)created error:(id *)error
{
  v14 = 0;
  v13.receiver = self;
  v13.super_class = MIAppExtensionBundle;
  v9 = [(MIExecutableBundle *)&v13 dataContainerCreatingIfNeeded:needed forPersona:persona makeLive:live created:&v14 error:error];
  v10 = v9;
  if (created)
  {
    *created = v14;
  }

  if (v9 && v14)
  {
    parentBundleID = [(MIBundle *)self parentBundleID];
    [v10 setParentBundleID:parentBundleID];
  }

  return v10;
}

- (BOOL)validateHasNoDotInBundleIDSuffix:(id *)suffix
{
  parentBundleID = [(MIBundle *)self parentBundleID];
  validationOverrideParentBundleID = [(MIAppExtensionBundle *)self validationOverrideParentBundleID];

  if (validationOverrideParentBundleID)
  {
    validationOverrideParentBundleID2 = [(MIAppExtensionBundle *)self validationOverrideParentBundleID];

    parentBundleID = validationOverrideParentBundleID2;
  }

  v8 = [parentBundleID stringByAppendingString:@"."];
  identifier = [(MIBundle *)self identifier];
  v10 = [identifier substringFromIndex:{objc_msgSend(v8, "length")}];

  v11 = [v10 containsString:@"."];
  if (v11)
  {
    bundleURL = [(MIBundle *)self bundleURL];
    path = [bundleURL path];
    identifier2 = [(MIBundle *)self identifier];
    v15 = _CreateAndLogError("[MIAppExtensionBundle validateHasNoDotInBundleIDSuffix:]", 221, @"MIInstallerErrorDomain", 89, 0, &unk_1F2888790, @"Appex bundle at %@ with identifier %@ contains a '.' in the portion after the parent app's prefix (prefix: %@  dot in: %@).'", v14, path);;

    if (suffix)
    {
      v16 = v15;
      *suffix = v15;
    }
  }

  else
  {
    v15 = 0;
  }

  return v11 ^ 1;
}

- (BOOL)validateBundleMetadataWithError:(id *)error
{
  parentBundleID = [(MIBundle *)self parentBundleID];
  validationOverrideParentBundleID = [(MIAppExtensionBundle *)self validationOverrideParentBundleID];
  v7 = validationOverrideParentBundleID;
  if (validationOverrideParentBundleID)
  {
    v8 = validationOverrideParentBundleID;

    parentBundleID = v8;
  }

  v33.receiver = self;
  v33.super_class = MIAppExtensionBundle;
  v34 = 0;
  v9 = [(MIBundle *)&v33 validateBundleMetadataWithError:&v34];
  v10 = v34;
  if (!v9)
  {
    v11 = 0;
    if (!error)
    {
LABEL_15:
      v22 = 0;
      goto LABEL_16;
    }

LABEL_11:
    v23 = v10;
    v22 = 0;
    *error = v10;
    goto LABEL_16;
  }

  v11 = [parentBundleID stringByAppendingString:@"."];
  identifier = [(MIBundle *)self identifier];
  if (([identifier hasPrefix:v11] & 1) == 0)
  {

    goto LABEL_13;
  }

  identifier2 = [(MIBundle *)self identifier];
  v14 = [identifier2 length];
  v15 = [v11 length];

  if (v14 <= v15)
  {
LABEL_13:
    bundleURL = [(MIBundle *)self bundleURL];
    path = [bundleURL path];
    identifier3 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIAppExtensionBundle validateBundleMetadataWithError:]", 276, @"MIInstallerErrorDomain", 37, 0, &unk_1F28887B8, @"Appex bundle at %@ with identifier %@ does not have expected identifier prefix %@", v27, path);
    goto LABEL_14;
  }

  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v17 = MIHasStringValueOfNonZeroLength(infoPlistSubset, *MEMORY[0x1E695E500], 0);

  if (!v17)
  {
    bundleURL = [(MIBundle *)self bundleURL];
    path = [bundleURL path];
    identifier3 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIAppExtensionBundle validateBundleMetadataWithError:]", 282, @"MIInstallerErrorDomain", 33, 0, &unk_1F28887E0, @"Appex bundle at %@ with ID %@ does not have a CFBundleVersion key with a non-zero length string value in its Info.plist", v30, path);
    goto LABEL_14;
  }

  infoPlistSubset2 = [(MIBundle *)self infoPlistSubset];
  v19 = MIHasStringValueOfNonZeroLength(infoPlistSubset2, *MEMORY[0x1E695E148], 1);

  if (!v19)
  {
    bundleURL = [(MIBundle *)self bundleURL];
    path = [bundleURL path];
    identifier3 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIAppExtensionBundle validateBundleMetadataWithError:]", 288, @"MIInstallerErrorDomain", 40, 0, &unk_1F2888808, @"Appex bundle at %@ with ID %@ has a CFBundleShortVersionString key with a non-string value in its Info.plist", v31, path);
    goto LABEL_14;
  }

  infoPlistSubset3 = [(MIBundle *)self infoPlistSubset];
  v21 = MIHasStringValueOfNonZeroLength(infoPlistSubset3, *MEMORY[0x1E695E4F8], 0);

  if (!v21)
  {
    bundleURL = [(MIBundle *)self bundleURL];
    path = [bundleURL path];
    identifier3 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIAppExtensionBundle validateBundleMetadataWithError:]", 294, @"MIInstallerErrorDomain", 52, 0, &unk_1F2888830, @"Appex bundle at %@ with ID %@ does not have a CFBundleName key with a non-zero length string value in its Info.plist", v32, path);
    v28 = LABEL_14:;

    v10 = v28;
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v22 = 1;
LABEL_16:

  return v22;
}

- (BOOL)validateHasCorrespondingEntitlements:(id)entitlements error:(id *)error
{
  entitlementsCopy = entitlements;
  parentBundleID = [(MIBundle *)self parentBundleID];
  extensionPoint = [(MIAppExtensionBundle *)self extensionPoint];
  if (MIHasBrowserEngineContentEntitlement(entitlementsCopy))
  {
    if (extensionPoint != 1)
    {
      relativePath = [(MIBundle *)self relativePath];
      extensionPointIdentifier = [(MIAppExtensionBundle *)self extensionPointIdentifier];
      v21 = relativePath;
      v12 = @"The app extension at %@ has the entitlement %@ which is not allowed for an extension targeting the extension point %@.";
      v13 = 324;
LABEL_21:
      v15 = 205;
      goto LABEL_22;
    }
  }

  else if (extensionPoint == 1)
  {
    relativePath = [(MIBundle *)self relativePath];
    extensionPointIdentifier = [(MIAppExtensionBundle *)self extensionPointIdentifier];
    v21 = relativePath;
    v12 = @"The app extension at %@ targets the extension point %@ but is missing the corresponding required %@ = TRUE (BOOLean) entitlement.";
    v13 = 329;
    goto LABEL_19;
  }

  if (MIHasBrowserEngineNetworkingEntitlement(entitlementsCopy))
  {
    if (extensionPoint != 3)
    {
      relativePath = [(MIBundle *)self relativePath];
      extensionPointIdentifier = [(MIAppExtensionBundle *)self extensionPointIdentifier];
      v21 = relativePath;
      v12 = @"The app extension at %@ has the entitlement %@ which is not allowed for an extension targeting the extension point %@.";
      v13 = 336;
      goto LABEL_21;
    }
  }

  else if (extensionPoint == 3)
  {
    relativePath = [(MIBundle *)self relativePath];
    extensionPointIdentifier = [(MIAppExtensionBundle *)self extensionPointIdentifier];
    v21 = relativePath;
    v12 = @"The app extension at %@ targets the extension point %@ but is missing the corresponding required %@ = TRUE (BOOLean) entitlement.";
    v13 = 341;
    goto LABEL_19;
  }

  if (!MIHasBrowserEngineRenderingEntitlement(entitlementsCopy))
  {
    if (extensionPoint != 2)
    {
      if (extensionPoint != 1)
      {
LABEL_30:
        v16 = 0;
        v18 = 1;
        goto LABEL_31;
      }

      v19 = MICopyMemoryTransferAcceptEntitlement(entitlementsCopy);
      relativePath = v19;
      if (v19 && parentBundleID && ![v19 isEqualToString:parentBundleID])
      {
        extensionPointIdentifier = [(MIBundle *)self relativePath];
        v21 = extensionPointIdentifier;
        v12 = @"The app extension at %@ specifies the entitlement %@ = %@ where the value does not match the parent app bundle's CFBundleIdentifier, %@. This entitlement, if set, must have a value that matches the bundle identifier of the parent app.";
        v13 = 364;
        goto LABEL_33;
      }

LABEL_29:

      goto LABEL_30;
    }

    relativePath = [(MIBundle *)self relativePath];
    extensionPointIdentifier = [(MIAppExtensionBundle *)self extensionPointIdentifier];
    v21 = relativePath;
    v12 = @"The app extension at %@ targets the extension point %@ but is missing the corresponding required %@ = TRUE (BOOLean) entitlement.";
    v13 = 353;
LABEL_19:
    v15 = 206;
    goto LABEL_22;
  }

  if (extensionPoint != 2)
  {
    relativePath = [(MIBundle *)self relativePath];
    extensionPointIdentifier = [(MIAppExtensionBundle *)self extensionPointIdentifier];
    v21 = relativePath;
    v12 = @"The app extension at %@ has the entitlement %@ which is not allowed for an extension targeting the extension point %@.";
    v13 = 348;
    goto LABEL_21;
  }

  v14 = MICopyMemoryTransferSendEntitlement(entitlementsCopy);
  relativePath = v14;
  if (!v14 || !parentBundleID || [v14 isEqualToString:parentBundleID])
  {
    goto LABEL_29;
  }

  extensionPointIdentifier = [(MIBundle *)self relativePath];
  v21 = extensionPointIdentifier;
  v12 = @"The app extension at %@ specifies the entitlement %@ = %@ where the value does not match the parent app bundle's CFBundleIdentifier, %@. This entitlement, if set, must have a value that matches the bundle identifier of the parent app.";
  v13 = 372;
LABEL_33:
  v15 = 207;
LABEL_22:
  v16 = _CreateAndLogError("[MIAppExtensionBundle validateHasCorrespondingEntitlements:error:]", v13, @"MIInstallerErrorDomain", v15, 0, 0, v12, v10, v21);

  if (error)
  {
    v17 = v16;
    v18 = 0;
    *error = v16;
  }

  else
  {
    v18 = 0;
  }

LABEL_31:

  return v18;
}

- (id)extensionCacheEntryWithError:(id *)error
{
  extensionPointIdentifier = [(MIAppExtensionBundle *)self extensionPointIdentifier];
  v6 = self->_extensionCacheEntry;
  if (v6)
  {
    v7 = v6;
    goto LABEL_11;
  }

  if (!extensionPointIdentifier)
  {
    identifier = [(MIBundle *)self identifier];
    v10 = _CreateAndLogError("[MIAppExtensionBundle extensionCacheEntryWithError:]", 398, @"MIInstallerErrorDomain", 45, 0, 0, @"Extension point identifier was not set for app extension with bundle ID %@.", v12, identifier);

LABEL_7:
    if (error)
    {
      v13 = v10;
      v9 = 0;
      *error = v10;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_10;
  }

  active_platform = dyld_get_active_platform();
  v15 = 0;
  v9 = MICopyExtensionCacheEntryWithPlatform(extensionPointIdentifier, active_platform, &v15);
  v10 = v15;
  if (!v9)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&self->_extensionCacheEntry, v9);
LABEL_10:
  v7 = v9;

LABEL_11:

  return v7;
}

@end