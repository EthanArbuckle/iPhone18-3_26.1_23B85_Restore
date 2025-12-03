@interface DKSandboxExtension
+ (BOOL)releaseSandboxExtensionWithHandle:(id)handle error:(id *)error;
+ (id)consumeSandboxExtensionWithToken:(id)token error:(id *)error;
+ (id)consumeSandboxExtensionsWithTokens:(id)tokens;
+ (id)issueSandboxExtensionForFile:(id)file toAuditToken:(id *)token error:(id *)error;
+ (id)issueSandboxExtensionsForFiles:(id)files toAuditToken:(id *)token;
+ (void)releaseSandboxExtensionsWithHandles:(id)handles;
@end

@implementation DKSandboxExtension

+ (id)issueSandboxExtensionForFile:(id)file toAuditToken:(id *)token error:(id *)error
{
  v7 = *MEMORY[0x277D861C0];
  path = [file path];
  [path UTF8String];
  v9 = *MEMORY[0x277D861E8];
  v15 = *token;
  v10 = sandbox_extension_issue_file_to_process();

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{v10, *v15.var0, *&v15.var0[4]}];
  }

  else if (error)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.DiagnosticsKit.SandboxExtensionError" code:*__error() userInfo:{0, *v15.var0, *&v15.var0[4]}];
    v13 = v12;
    v11 = 0;
    *error = v12;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)issueSandboxExtensionsForFiles:(id)files toAuditToken:(id *)token
{
  v31 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = filesCopy;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v26;
    *&v9 = 138412546;
    v23 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        v24 = 0;
        v14 = *&token->var0[4];
        *buf = *token->var0;
        *&buf[16] = v14;
        v15 = [DKSandboxExtension issueSandboxExtensionForFile:v13 toAuditToken:buf error:&v24, v23];
        v16 = v24;
        v17 = DiagnosticsKitLogHandleForCategory(2);
        v18 = v17;
        if (v15)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            path = [v13 path];
            *buf = 138412290;
            *&buf[4] = path;
            _os_log_impl(&dword_248B9D000, v18, OS_LOG_TYPE_DEFAULT, "[Sandbox] Issued sandbox extension for file: %@", buf, 0xCu);
          }

          [array addObject:v15];
        }

        else
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            path2 = [v13 path];
            *buf = v23;
            *&buf[4] = path2;
            *&buf[12] = 2112;
            *&buf[14] = v16;
            _os_log_error_impl(&dword_248B9D000, v18, OS_LOG_TYPE_ERROR, "[Sandbox] Error issuing sandbox extension for file: %@ \n%@", buf, 0x16u);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)consumeSandboxExtensionWithToken:(id)token error:(id *)error
{
  [token UTF8String];
  v5 = sandbox_extension_consume();
  if (v5 == -1)
  {
    if (error)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.DiagnosticsKit.SandboxExtensionError" code:*__error() userInfo:0];
      v8 = v7;
      v6 = 0;
      *error = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:v5];
  }

  return v6;
}

+ (id)consumeSandboxExtensionsWithTokens:(id)tokens
{
  v29 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = tokensCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    *&v7 = 138412546;
    v18 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v19 = 0;
        v12 = [DKSandboxExtension consumeSandboxExtensionWithToken:v11 error:&v19, v18];
        v13 = v19;
        v14 = DiagnosticsKitLogHandleForCategory(1);
        v15 = v14;
        if (v12)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v12;
            _os_log_impl(&dword_248B9D000, v15, OS_LOG_TYPE_DEFAULT, "[Sandbox] Consumed sandbox extension, handle: %@", buf, 0xCu);
          }

          [array addObject:v12];
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v25 = 0;
            v26 = 2112;
            v27 = v13;
            _os_log_error_impl(&dword_248B9D000, v15, OS_LOG_TYPE_ERROR, "[Sandbox] Failed to consume sandbox extension with handle: %@ \n%@", buf, 0x16u);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

+ (BOOL)releaseSandboxExtensionWithHandle:(id)handle error:(id *)error
{
  [handle longLongValue];
  v5 = sandbox_extension_release();
  v6 = v5;
  if (error && v5)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.DiagnosticsKit.SandboxExtensionError" code:*__error() userInfo:0];
  }

  return v6 == 0;
}

+ (void)releaseSandboxExtensionsWithHandles:(id)handles
{
  v26 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [handlesCopy countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 138412546;
    v15 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(handlesCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v16 = 0;
        v10 = [DKSandboxExtension releaseSandboxExtensionWithHandle:v9 error:&v16, v15];
        v11 = v16;
        v12 = DiagnosticsKitLogHandleForCategory(1);
        v13 = v12;
        if (v10)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v9;
            _os_log_impl(&dword_248B9D000, v13, OS_LOG_TYPE_DEFAULT, "[Sandbox] Released sandbox extension with handle: %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = v15;
          v22 = v9;
          v23 = 2112;
          v24 = v11;
          _os_log_error_impl(&dword_248B9D000, v13, OS_LOG_TYPE_ERROR, "[Sandbox] Failed to release sandbox extension with handle: %@ \n%@", buf, 0x16u);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [handlesCopy countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end