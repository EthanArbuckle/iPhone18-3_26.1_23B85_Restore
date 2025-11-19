@interface DKLocationMonitor
@end

@implementation DKLocationMonitor

void __26___DKLocationMonitor_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBFC10]);
  v8 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/LocationBundles/SystemCustomization.bundle"];
  v3 = *(a1 + 32);
  v4 = [v3 queue];
  v5 = [v2 initWithEffectiveBundle:v8 delegate:v3 onQueue:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 152);
  *(v6 + 152) = v5;
}

void __35___DKLocationMonitor__handleVisit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __35___DKLocationMonitor__handleVisit___block_invoke_cold_1(v4, v5);
    }
  }

  else
  {
    v5 = [a2 valueForKey:@"identifier"];
    v6 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22595A000, v6, OS_LOG_TYPE_INFO, "_DKLocationMonitor LOIs nearby %@", &v10, 0xCu);
    }

    v7 = [MEMORY[0x277CFE318] userContext];
    v8 = [MEMORY[0x277CFE338] keyPathForNearbyLOIIdentifiers];
    [v7 setObject:v5 forKeyedSubscript:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __35___DKLocationMonitor__handleVisit___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22595A000, a2, OS_LOG_TYPE_ERROR, "_DKLocationMonitor CoreRoutine Fetch LOIs error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end