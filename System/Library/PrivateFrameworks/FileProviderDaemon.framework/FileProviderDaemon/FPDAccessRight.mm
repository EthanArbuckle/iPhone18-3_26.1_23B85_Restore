@interface FPDAccessRight
- (FPDAccessRight)init;
- (FPDAccessRight)initWithURL:(id)l entitlements:(id)entitlements connection:(id)connection manager:(id)manager;
- (FPDDomain)domain;
- (FPDExtension)provider;
- (void)_computeAccessForURL:(id)l entitlements:(id)entitlements connection:(id)connection;
@end

@implementation FPDAccessRight

- (void)_computeAccessForURL:(id)l entitlements:(id)entitlements connection:(id)connection
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  entitlementsCopy = entitlements;
  connectionCopy = connection;
  if ([entitlementsCopy count] && objc_msgSend(connectionCopy, "fp_hasOneOfEntitlements:logLevel:", entitlementsCopy, 0))
  {
    v11 = 4;
LABEL_8:
    self->_accessLevel = v11;
    goto LABEL_9;
  }

  if ([connectionCopy fp_hasSandboxAccessToFile:lCopy accessType:*MEMORY[0x1E6966DB8] logLevel:0])
  {
    v11 = 3;
    goto LABEL_8;
  }

  if ([connectionCopy fp_hasSandboxAccessToFile:lCopy accessType:*MEMORY[0x1E6966DA8] logLevel:0])
  {
    v11 = 1;
    goto LABEL_8;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  providedItemsURLs = [WeakRetained providedItemsURLs];

  v15 = [providedItemsURLs countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(providedItemsURLs);
        }

        if ([connectionCopy fp_hasSandboxAccessToFile:*(*(&v19 + 1) + 8 * v18) logLevel:0])
        {
          self->_accessLevel = 2;
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [providedItemsURLs countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
}

- (FPDAccessRight)initWithURL:(id)l entitlements:(id)entitlements connection:(id)connection manager:(id)manager
{
  lCopy = l;
  entitlementsCopy = entitlements;
  connectionCopy = connection;
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = FPDAccessRight;
  v14 = [(FPDAccessRight *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_accessLevel = 0;
    v16 = [managerCopy domainForURL:lCopy reason:0];
    objc_storeWeak(&v15->_domain, v16);

    WeakRetained = objc_loadWeakRetained(&v15->_domain);
    provider = [WeakRetained provider];

    if ([provider isAppExtensionReachable])
    {
      asAppExtensionBackedProvider = [provider asAppExtensionBackedProvider];
      objc_storeWeak(&v15->_provider, asAppExtensionBackedProvider);
    }

    [(FPDAccessRight *)v15 _computeAccessForURL:lCopy entitlements:entitlementsCopy connection:connectionCopy];
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