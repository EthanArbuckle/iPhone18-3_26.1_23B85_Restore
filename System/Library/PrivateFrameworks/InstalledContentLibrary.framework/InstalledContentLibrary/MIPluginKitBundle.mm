@interface MIPluginKitBundle
+ (id)bundlesInParentBundle:(id)a3 overrideParentBundleIDForValidation:(id)a4 subDirectory:(id)a5 matchingPredicate:(id)a6 error:(id *)a7;
- (BOOL)_validateNSExtensionWithOverlaidDictionary:(id)a3 error:(id *)a4;
- (BOOL)_validateXPCServiceWithOverlaidDictionary:(id)a3 error:(id *)a4;
- (BOOL)isFileProviderNonUIExtension;
- (BOOL)isMapsGeoServicesExtension;
- (BOOL)isMessagePayloadProviderExtension;
- (BOOL)isSiriIntentsExtension;
- (BOOL)isSiriIntentsUIExtension;
- (BOOL)isWatchKitExtension;
- (BOOL)mayContainFrameworks;
- (BOOL)validateBundleMetadataWithError:(id *)a3;
- (NSDictionary)extensionAttributes;
- (NSString)exExtensionPointIdentifier;
- (NSString)nsExtensionPointIdentifier;
- (id)_overlayDictionary:(id)a3 onDictionary:(id)a4;
- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)a3 withError:(id *)a4;
- (id)extensionPointIdentifier;
- (id)overlaidInfoPlistWithError:(id *)a3;
@end

@implementation MIPluginKitBundle

- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)a3 withError:(id *)a4
{
  v7 = [(MIBundle *)self parentBundle];
  if ([v7 isWatchApp])
  {
    v8 = [v7 currentOSVersionForValidationUsingPlatform:a3 withError:a4];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MIPluginKitBundle;
    v8 = [(MIBundle *)&v11 currentOSVersionForValidationUsingPlatform:a3 withError:a4];
  }

  v9 = v8;

  return v9;
}

+ (id)bundlesInParentBundle:(id)a3 overrideParentBundleIDForValidation:(id)a4 subDirectory:(id)a5 matchingPredicate:(id)a6 error:(id *)a7
{
  v26 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v24.receiver = a1;
  v24.super_class = &OBJC_METACLASS___MIPluginKitBundle;
  v13 = objc_msgSendSuper2(&v24, sel_bundlesInParentBundle_subDirectory_matchingPredicate_error_, a3, a5, a6, a7);
  v14 = v13;
  if (v12)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * i) setValidationOverrideParentBundleID:v12];
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v16);
    }
  }

  return v14;
}

- (NSString)nsExtensionPointIdentifier
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = MINSExtensionPointIdentifierFromInfoPlist(v2);

  return v3;
}

- (NSString)exExtensionPointIdentifier
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = MIEXExtensionPointIdentifierFromInfoPlist(v2);

  return v3;
}

- (id)extensionPointIdentifier
{
  extensionPointIdentifier = self->_extensionPointIdentifier;
  if (!extensionPointIdentifier)
  {
    v4 = [(MIBundle *)self infoPlistSubset];
    v5 = MIExtensionPointIdentifierFromInfoPlist(v4);
    v6 = self->_extensionPointIdentifier;
    self->_extensionPointIdentifier = v5;

    extensionPointIdentifier = self->_extensionPointIdentifier;
  }

  return extensionPointIdentifier;
}

- (NSDictionary)extensionAttributes
{
  extensionAttributes = self->_extensionAttributes;
  if (!extensionAttributes)
  {
    v4 = [(MIBundle *)self infoPlistSubset];
    v5 = MIExtensionAttributesFromInfoPlist(v4);
    v6 = self->_extensionAttributes;
    self->_extensionAttributes = v5;

    extensionAttributes = self->_extensionAttributes;
  }

  return extensionAttributes;
}

