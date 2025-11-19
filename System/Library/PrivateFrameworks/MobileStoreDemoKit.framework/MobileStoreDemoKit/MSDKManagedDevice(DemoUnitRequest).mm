@interface MSDKManagedDevice(DemoUnitRequest)
@end

@implementation MSDKManagedDevice(DemoUnitRequest)

- (void)checkInWithCompletion:()DemoUnitRequest .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Device not supported", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)checkInWithCompletion:()DemoUnitRequest .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)markAsNotDemoWithCompletion:()DemoUnitRequest .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Device not supported", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)markAsNotDemoWithCompletion:()DemoUnitRequest .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)searchStoreWithOptions:()DemoUnitRequest completion:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Device not supported", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)searchStoreWithOptions:()DemoUnitRequest completion:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleCheckInXPCResponse:()DemoUnitRequest withCompletion:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "[MSDKManagedDevice(DemoUnitRequest) _handleCheckInXPCResponse:withCompletion:]";
    _os_log_error_impl(&dword_259B7D000, v0, OS_LOG_TYPE_ERROR, "%s - xpc response for CheckIn is of unexpected type", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)_handleSearchXPCResponse:()DemoUnitRequest withCompletion:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - xpc response for Store Search is of unexpected type", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleSearchXPCResponse:()DemoUnitRequest withCompletion:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Store Search Failed", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleSearchXPCResponse:()DemoUnitRequest withCompletion:.cold.3(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 136315394;
  v6 = "[MSDKManagedDevice(DemoUnitRequest) _handleSearchXPCResponse:withCompletion:]";
  v7 = 2114;
  v8 = objc_opt_class();
  v3 = v8;
  _os_log_error_impl(&dword_259B7D000, a2, OS_LOG_TYPE_ERROR, "%s - Store Search result format not correct: %{public}@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleSearchXPCResponse:()DemoUnitRequest withCompletion:.cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to get store search result from xpc dictionary", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleSearchXPCResponse:()DemoUnitRequest withCompletion:.cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Store Search invalid response in xpc", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end