@interface MIExtensionKitBundle
+ (id)bundlesInParentBundle:(id)bundle subDirectory:(id)directory matchingPredicate:(id)predicate error:(id *)error;
- (BOOL)_validateDelegateClassWithError:(id *)error;
- (BOOL)_validatePresenceOfSwiftEntrySectionInFile:(int)file shouldHaveSwiftEntry:(BOOL)entry withError:(id *)error;
- (BOOL)getMayTargetThirdPartyExtensionPoint:(BOOL *)point withError:(id *)error;
- (BOOL)validateBundleMetadataWithError:(id *)error;
- (NSDictionary)extensionAttributes;
- (id)extensionPointIdentifier;
@end

@implementation MIExtensionKitBundle

+ (id)bundlesInParentBundle:(id)bundle subDirectory:(id)directory matchingPredicate:(id)predicate error:(id *)error
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___MIExtensionKitBundle;
  v6 = objc_msgSendSuper2(&v8, sel_bundlesInParentBundle_subDirectory_matchingPredicate_error_, bundle, directory, predicate, error);

  return v6;
}

- (id)extensionPointIdentifier
{
  extensionPointIdentifier = self->_extensionPointIdentifier;
  if (!extensionPointIdentifier)
  {
    extensionAttributes = [(MIExtensionKitBundle *)self extensionAttributes];
    v5 = extensionAttributes;
    if (extensionAttributes)
    {
      v6 = [extensionAttributes objectForKeyedSubscript:@"EXExtensionPointIdentifier"];
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

      v9 = self->_extensionPointIdentifier;
      self->_extensionPointIdentifier = v8;
    }

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
    v5 = [infoPlistSubset objectForKeyedSubscript:@"EXAppExtensionAttributes"];
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

    v8 = self->_extensionAttributes;
    self->_extensionAttributes = v7;

    extensionAttributes = self->_extensionAttributes;
  }

  return extensionAttributes;
}

- (BOOL)getMayTargetThirdPartyExtensionPoint:(BOOL *)point withError:(id *)error
{
  error = [(MIBundle *)self isApplicableToOSVersionEarlierThan:@"17.0", error];
  if (point)
  {
    *point = !error;
  }

  return 1;
}