- (BOOL)isWatchKitExtension
{
  v2 = [(MIPluginKitBundle *)self extensionPointIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.watchkit"];

  return v3;
}

- (BOOL)isSiriIntentsExtension
{
  v2 = [(MIPluginKitBundle *)self extensionPointIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.intents-service"];

  return v3;
}

- (BOOL)isSiriIntentsUIExtension
{
  v2 = [(MIPluginKitBundle *)self extensionPointIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.intents-ui-service"];

  return v3;
}

- (BOOL)isMessagePayloadProviderExtension
{
  v2 = [(MIPluginKitBundle *)self extensionPointIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.message-payload-provider"];

  return v3;
}

- (BOOL)isFileProviderNonUIExtension
{
  v2 = [(MIPluginKitBundle *)self extensionPointIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.fileprovider-nonui"];

  return v3;
}

- (BOOL)isMapsGeoServicesExtension
{
  v2 = [(MIPluginKitBundle *)self extensionPointIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.geoservices.mapdata"];

  return v3;
}

- (BOOL)mayContainFrameworks
{
  v4.receiver = self;
  v4.super_class = MIPluginKitBundle;
  return [(MIBundle *)&v4 mayContainFrameworks]|| [(MIPluginKitBundle *)self isWatchKitExtension];
}

- (id)_overlayDictionary:(id)a3 onDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 mutableCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__MIPluginKitBundle__overlayDictionary_onDictionary___block_invoke;
  v13[3] = &unk_1E7AE1CC8;
  v14 = v6;
  v15 = v8;
  v16 = self;
  v9 = v8;
  v10 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];

  v11 = [v9 copy];

  return v11;
}

void __53__MIPluginKitBundle__overlayDictionary_onDictionary___block_invoke(id *a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  *a4 = 0;
  v8 = [a1[4] objectForKeyedSubscript:v10];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [a1[6] _overlayDictionary:v7 onDictionary:v8];
        [a1[5] setObject:v9 forKeyedSubscript:v10];
      }
    }
  }

  else
  {
    [a1[5] setObject:v7 forKeyedSubscript:v10];
  }
}

- (id)overlaidInfoPlistWithError:(id *)a3
{
  v5 = [(MIPluginKitBundle *)self overlaidInfoPlist];

  if (v5)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v8 = [(MIBundle *)self infoPlistSubset];
  v9 = [v8 objectForKeyedSubscript:@"NSExtension"];
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

  if (!v11)
  {
    v15 = [(MIBundle *)self bundleURL];
    v16 = [v15 path];
    v43 = [(MIBundle *)self identifier];
    v6 = _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 165, @"MIInstallerErrorDomain", 39, 0, &unk_1F2887E30, @"Appex bundle at %@ with id %@ does not define an NSExtension dictionary in its Info.plist", v17, v16);

LABEL_34:
    goto LABEL_35;
  }

  v12 = [v11 objectForKeyedSubscript:@"NSExtensionPointIdentifier"];
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

  if (!v14)
  {
    v21 = [(MIBundle *)self bundleURL];
    v22 = [v21 path];
    v23 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 172, @"MIInstallerErrorDomain", 45, 0, &unk_1F2887E58, @"Appex bundle at %@ with id %@ does not define a NSExtensionPointIdentifier key with a string value in the NSExtension dictionary in its Info.plist", v24, v22);
    v6 = LABEL_19:;

LABEL_33:
    goto LABEL_34;
  }

  if ((MIIsValidRDNSString(v13) & 1) == 0)
  {
    v21 = [(MIBundle *)self bundleURL];
    v22 = [v21 path];
    v23 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 178, @"MIInstallerErrorDomain", 46, 0, &unk_1F2887E80, @"Appex bundle at %@ with id %@ does not have a legal value for the NSExtensionPointIdentifier key in the NSExtension dictionary in its Info.plist; found: %@", v25, v22);
    goto LABEL_19;
  }

  v18 = [v8 objectForKeyedSubscript:@"EXAppExtensionAttributes"];
  objc_opt_class();
  v19 = v18;
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v26 = [v20 objectForKeyedSubscript:@"EXExtensionPointIdentifier"];
  v49 = v20;
  if (v26)
  {
    objc_opt_class();
    v27 = v26;
    if (objc_opt_isKindOfClass())
    {
      if (MIIsValidRDNSString(v27))
      {

        goto LABEL_25;
      }

      v33 = [(MIBundle *)self bundleURL];
      v34 = [v33 path];
      v45 = [(MIBundle *)self identifier];
      v6 = _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 190, @"MIInstallerErrorDomain", 46, 0, &unk_1F2887EA8, @"Appex bundle at %@ with id %@ does not have a legal value for the EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist found: %@", v39, v34);;

      v32 = v27;
    }

    else
    {

      v32 = [(MIBundle *)self bundleURL];
      v33 = [v32 path];
      v34 = [(MIBundle *)self identifier];
      v6 = _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 194, @"MIInstallerErrorDomain", 45, 0, &unk_1F2887ED0, @"Appex bundle at %@ with id %@ defines an EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist with a value that is not a string.", v35, v33);
    }

    goto LABEL_32;
  }

