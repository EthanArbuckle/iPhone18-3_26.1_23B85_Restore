@interface COMessagingServiceMeter
@end

@implementation COMessagingServiceMeter

void __32___COMessagingServiceMeter_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __32___COMessagingServiceMeter_init__block_invoke_2;
    v3[3] = &unk_278E15AB8;
    v4 = WeakRetained;
    [v4 _withLock:v3];
  }
}

void __32___COMessagingServiceMeter_init__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) peaks];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = COCoreLogForCategory(9);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [v1 objectForKey:v6];
          *buf = 138412546;
          v15 = v6;
          v16 = 2112;
          v17 = v8;
          _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_INFO, "Peak usage for %@: %@ bytes", buf, 0x16u);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __59___COMessagingServiceMeter_clientIdentifier_canSendLength___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) peaks];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3 > [v2 unsignedIntegerValue])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    [v5 setObject:v4 forKey:*(a1 + 40)];
  }
}

void __62___COMessagingServiceMeter_clientIdentifier_canReceiveLength___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) peaks];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3 > [v2 unsignedIntegerValue])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    [v5 setObject:v4 forKey:*(a1 + 40)];
  }
}

void __51___COMessagingServiceMeter_isEvaluatingIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) peaks];
  v2 = [v3 objectForKey:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
}

@end