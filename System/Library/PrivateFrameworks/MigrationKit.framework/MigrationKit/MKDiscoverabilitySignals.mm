@interface MKDiscoverabilitySignals
- (MKDiscoverabilitySignals)init;
- (void)addSignalsForClient:(id)a3;
- (void)addSignalsForMigrator:(id)a3;
- (void)donateSignals;
@end

@implementation MKDiscoverabilitySignals

- (MKDiscoverabilitySignals)init
{
  v5.receiver = self;
  v5.super_class = MKDiscoverabilitySignals;
  v2 = [(MKDiscoverabilitySignals *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(MKDiscoverabilitySignals *)v2 setSignals:v3];
  }

  return v2;
}

- (void)addSignalsForClient:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEAF8];
  v6 = [v4 locale];
  v7 = [v5 localeWithLocaleIdentifier:v6];

  v8 = [(MKDiscoverabilitySignals *)self signals];
  v9 = [v7 languageCode];
  [v8 setValue:v9 forKey:@"device_language"];

  v10 = [(MKDiscoverabilitySignals *)self signals];
  v11 = [v7 regionCode];
  [v10 setValue:v11 forKey:@"device_region"];

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [v4 inputMethodLanguages];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:*(*(&v21 + 1) + 8 * v17)];
        [v12 addObject:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = [(MKDiscoverabilitySignals *)self signals];
  [v19 setValue:v12 forKey:@"input_method_languages"];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addSignalsForMigrator:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 type];
  if (v5 <= 10)
  {
    if (v5 == 5)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "importCount") != 0}];
      v11 = [(MKDiscoverabilitySignals *)self signals];
      v12 = v11;
      v13 = @"contacts_imported";
    }

    else
    {
      if (v5 != 10)
      {
        goto LABEL_16;
      }

      v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "importCount") != 0}];
      v11 = [(MKDiscoverabilitySignals *)self signals];
      v12 = v11;
      v13 = @"messages_imported";
    }

    [v11 setValue:v10 forKey:v13];

    goto LABEL_16;
  }

  if ((v5 - 11) >= 2)
  {
    if (v5 == 16)
    {
      v14 = [v4 aggregatedActivatedCellularPlansCount];
      v15 = [(MKDiscoverabilitySignals *)self signals];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
      [v15 setValue:v16 forKey:@"cellular_plans"];

      v17 = +[MKLog log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 134217984;
        v22 = v14;
        _os_log_impl(&dword_2592D2000, v17, OS_LOG_TYPE_INFO, "did set a signal. aggregated_activated_sims_count=%ld", &v21, 0xCu);
      }
    }
  }

  else
  {
    v6 = [(MKDiscoverabilitySignals *)self signals];
    v7 = [v6 objectForKey:@"photo_library_imported"];

    v8 = MEMORY[0x277CCABB0];
    v9 = ([v7 BOOLValue] & 1) != 0 || objc_msgSend(v4, "importCount") != 0;
    v18 = [v8 numberWithInt:v9];

    v19 = [(MKDiscoverabilitySignals *)self signals];
    [v19 setValue:v18 forKey:@"photo_library_imported"];
  }

LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)donateSignals
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAA0];
  v4 = [(MKDiscoverabilitySignals *)self signals];
  v16 = 0;
  v5 = [v3 dataWithJSONObject:v4 options:0 error:&v16];
  v6 = v16;

  if (v6)
  {
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MKDiscoverabilitySignals *)self donateSignals];
    }
  }

  else
  {
    v8 = BiomeLibrary();
    v9 = [v8 Discoverability];
    v7 = [v9 Signals];

    v10 = [objc_alloc(MEMORY[0x277CF1168]) initWithContentIdentifier:@"com.apple.migrationkit.signals" context:0 osBuild:0 userInfo:v5];
    v11 = +[MKLog log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(MKDiscoverabilitySignals *)self signals];
      v13 = [v12 count];
      *buf = 138412546;
      v18 = self;
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&dword_2592D2000, v11, OS_LOG_TYPE_INFO, "%@ will donate %lu signals", buf, 0x16u);
    }

    v14 = [v7 source];
    [v14 sendEvent:v10];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end