LABEL_25:
  v28 = [(MIPluginKitBundle *)self extensionPointIdentifier];
  if (!v28)
  {
    v36 = [(MIBundle *)self bundleURL];
    v37 = [v36 path];
    v44 = [(MIBundle *)self identifier];
    v6 = _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 203, @"MIInstallerErrorDomain", 45, 0, &unk_1F2887EF8, @"Appex bundle at %@ with id %@ does not define an extension point in its Info.plist", v38, v37);

LABEL_32:
    goto LABEL_33;
  }

  v29 = v28;
  v50 = 0;
  v30 = [(MIAppExtensionBundle *)self extensionCacheEntryWithError:&v50];
  v6 = v50;
  if (v30)
  {
    v31 = [(MIPluginKitBundle *)self _overlayDictionary:v30 onDictionary:v8];
    [(MIPluginKitBundle *)self setOverlaidInfoPlist:v31];
  }

  else
  {
    v31 = [(MIBundle *)self bundleURL];
    v48 = [v31 path];
    v46 = [(MIBundle *)self identifier];
    if (v26)
    {
      _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 211, @"MIInstallerErrorDomain", 59, v6, &unk_1F2887F20, @"Appex bundle at %@ with id %@ specifies a value (%@) for the EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist that does not correspond to a known extension point.", v42, v48);
    }

    else
    {
      _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 213, @"MIInstallerErrorDomain", 59, v6, &unk_1F2887F48, @"Appex bundle at %@ with id %@ specifies a value (%@) for the NSExtensionPointIdentifier key in the NSExtension dictionary in its Info.plist that does not correspond to a known extension point.", v42, v48);
    }
    v47 = ;

    v6 = v47;
  }

  if (v30)
  {
LABEL_3:
    v7 = [(MIPluginKitBundle *)self overlaidInfoPlist];
    if (!a3)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

LABEL_35:
  v7 = 0;
  if (!a3)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (!v7)
  {
    v40 = v6;
    *a3 = v6;
  }

LABEL_38:

  return v7;
}

- (BOOL)_validateXPCServiceWithOverlaidDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"XPCService"];
  if (!v7)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [(MIBundle *)self bundleURL];
    v14 = [v8 path];
    v15 = [(MIBundle *)self identifier];
    v12 = _CreateAndLogError("[MIPluginKitBundle _validateXPCServiceWithOverlaidDictionary:error:]", 238, @"MIInstallerErrorDomain", 38, 0, &unk_1F2887F70, @"Appex bundle at %@ with id %@ defines a value for the XPCService key in its Info.plist that is not a dictionary.", v16, v14);
LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  v8 = [v7 objectForKeyedSubscript:@"RunLoopType"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 length])
    {
      v14 = [(MIBundle *)self bundleURL];
      v15 = [v14 path];
      v18 = [(MIBundle *)self identifier];
      _CreateAndLogError("[MIPluginKitBundle _validateXPCServiceWithOverlaidDictionary:error:]", 248, @"MIInstallerErrorDomain", 50, 0, &unk_1F2887F98, @"Appex bundle at %@ with id %@ has an illegal value for the RunLoopType key in the XPCService dictionary in its Info.plist", v19, v15);
      v12 = LABEL_19:;

      goto LABEL_20;
    }
  }

  if ([v8 isEqualToString:@"_UIApplicationMain"])
  {
    v9 = [(MIBundle *)self infoPlistSubset];
    v10 = MIHasRequiredStringValueOfNonZeroLengthCF(v9, *MEMORY[0x1E695E120]);

    if (!v10)
    {
      v14 = [(MIBundle *)self bundleURL];
      v15 = [v14 path];
      v18 = [(MIBundle *)self identifier];
      _CreateAndLogError("[MIPluginKitBundle _validateXPCServiceWithOverlaidDictionary:error:]", 254, @"MIInstallerErrorDomain", 53, 0, &unk_1F2887FC0, @"Appex bundle at %@ with ID %@ does not have a CFBundleDisplayName key with a non-zero length string value in its Info.plist", v21, v15);
      goto LABEL_19;
    }
  }

  if (!MIHasStringValueOfNonZeroLengthIfDefined(v7, @"ServiceType"))
  {
    v14 = [(MIBundle *)self bundleURL];
    v15 = [v14 path];
    v18 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIPluginKitBundle _validateXPCServiceWithOverlaidDictionary:error:]", 260, @"MIInstallerErrorDomain", 51, 0, &unk_1F2887FE8, @"Appex bundle at %@ with id %@ has an illegal value for the ServiceType key in the XPCService dictionary in its Info.plist", v20, v15);
    goto LABEL_19;
  }

