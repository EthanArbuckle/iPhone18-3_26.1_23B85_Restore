@interface UARPSandboxExtension
+ (id)readTokenStringWithURL:(id)a3;
+ (id)readWriteTokenStringWithURL:(id)a3;
- (UARPSandboxExtension)initWithTokenString:(id)a3;
- (void)dealloc;
@end

@implementation UARPSandboxExtension

+ (id)readTokenStringWithURL:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = [v3 path];
    [v7 UTF8String];
    v8 = sandbox_extension_issue_file();

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "+[UARPSandboxExtension readTokenStringWithURL:]";
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: Generating Read Sandbox Extension Token for %@ ", &v12, 0x16u);
    }

    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
      free(v8);
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[UARPSandboxExtension readTokenStringWithURL:];
  }

  v9 = 0;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)readWriteTokenStringWithURL:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = [v3 path];
    [v7 UTF8String];
    v8 = sandbox_extension_issue_file();

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "+[UARPSandboxExtension readWriteTokenStringWithURL:]";
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: Generating Read-Write Sandbox Extension Token for %@ ", &v12, 0x16u);
    }

    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
      free(v8);
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[UARPSandboxExtension readWriteTokenStringWithURL:];
  }

  v9 = 0;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (UARPSandboxExtension)initWithTokenString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UARPSandboxExtension;
  v5 = [(UARPSandboxExtension *)&v9 init];
  if (v5 && ([v4 UTF8String], v6 = sandbox_extension_consume(), v5->_sandboxExtensionHandle = v6, v6 == -1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPSandboxExtension initWithTokenString:];
    }

    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)dealloc
{
  if (self->_sandboxExtensionHandle != -1)
  {
    sandbox_extension_release();
    self->_sandboxExtensionHandle = -1;
  }

  v3.receiver = self;
  v3.super_class = UARPSandboxExtension;
  [(UARPSandboxExtension *)&v3 dealloc];
}

+ (void)readTokenStringWithURL:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Cannot Generate Sandbox Extension Token for %@ ", v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

+ (void)readWriteTokenStringWithURL:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Cannot Generate Sandbox Extension Token for %@ ", v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)initWithTokenString:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[UARPSandboxExtension initWithTokenString:]";
  _os_log_error_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: failed to consume sandbox token", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

@end