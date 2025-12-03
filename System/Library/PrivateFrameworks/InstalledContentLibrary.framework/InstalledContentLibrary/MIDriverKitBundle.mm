@interface MIDriverKitBundle
+ (id)bundlesInParentBundle:(id)bundle subDirectory:(id)directory matchingPredicate:(id)predicate error:(id *)error;
- (BOOL)validateBundleMetadataWithError:(id *)error;
- (MIDriverKitBundle)initWithBundleParentURL:(id)l parentSubdirectory:(id)subdirectory bundleName:(id)name error:(id *)error;
- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)platform withError:(id *)error;
- (id)minimumOSVersion;
@end

@implementation MIDriverKitBundle

- (MIDriverKitBundle)initWithBundleParentURL:(id)l parentSubdirectory:(id)subdirectory bundleName:(id)name error:(id *)error
{
  lCopy = l;
  subdirectoryCopy = subdirectory;
  nameCopy = name;
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)minimumOSVersion
{
  infoPlistSubset = [(MIBundle *)self infoPlistSubset];
  v3 = [infoPlistSubset objectForKeyedSubscript:@"OSMinimumDriverKitVersion"];
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

- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)platform withError:(id *)error
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
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17.release];
    v12 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v13)
  {
    v14 = v12;
    *error = v12;
    goto LABEL_10;
  }

LABEL_7:
  if (platform && v13)
  {
    *platform = 1;
  }

LABEL_10:

  return v13;
}

+ (id)bundlesInParentBundle:(id)bundle subDirectory:(id)directory matchingPredicate:(id)predicate error:(id *)error
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___MIDriverKitBundle;
  v6 = objc_msgSendSuper2(&v8, sel_bundlesInParentBundle_subDirectory_matchingPredicate_error_, bundle, directory, predicate, error);

  return v6;
}

- (BOOL)validateBundleMetadataWithError:(id *)error
{
  parentBundleID = [(MIBundle *)self parentBundleID];
  identifier = [(MIBundle *)self identifier];
  v7 = [parentBundleID stringByAppendingString:@"."];
  bundleURL = [(MIBundle *)self bundleURL];
  path = [bundleURL path];

  if ([identifier hasPrefix:v7])
  {
    v11 = [identifier length];
    if (v11 > [v7 length])
    {
      v12 = [identifier substringFromIndex:{objc_msgSend(v7, "length")}];
      if (![v12 containsString:@"."])
      {
        v14 = 0;
        v15 = 1;
        goto LABEL_8;
      }

      v14 = _CreateAndLogError("[MIDriverKitBundle validateBundleMetadataWithError:]", 89, @"MIInstallerErrorDomain", 177, 0, &unk_1F2888768, @"DriverKit extension bundle at %@ with identifier %@ contains a '.' in the portion after the parent app's prefix (prefix: %@  dot in: %@).'", v13, path);;
      if (!error)
      {
        goto LABEL_5;
      }

LABEL_7:
      v16 = v14;
      v15 = 0;
      *error = v14;
      goto LABEL_8;
    }
  }

  v14 = _CreateAndLogError("[MIDriverKitBundle validateBundleMetadataWithError:]", 82, @"MIInstallerErrorDomain", 176, 0, &unk_1F2888740, @"DriverKit extension bundle at %@ with identifier %@ does not have expected identifier prefix %@", v10, path);
  v12 = 0;
  if (error)
  {
    goto LABEL_7;
  }

LABEL_5:
  v15 = 0;
LABEL_8:

  return v15;
}

@end