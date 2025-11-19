@interface GDSManager
@end

@implementation GDSManager

uint64_t __48___GDSManager_managerWithID_locationBundlePath___block_invoke(uint64_t result)
{
  if (!managerWithID_locationBundlePath__instance)
  {
    managerWithID_locationBundlePath__instance = [[_GDSManager alloc] initWithID:*(result + 32) locationBundlePath:*(result + 40)];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void __51___GDSManager_registerClientID_locationBundlePath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51___GDSManager_registerClientID_locationBundlePath___block_invoke_cold_1();
  }
}

void __51___GDSManager_registerClientID_locationBundlePath___block_invoke_62(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51___GDSManager_registerClientID_locationBundlePath___block_invoke_62_cold_1();
    }
  }
}

void __42___GDSManager_triggerBAUpdateWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51___GDSManager_registerClientID_locationBundlePath___block_invoke_cold_1();
  }
}

void __42___GDSManager_triggerBAUpdateWithHandler___block_invoke_63(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42___GDSManager_triggerBAUpdateWithHandler___block_invoke_63_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __51___GDSManager_registerClientID_locationBundlePath___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(v0 + 40));
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __51___GDSManager_registerClientID_locationBundlePath___block_invoke_62_cold_1()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(v0 + 40));
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __42___GDSManager_triggerBAUpdateWithHandler___block_invoke_63_cold_1()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(v0 + 48));
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end