LABEL_10:
  v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E695E138]];
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v11 isEqualToString:@"XPC!"] & 1) != 0)
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_24;
  }

  v8 = [(MIBundle *)self bundleURL];
  v14 = [v8 path];
  v15 = [(MIBundle *)self identifier];
  v12 = _CreateAndLogError("[MIPluginKitBundle _validateXPCServiceWithOverlaidDictionary:error:]", 268, @"MIInstallerErrorDomain", 41, 0, &unk_1F2888010, @"Appex bundle at %@ with id %@ has an illegal value for the CFBundlePackageType key in its Info.plist: %@", v17, v14);
LABEL_21:

  if (a4)
  {
    v22 = v12;
    v13 = 0;
    *a4 = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_24:

  return v13;
}

- (BOOL)_validateNSExtensionWithOverlaidDictionary:(id)a3 error:(id *)a4
{
  v99 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(MIBundle *)self parentBundle];
  v7 = [v6 isWatchApp];

  if (v7)
  {
    v8 = @"7.0";
  }

  else
  {
    v8 = @"14.0";
  }

  v9 = [v5 objectForKeyedSubscript:@"NSExtension"];
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

  if (!v11)
  {
    v14 = [(MIBundle *)self bundleURL];
    v15 = [v14 path];
    v80 = [(MIBundle *)self identifier];
    v17 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 319, @"MIInstallerErrorDomain", 39, 0, &unk_1F2888038, @"Appex bundle at %@ with id %@ does not define an NSExtension dictionary in its Info.plist", v16, v15);

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_65;
  }

  v90 = v5;
  v12 = [v11 objectForKeyedSubscript:@"NSExtensionMainStoryboard"];
  objc_opt_class();
  v13 = v12;
  if (objc_opt_isKindOfClass())
  {
    v91 = v13;
  }

  else
  {
    v91 = 0;
  }

  v23 = [v11 objectForKeyedSubscript:@"NSExtensionPrincipalClass"];
  objc_opt_class();
  v24 = v23;
  if (objc_opt_isKindOfClass())
  {
    v19 = v24;
  }

  else
  {
    v19 = 0;
  }

  v97 = 0;
  v20 = [(MIAppExtensionBundle *)self extensionCacheEntryWithError:&v97];
  v17 = v97;
  if (!v20)
  {
    v21 = 0;
    v22 = 0;
    v18 = v91;
    goto LABEL_65;
  }

  v89 = v19;
  v25 = [v20 objectForKeyedSubscript:@"NSExtension"];
  objc_opt_class();
  v21 = v25;
  if (objc_opt_isKindOfClass())
  {
    v26 = v21;
  }

  else
  {
    v26 = 0;
  }

  if (!v26)
  {
    v34 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 333, @"MIInstallerErrorDomain", 154, 0, 0, @"Extension cache does not define an NSExtension dictionary in its Info.plist: %@", v27, v20);

    goto LABEL_30;
  }

  v28 = [v21 objectForKeyedSubscript:@"NSExtensionPrincipalClassProhibited"];
  v29 = MIBooleanValue(v28, 0);

  if (v29 && ![(MIBundle *)self isApplicableToOSVersionEarlierThan:v8])
  {
    if (v91 | v89)
    {
      v37 = [(MIBundle *)self bundleURL];
      v38 = [v37 path];
      v39 = [(MIBundle *)self identifier];
      v85 = [(MIPluginKitBundle *)self extensionPointIdentifier];
      v41 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 350, @"MIInstallerErrorDomain", 152, 0, &unk_1F2888088, @"Appex bundle at %@ with id %@ defines either an NSExtensionMainStoryboard or NSExtensionPrincipalClass key, which is not allowed for the extension point %@", v40, v38);

      v18 = v91;
      v19 = v89;

      v22 = 0;
      v17 = v41;
      goto LABEL_65;
    }

    goto LABEL_36;
  }

  if (v91 | v89 && (!v91 || [v91 length]) && (!v89 || objc_msgSend(v89, "length")))
  {
LABEL_36:
    if (!MIHasStringValueOfNonZeroLengthIfDefined(v11, @"NSExtensionContextClass"))
    {
      v30 = [(MIBundle *)self bundleURL];
      v31 = [v30 path];
      v32 = [(MIBundle *)self identifier];
      _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 357, @"MIInstallerErrorDomain", 43, 0, &unk_1F28880B0, @"Appex bundle at %@ with id %@ does not have a string value for the NSExtensionContextClass key in the NSExtension dictionary in its Info.plist", v52, v31);
      goto LABEL_64;
    }

    if (!MIHasStringValueOfNonZeroLengthIfDefined(v11, @"NSExtensionContextHostClass"))
    {
      v30 = [(MIBundle *)self bundleURL];
      v31 = [v30 path];
      v32 = [(MIBundle *)self identifier];
      _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 363, @"MIInstallerErrorDomain", 44, 0, &unk_1F28880D8, @"Appex bundle at %@ with id %@ does not have a string value for the NSExtensionContextHostClass key in the NSExtension dictionary in its Info.plist", v53, v31);
      goto LABEL_64;
    }

    if (MIHasStringValueOfNonZeroLengthIfDefined(v11, @"NSExtensionViewControllerHostClass"))
    {
      v22 = [v11 objectForKeyedSubscript:@"NSExtensionAttributes"];
      if (!v22)
      {
LABEL_61:
        v36 = 1;
        v5 = v90;
        v18 = v91;
        v19 = v89;
        goto LABEL_67;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = a4;
        if (MIHasStringValueOfNonZeroLengthIfDefined(v22, @"NSExtensionPointName"))
        {
          if (MIHasStringValueOfNonZeroLengthIfDefined(v22, @"NSExtensionPointVersion"))
          {
            if (![(MIPluginKitBundle *)self isSiriIntentsExtension]&& ![(MIPluginKitBundle *)self isSiriIntentsUIExtension])
            {
              goto LABEL_61;
            }

            v42 = [v22 objectForKeyedSubscript:@"IntentsSupported"];
            objc_opt_class();
            v43 = _MIValidateObject(v42);

            if (v43 && (objc_opt_class(), MIArrayContainsOnlyClass(v43)) && [v43 count])
            {
              v44 = [v22 objectForKeyedSubscript:@"IntentsRestrictedWhileLocked"];
              if (!v44)
              {
LABEL_60:

                goto LABEL_61;
              }

              v86 = v43;
              objc_opt_class();
              v87 = v44;
              v45 = _MIValidateObject(v44);
              if (v45)
              {
                v46 = v45;
                objc_opt_class();
                v47 = MIArrayContainsOnlyClass(v44);

                if (v47)
                {
                  v95 = 0u;
                  v96 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  obj = v87;
                  v48 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
                  if (v48)
                  {
                    v49 = v48;
                    v50 = *v94;
                    while (2)
                    {
                      for (i = 0; i != v49; ++i)
                      {
                        if (*v94 != v50)
                        {
                          objc_enumerationMutation(obj);
                        }

                        if (![v86 containsObject:*(*(&v93 + 1) + 8 * i)])
                        {
                          v75 = [(MIBundle *)self bundleURL];
                          v76 = [v75 path];
                          v84 = [(MIBundle *)self identifier];
                          v78 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 417, @"MIInstallerErrorDomain", 116, 0, &unk_1F28881F0, @"Siri Intents Appex bundle at %@ with id %@ specifies a value in the IntentsRestrictedWhileLocked key's array value in the ExtensionAttributes dictionary in the NSExtensionDictionary in its Info.plist that is not a listed in the the IntentsSupported key's array.", v79, v76);

                          v17 = v84;
                          goto LABEL_76;
                        }
                      }

                      v49 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
                      if (v49)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v43 = v86;
                  v44 = v87;
                  goto LABEL_60;
                }
              }

              obj = [(MIBundle *)self bundleURL];
              v75 = [obj path];
              v76 = [(MIBundle *)self identifier];
              v78 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 409, @"MIInstallerErrorDomain", 115, 0, &unk_1F28881C8, @"Siri Intents Appex bundle at %@ with id %@ defines an IntentsRestrictedWhileLocked key in the ExtensionAttributes dictionary in the NSExtensionDictionary in its Info.plist, but that key's value is not an array of strings.", v77, v75);
LABEL_76:

              v17 = v78;
            }

            else
            {
              [(MIBundle *)self bundleURL];
              v71 = v70 = v43;
              v72 = [v71 path];
              v83 = [(MIBundle *)self identifier];
              v74 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 400, @"MIInstallerErrorDomain", 114, 0, &unk_1F28881A0, @"Siri Intents Appex bundle at %@ with id %@ does not define an IntentsSupported key with an array value containing strings in the ExtensionAttributes dictionary in the NSExtensionDictionary in its Info.plist.", v73, v72);

              v17 = v74;
            }

            goto LABEL_31;
          }

          v64 = [(MIBundle *)self bundleURL];
          v65 = [v64 path];
          v66 = [(MIBundle *)self identifier];
          _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 391, @"MIInstallerErrorDomain", 49, 0, &unk_1F2888178, @"Appex bundle at %@ with id %@ does not define a NSExtensionPointVersion key with a string value in the NSExtensionAttributes dictionary in the NSExtension dictionary in its Info.plist", v68, v65);
        }

        else
        {
          v64 = [(MIBundle *)self bundleURL];
          v65 = [v64 path];
          v66 = [(MIBundle *)self identifier];
          _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 385, @"MIInstallerErrorDomain", 48, 0, &unk_1F2888150, @"Appex bundle at %@ with id %@ does not define a NSExtensionPointName key with a string value in the NSExtensionAttributes dictionary in the NSExtension dictionary in its Info.plist", v67, v65);
        }
        v69 = ;

        v17 = v69;
        v5 = v90;
