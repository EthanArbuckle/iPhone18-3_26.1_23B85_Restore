@interface MIAppExtensionBundle
- (BOOL)targetsAppleExtensionPoint;
- (BOOL)validateBundleMetadataWithError:(id *)a3;
- (BOOL)validateHasCorrespondingEntitlements:(id)a3 error:(id *)a4;
- (BOOL)validateHasNoDotInBundleIDSuffix:(id *)a3;
- (id)dataContainerCreatingIfNeeded:(BOOL)a3 forPersona:(id)a4 makeLive:(BOOL)a5 created:(BOOL *)a6 error:(id *)a7;
- (id)dataContainerForPersona:(id)a3 error:(id *)a4;
- (id)extensionCacheEntryWithError:(id *)a3;
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
  v3 = [(MIBundle *)&v6 minimumOSVersion];
  if (!v3)
  {
    v4 = [(MIBundle *)self parentBundle];
    v3 = [v4 minimumOSVersion];
  }

  return v3;
}

- (BOOL)targetsAppleExtensionPoint
{
  v2 = [(MIAppExtensionBundle *)self extensionPointIdentifier];
  v3 = [v2 hasPrefix:@"com.apple."];

  return v3;
}

- (unint64_t)extensionPoint
{
  extensionPoint = self->_extensionPoint;
  if (!extensionPoint)
  {
    v4 = [(MIAppExtensionBundle *)self extensionPointIdentifier];
    if ([v4 isEqualToString:@"com.apple.web-browser-engine.content"])
    {
      extensionPoint = 1;
    }

    else if ([v4 isEqualToString:@"com.apple.web-browser-engine.networking"])
    {
      extensionPoint = 3;
    }

    else if ([v4 isEqualToString:@"com.apple.web-browser-engine.rendering"])
    {
      extensionPoint = 2;
    }

    else if ([v4 isEqualToString:@"com.apple.app-migration"])
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

- (id)dataContainerForPersona:(id)a3 error:(id *)a4
{
  v6.receiver = self;
  v6.super_class = MIAppExtensionBundle;
  v4 = [(MIExecutableBundle *)&v6 dataContainerForPersona:a3 error:a4];

  return v4;
}

- (id)dataContainerCreatingIfNeeded:(BOOL)a3 forPersona:(id)a4 makeLive:(BOOL)a5 created:(BOOL *)a6 error:(id *)a7
{
  v14 = 0;
  v13.receiver = self;
  v13.super_class = MIAppExtensionBundle;
  v9 = [(MIExecutableBundle *)&v13 dataContainerCreatingIfNeeded:a3 forPersona:a4 makeLive:a5 created:&v14 error:a7];
  v10 = v9;
  if (a6)
  {
    *a6 = v14;
  }

  if (v9 && v14)
  {
    v11 = [(MIBundle *)self parentBundleID];
    [v10 setParentBundleID:v11];
  }

  return v10;
}

- (BOOL)validateHasNoDotInBundleIDSuffix:(id *)a3
{
  v5 = [(MIBundle *)self parentBundleID];
  v6 = [(MIAppExtensionBundle *)self validationOverrideParentBundleID];

  if (v6)
  {
    v7 = [(MIAppExtensionBundle *)self validationOverrideParentBundleID];

    v5 = v7;
  }

  v8 = [v5 stringByAppendingString:@"."];
  v9 = [(MIBundle *)self identifier];
  v10 = [v9 substringFromIndex:{objc_msgSend(v8, "length")}];

  v11 = [v10 containsString:@"."];
  if (v11)
  {
    v12 = [(MIBundle *)self bundleURL];
    v13 = [v12 path];
    v18 = [(MIBundle *)self identifier];
    v15 = _CreateAndLogError("[MIAppExtensionBundle validateHasNoDotInBundleIDSuffix:]", 221, @"MIInstallerErrorDomain", 89, 0, &unk_1F2888790, @"Appex bundle at %@ with identifier %@ contains a '.' in the portion after the parent app's prefix (prefix: %@  dot in: %@).'", v14, v13);;

    if (a3)
    {
      v16 = v15;
      *a3 = v15;
    }
  }

  else
  {
    v15 = 0;
  }

  return v11 ^ 1;
}

- (BOOL)validateBundleMetadataWithError:(id *)a3
{
  v5 = [(MIBundle *)self parentBundleID];
  v6 = [(MIAppExtensionBundle *)self validationOverrideParentBundleID];
  v7 = v6;
  if (v6)
  {
    v8 = v6;

    v5 = v8;
  }

  v33.receiver = self;
  v33.super_class = MIAppExtensionBundle;
  v34 = 0;
  v9 = [(MIBundle *)&v33 validateBundleMetadataWithError:&v34];
  v10 = v34;
  if (!v9)
  {
    v11 = 0;
    if (!a3)
    {
LABEL_15:
      v22 = 0;
      goto LABEL_16;
    }

LABEL_11:
    v23 = v10;
    v22 = 0;
    *a3 = v10;
    goto LABEL_16;
  }

  v11 = [v5 stringByAppendingString:@"."];
  v12 = [(MIBundle *)self identifier];
  if (([v12 hasPrefix:v11] & 1) == 0)
  {

    goto LABEL_13;
  }

  v13 = [(MIBundle *)self identifier];
  v14 = [v13 length];
  v15 = [v11 length];

  if (v14 <= v15)
  {
LABEL_13:
    v24 = [(MIBundle *)self bundleURL];
    v25 = [v24 path];
    v26 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIAppExtensionBundle validateBundleMetadataWithError:]", 276, @"MIInstallerErrorDomain", 37, 0, &unk_1F28887B8, @"Appex bundle at %@ with identifier %@ does not have expected identifier prefix %@", v27, v25);
    goto LABEL_14;
  }

  v16 = [(MIBundle *)self infoPlistSubset];
  v17 = MIHasStringValueOfNonZeroLength(v16, *MEMORY[0x1E695E500], 0);

  if (!v17)
  {
    v24 = [(MIBundle *)self bundleURL];
    v25 = [v24 path];
    v26 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIAppExtensionBundle validateBundleMetadataWithError:]", 282, @"MIInstallerErrorDomain", 33, 0, &unk_1F28887E0, @"Appex bundle at %@ with ID %@ does not have a CFBundleVersion key with a non-zero length string value in its Info.plist", v30, v25);
    goto LABEL_14;
  }

  v18 = [(MIBundle *)self infoPlistSubset];
  v19 = MIHasStringValueOfNonZeroLength(v18, *MEMORY[0x1E695E148], 1);

  if (!v19)
  {
    v24 = [(MIBundle *)self bundleURL];
    v25 = [v24 path];
    v26 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIAppExtensionBundle validateBundleMetadataWithError:]", 288, @"MIInstallerErrorDomain", 40, 0, &unk_1F2888808, @"Appex bundle at %@ with ID %@ has a CFBundleShortVersionString key with a non-string value in its Info.plist", v31, v25);
    goto LABEL_14;
  }

  v20 = [(MIBundle *)self infoPlistSubset];
  v21 = MIHasStringValueOfNonZeroLength(v20, *MEMORY[0x1E695E4F8], 0);

  if (!v21)
  {
    v24 = [(MIBundle *)self bundleURL];
    v25 = [v24 path];
    v26 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIAppExtensionBundle validateBundleMetadataWithError:]", 294, @"MIInstallerErrorDomain", 52, 0, &unk_1F2888830, @"Appex bundle at %@ with ID %@ does not have a CFBundleName key with a non-zero length string value in its Info.plist", v32, v25);
    v28 = LABEL_14:;

    v10 = v28;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v22 = 1;
