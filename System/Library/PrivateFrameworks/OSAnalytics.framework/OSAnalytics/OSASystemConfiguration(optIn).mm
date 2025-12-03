@interface OSASystemConfiguration(optIn)
- (void)optInDRE;
@end

@implementation OSASystemConfiguration(optIn)

- (void)optInDRE
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(self, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setDREOptIn:()optIn .cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end