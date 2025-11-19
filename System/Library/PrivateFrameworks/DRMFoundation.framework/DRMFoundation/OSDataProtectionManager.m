@interface OSDataProtectionManager
@end

@implementation OSDataProtectionManager

void __32___OSDataProtectionManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleKeyBagLockNotification];
}

uint64_t __56___OSDataProtectionManager_handleKeyBagLockNotification__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isDataAvailableForClassA")}];
  v6 = *(*(a1 + 32) + 32);
  v7 = +[_OSDataProtectionStateMonitor dataProtectionClassA];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isDataAvailableForClassC")}];
  v9 = *(*(a1 + 32) + 32);
  v10 = +[_OSDataProtectionStateMonitor dataProtectionClassC];
  [v9 setObject:v8 forKeyedSubscript:v10];

  v11 = [*(*(a1 + 32) + 24) allValues];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  return MEMORY[0x2821F96F8]();
}

void __56___OSDataProtectionManager_handleKeyBagLockNotification__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:{v7, v14}];
        v9 = [v8 BOOLValue];

        v10 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v7];
        v11 = [v10 BOOLValue];

        if (v9 != v11)
        {
          v12 = [MEMORY[0x277CCABB0] numberWithBool:v11];
          [*(a1 + 40) setObject:v12 forKeyedSubscript:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __42___OSDataProtectionManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void __47___OSDataProtectionManager_isDataAvailableFor___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v3 = v2;
    *(*(a1[6] + 8) + 24) = [v2 BOOLValue];
    v2 = v3;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
  }
}

void __55___OSDataProtectionManager_registerStateChangeHandler___block_invoke(void *a1)
{
  v2 = MEMORY[0x24C1BF860](a1[6]);
  [*(a1[4] + 24) setObject:v2 forKeyedSubscript:a1[5]];
}

@end