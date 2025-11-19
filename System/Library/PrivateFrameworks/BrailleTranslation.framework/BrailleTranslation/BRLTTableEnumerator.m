@interface BRLTTableEnumerator
+ (id)defaultTableForLocale:(id)a3;
+ (id)defaultTablesArrayForLocale:(id)a3;
+ (id)localizedNameForLanguage:(id)a3;
+ (id)tableEnumeratorWithSystemBundlePath;
- (BRLTTableEnumerator)initWithTranslatorBundlesPath:(id)a3;
- (NSArray)translatorBundles;
- (NSMutableDictionary)languageAgnosticIdentifiersToTables;
- (NSSet)languageAgnosticTableIdentifiers;
- (NSSet)supportedLanguageLocales;
- (NSSet)supportedLocales;
- (id)languageAgnosticTables;
- (id)languageAgnosticTablesForIdentifier:(id)a3 inBundle:(id)a4;
- (id)languageAgnosticTablesInBundle:(id)a3;
- (id)supportedLocalesForTable:(id)a3;
- (id)tablesForLocale:(id)a3 inBundle:(id)a4;
- (void)translatorBundles;
@end

@implementation BRLTTableEnumerator

+ (id)localizedNameForLanguage:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v4 localizedStringForLanguage:v3 context:3];
  if (![v5 length])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.language", v3];
    v7 = BRLTLocalizedStringForKey(v6);

    v5 = v7;
  }

  return v5;
}

+ (id)defaultTableForLocale:(id)a3
{
  v3 = [a1 defaultTablesArrayForLocale:a3];
  v4 = [v3 firstObject];

  return v4;
}

+ (id)defaultTablesArrayForLocale:(id)a3
{
  v50[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (defaultTablesArrayForLocale__onceToken != -1)
  {
    +[BRLTTableEnumerator defaultTablesArrayForLocale:];
  }

  v5 = [v4 collatorIdentifier];
  v6 = [defaultTablesArrayForLocale__DefaultTables objectForKeyedSubscript:v5];
  v37 = v5;
  if (v6)
  {
    goto LABEL_4;
  }

  v8 = v5;
  v9 = [v8 rangeOfString:@"-"];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9 + 1;
    v11 = [v8 substringFromIndex:v9 + 1];
    v12 = [v11 rangeOfString:@"-"];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v8 substringToIndex:v12 + v10];

      v8 = v13;
    }
  }

  v7 = [defaultTablesArrayForLocale__DefaultTables objectForKeyedSubscript:v8];

  if (v7)
  {
    goto LABEL_11;
  }

  v14 = defaultTablesArrayForLocale__DefaultTables;
  v15 = [v4 languageCode];
  v7 = [v14 objectForKeyedSubscript:v15];

  if (v7)
  {
    goto LABEL_11;
  }

  v32 = [a1 systemTranslatorBundle];
  v33 = [v32 brl_supportedTablesForLocale:v4];

  v34 = [v33 firstObject];
  if (v34)
  {
    v35 = v34;
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.scrod.braille.table.duxbury", v34];

    v50[0] = v36;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];

    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v6 = [defaultTablesArrayForLocale__DefaultTables objectForKeyedSubscript:@"en"];
  if (v6)
  {
LABEL_4:
    v7 = v6;
LABEL_11:
    v16 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v7;
    v17 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v17)
    {
      v18 = v17;
      v39 = *v45;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v45 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v20 = [[BRLTTable alloc] initWithIdentifier:*(*(&v44 + 1) + 8 * i)];
          v21 = [(BRLTTable *)v20 replacements];
          v22 = [v21 count];

          if (v22)
          {
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v23 = [(BRLTTable *)v20 replacements];
            v24 = [v23 countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v41;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v41 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = [[BRLTTable alloc] initWithIdentifier:*(*(&v40 + 1) + 8 * j)];
                  [v16 addObject:v28];
                }

                v25 = [v23 countByEnumeratingWithState:&v40 objects:v48 count:16];
              }

              while (v25);
            }
          }

          else
          {
            [v16 addObject:v20];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v18);
    }

    v29 = obj;

    v5 = v37;
    goto LABEL_29;
  }

  v29 = BRLTLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [BRLTTableEnumerator defaultTablesArrayForLocale:v4];
  }

  v16 = MEMORY[0x277CBEBF8];
