@interface MIPluginKitBundle
+ (id)bundlesInParentBundle:(id)bundle overrideParentBundleIDForValidation:(id)validation subDirectory:(id)directory matchingPredicate:(id)predicate error:(id *)error;
- (BOOL)_validateNSExtensionWithOverlaidDictionary:(id)dictionary error:(id *)error;
- (BOOL)_validateXPCServiceWithOverlaidDictionary:(id)dictionary error:(id *)error;
- (BOOL)isFileProviderNonUIExtension;
- (BOOL)isMapsGeoServicesExtension;
- (BOOL)isMessagePayloadProviderExtension;
- (BOOL)isSiriIntentsExtension;
- (BOOL)isSiriIntentsUIExtension;
- (BOOL)isWatchKitExtension;
- (BOOL)mayContainFrameworks;
- (BOOL)validateBundleMetadataWithError:(id *)error;
- (NSDictionary)extensionAttributes;
- (NSString)exExtensionPointIdentifier;
- (NSString)nsExtensionPointIdentifier;
- (id)_overlayDictionary:(id)dictionary onDictionary:(id)onDictionary;
- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)platform withError:(id *)error;
- (id)extensionPointIdentifier;
- (id)overlaidInfoPlistWithError:(id *)error;
@end

@implementation MIPluginKitBundle

- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)platform withError:(id *)error
{
  parentBundle = [(MIBundle *)self parentBundle];
  if ([parentBundle isWatchApp])
  {
    v8 = [parentBundle currentOSVersionForValidationUsingPlatform:platform withError:error];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MIPluginKitBundle;
    v8 = [(MIBundle *)&v11 currentOSVersionForValidationUsingPlatform:platform withError:error];
  }

  v9 = v8;

  return v9;
}

+ (id)bundlesInParentBundle:(id)bundle overrideParentBundleIDForValidation:(id)validation subDirectory:(id)directory matchingPredicate:(id)predicate error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  validationCopy = validation;
  v24.receiver = self;
  v24.super_class = &OBJC_METACLASS___MIPluginKitBundle;
  v13 = objc_msgSendSuper2(&v24, sel_bundlesInParentBundle_subDirectory_matchingPredicate_error_, bundle, directory, predicate, error);
  v14 = v13;
  if (validationCopy)
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

          [*(*(&v20 + 1) + 8 * i) setValidationOverrideParentBundleID:validationCopy];
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
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v3 = MINSExtensionPointIdentifierFromInfoPlist(infoPlistSubset);

  return v3;
}

- (NSString)exExtensionPointIdentifier
{
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v3 = MIEXExtensionPointIdentifierFromInfoPlist(infoPlistSubset);

  return v3;
}

- (id)extensionPointIdentifier
{
  extensionPointIdentifier = self->_extensionPointIdentifier;
  if (!extensionPointIdentifier)
  {
    infoPlistSubset = [(MIBundle *)self infoPlistSubset];
    v5 = MIExtensionPointIdentifierFromInfoPlist(infoPlistSubset);
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
    infoPlistSubset = [(MIBundle *)self infoPlistSubset];
    v5 = MIExtensionAttributesFromInfoPlist(infoPlistSubset);
    v6 = self->_extensionAttributes;
    self->_extensionAttributes = v5;

    extensionAttributes = self->_extensionAttributes;
  }

  return extensionAttributes;
}

- (BOOL)isWatchKitExtension
{
  extensionPointIdentifier = [(MIPluginKitBundle *)self extensionPointIdentifier];
  v3 = [extensionPointIdentifier isEqualToString:@"com.apple.watchkit"];

  return v3;
}

- (BOOL)isSiriIntentsExtension
{
  extensionPointIdentifier = [(MIPluginKitBundle *)self extensionPointIdentifier];
  v3 = [extensionPointIdentifier isEqualToString:@"com.apple.intents-service"];

  return v3;
}

- (BOOL)isSiriIntentsUIExtension
{
  extensionPointIdentifier = [(MIPluginKitBundle *)self extensionPointIdentifier];
  v3 = [extensionPointIdentifier isEqualToString:@"com.apple.intents-ui-service"];

  return v3;
}

- (BOOL)isMessagePayloadProviderExtension
{
  extensionPointIdentifier = [(MIPluginKitBundle *)self extensionPointIdentifier];
  v3 = [extensionPointIdentifier isEqualToString:@"com.apple.message-payload-provider"];

  return v3;
}

