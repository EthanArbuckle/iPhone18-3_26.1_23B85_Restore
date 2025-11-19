@interface MTRPluginPBMDeviceNodeDownloadDiagnosticLog(Helpers)
@end

@implementation MTRPluginPBMDeviceNodeDownloadDiagnosticLog(Helpers)

+ (void)urlFromResponsePayload:()Helpers error:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7[0] = 67109634;
  v7[1] = getuid();
  v8 = 2114;
  v9 = a2;
  v10 = 2114;
  v11 = a3;
  _os_log_error_impl(&dword_25830F000, v5, OS_LOG_TYPE_ERROR, "Failed to create daemon cache directory for user %d at %{public}@: %{public}@", v7, 0x1Cu);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)urlFromResponsePayload:()Helpers error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "Could not create directory path %@ - error %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)urlFromResponsePayload:()Helpers error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25830F000, v0, v1, "%@ Failed to create diagnostic log file %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)urlFromResponsePayload:()Helpers error:.cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, "%@ Failed to create diagnostic log directory", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)urlFromResponsePayload:()Helpers error:.cold.5(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, "%@ Failed to convert response payload into data format", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end