LABEL_29:

  v30 = *MEMORY[0x277D85DE8];

  return v16;
}

void __51__BRLTTableEnumerator_defaultTablesArrayForLocale___block_invoke()
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v0 = [v3 pathForResource:@"DefaultTables" ofType:@"plist"];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v0];
  v2 = defaultTablesArrayForLocale__DefaultTables;
  defaultTablesArrayForLocale__DefaultTables = v1;
}

+ (id)tableEnumeratorWithSystemBundlePath
{
  if (MEMORY[0x2822129C0])
  {
    v2 = AXBrailleTablesDirectory();
  }

  else
  {
    v2 = @"/System/Library/ScreenReader/BrailleTables";
  }

  v3 = [objc_alloc(objc_opt_class()) initWithTranslatorBundlesPath:v2];

  return v3;
}

- (BRLTTableEnumerator)initWithTranslatorBundlesPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BRLTTableEnumerator;
  v5 = [(BRLTTableEnumerator *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    translatorBundlePath = v5->_translatorBundlePath;
    v5->_translatorBundlePath = v6;
  }

  return v5;
}

- (NSArray)translatorBundles
{
  v35 = *MEMORY[0x277D85DE8];
  translatorBundles = self->_translatorBundles;
  if (translatorBundles)
  {
LABEL_2:
    v3 = translatorBundles;
    goto LABEL_7;
  }

  v26 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(BRLTTableEnumerator *)self translatorBundlePath];
  v31 = 0;
  v7 = [v5 contentsOfDirectoryAtPath:v6 error:&v31];
  v8 = v31;

  if (!v8)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [v17 pathExtension];
          v19 = [v18 isEqualToString:@"brailletable"];

          if (v19)
          {
            v20 = [(BRLTTableEnumerator *)self translatorBundlePath];
            v21 = [v20 stringByAppendingPathComponent:v17];

            v22 = [MEMORY[0x277CCA8D8] bundleWithPath:v21];
            if (v22)
            {
              [(NSArray *)v26 addObject:v22];
            }

            else
            {
              v23 = BRLTLog();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v33 = v21;
                _os_log_error_impl(&dword_241DFD000, v23, OS_LOG_TYPE_ERROR, "Error loading brailletable bundle at %@", buf, 0xCu);
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v14);
    }

    v24 = self->_translatorBundles;
    self->_translatorBundles = v26;
    v25 = v26;

    translatorBundles = self->_translatorBundles;
    goto LABEL_2;
  }

  v9 = BRLTLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(BRLTTableEnumerator *)self translatorBundles];
  }

  v3 = 0;
LABEL_7:
  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSSet)supportedLocales
{
  v19 = *MEMORY[0x277D85DE8];
  supportedLocales = self->_supportedLocales;
  if (!supportedLocales)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(BRLTTableEnumerator *)self translatorBundles];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * v9) brl_supportedLocales];
          [(NSSet *)v4 unionSet:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = self->_supportedLocales;
    self->_supportedLocales = v4;

    supportedLocales = self->_supportedLocales;
  }

  v12 = *MEMORY[0x277D85DE8];

  return supportedLocales;
}

- (id)supportedLocalesForTable:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(BRLTTableEnumerator *)self translatorBundles];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 bundleIdentifier];
        v12 = [v4 serviceIdentifier];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          v15 = [v4 tableIdentifier];
          v14 = [v10 brl_supportedLocaleIdentifiersForTableWithIdentifier:v15];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = objc_opt_new();
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (NSSet)supportedLanguageLocales
{
  v21 = *MEMORY[0x277D85DE8];
  supportedLanguageLocales = self->_supportedLanguageLocales;
  if (!supportedLanguageLocales)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(BRLTTableEnumerator *)self supportedLocales];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = MEMORY[0x277CBEAF8];
          v11 = [*(*(&v16 + 1) + 8 * v9) languageCode];
          v12 = [v10 localeWithLocaleIdentifier:v11];

          [(NSSet *)v4 addObject:v12];
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = self->_supportedLanguageLocales;
    self->_supportedLanguageLocales = v4;

    supportedLanguageLocales = self->_supportedLanguageLocales;
  }

  v14 = *MEMORY[0x277D85DE8];

  return supportedLanguageLocales;
}

