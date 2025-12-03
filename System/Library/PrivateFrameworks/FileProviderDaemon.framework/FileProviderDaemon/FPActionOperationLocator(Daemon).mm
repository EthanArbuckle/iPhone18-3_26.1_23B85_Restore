@interface FPActionOperationLocator(Daemon)
- (id)materializedURLWithDomain:()Daemon;
- (id)materializedURLWithExtensionManager:()Daemon;
- (uint64_t)isDownloaded;
- (uint64_t)materializeOptionForDestinationItem:()Daemon recursively:isCopy:extensionManager:;
- (uint64_t)willRequireDownloadForSourceItem:()Daemon extensionManager:;
- (void)annotateWithPersonaSandboxIfNeeded:()Daemon;
- (void)startAccessingLocator;
@end

@implementation FPActionOperationLocator(Daemon)

- (id)materializedURLWithExtensionManager:()Daemon
{
  v4 = a3;
  if ([self isExternalURL])
  {
    asURL = [self asURL];
  }

  else
  {
    asFPItem = [self asFPItem];
    itemID = [asFPItem itemID];
    v8 = [v4 domainFromItemID:itemID reason:0];

    asURL = [self materializedURLWithDomain:v8];
  }

  return asURL;
}

- (id)materializedURLWithDomain:()Daemon
{
  v4 = a3;
  if ([self isExternalURL])
  {
    asURL = [self asURL];
  }

  else
  {
    asFPItem = [self asFPItem];
    itemID = [asFPItem itemID];
    asURL = [v4 materializedURLForItemID:itemID];

    [asFPItem setFileURL:asURL];
  }

  return asURL;
}

- (uint64_t)willRequireDownloadForSourceItem:()Daemon extensionManager:
{
  v6 = a3;
  v7 = a4;
  if (v6 && [self isFolder] && (objc_msgSend(self, "isExternalURL") & 1) == 0 && objc_msgSend(self, "isProviderItem"))
  {
    asFPItem = [self asFPItem];
    itemID = [asFPItem itemID];
    v10 = [v7 domainFromItemID:itemID reason:0];

    if ([v10 isUsingFPFS] && (objc_msgSend(asFPItem, "isDownloaded") & 1) == 0)
    {
      if (([v6 isExternalURL] & 1) != 0 || !objc_msgSend(v6, "isProviderItem"))
      {
        v11 = 1;
      }

      else
      {
        asFPItem2 = [v6 asFPItem];
        asFPItem3 = [self asFPItem];
        providerDomainID = [asFPItem2 providerDomainID];
        providerDomainID2 = [asFPItem3 providerDomainID];
        v17 = [providerDomainID isEqualToString:providerDomainID2];

        v11 = v17 ^ 1 | [asFPItem2 isDownloaded];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (uint64_t)materializeOptionForDestinationItem:()Daemon recursively:isCopy:extensionManager:
{
  v10 = a3;
  v11 = a6;
  if (([self isExternalURL] & 1) == 0)
  {
    asFPItem = [self asFPItem];
    itemID = [asFPItem itemID];
    v15 = [v11 domainFromItemID:itemID reason:0];

    isUsingFPFS = [v15 isUsingFPFS];
    if (a4)
    {
      if (!isUsingFPFS || ([asFPItem isRecursivelyDownloaded] & 1) == 0)
      {
        if ([self isFolder])
        {
          v12 = 2;
        }

        else
        {
          v12 = 1;
        }

LABEL_12:
        if (([v10 isExternalURL] & 1) == 0 && (a5 & 1) == 0)
        {
          asFPItem2 = [v10 asFPItem];
          providerDomainID = [asFPItem providerDomainID];
          providerDomainID2 = [asFPItem2 providerDomainID];
          v20 = [providerDomainID isEqualToString:providerDomainID2];

          if (v20)
          {
            v12 = 0;
          }
        }

        goto LABEL_17;
      }
    }

    else if (([asFPItem isDownloaded] & 1) == 0)
    {
      v12 = 1;
      goto LABEL_12;
    }

    v12 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (uint64_t)isDownloaded
{
  if ([self isExternalURL])
  {
    return 0;
  }

  asFPItem = [self asFPItem];
  v2 = [asFPItem isDownloaded] ^ 1;

  return v2;
}

- (void)startAccessingLocator
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ UNREACHABLE: needs override"];
  v1 = fp_current_or_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138543362;
    v3 = v0;
    _os_log_fault_impl(&dword_1CEFC7000, v1, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v2, 0xCu);
  }

  __assert_rtn("-[FPActionOperationLocator(Daemon) startAccessingLocator]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/FPActionOperationLocator+Daemon.m", 156, [v0 UTF8String]);
}

- (void)annotateWithPersonaSandboxIfNeeded:()Daemon
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ UNREACHABLE: needs override"];
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_fault_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v6, 0xCu);
  }

  __assert_rtn("-[FPActionOperationLocator(Daemon) annotateWithPersonaSandboxIfNeeded:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/FPActionOperationLocator+Daemon.m", 162, [v4 UTF8String]);
}

@end