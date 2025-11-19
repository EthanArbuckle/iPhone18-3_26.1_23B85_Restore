@interface FPItemOperationLocator(Daemon)
- (id)startAccessingLocator;
- (void)annotateWithPersonaSandboxIfNeeded:()Daemon;
@end

@implementation FPItemOperationLocator(Daemon)

- (id)startAccessingLocator
{
  v1 = [a1 asFPItem];
  v2 = [v1 fileURL];

  if (v2 && [v2 startAccessingSecurityScopedResource])
  {
    v3 = MEMORY[0x1E69672A0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__FPItemOperationLocator_Daemon__startAccessingLocator__block_invoke;
    v6[3] = &unk_1E83BE068;
    v7 = v2;
    v4 = [v3 tokenWithBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)annotateWithPersonaSandboxIfNeeded:()Daemon
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 asFPItem];
  v6 = [v5 fileURL];

  v7 = [a1 asFPItem];
  v8 = [v7 itemID];
  v9 = [v4 domainFromItemID:v8 reason:0];

  if (v6)
  {
    v10 = [MEMORY[0x1E69DF068] sharedManager];
    v11 = [v10 currentPersona];

    v40 = 0;
    v12 = [v11 userPersonaUniqueString];
    v13 = [v9 nsDomain];
    v14 = [v13 personaIdentifier];
    v15 = v14;
    if (v12 == v14)
    {
    }

    else
    {
      v16 = [v9 nsDomain];
      v17 = [v16 personaIdentifier];
      v18 = [v12 isEqualToString:v17];

      if ((v18 & 1) == 0 && voucher_process_can_use_arbitrary_personas())
      {
        v39 = 0;
        v19 = [v11 copyCurrentPersonaContextWithError:&v39];
        v20 = v39;
        v21 = v40;
        v40 = v19;

        if (v20)
        {
          v22 = fp_current_or_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(FPItemOperationLocator(Daemon) *)v20 annotateWithPersonaSandboxIfNeeded:v22];
          }
        }

        v23 = [v9 nsDomain];
        v24 = [v23 personaIdentifier];
        v25 = [v11 generateAndRestorePersonaContextWithPersonaUniqueString:v24];

        if (v25)
        {
          v26 = fp_current_or_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v37 = [v9 nsDomain];
            v38 = [v37 personaIdentifier];
            *buf = 138412546;
            *&buf[4] = v38;
            v44 = 2112;
            v45 = v25;
            _os_log_error_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
          }
        }

        goto LABEL_19;
      }
    }

    v25 = 0;
LABEL_19:
    v33 = *MEMORY[0x1E69E9BB0];
    *buf = 0;
    v34 = v6;
    v35 = [v34 fp_issueSandboxExtensionOfClass:v33 report:0 error:buf];
    [MEMORY[0x1E6967408] assembleURL:v34 sandbox:v35 physicalURL:0 physicalSandbox:0];

    _FPRestorePersona();
    goto LABEL_20;
  }

  v27 = fp_current_or_default_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [(FPItemOperationLocator(Daemon) *)a1 annotateWithPersonaSandboxIfNeeded:v27];
  }

  if (v9)
  {
    v28 = dispatch_group_create();
    dispatch_group_enter(v28);
    v29 = [v9 defaultBackend];
    v30 = [a1 asFPItem];
    v31 = [v30 itemID];
    v32 = +[FPDRequest requestForSelf];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __69__FPItemOperationLocator_Daemon__annotateWithPersonaSandboxIfNeeded___block_invoke;
    v41[3] = &unk_1E83C0978;
    v41[4] = a1;
    v42 = v28;
    v25 = v28;
    [v29 URLForItemID:v31 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v32 completionHandler:v41];

    dispatch_group_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
LABEL_20:
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)annotateWithPersonaSandboxIfNeeded:()Daemon .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_ERROR, "[ERROR] won't restore persona: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)annotateWithPersonaSandboxIfNeeded:()Daemon .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 asFPItem];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Copied item %@ unexpectedly doesn't have a URL, fetching one", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end