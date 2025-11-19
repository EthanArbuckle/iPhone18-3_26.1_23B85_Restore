@interface _GCGenericDeviceDB(XPC)
@end

@implementation _GCGenericDeviceDB(XPC)

- (void)preparedModelForDevice:()XPC reply:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D2C3B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end