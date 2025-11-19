@interface HDMCWatchFeatureSettings
+ (id)algorithmicProjectionsSettings;
+ (id)hiddenLoggingRowsSettings;
- (void)initWithFeatureIdentifier:(void *)a3 changeComputer:;
@end

@implementation HDMCWatchFeatureSettings

id __58__HDMCWatchFeatureSettings_algorithmicProjectionsSettings__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [v4 numberForKey:*MEMORY[0x277D11808]];
  if (v7)
  {
    v8 = [v5 hk_safeNumberIfExistsForKeyPath:@"MenstruationProjectionsEnabled" error:0];
    if (!v8 || ([v7 isEqualToNumber:v8] & 1) == 0)
    {
      [v6 setObject:v7 forKeyedSubscript:@"MenstruationProjectionsEnabled"];
    }
  }

  v9 = [v4 numberForKey:*MEMORY[0x277D11800]];
  if (v9)
  {
    v10 = [v5 hk_safeNumberIfExistsForKeyPath:@"FertileWindowProjectionsEnabled" error:0];
    if (!v10 || ([v9 isEqualToNumber:v10] & 1) == 0)
    {
      [v6 setObject:v9 forKeyedSubscript:@"FertileWindowProjectionsEnabled"];
    }
  }

  v11 = [v6 copy];

  return v11;
}

id __53__HDMCWatchFeatureSettings_hiddenLoggingRowsSettings__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = HKMCAllDisplayTypeIdentifiers();
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = HKFeatureSettingsKeyForIsLoggingHiddenForDisplayTypeIdentifier();
        v14 = [v4 numberForKey:{v13, v21}];

        [v6 setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  v15 = [v5 hk_safeDictionaryIfExistsForKeyPath:@"ShouldHideByDisplayTypeIdentifier" error:0];
  v16 = v15;
  v17 = MEMORY[0x277CBEC10];
  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = MEMORY[0x277CBEC10];
  }

  if (([v6 isEqualToDictionary:{v18, v21}] & 1) == 0)
  {
    v25 = @"ShouldHideByDisplayTypeIdentifier";
    v26 = v6;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)initWithFeatureIdentifier:(void *)a3 changeComputer:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = HDMCWatchFeatureSettings;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v7 = [v5 copy];
      v8 = a1[2];
      a1[2] = v7;

      v9 = _Block_copy(v6);
      v10 = a1[1];
      a1[1] = v9;
    }
  }

  return a1;
}

+ (id)algorithmicProjectionsSettings
{
  v2 = [a1 alloc];
  v3 = [(HDMCWatchFeatureSettings *)v2 initWithFeatureIdentifier:&__block_literal_global_7 changeComputer:?];

  return v3;
}

+ (id)hiddenLoggingRowsSettings
{
  v2 = [a1 alloc];
  v3 = [(HDMCWatchFeatureSettings *)v2 initWithFeatureIdentifier:&__block_literal_global_397 changeComputer:?];

  return v3;
}

@end