- (id)languageAgnosticTables
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BRLTTableEnumerator *)self translatorBundles];
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

        v9 = [(BRLTTableEnumerator *)self languageAgnosticTablesInBundle:*(*(&v12 + 1) + 8 * i)];
        [v3 unionSet:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSSet)languageAgnosticTableIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(BRLTTableEnumerator *)self languageAgnosticIdentifiersToTables];
  v4 = [v3 allKeys];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)languageAgnosticTablesInBundle:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v3 brl_languageAgnosticTables];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:@"-"];
        if ([v9 count] == 2)
        {
          v10 = [v9 objectAtIndexedSubscript:1];
        }

        else
        {
          v10 = 0;
        }

        v11 = [BRLTTable alloc];
        v12 = [v3 bundleIdentifier];
        v13 = [v9 objectAtIndexedSubscript:0];
        v14 = [(BRLTTable *)v11 initWithServiceIdentifier:v12 language:v13 variant:v10];

        [v4 addObject:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)languageAgnosticTablesForIdentifier:(id)a3 inBundle:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [(BRLTTableEnumerator *)self languageAgnosticTablesInBundle:v7];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v14 language];
        v16 = [v15 isEqualToString:v6];

        if (v16)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)tablesForLocale:(id)a3 inBundle:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [MEMORY[0x277CBEB58] set];
  v22 = v21 = v5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [v6 brl_supportedTablesForLocale:v5];
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v24 + 1) + 8 * i) componentsSeparatedByString:@"-"];
        if ([v11 count] == 2)
        {
          v12 = [v11 objectAtIndexedSubscript:1];
        }

        else
        {
          v12 = 0;
        }

        v13 = [BRLTTable alloc];
        v14 = [v6 bundleIdentifier];
        v15 = [v11 objectAtIndexedSubscript:0];
        v16 = [(BRLTTable *)v13 initWithServiceIdentifier:v14 language:v15 variant:v12];

        v17 = [(BRLTTable *)v16 replacements];
        v18 = [v17 count];

        if (!v18)
        {
          [v22 addObject:v16];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v22;
}

- (NSMutableDictionary)languageAgnosticIdentifiersToTables
{
  v2 = self;
  v32 = *MEMORY[0x277D85DE8];
  languageAgnosticIdentifiersToTables = self->_languageAgnosticIdentifiersToTables;
  if (!languageAgnosticIdentifiersToTables)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(BRLTTableEnumerator *)v2 translatorBundles];
    v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v21)
    {
      v19 = *v27;
      v20 = v2;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v6 = [(BRLTTableEnumerator *)v2 languageAgnosticTablesInBundle:*(*(&v26 + 1) + 8 * i)];
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v23;
            do
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v23 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v22 + 1) + 8 * j);
                v12 = [v11 language];
                v13 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v12];

                if (!v13)
                {
                  v13 = [MEMORY[0x277CBEB58] set];
                  v14 = [v11 language];
                  [(NSMutableDictionary *)v4 setObject:v13 forKeyedSubscript:v14];
                }

                [v13 addObject:v11];
              }

              v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v8);
          }

          v2 = v20;
        }

        v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v21);
    }

    v15 = v2->_languageAgnosticIdentifiersToTables;
    v2->_languageAgnosticIdentifiersToTables = v4;

    languageAgnosticIdentifiersToTables = v2->_languageAgnosticIdentifiersToTables;
  }

  v16 = *MEMORY[0x277D85DE8];

  return languageAgnosticIdentifiersToTables;
}

+ (void)defaultTablesArrayForLocale:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 localeIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_241DFD000, v2, v3, "Couldn't find any table for locale %@ (identifiers: %@)", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)translatorBundles
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 translatorBundlePath];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_241DFD000, v2, v3, "Couldn't get contents of %@: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end