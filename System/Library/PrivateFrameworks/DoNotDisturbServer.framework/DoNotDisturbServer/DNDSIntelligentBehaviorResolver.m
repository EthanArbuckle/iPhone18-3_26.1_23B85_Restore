@interface DNDSIntelligentBehaviorResolver
- (int64_t)intelligentInterruptionBehaviorForClientEventDetails:(id)a3;
- (int64_t)llmIntelligentBehavior:(id)a3;
@end

@implementation DNDSIntelligentBehaviorResolver

- (int64_t)intelligentInterruptionBehaviorForClientEventDetails:(id)a3
{
  v4 = a3;
  v5 = [v4 forwardingBehavior];

  if (v5)
  {
    v6 = [v4 forwardingBehavior];
    v7 = [v6 intelligentBehavior];
  }

  else if (+[DNDSPlatformEligibility isIntelligenceAvailable])
  {
    v7 = [(DNDSIntelligentBehaviorResolver *)self llmIntelligentBehavior:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (int64_t)llmIntelligentBehavior:(id)a3
{
  v3 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v4 = objc_alloc_init(MEMORY[0x277CC34A0]);
  [v4 setLive:0];
  [v4 setFetchAttributes:&unk_285C53BE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = [v3 bundleIdentifier];
  v7 = [v3 identifier];
  v8 = [v5 stringWithFormat:@"%@:%@", v6, v7];

  v9 = MEMORY[0x277CCACA8];
  v10 = [v3 bundleIdentifier];
  v11 = [v9 stringWithFormat:@"%@ == %@ && %@ == %@", *MEMORY[0x277CC2770], @"com.apple.usernotifications", *MEMORY[0x277CC26C0], v10];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ == %@", *MEMORY[0x277CC3208], v8];
  [v4 setFilterQuery:v12];
  v13 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v11 queryContext:v4];
  if (v13)
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = __Block_byref_object_copy__6;
    v25[4] = __Block_byref_object_dispose__6;
    v26 = [MEMORY[0x277CBEA60] array];
    v14 = dispatch_semaphore_create(0);
    [v13 setBundleIDs:&unk_285C53C00];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__DNDSIntelligentBehaviorResolver_llmIntelligentBehavior___block_invoke;
    v24[3] = &unk_278F8AC78;
    v24[4] = v25;
    [v13 setFoundItemsHandler:v24];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__DNDSIntelligentBehaviorResolver_llmIntelligentBehavior___block_invoke_2;
    v19[3] = &unk_278F8ACA0;
    v22 = v25;
    v20 = v3;
    v23 = &v27;
    v15 = v14;
    v21 = v15;
    [v13 setCompletionHandler:v19];
    [v13 start];
    v16 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v15, v16);

    _Block_object_dispose(v25, 8);
  }

  v17 = v28[3];

  _Block_object_dispose(&v27, 8);
  return v17;
}

void __58__DNDSIntelligentBehaviorResolver_llmIntelligentBehavior___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 count])
  {
    v3 = [v6 copy];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void __58__DNDSIntelligentBehaviorResolver_llmIntelligentBehavior___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    if ([*(*(*(a1 + 48) + 8) + 40) count])
    {
      if ([*(*(*(a1 + 48) + 8) + 40) count] < 2)
      {
        v13 = [*(*(*(a1 + 48) + 8) + 40) firstObject];
        v7 = v13;
        if (!v13 || (-[NSObject attributeSet](v13, "attributeSet"), v14 = objc_claimAutoreleasedReturnValue(), [v14 isUrgent], v8 = objc_claimAutoreleasedReturnValue(), v14, !v8))
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
          goto LABEL_18;
        }

        v15 = [v8 BOOLValue];
        v16 = 2;
        if (!v15)
        {
          v16 = 3;
        }

        *(*(*(a1 + 56) + 8) + 24) = v16;
LABEL_16:

LABEL_18:
        goto LABEL_19;
      }

      v5 = DNDSLogResolver;
      if (!os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 identifier];
      v9 = [*(a1 + 32) bundleIdentifier];
      v18 = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v10 = "Intelligent interruption spotlight query found more than one match for %@, %@";
    }

    else
    {
      v11 = DNDSLogResolver;
      if (!os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v12 = *(a1 + 32);
      v7 = v11;
      v8 = [v12 identifier];
      v9 = [*(a1 + 32) bundleIdentifier];
      v18 = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v10 = "Intelligent interruption spotlight query found no matches for %@, %@";
    }

    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, v10, &v18, 0x16u);

    goto LABEL_16;
  }

  v4 = DNDSLogResolver;
  if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v3;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Intelligent interruption spotlight query | Error: %@", &v18, 0xCu);
  }

LABEL_19:
  dispatch_semaphore_signal(*(a1 + 40));

  v17 = *MEMORY[0x277D85DE8];
}

@end