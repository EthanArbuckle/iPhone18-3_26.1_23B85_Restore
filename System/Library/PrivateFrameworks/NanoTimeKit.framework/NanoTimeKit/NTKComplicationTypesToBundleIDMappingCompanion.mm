@interface NTKComplicationTypesToBundleIDMappingCompanion
@end

@implementation NTKComplicationTypesToBundleIDMappingCompanion

void ___NTKComplicationTypesToBundleIDMappingCompanion_block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:60];
  v1 = _NTKBundleIDToComplicationTypesMappingCompanion();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___NTKComplicationTypesToBundleIDMappingCompanion_block_invoke_2;
  v5[3] = &unk_278781D20;
  v6 = v0;
  v2 = v0;
  [v1 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = [v2 copy];
  v4 = _NTKComplicationTypesToBundleIDMappingCompanion_complicationTypesTobundleIDMapping;
  _NTKComplicationTypesToBundleIDMappingCompanion_complicationTypesTobundleIDMapping = v3;
}

void ___NTKComplicationTypesToBundleIDMappingCompanion_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) setObject:v5 forKeyedSubscript:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end