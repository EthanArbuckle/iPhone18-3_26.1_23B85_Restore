@interface NSXPCConnection(CPAdditions)
- (__CFString)cp_clientProcessBundleIdentifier;
- (id)cp_clientProcessName;
- (uint64_t)cp_clientSandboxCanAccessFileURL:()CPAdditions;
@end

@implementation NSXPCConnection(CPAdditions)

- (id)cp_clientProcessName
{
  v5 = *MEMORY[0x1E69E9840];
  if (proc_name([a1 processIdentifier], &v4, 0x100u) < 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v4];
  }

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (__CFString)cp_clientProcessBundleIdentifier
{
  memset(&v5[1], 0, sizeof(audit_token_t));
  [a1 auditToken];
  v5[0] = v5[1];
  v1 = SecTaskCreateWithAuditToken(0, v5);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopySigningIdentifier(v1, 0);
    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)cp_clientSandboxCanAccessFileURL:()CPAdditions
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  [a1 auditToken];
  if ([v4 isFileURL])
  {
    v11 = 0;
    v5 = [v4 checkResourceIsReachableAndReturnError:&v11];
    v6 = v11;
    if (v5)
    {
      if ([v4 fileSystemRepresentation])
      {
        v7 = *MEMORY[0x1E69E9BD0];
        if (!sandbox_check_by_audit_token())
        {
          v9 = 1;
          goto LABEL_15;
        }

        v8 = CPDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [NSXPCConnection(CPAdditions) cp_clientSandboxCanAccessFileURL:v8];
        }
      }

      else
      {
        v8 = CPDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [NSXPCConnection(CPAdditions) cp_clientSandboxCanAccessFileURL:];
        }
      }
    }

    else
    {
      v8 = CPDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [NSXPCConnection(CPAdditions) cp_clientSandboxCanAccessFileURL:];
      }
    }
  }

  else
  {
    v6 = CPDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NSXPCConnection(CPAdditions) cp_clientSandboxCanAccessFileURL:];
    }
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (void)cp_clientSandboxCanAccessFileURL:()CPAdditions .cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1AEB26000, v0, v1, "%s URL is not a file system URL: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cp_clientSandboxCanAccessFileURL:()CPAdditions .cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1AEB26000, v0, v1, "%s URL resource is not reachable: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cp_clientSandboxCanAccessFileURL:()CPAdditions .cold.3(NSObject *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v6 = 136315650;
  v7 = "[NSXPCConnection(CPAdditions) cp_clientSandboxCanAccessFileURL:]";
  v8 = 1024;
  v9 = v2;
  v10 = 2080;
  v11 = v4;
  _os_log_error_impl(&dword_1AEB26000, a1, OS_LOG_TYPE_ERROR, "%s Client sandbox does not have access to the given file! (Error %i: %s)", &v6, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)cp_clientSandboxCanAccessFileURL:()CPAdditions .cold.4()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1AEB26000, v0, v1, "%s Could not get file system representation for URL: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end