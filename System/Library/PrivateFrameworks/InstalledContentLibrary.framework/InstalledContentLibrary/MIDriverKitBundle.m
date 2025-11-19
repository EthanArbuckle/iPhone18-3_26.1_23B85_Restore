@interface MIDriverKitBundle
+ (id)bundlesInParentBundle:(id)a3 subDirectory:(id)a4 matchingPredicate:(id)a5 error:(id *)a6;
- (BOOL)validateBundleMetadataWithError:(id *)a3;
- (MIDriverKitBundle)initWithBundleParentURL:(id)a3 parentSubdirectory:(id)a4 bundleName:(id)a5 error:(id *)a6;
- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)a3 withError:(id *)a4;
- (id)minimumOSVersion;
@end

@implementation MIDriverKitBundle

- (MIDriverKitBundle)initWithBundleParentURL:(id)a3 parentSubdirectory:(id)a4 bundleName:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)minimumOSVersion
{
  v2 = [(MIBundle *)self infoPlistSubset];
  v3 = [v2 objectForKeyedSubscript:@"OSMinimumDriverKitVersion"];
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

- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)a3 withError:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  bzero(&v17, 0x500uLL);
  if (uname(&v17))
  {
    v6 = __error();
    v7 = *v6;
    v9 = _CreateError("[MIDriverKitBundle currentOSVersionForValidationUsingPlatform:withError:]", 47, *MEMORY[0x1E696A798], *v6, 0, 0, @"uname() failed", v8, v16);
    v10 = strerror(v7);
    v12 = _CreateAndLogError("[MIDriverKitBundle currentOSVersionForValidationUsingPlatform:withError:]", 47, @"MIInstallerErrorDomain", 4, v9, &unk_1F2888718, @"Failed to get DriverKit support version: %s", v11, v10);

    v13 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17.release];
    v12 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v13)
  {
    v14 = v12;
    *a4 = v12;
    goto LABEL_10;
  }

LABEL_7:
  if (a3 && v13)
  {
    *a3 = 1;
  }

LABEL_10:

  return v13;
}

+ (id)bundlesInParentBundle:(id)a3 subDirectory:(id)a4 matchingPredicate:(id)a5 error:(id *)a6
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___MIDriverKitBundle;
  v6 = objc_msgSendSuper2(&v8, sel_bundlesInParentBundle_subDirectory_matchingPredicate_error_, a3, a4, a5, a6);

  return v6;
}

- (BOOL)validateBundleMetadataWithError:(id *)a3
{
  v5 = [(MIBundle *)self parentBundleID];
  v6 = [(MIBundle *)self identifier];
  v7 = [v5 stringByAppendingString:@"."];
  v8 = [(MIBundle *)self bundleURL];
  v9 = [v8 path];

  if ([v6 hasPrefix:v7])
  {
    v11 = [v6 length];
    if (v11 > [v7 length])
    {
      v12 = [v6 substringFromIndex:{objc_msgSend(v7, "length")}];
      if (![v12 containsString:@"."])
      {
        v14 = 0;
        v15 = 1;
        goto LABEL_8;
      }

      v14 = _CreateAndLogError("[MIDriverKitBundle validateBundleMetadataWithError:]", 89, @"MIInstallerErrorDomain", 177, 0, &unk_1F2888768, @"DriverKit extension bundle at %@ with identifier %@ contains a '.' in the portion after the parent app's prefix (prefix: %@  dot in: %@).'", v13, v9);;
      if (!a3)
      {
        goto LABEL_5;
      }

LABEL_7:
      v16 = v14;
      v15 = 0;
      *a3 = v14;
      goto LABEL_8;
    }
  }

  v14 = _CreateAndLogError("[MIDriverKitBundle validateBundleMetadataWithError:]", 82, @"MIInstallerErrorDomain", 176, 0, &unk_1F2888740, @"DriverKit extension bundle at %@ with identifier %@ does not have expected identifier prefix %@", v10, v9);
  v12 = 0;
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v15 = 0;
LABEL_8:

  return v15;
}

@end