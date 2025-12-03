@interface MKDiscoverabilitySignals
- (MKDiscoverabilitySignals)init;
- (void)addSignalsForClient:(id)client;
- (void)addSignalsForMigrator:(id)migrator;
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

- (void)addSignalsForClient:(id)client
{
  v26 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v5 = MEMORY[0x277CBEAF8];
  locale = [clientCopy locale];
  v7 = [v5 localeWithLocaleIdentifier:locale];

  signals = [(MKDiscoverabilitySignals *)self signals];
  languageCode = [v7 languageCode];
  [signals setValue:languageCode forKey:@"device_language"];

  signals2 = [(MKDiscoverabilitySignals *)self signals];
  regionCode = [v7 regionCode];
  [signals2 setValue:regionCode forKey:@"device_region"];

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  inputMethodLanguages = [clientCopy inputMethodLanguages];
  v14 = [inputMethodLanguages countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(inputMethodLanguages);
        }

        v18 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:*(*(&v21 + 1) + 8 * v17)];
        [v12 addObject:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [inputMethodLanguages countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  signals3 = [(MKDiscoverabilitySignals *)self signals];
  [signals3 setValue:v12 forKey:@"input_method_languages"];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addSignalsForMigrator:(id)migrator
{
  v23 = *MEMORY[0x277D85DE8];
  migratorCopy = migrator;
  type = [migratorCopy type];
  if (type <= 10)
  {
    if (type == 5)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(migratorCopy, "importCount") != 0}];
      signals = [(MKDiscoverabilitySignals *)self signals];
      v12 = signals;
      v13 = @"contacts_imported";
    }

    else
    {
      if (type != 10)
      {
        goto LABEL_16;
      }

      v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(migratorCopy, "importCount") != 0}];
      signals = [(MKDiscoverabilitySignals *)self signals];
      v12 = signals;
      v13 = @"messages_imported";
    }

    [signals setValue:v10 forKey:v13];

    goto LABEL_16;
  }

  if ((type - 11) >= 2)
  {
    if (type == 16)
    {
      aggregatedActivatedCellularPlansCount = [migratorCopy aggregatedActivatedCellularPlansCount];
      signals2 = [(MKDiscoverabilitySignals *)self signals];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:aggregatedActivatedCellularPlansCount];
      [signals2 setValue:v16 forKey:@"cellular_plans"];

      v17 = +[MKLog log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 134217984;
        v22 = aggregatedActivatedCellularPlansCount;
        _os_log_impl(&dword_2592D2000, v17, OS_LOG_TYPE_INFO, "did set a signal. aggregated_activated_sims_count=%ld", &v21, 0xCu);
      }
    }
  }

  else
  {
    signals3 = [(MKDiscoverabilitySignals *)self signals];
    v7 = [signals3 objectForKey:@"photo_library_imported"];

    v8 = MEMORY[0x277CCABB0];
    v9 = ([v7 BOOLValue] & 1) != 0 || objc_msgSend(migratorCopy, "importCount") != 0;
    v18 = [v8 numberWithInt:v9];

    signals4 = [(MKDiscoverabilitySignals *)self signals];
    [signals4 setValue:v18 forKey:@"photo_library_imported"];
  }

LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)donateSignals
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAA0];
  signals = [(MKDiscoverabilitySignals *)self signals];
  v16 = 0;
  v5 = [v3 dataWithJSONObject:signals options:0 error:&v16];
  v6 = v16;

  if (v6)
  {
    signals2 = +[MKLog log];
    if (os_log_type_enabled(signals2, OS_LOG_TYPE_ERROR))
    {
      [(MKDiscoverabilitySignals *)self donateSignals];
    }
  }

  else
  {
    v8 = BiomeLibrary();
    discoverability = [v8 Discoverability];
    signals2 = [discoverability Signals];

    v10 = [objc_alloc(MEMORY[0x277CF1168]) initWithContentIdentifier:@"com.apple.migrationkit.signals" context:0 osBuild:0 userInfo:v5];
    v11 = +[MKLog log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      signals3 = [(MKDiscoverabilitySignals *)self signals];
      v13 = [signals3 count];
      *buf = 138412546;
      selfCopy = self;
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&dword_2592D2000, v11, OS_LOG_TYPE_INFO, "%@ will donate %lu signals", buf, 0x16u);
    }

    source = [signals2 source];
    [source sendEvent:v10];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end