- (BOOL)_validatePresenceOfSwiftEntrySectionInFile:(int)file shouldHaveSwiftEntry:(BOOL)entry withError:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  executableURL = [(MIExecutableBundle *)self executableURL];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98__MIExtensionKitBundle__validatePresenceOfSwiftEntrySectionInFile_shouldHaveSwiftEntry_withError___block_invoke;
  v19[3] = &unk_1E7AE1D18;
  v19[4] = &v21;
  entryCopy = entry;
  v10 = MEMORY[0x1B2733890](v19);
  if (parse_macho_iterate_slices_fd(file, [executableURL fileSystemRepresentation], v10))
  {
    v11 = *(v22 + 24);
    if (v11)
    {
      v12 = 0;
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else
    {
      relativeExecutablePath = [(MIExecutableBundle *)self relativeExecutablePath];
      v12 = _CreateAndLogError("[MIExtensionKitBundle _validatePresenceOfSwiftEntrySectionInFile:shouldHaveSwiftEntry:withError:]", 137, @"MIInstallerErrorDomain", 73, 0, &unk_1F2888240, @"Expected executable at %@ %@to have a __swift5_entry section", v16, relativeExecutablePath);

      v11 = *(v22 + 24);
      if (!error)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    path = [executableURL path];
    v12 = _CreateAndLogError("[MIExtensionKitBundle _validatePresenceOfSwiftEntrySectionInFile:shouldHaveSwiftEntry:withError:]", 131, @"MIInstallerErrorDomain", 73, 0, &unk_1F2888218, @"Could not iterate slices in macho %@", v14, path);

    v11 = 0;
    *(v22 + 24) = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if ((v11 & 1) == 0)
  {
    v17 = v12;
    *error = v12;
    v11 = *(v22 + 24);
  }

LABEL_10:

  _Block_object_dispose(&v21, 8);
  return v11 & 1;
}

uint64_t __98__MIExtensionKitBundle__validatePresenceOfSwiftEntrySectionInFile_shouldHaveSwiftEntry_withError___block_invoke(uint64_t a1, int a2, mach_header_64 *mhp)
{
  size = 0;
  v4 = getsectiondata(mhp, "__TEXT", "__swift5_entry", &size);
  *(*(*(a1 + 32) + 8) + 24) = *(a1 + 40) == ((v4 | size) != 0);
  return *(*(*(a1 + 32) + 8) + 24);
}

- (BOOL)_validateDelegateClassWithError:(id *)error
{
  extensionAttributes = [(MIExtensionKitBundle *)self extensionAttributes];
  v6 = [extensionAttributes objectForKeyedSubscript:@"EXPrincipalClass"];

  if (v6)
  {
    objc_opt_class();
    bundleURL2 = v6;
    if (objc_opt_isKindOfClass())
    {
      if ([bundleURL2 length])
      {

        goto LABEL_5;
      }

      bundleURL = [(MIBundle *)self bundleURL];
      path = [bundleURL path];
      identifier = [(MIBundle *)self identifier];
      v8 = _CreateAndLogError("[MIExtensionKitBundle _validateDelegateClassWithError:]", 166, @"MIInstallerErrorDomain", 185, 0, &unk_1F2888268, @"Appex bundle at %@ with id %@ defines an EXPrincipalClass key in the EXAppExtensionAttributes dictionary in its Info.plist with a zero length string.", v19, path);
    }

    else
    {

      bundleURL2 = [(MIBundle *)self bundleURL];
      bundleURL = [bundleURL2 path];
      path = [(MIBundle *)self identifier];
      v8 = _CreateAndLogError("[MIExtensionKitBundle _validateDelegateClassWithError:]", 170, @"MIInstallerErrorDomain", 183, 0, &unk_1F2888290, @"Appex bundle at %@ with id %@ defines an EXPrincipalClass key in the EXAppExtensionAttributes dictionary in its Info.plist with a value that is not a string.", v13, bundleURL);
    }

    v10 = 0;
    goto LABEL_21;
  }

LABEL_5:
  if ([(MIBundle *)self isPlaceholder])
  {
    v8 = 0;
    LODWORD(v9) = -1;
    goto LABEL_7;
  }

  executableURL = [(MIExecutableBundle *)self executableURL];
  if ([(MIExecutableBundle *)self hasExecutable])
  {
    v9 = open([executableURL fileSystemRepresentation], 256);
    if ((v9 & 0x80000000) == 0)
    {
      v28 = 0;
      v15 = [(MIExtensionKitBundle *)self _validatePresenceOfSwiftEntrySectionInFile:v9 shouldHaveSwiftEntry:v6 == 0 withError:&v28];
      v8 = v28;
      if (v15)
      {

LABEL_7:
        v10 = v8 == 0;
        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v20 = *__error();
    v21 = *MEMORY[0x1E696A798];
    fileSystemRepresentation = [executableURL fileSystemRepresentation];
    strerror(v20);
    relativePath = _CreateError("[MIExtensionKitBundle _validateDelegateClassWithError:]", 187, v21, v20, 0, 0, @"Failed to open %s: %s", v23, fileSystemRepresentation);
    path2 = [executableURL path];
    v8 = _CreateAndLogError("[MIExtensionKitBundle _validateDelegateClassWithError:]", 187, @"MIInstallerErrorDomain", 73, relativePath, &unk_1F28882B8, @"Failed to open executable %@ to validate sections.", v24, path2);
  }

  else
  {
    relativePath = [(MIBundle *)self relativePath];
    path2 = [(MIExecutableBundle *)self relativeExecutablePath];
    v8 = _CreateAndLogError("[MIExtensionKitBundle _validateDelegateClassWithError:]", 180, @"MIInstallerErrorDomain", 71, 0, 0, @"The appex bundle at %@ does not have a bundle executable at %@. App extensions must have an executable.", v18, relativePath);
    LODWORD(v9) = -1;
  }

LABEL_19:
  v10 = 0;
  if ((v9 & 0x80000000) == 0)
  {
LABEL_20:
    close(v9);
  }

LABEL_21:
  if (error && !v10)
  {
    v25 = v8;
    *error = v8;
  }

  return v10;
}

- (BOOL)validateBundleMetadataWithError:(id *)error
{
  extensionAttributes = [(MIExtensionKitBundle *)self extensionAttributes];
  extensionPointIdentifier = [(MIExtensionKitBundle *)self extensionPointIdentifier];
  targetsAppleExtensionPoint = [(MIAppExtensionBundle *)self targetsAppleExtensionPoint];
  v52.receiver = self;
  v52.super_class = MIExtensionKitBundle;
  v53 = 0;
  v8 = [(MIAppExtensionBundle *)&v52 validateBundleMetadataWithError:&v53];
  v9 = v53;
  v10 = v9;
  if (!v8)
  {
    goto LABEL_11;
  }

  v51 = v9;
  v11 = [(MIAppExtensionBundle *)self validateHasNoDotInBundleIDSuffix:&v51];
  v12 = v51;

  if (!v11)
  {
    v16 = 0;
    goto LABEL_14;
  }

  if (!extensionAttributes)
  {
    bundleURL = [(MIBundle *)self bundleURL];
    path = [bundleURL path];
    identifier = [(MIBundle *)self identifier];
    v10 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 231, @"MIInstallerErrorDomain", 182, 0, &unk_1F28882E0, @"Appex bundle at %@ with id %@ does not define an EXAppExtensionAttributes dictionary in its Info.plist", v23, path);

    v16 = 0;
    goto LABEL_21;
  }

  v50 = v12;
  v13 = [(MIExtensionKitBundle *)self _validateDelegateClassWithError:&v50];
  v10 = v50;

  if (!v13)
  {
LABEL_11:
    v16 = 0;
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v14 = [extensionAttributes objectForKeyedSubscript:@"EXExtensionPointIdentifier"];
  if (!v14)
  {
    bundleURL = [(MIBundle *)self bundleURL];
    path2 = [bundleURL path];
    identifier2 = [(MIBundle *)self identifier];
    v26 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 264, @"MIInstallerErrorDomain", 45, 0, &unk_1F2888380, @"Appex bundle at %@ with id %@ does not define the EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist.", v25, path2);

    v16 = 0;
    v10 = v26;
    goto LABEL_21;
  }

  v15 = v14;
  objc_opt_class();
  v16 = v15;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    bundleURL = [(MIBundle *)self bundleURL];
    path3 = [bundleURL path];
    identifier3 = [(MIBundle *)self identifier];
    v30 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 260, @"MIInstallerErrorDomain", 45, 0, &unk_1F2888358, @"Appex bundle at %@ with id %@ defines an EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist with a value that is not a string.", v29, path3);
LABEL_20:

    v10 = v30;
    goto LABEL_21;
  }

  if ((MIIsValidRDNSString(v16) & 1) == 0)
  {
    path3 = [(MIBundle *)self bundleURL];
    identifier3 = [path3 path];
    identifier4 = [(MIBundle *)self identifier];
    v30 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 246, @"MIInstallerErrorDomain", 46, 0, &unk_1F2888308, @"Appex bundle at %@ with id %@ does not have a legal value for the EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist found: %@", v31, identifier3);;

    v10 = identifier4;
    bundleURL = v16;
    goto LABEL_20;
  }

  v49 = 0;
  v48 = v10;
  v17 = [(MIExtensionKitBundle *)self getMayTargetThirdPartyExtensionPoint:&v49 withError:&v48];
  v12 = v48;

  if (!targetsAppleExtensionPoint && v17)
  {
    if (v49 != 1)
    {
      bundleURL2 = [(MIBundle *)self bundleURL];
      path4 = [bundleURL2 path];
      identifier5 = [(MIBundle *)self identifier];
      v10 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 256, @"MIInstallerErrorDomain", 59, 0, &unk_1F2888330, @"Appex bundle at %@ with id %@ does not specify an Apple extension point as the value of the EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist found: %@", v35, path4);;

      bundleURL = v16;
      goto LABEL_21;
    }

LABEL_27:
    if (extensionPointIdentifier)
    {
      if (!targetsAppleExtensionPoint || [(MIExecutableBundle *)self allowsAppleAppExtensionsNotInExtensionCache])
      {
        v19 = 0;
        v20 = 1;
        goto LABEL_24;
      }

      v47 = v12;
      v19 = [(MIAppExtensionBundle *)self extensionCacheEntryWithError:&v47];
      v38 = v47;

      if (v19)
      {
        v20 = 1;
        v12 = v38;
        goto LABEL_24;
      }

      bundleURL = [(MIBundle *)self bundleURL];
      path5 = [bundleURL path];
      identifier6 = [(MIBundle *)self identifier];
      v10 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 278, @"MIInstallerErrorDomain", 59, v38, &unk_1F28883D0, @"Appex bundle at %@ with id %@ specifies a value (%@) for the EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist that does not correspond to a known extension point.", v40, path5);
    }

    else
    {
      bundleURL = [(MIBundle *)self bundleURL];
      path6 = [bundleURL path];
      identifier7 = [(MIBundle *)self identifier];
      v10 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 270, @"MIInstallerErrorDomain", 45, 0, &unk_1F28883A8, @"Appex bundle at %@ with id %@ does not define an extension point in its Info.plist", v37, path6);
    }

LABEL_21:

    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_27;
  }

LABEL_14:
  v10 = v12;
  if (!error)
  {
LABEL_22:
    v19 = 0;
    v20 = 0;
    goto LABEL_23;
  }

LABEL_15:
  v18 = v10;
  v19 = 0;
  v20 = 0;
  *error = v10;
LABEL_23:
  v12 = v10;
LABEL_24:

  return v20;
}

@end