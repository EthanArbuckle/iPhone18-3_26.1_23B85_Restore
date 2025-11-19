@interface OSIBatteryLifeManager
@end

@implementation OSIBatteryLifeManager

void __30___OSIBatteryLifeManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v9 = 0;
    v3 = [WeakRetained mitigationWithError:&v9];
    v4 = v9;
    if (v4)
    {
      v5 = [v2 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __30___OSIBatteryLifeManager_init__block_invoke_cold_1(v4, v5);
      }
    }

    else
    {
      v6 = [v2 clientToHandler];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __30___OSIBatteryLifeManager_init__block_invoke_4;
      v7[3] = &unk_2799C1948;
      v8 = v3;
      [v6 enumerateKeysAndObjectsUsingBlock:v7];

      v5 = v8;
    }
  }
}

uint64_t __40___OSIBatteryLifeManager_sharedInstance__block_invoke()
{
  sharedInstance_instance_1 = objc_alloc_init(_OSIBatteryLifeManager);

  return MEMORY[0x2821F96F8]();
}

void __30___OSIBatteryLifeManager_init__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25D171000, a2, OS_LOG_TYPE_ERROR, "Error fetching changed OSIBLMitigation %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end