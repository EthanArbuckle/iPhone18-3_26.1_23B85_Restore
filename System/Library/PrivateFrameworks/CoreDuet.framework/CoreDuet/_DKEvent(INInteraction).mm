@interface _DKEvent(INInteraction)
- (void)interaction;
@end

@implementation _DKEvent(INInteraction)

+ (void)relatedContactIdentifiersFromIntent:()INInteraction .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_191750000, v1, OS_LOG_TYPE_DEBUG, "Found contact identifiers of %@ from intent: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)interaction
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchInteractionWithPopulatedKeyImage:()INInteraction .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end