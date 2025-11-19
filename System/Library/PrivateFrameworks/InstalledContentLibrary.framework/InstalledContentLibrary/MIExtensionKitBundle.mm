@interface MIExtensionKitBundle
+ (id)bundlesInParentBundle:(id)a3 subDirectory:(id)a4 matchingPredicate:(id)a5 error:(id *)a6;
- (BOOL)_validateDelegateClassWithError:(id *)a3;
- (BOOL)_validatePresenceOfSwiftEntrySectionInFile:(int)a3 shouldHaveSwiftEntry:(BOOL)a4 withError:(id *)a5;
- (BOOL)getMayTargetThirdPartyExtensionPoint:(BOOL *)a3 withError:(id *)a4;
- (BOOL)validateBundleMetadataWithError:(id *)a3;
- (NSDictionary)extensionAttributes;
- (id)extensionPointIdentifier;
@end

@implementation MIExtensionKitBundle

+ (id)bundlesInParentBundle:(id)a3 subDirectory:(id)a4 matchingPredicate:(id)a5 error:(id *)a6
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___MIExtensionKitBundle;
  v6 = objc_msgSendSuper2(&v8, sel_bundlesInParentBundle_subDirectory_matchingPredicate_error_, a3, a4, a5, a6);

  return v6;
}

