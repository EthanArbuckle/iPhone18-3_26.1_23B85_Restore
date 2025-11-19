@interface CDContextualLocationRegistrationMonitor
@end

@implementation CDContextualLocationRegistrationMonitor

void __60___CDContextualLocationRegistrationMonitor_addRegistration___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) locationManagerEffectiveBundleID];

  if (v3)
  {
    v4 = [*(a1 + 40) registrations];
    [v4 addObject:*(a1 + 32)];

    v5 = [*(a1 + 32) locationManagerEffectiveBundleID];
    v6 = [*(a1 + 40) managers];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (!v7)
    {
      if ([v5 isEqualToString:@"com.apple.shortcuts"])
      {
        v8 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:@"/System/Library/LocationBundles/ShortcutsLocation.bundle"];
        v9 = objc_alloc(MEMORY[0x1E695FBE8]);
        v10 = *(a1 + 40);
        v11 = [v10 queue];
        v7 = [v9 initWithEffectiveBundle:v8 delegate:v10 onQueue:v11];
      }

      else
      {
        v12 = objc_alloc(MEMORY[0x1E695FBE8]);
        v13 = *(a1 + 40);
        v8 = [v13 queue];
        v7 = [v12 initWithEffectiveBundleIdentifier:v5 delegate:v13 onQueue:v8];
      }

      v14 = [*(a1 + 40) managers];
      [v14 setObject:v7 forKeyedSubscript:v5];

      v15 = [*(a1 + 40) effectiveBundleIDs];
      v16 = [v5 copy];
      [v15 setObject:v16 forKey:v7];

      v17 = [*(a1 + 40) effectiveBundleIDRegionInfos];
      v18 = [v17 objectForKeyedSubscript:v5];

      if (!v18)
      {
        v19 = objc_alloc_init(MEMORY[0x1E695DF20]);
        v20 = [*(a1 + 40) effectiveBundleIDRegionInfos];
        [v20 setObject:v19 forKeyedSubscript:v5];
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = [*v2 predicate];
    v22 = [v21 circularLocationRegions];

    v23 = [v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v29 + 1) + 8 * i);
          [v27 setNotifyOnEntry:1];
          [v27 setNotifyOnExit:1];
          [v7 startMonitoringForRegion:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __60___CDContextualLocationRegistrationMonitor_addRegistration___block_invoke_cold_1(v2, v5);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __63___CDContextualLocationRegistrationMonitor_removeRegistration___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) registrations];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 40) locationManagerEffectiveBundleID];
  v4 = [*(a1 + 32) managers];
  v5 = [v4 objectForKeyedSubscript:v3];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [*(a1 + 40) predicate];
  v7 = [v6 circularLocationRegions];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v5 stopMonitoringForRegion:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __60___CDContextualLocationRegistrationMonitor_addRegistration___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*a1 identifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1A9611000, a2, OS_LOG_TYPE_ERROR, "Cannot monitor location for contextual registration %@ which has no effective bundleID", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end