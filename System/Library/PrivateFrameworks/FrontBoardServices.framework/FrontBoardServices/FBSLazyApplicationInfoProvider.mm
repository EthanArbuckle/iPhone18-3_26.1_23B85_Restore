@interface FBSLazyApplicationInfoProvider
- (FBSLazyApplicationInfoProvider)init;
- (id)applicationInfoForAuditToken:(id)token;
- (id)applicationInfoForBundleIdentifier:(id)identifier;
@end

@implementation FBSLazyApplicationInfoProvider

- (FBSLazyApplicationInfoProvider)init
{
  v4.receiver = self;
  v4.super_class = FBSLazyApplicationInfoProvider;
  v2 = [(FBSLazyApplicationInfoProvider *)&v4 init];
  if (v2)
  {
    v2->_applicationInfoSubclass = objc_opt_class();
  }

  return v2;
}

- (id)applicationInfoForBundleIdentifier:(id)identifier
{
  v4 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:identifier];
  bundleURL = [v4 bundleURL];
  if (bundleURL && (v6 = bundleURL, [v4 appState], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isValid"), v7, v6, v8))
  {
    fbs_correspondingApplicationRecord = [v4 fbs_correspondingApplicationRecord];
    identities = [fbs_correspondingApplicationRecord identities];
    firstObject = [identities firstObject];

    v12 = [fbs_correspondingApplicationRecord fbs_processIdentityForApplicationIdentity:firstObject];
    v13 = v12;
    v14 = 0;
    if (fbs_correspondingApplicationRecord && firstObject && v12)
    {
      v14 = [objc_alloc(self->_applicationInfoSubclass) _initWithApplicationProxy:v4 record:fbs_correspondingApplicationRecord appIdentity:firstObject processIdentity:v12 overrideURL:0];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)applicationInfoForAuditToken:(id)token
{
  tokenCopy = token;
  v5 = tokenCopy;
  v6 = MEMORY[0x1E6963618];
  if (tokenCopy)
  {
    [tokenCopy realToken];
  }

  else
  {
    memset(v23, 0, sizeof(v23));
  }

  v7 = [v6 bundleProxyWithAuditToken:v23 error:0];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x1E69635E0];
    bundleURL = [v7 bundleURL];
    v11 = [v9 applicationProxyForBundleURL:bundleURL];

    bundleURL2 = [v11 bundleURL];
    if (bundleURL2 && (v13 = bundleURL2, [v11 appState], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isValid"), v14, v13, v15))
    {
      fbs_correspondingApplicationRecord = [v11 fbs_correspondingApplicationRecord];
      identities = [fbs_correspondingApplicationRecord identities];
      firstObject = [identities firstObject];

      v19 = [fbs_correspondingApplicationRecord fbs_processIdentityForApplicationIdentity:firstObject];
      v20 = v19;
      v21 = 0;
      if (fbs_correspondingApplicationRecord && firstObject && v19)
      {
        v21 = [objc_alloc(self->_applicationInfoSubclass) _initWithApplicationProxy:v11 record:fbs_correspondingApplicationRecord appIdentity:firstObject processIdentity:v19 overrideURL:0];
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end