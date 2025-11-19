@interface DKLocationCoordinatesMonitor
@end

@implementation DKLocationCoordinatesMonitor

uint64_t __36___DKLocationCoordinatesMonitor_log__block_invoke()
{
  v0 = os_log_create("com.apple.coreduet.monitors", "_DKLocationCoordinatesMonitor");
  v1 = log_log_1;
  log_log_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __37___DKLocationCoordinatesMonitor_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBFC10]);
  v3 = *(a1 + 32);
  v4 = [v3 queue];
  v5 = [v2 initWithEffectiveBundlePath:@"/System/Library/LocationBundles/SystemCustomization.bundle" delegate:v3 onQueue:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 160);
  *(v6 + 160) = v5;

  v8 = *MEMORY[0x277CE4248];
  v9 = *(*(a1 + 32) + 160);

  return [v9 setDesiredAccuracy:v8];
}

void __51___DKLocationCoordinatesMonitor__fetchAndCacheLOIs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = +[_DKLocationCoordinatesMonitor log];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22595A000, v8, OS_LOG_TYPE_INFO, "Cached Routine Home LOI", v10, 2u);
    }

    v8 = [v6 location];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setHome:v8];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __51___DKLocationCoordinatesMonitor__fetchAndCacheLOIs__block_invoke_cold_1();
  }
}

void __51___DKLocationCoordinatesMonitor__fetchAndCacheLOIs__block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = +[_DKLocationCoordinatesMonitor log];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22595A000, v8, OS_LOG_TYPE_INFO, "Cached Routine Work LOI", v10, 2u);
    }

    v8 = [v6 location];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setWork:v8];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __51___DKLocationCoordinatesMonitor__fetchAndCacheLOIs__block_invoke_19_cold_1();
  }
}

void __37___DKLocationCoordinatesMonitor_stop__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 160) stopUpdatingLocation];
  v2 = *(*(a1 + 32) + 152);

  dispatch_suspend(v2);
}

void __51___DKLocationCoordinatesMonitor__fetchAndCacheLOIs__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51___DKLocationCoordinatesMonitor__fetchAndCacheLOIs__block_invoke_19_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end