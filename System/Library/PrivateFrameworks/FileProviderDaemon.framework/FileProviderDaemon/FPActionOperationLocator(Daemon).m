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
  if ([a1 isExternalURL])
  {
    v5 = [a1 asURL];
  }

  else
  {
    v6 = [a1 asFPItem];
    v7 = [v6 itemID];
    v8 = [v4 domainFromItemID:v7 reason:0];

    v5 = [a1 materializedURLWithDomain:v8];
  }

  return v5;
}

- (id)materializedURLWithDomain:()Daemon
{
  v4 = a3;
  if ([a1 isExternalURL])
  {
    v5 = [a1 asURL];
  }

  else
  {
    v6 = [a1 asFPItem];
    v7 = [v6 itemID];
    v5 = [v4 materializedURLForItemID:v7];

    [v6 setFileURL:v5];
  }

  return v5;
}

- (uint64_t)willRequireDownloadForSourceItem:()Daemon extensionManager:
{
  v6 = a3;
  v7 = a4;
  if (v6 && [a1 isFolder] && (objc_msgSend(a1, "isExternalURL") & 1) == 0 && objc_msgSend(a1, "isProviderItem"))
  {
    v8 = [a1 asFPItem];
    v9 = [v8 itemID];
    v10 = [v7 domainFromItemID:v9 reason:0];

    if ([v10 isUsingFPFS] && (objc_msgSend(v8, "isDownloaded") & 1) == 0)
    {
      if (([v6 isExternalURL] & 1) != 0 || !objc_msgSend(v6, "isProviderItem"))
      {
        v11 = 1;
      }

      else
      {
        v13 = [v6 asFPItem];
        v14 = [a1 asFPItem];
        v15 = [v13 providerDomainID];
        v16 = [v14 providerDomainID];
        v17 = [v15 isEqualToString:v16];

        v11 = v17 ^ 1 | [v13 isDownloaded];
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
  if (([a1 isExternalURL] & 1) == 0)
  {
    v13 = [a1 asFPItem];
    v14 = [v13 itemID];
    v15 = [v11 domainFromItemID:v14 reason:0];

    v16 = [v15 isUsingFPFS];
    if (a4)
    {
      if (!v16 || ([v13 isRecursivelyDownloaded] & 1) == 0)
      {
        if ([a1 isFolder])
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
          v17 = [v10 asFPItem];
          v18 = [v13 providerDomainID];
          v19 = [v17 providerDomainID];
          v20 = [v18 isEqualToString:v19];

          if (v20)
          {
            v12 = 0;
          }
        }

        goto LABEL_17;
      }
    }

    else if (([v13 isDownloaded] & 1) == 0)
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
  if ([a1 isExternalURL])
  {
    return 0;
  }

  v3 = [a1 asFPItem];
  v2 = [v3 isDownloaded] ^ 1;

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