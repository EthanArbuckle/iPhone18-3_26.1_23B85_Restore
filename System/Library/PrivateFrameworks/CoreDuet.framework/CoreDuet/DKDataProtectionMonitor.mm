@interface DKDataProtectionMonitor
@end

@implementation DKDataProtectionMonitor

uint64_t __42___DKDataProtectionMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

void __32___DKDataProtectionMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_DKDataProtectionMonitor *)WeakRetained handleKeyBagLockNotification];
}

void __56___DKDataProtectionMonitor_handleKeyBagLockNotification__block_invoke(uint64_t *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 24) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x1E696AD98] numberWithBool:-[_DKDataProtectionMonitor isDataAvailableForClassA](a1[4])];
  [*(a1[4] + 24) setObject:v5 forKeyedSubscript:*MEMORY[0x1E696A378]];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:-[_DKDataProtectionMonitor isDataAvailableForClassC](a1[4])];
  [*(a1[4] + 24) setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A388]];

  v7 = [*(a1[4] + 8) allValues];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = *(*(a1[5] + 8) + 40);
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [*(*(a1[5] + 8) + 40) objectForKeyedSubscript:{v15, v22}];
        v17 = [v16 BOOLValue];

        v18 = [*(a1[4] + 24) objectForKeyedSubscript:v15];
        v19 = [v18 BOOLValue];

        if (v17 != v19)
        {
          v20 = [MEMORY[0x1E696AD98] numberWithBool:v19];
          [*(*(a1[7] + 8) + 40) setObject:v20 forKeyedSubscript:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __47___DKDataProtectionMonitor_isDataAvailableFor___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
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

void __55___DKDataProtectionMonitor_registerStateChangeHandler___block_invoke(void *a1)
{
  v2 = MEMORY[0x193B00C50](a1[6]);
  [*(a1[4] + 8) setObject:v2 forKeyedSubscript:a1[5]];
}

@end