- (BOOL)isFileProviderNonUIExtension
{
  extensionPointIdentifier = [(MIPluginKitBundle *)self extensionPointIdentifier];
  v3 = [extensionPointIdentifier isEqualToString:@"com.apple.fileprovider-nonui"];

  return v3;
}

- (BOOL)isMapsGeoServicesExtension
{
  extensionPointIdentifier = [(MIPluginKitBundle *)self extensionPointIdentifier];
  v3 = [extensionPointIdentifier isEqualToString:@"com.apple.geoservices.mapdata"];

  return v3;
}

- (BOOL)mayContainFrameworks
{
  v4.receiver = self;
  v4.super_class = MIPluginKitBundle;
  return [(MIBundle *)&v4 mayContainFrameworks]|| [(MIPluginKitBundle *)self isWatchKitExtension];
}

- (id)_overlayDictionary:(id)dictionary onDictionary:(id)onDictionary
{
  onDictionaryCopy = onDictionary;
  dictionaryCopy = dictionary;
  v8 = [onDictionaryCopy mutableCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__MIPluginKitBundle__overlayDictionary_onDictionary___block_invoke;
  v13[3] = &unk_1E7AE1CC8;
  v14 = onDictionaryCopy;
  v15 = v8;
  selfCopy = self;
  v9 = v8;
  v10 = onDictionaryCopy;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v13];

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

- (id)overlaidInfoPlistWithError:(id *)error
{
  overlaidInfoPlist = [(MIPluginKitBundle *)self overlaidInfoPlist];

  if (overlaidInfoPlist)
  {
    v6 = 0;
    goto LABEL_3;
  }

  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v9 = [infoPlistSubset objectForKeyedSubscript:@"NSExtension"];
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
    bundleURL = [(MIBundle *)self bundleURL];
    path = [bundleURL path];
    identifier = [(MIBundle *)self identifier];
    v6 = _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 165, @"MIInstallerErrorDomain", 39, 0, &unk_1F2887E30, @"Appex bundle at %@ with id %@ does not define an NSExtension dictionary in its Info.plist", v17, path);

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
    bundleURL2 = [(MIBundle *)self bundleURL];
    path2 = [bundleURL2 path];
    identifier2 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 172, @"MIInstallerErrorDomain", 45, 0, &unk_1F2887E58, @"Appex bundle at %@ with id %@ does not define a NSExtensionPointIdentifier key with a string value in the NSExtension dictionary in its Info.plist", v24, path2);
    v6 = LABEL_19:;

LABEL_33:
    goto LABEL_34;
  }

  if ((MIIsValidRDNSString(v13) & 1) == 0)
  {
    bundleURL2 = [(MIBundle *)self bundleURL];
    path2 = [bundleURL2 path];
    identifier2 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 178, @"MIInstallerErrorDomain", 46, 0, &unk_1F2887E80, @"Appex bundle at %@ with id %@ does not have a legal value for the NSExtensionPointIdentifier key in the NSExtension dictionary in its Info.plist; found: %@", v25, path2);
    goto LABEL_19;
  }

  v18 = [infoPlistSubset objectForKeyedSubscript:@"EXAppExtensionAttributes"];
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

      bundleURL3 = [(MIBundle *)self bundleURL];
      path3 = [bundleURL3 path];
      identifier3 = [(MIBundle *)self identifier];
      v6 = _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 190, @"MIInstallerErrorDomain", 46, 0, &unk_1F2887EA8, @"Appex bundle at %@ with id %@ does not have a legal value for the EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist found: %@", v39, path3);;

      bundleURL4 = v27;
    }

    else
    {

      bundleURL4 = [(MIBundle *)self bundleURL];
      bundleURL3 = [bundleURL4 path];
      path3 = [(MIBundle *)self identifier];
      v6 = _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 194, @"MIInstallerErrorDomain", 45, 0, &unk_1F2887ED0, @"Appex bundle at %@ with id %@ defines an EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist with a value that is not a string.", v35, bundleURL3);
    }

    goto LABEL_32;
  }

LABEL_25:
  extensionPointIdentifier = [(MIPluginKitBundle *)self extensionPointIdentifier];
  if (!extensionPointIdentifier)
  {
    bundleURL5 = [(MIBundle *)self bundleURL];
    path4 = [bundleURL5 path];
    identifier4 = [(MIBundle *)self identifier];
    v6 = _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 203, @"MIInstallerErrorDomain", 45, 0, &unk_1F2887EF8, @"Appex bundle at %@ with id %@ does not define an extension point in its Info.plist", v38, path4);

