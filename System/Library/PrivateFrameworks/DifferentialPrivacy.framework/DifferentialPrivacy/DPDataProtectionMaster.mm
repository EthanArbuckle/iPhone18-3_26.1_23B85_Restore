@interface DPDataProtectionMaster
@end

@implementation DPDataProtectionMaster

uint64_t __41___DPDataProtectionMaster_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance_0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void __31___DPDataProtectionMaster_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleKeyBagLockNotification];
}

void __55___DPDataProtectionMaster_handleKeyBagLockNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) availableState];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isDataAvailableForClassC")}];
  v7 = [*(a1 + 32) availableState];
  v8 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
  [v7 setObject:v6 forKeyedSubscript:v8];

  v12 = [*(a1 + 32) handlers];
  v9 = [v12 allValues];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void __55___DPDataProtectionMaster_handleKeyBagLockNotification__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:{v7, v15}];
        v9 = [v8 BOOLValue];

        v10 = [*(a1 + 32) availableState];
        v11 = [v10 objectForKeyedSubscript:v7];
        v12 = [v11 BOOLValue];

        if (v9 != v12)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithBool:v12];
          [*(a1 + 40) setObject:v13 forKeyedSubscript:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __46___DPDataProtectionMaster_isDataAvailableFor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) availableState];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v4 BOOLValue];
    v3 = v4;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void __54___DPDataProtectionMaster_registerStateChangeHandler___block_invoke(uint64_t a1)
{
  v3 = MEMORY[0x22AA7A8C0](*(a1 + 48));
  v2 = [*(a1 + 32) handlers];
  [v2 setObject:v3 forKeyedSubscript:*(a1 + 40)];
}

void __56___DPDataProtectionMaster_deregisterStateChangeHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handlers];
  [v2 removeObjectForKey:*(a1 + 40)];
}

@end