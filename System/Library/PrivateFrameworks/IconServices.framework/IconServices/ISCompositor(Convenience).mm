@interface ISCompositor(Convenience)
@end

@implementation ISCompositor(Convenience)

- (void)setResource:()Convenience named:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_ERROR, "Failed to set resource named '%@' on custom element", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)addResourcesFromDictionary:()Convenience .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 allKeys];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_ERROR, "Failed to set resource names '%@' on custom element", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end