LABEL_32:
    goto LABEL_33;
  }

  v29 = extensionPointIdentifier;
  v50 = 0;
  v30 = [(MIAppExtensionBundle *)self extensionCacheEntryWithError:&v50];
  v6 = v50;
  if (v30)
  {
    bundleURL6 = [(MIPluginKitBundle *)self _overlayDictionary:v30 onDictionary:infoPlistSubset];
    [(MIPluginKitBundle *)self setOverlaidInfoPlist:bundleURL6];
  }

  else
  {
    bundleURL6 = [(MIBundle *)self bundleURL];
    path5 = [bundleURL6 path];
    identifier5 = [(MIBundle *)self identifier];
    if (v26)
    {
      _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 211, @"MIInstallerErrorDomain", 59, v6, &unk_1F2887F20, @"Appex bundle at %@ with id %@ specifies a value (%@) for the EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist that does not correspond to a known extension point.", v42, path5);
    }

    else
    {
      _CreateAndLogError("[MIPluginKitBundle overlaidInfoPlistWithError:]", 213, @"MIInstallerErrorDomain", 59, v6, &unk_1F2887F48, @"Appex bundle at %@ with id %@ specifies a value (%@) for the NSExtensionPointIdentifier key in the NSExtension dictionary in its Info.plist that does not correspond to a known extension point.", v42, path5);
    }
    v47 = ;

    v6 = v47;
  }

  if (v30)
  {
LABEL_3:
    overlaidInfoPlist2 = [(MIPluginKitBundle *)self overlaidInfoPlist];
    if (!error)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

LABEL_35:
  overlaidInfoPlist2 = 0;
  if (!error)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (!overlaidInfoPlist2)
  {
    v40 = v6;
    *error = v6;
  }

LABEL_38:

  return overlaidInfoPlist2;
}

- (BOOL)_validateXPCServiceWithOverlaidDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"XPCService"];
  if (!v7)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    bundleURL = [(MIBundle *)self bundleURL];
    path = [bundleURL path];
    identifier = [(MIBundle *)self identifier];
    v12 = _CreateAndLogError("[MIPluginKitBundle _validateXPCServiceWithOverlaidDictionary:error:]", 238, @"MIInstallerErrorDomain", 38, 0, &unk_1F2887F70, @"Appex bundle at %@ with id %@ defines a value for the XPCService key in its Info.plist that is not a dictionary.", v16, path);
LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  bundleURL = [v7 objectForKeyedSubscript:@"RunLoopType"];
  if (bundleURL)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![bundleURL length])
    {
      path = [(MIBundle *)self bundleURL];
      identifier = [path path];
      identifier2 = [(MIBundle *)self identifier];
      _CreateAndLogError("[MIPluginKitBundle _validateXPCServiceWithOverlaidDictionary:error:]", 248, @"MIInstallerErrorDomain", 50, 0, &unk_1F2887F98, @"Appex bundle at %@ with id %@ has an illegal value for the RunLoopType key in the XPCService dictionary in its Info.plist", v19, identifier);
      v12 = LABEL_19:;

      goto LABEL_20;
    }
  }

  if ([bundleURL isEqualToString:@"_UIApplicationMain"])
  {
    infoPlistSubset = [(MIBundle *)self infoPlistSubset];
    v10 = MIHasRequiredStringValueOfNonZeroLengthCF(infoPlistSubset, *MEMORY[0x1E695E120]);

    if (!v10)
    {
      path = [(MIBundle *)self bundleURL];
      identifier = [path path];
      identifier2 = [(MIBundle *)self identifier];
      _CreateAndLogError("[MIPluginKitBundle _validateXPCServiceWithOverlaidDictionary:error:]", 254, @"MIInstallerErrorDomain", 53, 0, &unk_1F2887FC0, @"Appex bundle at %@ with ID %@ does not have a CFBundleDisplayName key with a non-zero length string value in its Info.plist", v21, identifier);
      goto LABEL_19;
    }
  }

  if (!MIHasStringValueOfNonZeroLengthIfDefined(v7, @"ServiceType"))
  {
    path = [(MIBundle *)self bundleURL];
    identifier = [path path];
    identifier2 = [(MIBundle *)self identifier];
    _CreateAndLogError("[MIPluginKitBundle _validateXPCServiceWithOverlaidDictionary:error:]", 260, @"MIInstallerErrorDomain", 51, 0, &unk_1F2887FE8, @"Appex bundle at %@ with id %@ has an illegal value for the ServiceType key in the XPCService dictionary in its Info.plist", v20, identifier);
    goto LABEL_19;
  }

