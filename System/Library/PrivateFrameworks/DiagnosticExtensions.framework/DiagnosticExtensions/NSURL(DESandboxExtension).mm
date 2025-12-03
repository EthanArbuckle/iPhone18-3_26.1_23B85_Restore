@interface NSURL(DESandboxExtension)
- (id)generateSandboxExtensionForProcess:()DESandboxExtension;
- (void)accessWithSandboxExtension:()DESandboxExtension inBlock:;
@end

@implementation NSURL(DESandboxExtension)

- (id)generateSandboxExtensionForProcess:()DESandboxExtension
{
  v2 = Log_3();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [NSURL(DESandboxExtension) generateSandboxExtensionForProcess:self];
  }

  fileSystemRepresentation = [self fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    v6 = Log_3();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DEAttachmentItem _generateSandboxExtensionTokenForPID:self];
    }

    goto LABEL_17;
  }

  v4 = fileSystemRepresentation;
  v14 = 0;
  v5 = [self checkResourceIsReachableAndReturnError:&v14];
  v6 = v14;
  if ((v5 & 1) == 0)
  {
    v12 = Log_3();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(DESandboxExtension) *)v4 generateSandboxExtensionForProcess:v6];
    }

    goto LABEL_17;
  }

  v7 = *MEMORY[0x277D861E8];
  v8 = sandbox_extension_issue_file_to_process_by_pid();
  v9 = Log_3();
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NSURL(DESandboxExtension) generateSandboxExtensionForProcess:self];
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [NSURL(DESandboxExtension) generateSandboxExtensionForProcess:self];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  free(v8);
LABEL_18:

  return v11;
}

- (void)accessWithSandboxExtension:()DESandboxExtension inBlock:
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    [v6 UTF8String];
    if (sandbox_extension_consume() == -1)
    {
      v15 = MEMORY[0x277CCACA8];
      path = [self path];
      v17 = __error();
      v18 = strerror(*v17);
      v19 = "Unknown";
      if (v18)
      {
        v19 = v18;
      }

      v11 = [v15 stringWithFormat:@"Failed to consume extension token for [%@] due to error: %s", path, v19];

      v20 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v24 = v11;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v22 = [v20 errorWithDomain:@"DEExtensionErrorDomain" code:0 userInfo:v21];

      v7[2](v7, v22);
    }

    else
    {
      v8 = Log_3();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [NSURL(DESandboxExtension) accessWithSandboxExtension:self inBlock:?];
      }

      v7[2](v7, 0);
      v9 = sandbox_extension_release();
      v10 = Log_3();
      v11 = v10;
      if (v9 == -1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [NSURL(DESandboxExtension) accessWithSandboxExtension:self inBlock:?];
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [NSURL(DESandboxExtension) accessWithSandboxExtension:self inBlock:?];
      }
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"nil sandbox extension token. Do not try attempt to consume a token more than once.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v11 = [v12 errorWithDomain:@"DEExtensionErrorDomain" code:0 userInfo:v13];

    v7[2](v7, v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)generateSandboxExtensionForProcess:()DESandboxExtension .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x1Cu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)generateSandboxExtensionForProcess:()DESandboxExtension .cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generateSandboxExtensionForProcess:()DESandboxExtension .cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)generateSandboxExtensionForProcess:()DESandboxExtension .cold.4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)accessWithSandboxExtension:()DESandboxExtension inBlock:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)accessWithSandboxExtension:()DESandboxExtension inBlock:.cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)accessWithSandboxExtension:()DESandboxExtension inBlock:.cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end