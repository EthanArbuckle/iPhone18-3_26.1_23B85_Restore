@interface NSBundle(BRLTBrailleTables)
+ (id)brl_brailleTableBundleWithIdentifier:()BRLTBrailleTables;
- (id)brl_brailleTablesDictionary;
- (id)brl_languageAgnosticTables;
- (id)brl_supportedLocaleIdentifiersForTableWithIdentifier:()BRLTBrailleTables;
- (id)brl_supportedLocales;
- (id)brl_supportedLocalesForTableWithIdentifier:()BRLTBrailleTables;
- (id)brl_supportedTablesForLocale:()BRLTBrailleTables;
- (uint64_t)brl_tableIsLanguageAgnosticWithIdentifier:()BRLTBrailleTables;
- (void)brl_brailleTablesDictionary;
@end

@implementation NSBundle(BRLTBrailleTables)

+ (id)brl_brailleTableBundleWithIdentifier:()BRLTBrailleTables
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[BRLTTableEnumerator tableEnumeratorWithSystemBundlePath];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  translatorBundles = [v4 translatorBundles];
  v6 = [translatorBundles countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(translatorBundles);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        bundleIdentifier = [v9 bundleIdentifier];
        v11 = [bundleIdentifier isEqualToString:v3];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [translatorBundles countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)brl_brailleTablesDictionary
{
  v1 = [self objectForInfoDictionaryKey:@"BrailleTables"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = BRLTLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(NSBundle(BRLTBrailleTables) *)v1 brl_brailleTablesDictionary];
    }

    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

- (id)brl_supportedLocales
{
  selfCopy = self;
  v30 = *MEMORY[0x277D85DE8];
  brl_brailleTablesDictionary = [self brl_brailleTablesDictionary];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(brl_brailleTablesDictionary, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = brl_brailleTablesDictionary;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      v7 = 0;
      v18 = v5;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        if (([selfCopy brl_tableIsLanguageAgnosticWithIdentifier:{v8, v18}] & 1) == 0)
        {
          v9 = selfCopy;
          v10 = [selfCopy brl_supportedLocaleIdentifiersForTableWithIdentifier:v8];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v21;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v21 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:*(*(&v20 + 1) + 8 * i)];
                if (v15)
                {
                  [v3 addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v12);
          }

          v5 = v18;
          selfCopy = v9;
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)brl_supportedTablesForLocale:()BRLTBrailleTables
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  selfCopy = self;
  brl_brailleTablesDictionary = [self brl_brailleTablesDictionary];
  v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = brl_brailleTablesDictionary;
  v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v32)
  {
    v30 = *v42;
    do
    {
      v7 = 0;
      do
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v7;
        v8 = *(*(&v41 + 1) + 8 * v7);
        v9 = [selfCopy brl_supportedLocaleIdentifiersForTableWithIdentifier:v8];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v34 = v9;
        v36 = [v9 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v36)
        {
          v35 = *v38;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v38 != v35)
              {
                objc_enumerationMutation(v34);
              }

              v11 = *(*(&v37 + 1) + 8 * i);
              v12 = MEMORY[0x277CBEAF8];
              languageCode = [v4 languageCode];
              v14 = [v12 localeWithLocaleIdentifier:languageCode];

              localeIdentifier = [v4 localeIdentifier];
              v16 = __60__NSBundle_BRLTBrailleTables__brl_supportedTablesForLocale___block_invoke(localeIdentifier, localeIdentifier);
              v17 = __60__NSBundle_BRLTBrailleTables__brl_supportedTablesForLocale___block_invoke(v16, v11);
              v18 = [v16 isEqualToString:v17];

              if (v18)
              {
                if ([v6 containsObject:v8])
                {
                  [v6 removeObject:v8];
                }

                [v6 insertObject:v8 atIndex:0];
              }

              else
              {
                languageCode2 = [v4 languageCode];
                v20 = __60__NSBundle_BRLTBrailleTables__brl_supportedTablesForLocale___block_invoke(languageCode2, languageCode2);
                v21 = __60__NSBundle_BRLTBrailleTables__brl_supportedTablesForLocale___block_invoke(v20, v11);
                v22 = [v20 isEqualToString:v21];

                if (v22)
                {
                  goto LABEL_17;
                }

                languageCode3 = [v14 languageCode];
                v24 = __60__NSBundle_BRLTBrailleTables__brl_supportedTablesForLocale___block_invoke(languageCode3, languageCode3);
                v25 = __60__NSBundle_BRLTBrailleTables__brl_supportedTablesForLocale___block_invoke(v24, v11);
                v26 = [v24 isEqualToString:v25];

                if (v26)
                {
LABEL_17:
                  if (([v6 containsObject:v8] & 1) == 0)
                  {
                    [v6 addObject:v8];
                  }
                }
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v36);
        }

        v7 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v32);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)brl_languageAgnosticTables
{
  v17 = *MEMORY[0x277D85DE8];
  brl_brailleTablesDictionary = [self brl_brailleTablesDictionary];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = brl_brailleTablesDictionary;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([self brl_tableIsLanguageAgnosticWithIdentifier:{v9, v12}])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)brl_supportedLocaleIdentifiersForTableWithIdentifier:()BRLTBrailleTables
{
  v4 = a3;
  brl_brailleTablesDictionary = [self brl_brailleTablesDictionary];
  v6 = [brl_brailleTablesDictionary objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"languages"];

  return v7;
}

- (id)brl_supportedLocalesForTableWithIdentifier:()BRLTBrailleTables
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [self brl_supportedLocaleIdentifiersForTableWithIdentifier:{v4, 0}];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:*(*(&v14 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (uint64_t)brl_tableIsLanguageAgnosticWithIdentifier:()BRLTBrailleTables
{
  v4 = a3;
  brl_brailleTablesDictionary = [self brl_brailleTablesDictionary];
  v6 = [brl_brailleTablesDictionary objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"languageAgnostic"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)brl_brailleTablesDictionary
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 138412546;
  v6 = @"BrailleTables";
  v7 = 2112;
  v8 = objc_opt_class();
  v3 = v8;
  _os_log_error_impl(&dword_241DFD000, a2, OS_LOG_TYPE_ERROR, "Expected NSDictionary for %@ key, but found %@ instead.", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end