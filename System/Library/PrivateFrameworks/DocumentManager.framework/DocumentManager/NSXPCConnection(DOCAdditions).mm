@interface NSXPCConnection(DOCAdditions)
- (BOOL)doc_hasSandboxAccessToFile:()DOCAdditions readonly:;
@end

@implementation NSXPCConnection(DOCAdditions)

- (BOOL)doc_hasSandboxAccessToFile:()DOCAdditions readonly:
{
  v6 = a3;
  [a1 auditToken];
  [v6 fileSystemRepresentation];

  v7 = sandbox_check_by_audit_token();
  if (v7 == -1)
  {
    v8 = *__error();
    v9 = MEMORY[0x1E699A450];
    v10 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(NSXPCConnection(DOCAdditions) *)a4 doc_hasSandboxAccessToFile:v8 readonly:v10];
    }
  }

  return v7 == 0;
}

- (void)doc_hasSandboxAccessToFile:()DOCAdditions readonly:.cold.1(char a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109376;
  v3[1] = a1 & 1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_1E57D8000, log, OS_LOG_TYPE_ERROR, "Sandbox check returned error. readonly: %d errno=%d", v3, 0xEu);
}

@end