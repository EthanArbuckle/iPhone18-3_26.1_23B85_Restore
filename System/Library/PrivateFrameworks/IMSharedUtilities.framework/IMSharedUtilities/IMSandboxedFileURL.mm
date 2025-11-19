@interface IMSandboxedFileURL
- (IMSandboxedFileURL)initWithFileURL:(id)a3;
- (IMSandboxedFileURL)initWithFileURL:(id)a3 destinationProcessPID:(int)a4;
- (NSURL)securityScopedResourceURL;
- (char)_sandboxExtensionForAuditToken:(id *)a3;
- (char)_sandboxExtensionForPID:(int)a3;
@end

@implementation IMSandboxedFileURL

- (IMSandboxedFileURL)initWithFileURL:(id)a3
{
  v7.receiver = self;
  v7.super_class = IMSandboxedFileURL;
  v4 = [(IMSandboxedFileURL *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(IMSandboxedResource *)v4 setResource:a3];
  }

  return v5;
}

- (IMSandboxedFileURL)initWithFileURL:(id)a3 destinationProcessPID:(int)a4
{
  v4 = *&a4;
  v9.receiver = self;
  v9.super_class = IMSandboxedFileURL;
  v6 = [(IMSandboxedFileURL *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(IMSandboxedResource *)v6 setResource:a3];
    [(IMSandboxedResource *)v7 authorizeForPID:v4];
  }

  return v7;
}

- (NSURL)securityScopedResourceURL
{
  v3 = [(IMSandboxedResource *)self sandboxExtension];
  v4 = [(NSString *)v3 length];
  result = [(IMSandboxedResource *)self resource];
  if (v4)
  {
    MEMORY[0x1AC570E10](result, [(NSString *)v3 dataUsingEncoding:4]);
    [(IMSandboxedResource *)self setSandboxExtension:0];

    return [(IMSandboxedResource *)self resource];
  }

  return result;
}

- (char)_sandboxExtensionForPID:(int)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [(IMSandboxedResource *)self resource];
  if (!v4)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v13 = 138412290;
    v14 = self;
    v9 = "Unable to authorize protected resource (resource is nil) for %@";
    v10 = v12;
    v11 = 12;
    goto LABEL_9;
  }

  v5 = [objc_msgSend(v4 "path")];
  result = sandbox_extension_issue_file_to_process_by_pid();
  if (result)
  {
    return result;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *__error();
      v13 = 138412802;
      v14 = self;
      v15 = 2080;
      v16 = v5;
      v17 = 1024;
      v18 = v8;
      v9 = "Unable to authorize protected resource (sandbox extension is NULL) %@ (file path: %s) errno %d";
      v10 = v7;
      v11 = 28;
LABEL_9:
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, v9, &v13, v11);
    }
  }

  return 0;
}

- (char)_sandboxExtensionForAuditToken:(id *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(IMSandboxedResource *)self resource];
  if (!v5)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *v15 = 138412290;
    *&v15[4] = self;
    v11 = "Unable to authorize protected resource (resource is nil) for %@";
    v12 = v14;
    v13 = 12;
    goto LABEL_9;
  }

  v6 = [objc_msgSend(v5 "path")];
  v7 = *&a3->var0[4];
  *v15 = *a3->var0;
  *&v15[16] = v7;
  result = sandbox_extension_issue_file_to_process();
  if (result)
  {
    return result;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *__error();
      *v15 = 138412802;
      *&v15[4] = self;
      *&v15[12] = 2080;
      *&v15[14] = v6;
      *&v15[22] = 1024;
      *&v15[24] = v10;
      v11 = "Unable to authorize protected resource (sandbox extension is NULL) %@ (file path: %s) errno %d";
      v12 = v9;
      v13 = 28;
LABEL_9:
      _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, v11, v15, v13);
    }
  }

  return 0;
}

@end