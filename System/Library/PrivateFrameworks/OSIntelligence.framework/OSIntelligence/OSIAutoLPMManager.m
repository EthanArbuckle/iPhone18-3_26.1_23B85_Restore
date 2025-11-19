@interface OSIAutoLPMManager
@end

@implementation OSIAutoLPMManager

void __27___OSIAutoLPMManager_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27___OSIAutoLPMManager_start__block_invoke_2;
  block[3] = &unk_2799C1770;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

uint64_t __27___OSIAutoLPMManager_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isPluggedIn];
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __27___OSIAutoLPMManager_start__block_invoke_2_cold_1(v2, v3);
  }

  v4 = *(a1 + 32);
  if (v2)
  {
    return [v4 evaluateAutoLPMDisengagement];
  }

  else
  {
    return [v4 evaluateAutoLPMEngagement];
  }
}

void __27___OSIAutoLPMManager_start__block_invoke_31(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27___OSIAutoLPMManager_start__block_invoke_2_32;
  block[3] = &unk_2799C1770;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

void __27___OSIAutoLPMManager_start__block_invoke_2_32(uint64_t a1)
{
  if ([*(a1 + 32) didEnableAutoLPM])
  {
    v2 = [*(a1 + 32) context];
    v3 = [MEMORY[0x277CFE338] keyPathForLowPowerModeStatus];
    v4 = [v2 objectForKeyedSubscript:v3];
    v5 = [v4 BOOLValue];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) setDidEnableAutoLPM:0];
      v6 = [*(a1 + 32) defaults];
      [v6 setBool:0 forKey:@"autoLPMState"];

      v7 = [*(a1 + 32) defaults];
      [v7 setBool:1 forKey:@"autoLPMDisengaged"];

      v9 = [*(a1 + 32) defaults];
      v8 = [MEMORY[0x277CBEAA8] date];
      [v9 setObject:v8 forKey:@"autoLPMDisengagedTime"];
    }
  }
}

void __27___OSIAutoLPMManager_start__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27___OSIAutoLPMManager_start__block_invoke_4;
  block[3] = &unk_2799C1770;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

uint64_t __27___OSIAutoLPMManager_start__block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) didEnableAutoLPM];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 evaluateAutoLPMDisengagement];
  }

  return result;
}

uint64_t __36___OSIAutoLPMManager_sharedInstance__block_invoke()
{
  sharedInstance_instance_4 = objc_alloc_init(_OSIAutoLPMManager);

  return MEMORY[0x2821F96F8]();
}

void __27___OSIAutoLPMManager_start__block_invoke_2_cold_1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1 & 1;
  _os_log_debug_impl(&dword_25D171000, a2, OS_LOG_TYPE_DEBUG, "Is PluggedIn %ld ", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end