LABEL_32:
        v18 = v91;
        v19 = v89;
        if (v35)
        {
LABEL_66:
          v55 = v17;
          v36 = 0;
          *v35 = v17;
          goto LABEL_67;
        }

        goto LABEL_33;
      }

      v60 = [(MIBundle *)self bundleURL];
      v61 = [v60 path];
      v82 = [(MIBundle *)self identifier];
      v63 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 378, @"MIInstallerErrorDomain", 47, 0, &unk_1F2888128, @"Appex bundle at %@ with id %@ does not define a NSExtensionAttributes key with a dictionary value in the NSExtension dictionary in its Info.plist", v62, v61);

      v17 = v63;
LABEL_31:
      v5 = v90;
      v35 = a4;
      goto LABEL_32;
    }

    v57 = [(MIBundle *)self bundleURL];
    v58 = [v57 path];
    v81 = [(MIBundle *)self identifier];
    v34 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 369, @"MIInstallerErrorDomain", 68, 0, &unk_1F2888100, @"Appex bundle at %@ with id %@ does not have a string value for the NSExtensionViewControllerHostClass key in the NSExtension dictionary in its Info.plist", v59, v58);

LABEL_30:
    v22 = 0;
    v17 = v34;
    goto LABEL_31;
  }

  v30 = [(MIBundle *)self bundleURL];
  v31 = [v30 path];
  v32 = [(MIBundle *)self identifier];
  _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 345, @"MIInstallerErrorDomain", 42, 0, &unk_1F2888060, @"Appex bundle at %@ with id %@ does not define either an NSExtensionMainStoryboard or NSExtensionPrincipalClass key with a string value in the NSExtension dictionary in its Info.plist", v33, v31);
  v54 = LABEL_64:;

  v19 = v89;
  v22 = 0;
  v17 = v54;
  v18 = v91;
