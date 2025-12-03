@interface OBPrivacyBundleProvider
- (NSString)path;
- (OBPrivacyBundleProvider)initWithEnclosingBundleIdentifier:(id)identifier privacyBundleName:(id)name;
- (id)_bundleRecordWithError:(id *)error;
- (void)path;
@end

@implementation OBPrivacyBundleProvider

- (OBPrivacyBundleProvider)initWithEnclosingBundleIdentifier:(id)identifier privacyBundleName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = OBPrivacyBundleProvider;
  v9 = [(OBPrivacyBundleProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enclosingBundleIdentifier, identifier);
    objc_storeStrong(&v10->_privacyBundleName, name);
  }

  return v10;
}

- (NSString)path
{
  v15 = 0;
  v3 = [(OBPrivacyBundleProvider *)self _bundleRecordWithError:&v15];
  v4 = v15;
  v5 = v4;
  if (!v3 || v4)
  {
    v8 = _OBLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(OBPrivacyBundleProvider *)self path];
    }

    v13 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696AAE8];
    v7 = [v3 URL];
    v8 = [v6 bundleWithURL:v7];

    if (v8)
    {
      privacyBundleName = [(OBPrivacyBundleProvider *)self privacyBundleName];
      stringByDeletingPathExtension = [privacyBundleName stringByDeletingPathExtension];
      privacyBundleName2 = [(OBPrivacyBundleProvider *)self privacyBundleName];
      pathExtension = [privacyBundleName2 pathExtension];
      v13 = [v8 pathForResource:stringByDeletingPathExtension ofType:pathExtension inDirectory:0 forLocalization:0];
    }

    else
    {
      privacyBundleName = _OBLoggingFacility();
      if (os_log_type_enabled(privacyBundleName, OS_LOG_TYPE_ERROR))
      {
        [(OBPrivacyBundleProvider *)self path];
      }

      v13 = 0;
    }
  }

  return v13;
}

- (id)_bundleRecordWithError:(id *)error
{
  v4 = MEMORY[0x1E6963620];
  enclosingBundleIdentifier = [(OBPrivacyBundleProvider *)self enclosingBundleIdentifier];
  v6 = [v4 bundleRecordWithBundleIdentifier:enclosingBundleIdentifier allowPlaceholder:0 error:error];

  return v6;
}

- (void)path
{
  v14 = *MEMORY[0x1E69E9840];
  enclosingBundleIdentifier = [self enclosingBundleIdentifier];
  has_internal_ui = os_variant_has_internal_ui();
  if ((has_internal_ui & 1) == 0)
  {
    v8 = MEMORY[0x1E696AEC0];
    domain = [a2 domain];
    a2 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(a2, "code")];
  }

  *buf = 138543618;
  v11 = enclosingBundleIdentifier;
  v12 = 2114;
  v13 = a2;
  _os_log_error_impl(&dword_1B4FB6000, a3, OS_LOG_TYPE_ERROR, "Failed to create bundle record for %{public}@ error %{public}@", buf, 0x16u);
  if (!has_internal_ui)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end