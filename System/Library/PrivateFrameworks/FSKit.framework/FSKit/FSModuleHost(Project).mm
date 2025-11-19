@interface FSModuleHost(Project)
- (void)loadEnabledList;
- (void)loadModulesFromEKit;
- (void)loadProbeOrderList;
- (void)saveEnabledList;
- (void)saveProbeOrderList;
@end

@implementation FSModuleHost(Project)

- (void)loadModulesFromEKit
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadProbeOrderList
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveProbeOrderList
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_24A929000, a1, a3, "%s: Can't get probe order URL, can't save probe order", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)loadEnabledList
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveEnabledList
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_24A929000, a1, a3, "%s: Can't get enabled list URL, can't save enabled list", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addBundleToEnableModules:()Project .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_24A929000, a1, a3, "%s: instance is nil, can't add it to bundle", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeBundleFromEnabledModules:()Project .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_24A929000, a1, a3, "%s: instance is nil, can't remove it from bundle", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end