@interface FBSLazyApplicationInfoProvider
- (FBSLazyApplicationInfoProvider)init;
- (id)applicationInfoForAuditToken:(id)a3;
- (id)applicationInfoForBundleIdentifier:(id)a3;
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

- (id)applicationInfoForBundleIdentifier:(id)a3
{
  v4 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:a3];
  v5 = [v4 bundleURL];
  if (v5 && (v6 = v5, [v4 appState], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isValid"), v7, v6, v8))
  {
    v9 = [v4 fbs_correspondingApplicationRecord];
    v10 = [v9 identities];
    v11 = [v10 firstObject];

    v12 = [v9 fbs_processIdentityForApplicationIdentity:v11];
    v13 = v12;
    v14 = 0;
    if (v9 && v11 && v12)
    {
      v14 = [objc_alloc(self->_applicationInfoSubclass) _initWithApplicationProxy:v4 record:v9 appIdentity:v11 processIdentity:v12 overrideURL:0];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)applicationInfoForAuditToken:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = MEMORY[0x1E6963618];
  if (v4)
  {
    [v4 realToken];
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
    v10 = [v7 bundleURL];
    v11 = [v9 applicationProxyForBundleURL:v10];

    v12 = [v11 bundleURL];
    if (v12 && (v13 = v12, [v11 appState], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isValid"), v14, v13, v15))
    {
      v16 = [v11 fbs_correspondingApplicationRecord];
      v17 = [v16 identities];
      v18 = [v17 firstObject];

      v19 = [v16 fbs_processIdentityForApplicationIdentity:v18];
      v20 = v19;
      v21 = 0;
      if (v16 && v18 && v19)
      {
        v21 = [objc_alloc(self->_applicationInfoSubclass) _initWithApplicationProxy:v11 record:v16 appIdentity:v18 processIdentity:v19 overrideURL:0];
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