LABEL_16:

  return v22;
}

- (BOOL)validateHasCorrespondingEntitlements:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIBundle *)self parentBundleID];
  v8 = [(MIAppExtensionBundle *)self extensionPoint];
  if (MIHasBrowserEngineContentEntitlement(v6))
  {
    if (v8 != 1)
    {
      v9 = [(MIBundle *)self relativePath];
      v11 = [(MIAppExtensionBundle *)self extensionPointIdentifier];
      v21 = v9;
      v12 = @"The app extension at %@ has the entitlement %@ which is not allowed for an extension targeting the extension point %@.";
      v13 = 324;
LABEL_21:
      v15 = 205;
      goto LABEL_22;
    }
  }

  else if (v8 == 1)
  {
    v9 = [(MIBundle *)self relativePath];
    v11 = [(MIAppExtensionBundle *)self extensionPointIdentifier];
    v21 = v9;
    v12 = @"The app extension at %@ targets the extension point %@ but is missing the corresponding required %@ = TRUE (BOOLean) entitlement.";
    v13 = 329;
    goto LABEL_19;
  }

  if (MIHasBrowserEngineNetworkingEntitlement(v6))
  {
    if (v8 != 3)
    {
      v9 = [(MIBundle *)self relativePath];
      v11 = [(MIAppExtensionBundle *)self extensionPointIdentifier];
      v21 = v9;
      v12 = @"The app extension at %@ has the entitlement %@ which is not allowed for an extension targeting the extension point %@.";
      v13 = 336;
      goto LABEL_21;
    }
  }

  else if (v8 == 3)
  {
    v9 = [(MIBundle *)self relativePath];
    v11 = [(MIAppExtensionBundle *)self extensionPointIdentifier];
    v21 = v9;
    v12 = @"The app extension at %@ targets the extension point %@ but is missing the corresponding required %@ = TRUE (BOOLean) entitlement.";
    v13 = 341;
    goto LABEL_19;
  }

  if (!MIHasBrowserEngineRenderingEntitlement(v6))
  {
    if (v8 != 2)
    {
      if (v8 != 1)
      {
LABEL_30:
        v16 = 0;
        v18 = 1;
        goto LABEL_31;
      }

      v19 = MICopyMemoryTransferAcceptEntitlement(v6);
      v9 = v19;
      if (v19 && v7 && ![v19 isEqualToString:v7])
      {
        v11 = [(MIBundle *)self relativePath];
        v21 = v11;
        v12 = @"The app extension at %@ specifies the entitlement %@ = %@ where the value does not match the parent app bundle's CFBundleIdentifier, %@. This entitlement, if set, must have a value that matches the bundle identifier of the parent app.";
        v13 = 364;
        goto LABEL_33;
      }

LABEL_29:

      goto LABEL_30;
    }

    v9 = [(MIBundle *)self relativePath];
    v11 = [(MIAppExtensionBundle *)self extensionPointIdentifier];
    v21 = v9;
    v12 = @"The app extension at %@ targets the extension point %@ but is missing the corresponding required %@ = TRUE (BOOLean) entitlement.";
    v13 = 353;
LABEL_19:
    v15 = 206;
    goto LABEL_22;
  }

  if (v8 != 2)
  {
    v9 = [(MIBundle *)self relativePath];
    v11 = [(MIAppExtensionBundle *)self extensionPointIdentifier];
    v21 = v9;
    v12 = @"The app extension at %@ has the entitlement %@ which is not allowed for an extension targeting the extension point %@.";
    v13 = 348;
    goto LABEL_21;
  }

  v14 = MICopyMemoryTransferSendEntitlement(v6);
  v9 = v14;
  if (!v14 || !v7 || [v14 isEqualToString:v7])
  {
    goto LABEL_29;
  }

  v11 = [(MIBundle *)self relativePath];
  v21 = v11;
  v12 = @"The app extension at %@ specifies the entitlement %@ = %@ where the value does not match the parent app bundle's CFBundleIdentifier, %@. This entitlement, if set, must have a value that matches the bundle identifier of the parent app.";
  v13 = 372;
