@interface IXAppInstallCoordinator(IXOSModuleRegistration)
@end

@implementation IXAppInstallCoordinator(IXOSModuleRegistration)

+ (void)registerContentsForOSModuleAtURL:()IXOSModuleRegistration options:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)unregisterContentsForOSModuleAtURL:()IXOSModuleRegistration options:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)setKnownOSModuleURLs:()IXOSModuleRegistration options:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

@end