LABEL_65:
  v35 = a4;
  if (a4)
  {
    goto LABEL_66;
  }

LABEL_33:
  v36 = 0;
LABEL_67:

  return v36;
}

- (BOOL)validateBundleMetadataWithError:(id *)a3
{
  v18 = 0;
  v5 = [(MIPluginKitBundle *)self overlaidInfoPlistWithError:&v18];
  v6 = v18;
  v7 = v6;
  if (v5)
  {
    v16.receiver = self;
    v16.super_class = MIPluginKitBundle;
    v17 = v6;
    v8 = [(MIAppExtensionBundle *)&v16 validateBundleMetadataWithError:&v17];
    v9 = v17;

    if (!v8)
    {
      v11 = 0;
LABEL_8:
      v7 = v9;
      if (!a3)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v15 = v9;
    v10 = [(MIPluginKitBundle *)self _validateXPCServiceWithOverlaidDictionary:v5 error:&v15];
    v7 = v15;

    if (v10)
    {
      v14 = v7;
      v11 = [(MIPluginKitBundle *)self _validateNSExtensionWithOverlaidDictionary:v5 error:&v14];
      v9 = v14;

      goto LABEL_8;
    }
  }

  v11 = 0;
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!v11)
  {
    v12 = v7;
    *a3 = v7;
  }

LABEL_11:

  return v11;
}

@end