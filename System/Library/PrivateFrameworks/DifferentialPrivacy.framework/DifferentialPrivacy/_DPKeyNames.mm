@interface _DPKeyNames
+ (id)allKeyNames;
+ (id)keyNamesGroupedByPropertyName;
+ (id)keyPropertiesForKey:(id)a3;
+ (id)propertiesFromNamesFile:(id)a3;
@end

@implementation _DPKeyNames

+ (id)keyPropertiesForKey:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[_DPStrings keyNamesPath];
  v6 = [a1 propertiesFromNamesFile:v5];

  v7 = [v6 objectForKeyedSubscript:v4];
  if (!v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = allKeyNamePatterns;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ([v4 hasPrefix:{v13, v17}])
          {
            v14 = [v6 objectForKeyedSubscript:v13];
            if (v14)
            {
              v7 = v14;
              goto LABEL_13;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_13:
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)propertiesFromNamesFile:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39___DPKeyNames_propertiesFromNamesFile___block_invoke;
  v10[3] = &unk_27858ABB8;
  v12 = a1;
  v6 = v4;
  v11 = v6;
  if (propertiesFromNamesFile__onceToken != -1)
  {
    dispatch_once(&propertiesFromNamesFile__onceToken, v10);
  }

  objc_autoreleasePoolPop(v5);
  v7 = allKeys;
  v8 = allKeys;

  return v7;
}

+ (id)allKeyNames
{
  v3 = +[_DPStrings keyNamesPath];
  v4 = [a1 propertiesFromNamesFile:v3];

  v5 = [v4 allKeys];

  return v5;
}

+ (id)keyNamesGroupedByPropertyName
{
  v3 = objc_autoreleasePoolPush();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___DPKeyNames_keyNamesGroupedByPropertyName__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (keyNamesGroupedByPropertyName_onceToken != -1)
  {
    dispatch_once(&keyNamesGroupedByPropertyName_onceToken, block);
  }

  objc_autoreleasePoolPop(v3);
  v4 = allKeysGroupedByPropertyName;

  return v4;
}

@end