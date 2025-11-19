@interface DPKeyNames
@end

@implementation DPKeyNames

void __39___DPKeyNames_propertiesFromNamesFile___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"override.keynames" ofType:@"plist"];

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = [MEMORY[0x277CBEBF8] mutableCopy];
  v5 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39___DPKeyNames_propertiesFromNamesFile___block_invoke_6;
  v10[3] = &unk_27858AB90;
  v10[4] = &v11;
  v6 = [_DPPListHelper loadPropertyListFromPath:v5 overridePath:v4 usingBlock:v10];
  v7 = allKeys;
  allKeys = v6;

  v8 = [v12[5] copy];
  v9 = allKeyNamePatterns;
  allKeyNamePatterns = v8;

  _Block_object_dispose(&v11, 8);
}

id __39___DPKeyNames_propertiesFromNamesFile___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"PropertiesName"];
  if (v6)
  {
    v7 = [_DPKeyProperties keyPropertiesForName:v6];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __44___DPKeyNames_keyNamesGroupedByPropertyName__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = +[_DPStrings keyNamesPath];
  v3 = [v1 propertiesFromNamesFile:v2];

  v4 = [MEMORY[0x277CBEC10] mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:v10];
        v12 = [v11 propertiesName];

        v13 = [v4 objectForKeyedSubscript:v12];
        v14 = [v13 mutableCopy];

        if (!v14)
        {
          v14 = [MEMORY[0x277CBEBF8] mutableCopy];
        }

        [v14 addObject:v10];
        v15 = [v14 copy];
        [v4 setObject:v15 forKeyedSubscript:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = [v4 copy];
  v17 = allKeysGroupedByPropertyName;
  allKeysGroupedByPropertyName = v16;

  v18 = *MEMORY[0x277D85DE8];
}

@end