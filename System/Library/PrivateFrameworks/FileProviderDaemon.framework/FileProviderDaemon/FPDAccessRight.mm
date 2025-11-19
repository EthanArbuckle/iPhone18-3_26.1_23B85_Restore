@interface FPDAccessRight
- (FPDAccessRight)init;
- (FPDAccessRight)initWithURL:(id)a3 entitlements:(id)a4 connection:(id)a5 manager:(id)a6;
- (FPDDomain)domain;
- (FPDExtension)provider;
- (void)_computeAccessForURL:(id)a3 entitlements:(id)a4 connection:(id)a5;
@end

@implementation FPDAccessRight

- (void)_computeAccessForURL:(id)a3 entitlements:(id)a4 connection:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count] && objc_msgSend(v10, "fp_hasOneOfEntitlements:logLevel:", v9, 0))
  {
    v11 = 4;
LABEL_8:
    self->_accessLevel = v11;
    goto LABEL_9;
  }

  if ([v10 fp_hasSandboxAccessToFile:v8 accessType:*MEMORY[0x1E6966DB8] logLevel:0])
  {
    v11 = 3;
    goto LABEL_8;
  }

  if ([v10 fp_hasSandboxAccessToFile:v8 accessType:*MEMORY[0x1E6966DA8] logLevel:0])
  {
    v11 = 1;
    goto LABEL_8;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  v14 = [WeakRetained providedItemsURLs];

  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if ([v10 fp_hasSandboxAccessToFile:*(*(&v19 + 1) + 8 * v18) logLevel:0])
        {
          self->_accessLevel = 2;
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
}

- (FPDAccessRight)initWithURL:(id)a3 entitlements:(id)a4 connection:(id)a5 manager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = FPDAccessRight;
  v14 = [(FPDAccessRight *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_accessLevel = 0;
    v16 = [v13 domainForURL:v10 reason:0];
    objc_storeWeak(&v15->_domain, v16);

    WeakRetained = objc_loadWeakRetained(&v15->_domain);
    v18 = [WeakRetained provider];

    if ([v18 isAppExtensionReachable])
    {
      v19 = [v18 asAppExtensionBackedProvider];
      objc_storeWeak(&v15->_provider, v19);
    }

    [(FPDAccessRight *)v15 _computeAccessForURL:v10 entitlements:v11 connection:v12];
  }

  return v15;
}

- (FPDAccessRight)init
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"should not call this"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPDAccessRight init]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDAccessRight.m", 71, [v2 UTF8String]);
}

- (FPDExtension)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (FPDDomain)domain
{
  WeakRetained = objc_loadWeakRetained(&self->_domain);

  return WeakRetained;
}

@end