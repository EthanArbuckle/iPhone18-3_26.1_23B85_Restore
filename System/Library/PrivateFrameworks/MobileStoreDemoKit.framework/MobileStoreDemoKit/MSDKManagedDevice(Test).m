@interface MSDKManagedDevice(Test)
- (void)reloadDemodsPreferencesFile;
@end

@implementation MSDKManagedDevice(Test)

- (void)launchApp:()Test .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)reloadDemodsPreferencesFile
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceLanguageWithoutSystemLanguageMatching:()Test andRegion:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end