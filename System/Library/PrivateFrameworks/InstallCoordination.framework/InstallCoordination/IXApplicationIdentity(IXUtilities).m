@interface IXApplicationIdentity(IXUtilities)
@end

@implementation IXApplicationIdentity(IXUtilities)

- (void)resolvePersonaUsingModuleSpecificLogicWithError:()IXUtilities .cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_DEBUG, "%s: Resolved persona %@ for bundleID %@", v2, 0x20u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)resolvePersonaUsingModuleSpecificLogicWithError:()IXUtilities .cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_ERROR, "%s: Failed to retrieve application record for bundleID: %@ : %@", v2, 0x20u);
  v1 = *MEMORY[0x1E69E9840];
}

@end