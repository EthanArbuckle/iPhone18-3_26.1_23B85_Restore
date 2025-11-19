@interface IXAppInstallCoordinator(IXSimpleInstaller)
@end

@implementation IXAppInstallCoordinator(IXSimpleInstaller)

+ (void)_temporaryStagingLocationForInstallLocation:()IXSimpleInstaller withSandboxExtensionHandle:error:.cold.1()
{
  OUTLINED_FUNCTION_15();
  v9 = *MEMORY[0x1E69E9840];
  v1 = [v0 path];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_3(&dword_1DA47A000, v2, v3, "%s: Failed to get access to the temporary staging location at %@ : %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)installApplication:()IXSimpleInstaller toURL:consumeSource:options:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)installApplication:()IXSimpleInstaller toTargetDirectory:consumeSource:options:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)installApplication:()IXSimpleInstaller toURL:consumeSource:shouldOverrideGatekeeper:options:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)installApplication:()IXSimpleInstaller toTargetDirectory:consumeSource:shouldOverrideGatekeeper:options:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

@end