LABEL_10:
  v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E695E138]];
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v11 isEqualToString:@"XPC!"] & 1) != 0)
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_24;
  }

  bundleURL = [(MIBundle *)self bundleURL];
  path = [bundleURL path];
  identifier = [(MIBundle *)self identifier];
  v12 = _CreateAndLogError("[MIPluginKitBundle _validateXPCServiceWithOverlaidDictionary:error:]", 268, @"MIInstallerErrorDomain", 41, 0, &unk_1F2888010, @"Appex bundle at %@ with id %@ has an illegal value for the CFBundlePackageType key in its Info.plist: %@", v17, path);
LABEL_21:

  if (error)
  {
    v22 = v12;
    v13 = 0;
    *error = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_24:

  return v13;
}

- (BOOL)_validateNSExtensionWithOverlaidDictionary:(id)dictionary error:(id *)error
{
  v99 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  parentBundle = [(MIBundle *)self parentBundle];
  isWatchApp = [parentBundle isWatchApp];

  if (isWatchApp)
  {
    v8 = @"7.0";
  }

  else
  {
    v8 = @"14.0";
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"NSExtension"];
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
    bundleURL = [(MIBundle *)self bundleURL];
    path = [bundleURL path];
    identifier = [(MIBundle *)self identifier];
    v17 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 319, @"MIInstallerErrorDomain", 39, 0, &unk_1F2888038, @"Appex bundle at %@ with id %@ does not define an NSExtension dictionary in its Info.plist", v16, path);

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_65;
  }

  v90 = dictionaryCopy;
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
      bundleURL2 = [(MIBundle *)self bundleURL];
      path2 = [bundleURL2 path];
      identifier2 = [(MIBundle *)self identifier];
      extensionPointIdentifier = [(MIPluginKitBundle *)self extensionPointIdentifier];
      v41 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 350, @"MIInstallerErrorDomain", 152, 0, &unk_1F2888088, @"Appex bundle at %@ with id %@ defines either an NSExtensionMainStoryboard or NSExtensionPrincipalClass key, which is not allowed for the extension point %@", v40, path2);

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
      bundleURL3 = [(MIBundle *)self bundleURL];
      path3 = [bundleURL3 path];
      identifier3 = [(MIBundle *)self identifier];
      _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 357, @"MIInstallerErrorDomain", 43, 0, &unk_1F28880B0, @"Appex bundle at %@ with id %@ does not have a string value for the NSExtensionContextClass key in the NSExtension dictionary in its Info.plist", v52, path3);
      goto LABEL_64;
    }

    if (!MIHasStringValueOfNonZeroLengthIfDefined(v11, @"NSExtensionContextHostClass"))
    {
      bundleURL3 = [(MIBundle *)self bundleURL];
      path3 = [bundleURL3 path];
      identifier3 = [(MIBundle *)self identifier];
      _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 363, @"MIInstallerErrorDomain", 44, 0, &unk_1F28880D8, @"Appex bundle at %@ with id %@ does not have a string value for the NSExtensionContextHostClass key in the NSExtension dictionary in its Info.plist", v53, path3);
      goto LABEL_64;
    }

    if (MIHasStringValueOfNonZeroLengthIfDefined(v11, @"NSExtensionViewControllerHostClass"))
    {
      v22 = [v11 objectForKeyedSubscript:@"NSExtensionAttributes"];
      if (!v22)
      {
LABEL_61:
        v36 = 1;
        dictionaryCopy = v90;
        v18 = v91;
        v19 = v89;
        goto LABEL_67;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy3 = error;
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
                          bundleURL4 = [(MIBundle *)self bundleURL];
                          path4 = [bundleURL4 path];
                          identifier4 = [(MIBundle *)self identifier];
                          v78 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 417, @"MIInstallerErrorDomain", 116, 0, &unk_1F28881F0, @"Siri Intents Appex bundle at %@ with id %@ specifies a value in the IntentsRestrictedWhileLocked key's array value in the ExtensionAttributes dictionary in the NSExtensionDictionary in its Info.plist that is not a listed in the the IntentsSupported key's array.", v79, path4);

                          v17 = identifier4;
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
              bundleURL4 = [obj path];
              path4 = [(MIBundle *)self identifier];
              v78 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 409, @"MIInstallerErrorDomain", 115, 0, &unk_1F28881C8, @"Siri Intents Appex bundle at %@ with id %@ defines an IntentsRestrictedWhileLocked key in the ExtensionAttributes dictionary in the NSExtensionDictionary in its Info.plist, but that key's value is not an array of strings.", v77, bundleURL4);