LABEL_33:
  v15 = 207;
LABEL_22:
  v16 = _CreateAndLogError("[MIAppExtensionBundle validateHasCorrespondingEntitlements:error:]", v13, @"MIInstallerErrorDomain", v15, 0, 0, v12, v10, v21);

  if (a4)
  {
    v17 = v16;
    v18 = 0;
    *a4 = v16;
  }

  else
  {
    v18 = 0;
  }

LABEL_31:

  return v18;
}

- (id)extensionCacheEntryWithError:(id *)a3
{
  v5 = [(MIAppExtensionBundle *)self extensionPointIdentifier];
  v6 = self->_extensionCacheEntry;
  if (v6)
  {
    v7 = v6;
    goto LABEL_11;
  }

  if (!v5)
  {
    v11 = [(MIBundle *)self identifier];
    v10 = _CreateAndLogError("[MIAppExtensionBundle extensionCacheEntryWithError:]", 398, @"MIInstallerErrorDomain", 45, 0, 0, @"Extension point identifier was not set for app extension with bundle ID %@.", v12, v11);

LABEL_7:
    if (a3)
    {
      v13 = v10;
      v9 = 0;
      *a3 = v10;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_10;
  }

  active_platform = dyld_get_active_platform();
  v15 = 0;
  v9 = MICopyExtensionCacheEntryWithPlatform(v5, active_platform, &v15);
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