- (id)extensionPointIdentifier
{
  extensionPointIdentifier = self->_extensionPointIdentifier;
  if (!extensionPointIdentifier)
  {
    v4 = [(MIExtensionKitBundle *)self extensionAttributes];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:@"EXExtensionPointIdentifier"];
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
    v4 = [(MIBundle *)self infoPlistSubset];
    v5 = [v4 objectForKeyedSubscript:@"EXAppExtensionAttributes"];
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

- (BOOL)getMayTargetThirdPartyExtensionPoint:(BOOL *)a3 withError:(id *)a4
{
  v5 = [(MIBundle *)self isApplicableToOSVersionEarlierThan:@"17.0", a4];
  if (a3)
  {
    *a3 = !v5;
  }

  return 1;
}

- (BOOL)_validatePresenceOfSwiftEntrySectionInFile:(int)a3 shouldHaveSwiftEntry:(BOOL)a4 withError:(id *)a5
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v9 = [(MIExecutableBundle *)self executableURL];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98__MIExtensionKitBundle__validatePresenceOfSwiftEntrySectionInFile_shouldHaveSwiftEntry_withError___block_invoke;
  v19[3] = &unk_1E7AE1D18;
  v19[4] = &v21;
  v20 = a4;
  v10 = MEMORY[0x1B2733890](v19);
  if (parse_macho_iterate_slices_fd(a3, [v9 fileSystemRepresentation], v10))
  {
    v11 = *(v22 + 24);
    if (v11)
    {
      v12 = 0;
      if (!a5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = [(MIExecutableBundle *)self relativeExecutablePath];
      v12 = _CreateAndLogError("[MIExtensionKitBundle _validatePresenceOfSwiftEntrySectionInFile:shouldHaveSwiftEntry:withError:]", 137, @"MIInstallerErrorDomain", 73, 0, &unk_1F2888240, @"Expected executable at %@ %@to have a __swift5_entry section", v16, v15);

      v11 = *(v22 + 24);
      if (!a5)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v13 = [v9 path];
    v12 = _CreateAndLogError("[MIExtensionKitBundle _validatePresenceOfSwiftEntrySectionInFile:shouldHaveSwiftEntry:withError:]", 131, @"MIInstallerErrorDomain", 73, 0, &unk_1F2888218, @"Could not iterate slices in macho %@", v14, v13);

    v11 = 0;
    *(v22 + 24) = 0;
    if (!a5)
    {
      goto LABEL_10;
    }
  }

  if ((v11 & 1) == 0)
  {
    v17 = v12;
    *a5 = v12;
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

- (BOOL)_validateDelegateClassWithError:(id *)a3
{
  v5 = [(MIExtensionKitBundle *)self extensionAttributes];
  v6 = [v5 objectForKeyedSubscript:@"EXPrincipalClass"];

  if (v6)
  {
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      if ([v7 length])
      {

        goto LABEL_5;
      }

      v11 = [(MIBundle *)self bundleURL];
      v12 = [v11 path];
      v27 = [(MIBundle *)self identifier];
      v8 = _CreateAndLogError("[MIExtensionKitBundle _validateDelegateClassWithError:]", 166, @"MIInstallerErrorDomain", 185, 0, &unk_1F2888268, @"Appex bundle at %@ with id %@ defines an EXPrincipalClass key in the EXAppExtensionAttributes dictionary in its Info.plist with a zero length string.", v19, v12);
    }

    else
    {

      v7 = [(MIBundle *)self bundleURL];
      v11 = [v7 path];
      v12 = [(MIBundle *)self identifier];
      v8 = _CreateAndLogError("[MIExtensionKitBundle _validateDelegateClassWithError:]", 170, @"MIInstallerErrorDomain", 183, 0, &unk_1F2888290, @"Appex bundle at %@ with id %@ defines an EXPrincipalClass key in the EXAppExtensionAttributes dictionary in its Info.plist with a value that is not a string.", v13, v11);
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

  v14 = [(MIExecutableBundle *)self executableURL];
  if ([(MIExecutableBundle *)self hasExecutable])
  {
    v9 = open([v14 fileSystemRepresentation], 256);
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
    v22 = [v14 fileSystemRepresentation];
    strerror(v20);
    v16 = _CreateError("[MIExtensionKitBundle _validateDelegateClassWithError:]", 187, v21, v20, 0, 0, @"Failed to open %s: %s", v23, v22);
    v17 = [v14 path];
    v8 = _CreateAndLogError("[MIExtensionKitBundle _validateDelegateClassWithError:]", 187, @"MIInstallerErrorDomain", 73, v16, &unk_1F28882B8, @"Failed to open executable %@ to validate sections.", v24, v17);
  }

  else
  {
    v16 = [(MIBundle *)self relativePath];
    v17 = [(MIExecutableBundle *)self relativeExecutablePath];
    v8 = _CreateAndLogError("[MIExtensionKitBundle _validateDelegateClassWithError:]", 180, @"MIInstallerErrorDomain", 71, 0, 0, @"The appex bundle at %@ does not have a bundle executable at %@. App extensions must have an executable.", v18, v16);
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
  if (a3 && !v10)
  {
    v25 = v8;
    *a3 = v8;
  }

  return v10;
}

- (BOOL)validateBundleMetadataWithError:(id *)a3
{
  v5 = [(MIExtensionKitBundle *)self extensionAttributes];
  v6 = [(MIExtensionKitBundle *)self extensionPointIdentifier];
  v7 = [(MIAppExtensionBundle *)self targetsAppleExtensionPoint];
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

  if (!v5)
  {
    v21 = [(MIBundle *)self bundleURL];
    v22 = [v21 path];
    v41 = [(MIBundle *)self identifier];
    v10 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 231, @"MIInstallerErrorDomain", 182, 0, &unk_1F28882E0, @"Appex bundle at %@ with id %@ does not define an EXAppExtensionAttributes dictionary in its Info.plist", v23, v22);

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
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v14 = [v5 objectForKeyedSubscript:@"EXExtensionPointIdentifier"];
  if (!v14)
  {
    v21 = [(MIBundle *)self bundleURL];
    v24 = [v21 path];
    v42 = [(MIBundle *)self identifier];
    v26 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 264, @"MIInstallerErrorDomain", 45, 0, &unk_1F2888380, @"Appex bundle at %@ with id %@ does not define the EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist.", v25, v24);

    v16 = 0;
    v10 = v26;
    goto LABEL_21;
  }

  v15 = v14;
  objc_opt_class();
  v16 = v15;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v21 = [(MIBundle *)self bundleURL];
    v27 = [v21 path];
    v28 = [(MIBundle *)self identifier];
    v30 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 260, @"MIInstallerErrorDomain", 45, 0, &unk_1F2888358, @"Appex bundle at %@ with id %@ defines an EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist with a value that is not a string.", v29, v27);
LABEL_20:

    v10 = v30;
    goto LABEL_21;
  }

  if ((MIIsValidRDNSString(v16) & 1) == 0)
  {
    v27 = [(MIBundle *)self bundleURL];
    v28 = [v27 path];
    v43 = [(MIBundle *)self identifier];
    v30 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 246, @"MIInstallerErrorDomain", 46, 0, &unk_1F2888308, @"Appex bundle at %@ with id %@ does not have a legal value for the EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist found: %@", v31, v28);;

    v10 = v43;
    v21 = v16;
    goto LABEL_20;
  }

  v49 = 0;
  v48 = v10;
  v17 = [(MIExtensionKitBundle *)self getMayTargetThirdPartyExtensionPoint:&v49 withError:&v48];
  v12 = v48;

  if (!v7 && v17)
  {
    if (v49 != 1)
    {
      v33 = [(MIBundle *)self bundleURL];
      v34 = [v33 path];
      v44 = [(MIBundle *)self identifier];
      v10 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 256, @"MIInstallerErrorDomain", 59, 0, &unk_1F2888330, @"Appex bundle at %@ with id %@ does not specify an Apple extension point as the value of the EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist found: %@", v35, v34);;

      v21 = v16;
      goto LABEL_21;
    }

LABEL_27:
    if (v6)
    {
      if (!v7 || [(MIExecutableBundle *)self allowsAppleAppExtensionsNotInExtensionCache])
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

      v21 = [(MIBundle *)self bundleURL];
      v39 = [v21 path];
      v46 = [(MIBundle *)self identifier];
      v10 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 278, @"MIInstallerErrorDomain", 59, v38, &unk_1F28883D0, @"Appex bundle at %@ with id %@ specifies a value (%@) for the EXExtensionPointIdentifier key in the EXAppExtensionAttributes dictionary in its Info.plist that does not correspond to a known extension point.", v40, v39);
    }

    else
    {
      v21 = [(MIBundle *)self bundleURL];
      v36 = [v21 path];
      v45 = [(MIBundle *)self identifier];
      v10 = _CreateAndLogError("[MIExtensionKitBundle validateBundleMetadataWithError:]", 270, @"MIInstallerErrorDomain", 45, 0, &unk_1F28883A8, @"Appex bundle at %@ with id %@ does not define an extension point in its Info.plist", v37, v36);
    }

LABEL_21:

    if (!a3)
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
  if (!a3)
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
  *a3 = v10;
LABEL_23:
  v12 = v10;
LABEL_24:

  return v20;
}

@end