LABEL_76:

              v17 = v78;
            }

            else
            {
              [(MIBundle *)self bundleURL];
              v71 = v70 = v43;
              path5 = [v71 path];
              identifier5 = [(MIBundle *)self identifier];
              v74 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 400, @"MIInstallerErrorDomain", 114, 0, &unk_1F28881A0, @"Siri Intents Appex bundle at %@ with id %@ does not define an IntentsSupported key with an array value containing strings in the ExtensionAttributes dictionary in the NSExtensionDictionary in its Info.plist.", v73, path5);

              v17 = v74;
            }

            goto LABEL_31;
          }

          bundleURL5 = [(MIBundle *)self bundleURL];
          path6 = [bundleURL5 path];
          identifier6 = [(MIBundle *)self identifier];
          _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 391, @"MIInstallerErrorDomain", 49, 0, &unk_1F2888178, @"Appex bundle at %@ with id %@ does not define a NSExtensionPointVersion key with a string value in the NSExtensionAttributes dictionary in the NSExtension dictionary in its Info.plist", v68, path6);
        }

        else
        {
          bundleURL5 = [(MIBundle *)self bundleURL];
          path6 = [bundleURL5 path];
          identifier6 = [(MIBundle *)self identifier];
          _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 385, @"MIInstallerErrorDomain", 48, 0, &unk_1F2888150, @"Appex bundle at %@ with id %@ does not define a NSExtensionPointName key with a string value in the NSExtensionAttributes dictionary in the NSExtension dictionary in its Info.plist", v67, path6);
        }
        v69 = ;

        v17 = v69;
        dictionaryCopy = v90;
LABEL_32:
        v18 = v91;
        v19 = v89;
        if (errorCopy3)
        {
LABEL_66:
          v55 = v17;
          v36 = 0;
          *errorCopy3 = v17;
          goto LABEL_67;
        }

        goto LABEL_33;
      }

      bundleURL6 = [(MIBundle *)self bundleURL];
      path7 = [bundleURL6 path];
      identifier7 = [(MIBundle *)self identifier];
      v63 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 378, @"MIInstallerErrorDomain", 47, 0, &unk_1F2888128, @"Appex bundle at %@ with id %@ does not define a NSExtensionAttributes key with a dictionary value in the NSExtension dictionary in its Info.plist", v62, path7);

      v17 = v63;
LABEL_31:
      dictionaryCopy = v90;
      errorCopy3 = error;
      goto LABEL_32;
    }

    bundleURL7 = [(MIBundle *)self bundleURL];
    path8 = [bundleURL7 path];
    identifier8 = [(MIBundle *)self identifier];
    v34 = _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 369, @"MIInstallerErrorDomain", 68, 0, &unk_1F2888100, @"Appex bundle at %@ with id %@ does not have a string value for the NSExtensionViewControllerHostClass key in the NSExtension dictionary in its Info.plist", v59, path8);

LABEL_30:
    v22 = 0;
    v17 = v34;
    goto LABEL_31;
  }

  bundleURL3 = [(MIBundle *)self bundleURL];
  path3 = [bundleURL3 path];
  identifier3 = [(MIBundle *)self identifier];
  _CreateAndLogError("[MIPluginKitBundle _validateNSExtensionWithOverlaidDictionary:error:]", 345, @"MIInstallerErrorDomain", 42, 0, &unk_1F2888060, @"Appex bundle at %@ with id %@ does not define either an NSExtensionMainStoryboard or NSExtensionPrincipalClass key with a string value in the NSExtension dictionary in its Info.plist", v33, path3);
  v54 = LABEL_64:;

  v19 = v89;
  v22 = 0;
  v17 = v54;
  v18 = v91;
LABEL_65:
  errorCopy3 = error;
  if (error)
  {
    goto LABEL_66;
  }

LABEL_33:
  v36 = 0;
LABEL_67:

  return v36;
}

- (BOOL)validateBundleMetadataWithError:(id *)error
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
      if (!error)
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
  if (!error)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!v11)
  {
    v12 = v7;
    *error = v7;
  }

LABEL_11:

  return v11;
}

@end