@interface _EARPlsParser
@end

@implementation _EARPlsParser

- (void)initWithFilePath:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B501D000, a2, OS_LOG_TYPE_ERROR, "Failed to initialize XML parser for custom prons file at %@", &v2, 0xCu);
}

@end