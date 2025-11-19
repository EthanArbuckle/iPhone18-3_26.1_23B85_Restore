@interface OITSULocaleStructuredDictionary
+ (OITSULocaleStructuredDictionary)dictionaryWithContentsOfFileForLocale:(id)a3 inDirectory:(id)a4 inBundle:(id)a5;
+ (id)dateFormatterSymbolsFallbackDictionary;
+ (id)numberFormatterSymbolsFallbackDictionary;
- (BOOL)p_extractLanguage:(id *)a3 script:(id *)a4 region:(id *)a5 fromString:(id)a6;
- (OITSULocaleStructuredDictionary)initWithDictionary:(id)a3 locale:(id)a4;
- (id)objectForKey:(id)a3 locale:(id)a4;
- (id)p_makeLocaleIdentifierWithLanguage:(id)a3 script:(id)a4 region:(id)a5;
- (void)p_remakeWorkingDictionaryWithLocale:(id)a3;
@end

@implementation OITSULocaleStructuredDictionary

+ (OITSULocaleStructuredDictionary)dictionaryWithContentsOfFileForLocale:(id)a3 inDirectory:(id)a4 inBundle:(id)a5
{
  v8 = a3;
  v9 = *MEMORY[0x277CBE6C8];
  v10 = a5;
  v11 = a4;
  v12 = [v8 objectForKey:v9];
  v13 = [v12 lowercaseString];
  v14 = [v10 pathForResource:v13 ofType:@"plist" inDirectory:v11];

  if (v14)
  {
    v15 = [a1 alloc];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v14];
    v17 = [v15 initWithDictionary:v16 locale:v8];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (OITSULocaleStructuredDictionary)initWithDictionary:(id)a3 locale:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = OITSULocaleStructuredDictionary;
  v9 = [(OITSULocaleStructuredDictionary *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dictionary, a3);
    v11 = objc_opt_new();
    cldrLanguageScriptRegionForKey = v10->_cldrLanguageScriptRegionForKey;
    v10->_cldrLanguageScriptRegionForKey = v11;

    v13 = objc_opt_new();
    cldrLanguageScriptForKey = v10->_cldrLanguageScriptForKey;
    v10->_cldrLanguageScriptForKey = v13;

    [(OITSULocaleStructuredDictionary *)v10 p_remakeWorkingDictionaryWithLocale:v8];
  }

  return v10;
}

- (id)objectForKey:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (v8->_workingLocale != v7 || v8->_workingLocaleIsAutoUpdating && (autoUpdatingCount = v8->_autoUpdatingCount, autoUpdatingCount != +[OITSULocale autoupdatingCurrentLocaleChangeCount]))
  {
    [(OITSULocaleStructuredDictionary *)v8 p_remakeWorkingDictionaryWithLocale:v7];
  }

  v10 = [(NSMutableDictionary *)v8->_workingDictionary objectForKeyedSubscript:v6];
  objc_sync_exit(v8);

  return v10;
}

- (void)p_remakeWorkingDictionaryWithLocale:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v49 = v5;
  objc_storeStrong(&v5->_workingLocale, a3);
  v6 = [OITSULocale localeIsAutoUpdating:v42];
  v5->_workingLocaleIsAutoUpdating = v6;
  if (v6)
  {
    v7 = +[OITSULocale autoupdatingCurrentLocaleChangeCount];
  }

  else
  {
    v7 = 0;
  }

  v5->_autoUpdatingCount = v7;
  v41 = [v42 localeIdentifier];
  v45 = [v42 objectForKey:*MEMORY[0x277CBE6C8]];
  v44 = [v42 objectForKey:*MEMORY[0x277CBE690]];
  v48 = [(NSMutableDictionary *)v5->_cldrLanguageScriptRegionForKey objectForKeyedSubscript:v41];
  v46 = [(NSMutableDictionary *)v5->_cldrLanguageScriptForKey objectForKeyedSubscript:v41];
  if (!v48 || !v46)
  {
    v8 = [OITSULocale canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:v41];
    if (!v48)
    {
      v39 = v8;
      v9 = v8;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v10 = v5->_dictionary;
      v11 = [(NSDictionary *)v10 countByEnumeratingWithState:&v57 objects:v62 count:16];
      if (v11)
      {
        v12 = *v58;
        v48 = v9;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v58 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v57 + 1) + 8 * i);
            if ([v14 rangeOfString:@"POSIX" options:1] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v15 = [OITSULocale canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:v14];
              if ([v15 isEqualToString:v9])
              {
                v16 = v14;

                v48 = v16;
              }
            }
          }

          v11 = [(NSDictionary *)v10 countByEnumeratingWithState:&v57 objects:v62 count:16];
        }

        while (v11);
      }

      else
      {
        v48 = v9;
      }

      [(NSMutableDictionary *)v49->_cldrLanguageScriptRegionForKey setObject:v48 forKeyedSubscript:v41];
      v8 = v39;
    }

    if (!v46)
    {
      v40 = v8;
      v43 = v8;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v49->_dictionary;
      v17 = [(NSDictionary *)obj countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v17)
      {
        v18 = *v54;
        v46 = v43;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v54 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v53 + 1) + 8 * j);
            if ([v20 rangeOfString:@"POSIX" options:1] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v51 = 0;
              v52 = 0;
              v50 = 0;
              v21 = [(OITSULocaleStructuredDictionary *)v49 p_extractLanguage:&v52 script:&v51 region:&v50 fromString:v20];
              v22 = v52;
              v23 = v51;
              v24 = v50;
              v25 = v24;
              if (v21 && v22 && v23 && !v24)
              {
                v26 = [(OITSULocaleStructuredDictionary *)v49 p_makeLocaleIdentifierWithLanguage:v45 script:v23 region:v44];
                if ([v26 isEqualToString:v43])
                {
                  v27 = v20;

                  v46 = v27;
                }
              }
            }
          }

          v17 = [(NSDictionary *)obj countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v17);
      }

      else
      {
        v46 = v43;
      }

      [(NSMutableDictionary *)v49->_cldrLanguageScriptForKey setObject:v46 forKeyedSubscript:v41];
      v8 = v40;
    }
  }

  v28 = objc_opt_new();
  workingDictionary = v49->_workingDictionary;
  v49->_workingDictionary = v28;

  v30 = [(NSDictionary *)v49->_dictionary objectForKeyedSubscript:v45];

  if (v30)
  {
    v31 = v49->_workingDictionary;
    v32 = [(NSDictionary *)v49->_dictionary objectForKeyedSubscript:v45];
    [(NSMutableDictionary *)v31 addEntriesFromDictionary:v32];
  }

  v33 = [(NSDictionary *)v49->_dictionary objectForKeyedSubscript:v46];

  if (v33)
  {
    v34 = v49->_workingDictionary;
    v35 = [(NSDictionary *)v49->_dictionary objectForKeyedSubscript:v46];
    [(NSMutableDictionary *)v34 addEntriesFromDictionary:v35];
  }

  v36 = [(NSDictionary *)v49->_dictionary objectForKeyedSubscript:v48];

  if (v36)
  {
    v37 = v49->_workingDictionary;
    v38 = [(NSDictionary *)v49->_dictionary objectForKeyedSubscript:v48];
    [(NSMutableDictionary *)v37 addEntriesFromDictionary:v38];
  }

  objc_sync_exit(v49);
}

- (BOOL)p_extractLanguage:(id *)a3 script:(id *)a4 region:(id *)a5 fromString:(id)a6
{
  v9 = a6;
  v10 = [v9 componentsSeparatedByString:@"-"];
  v11 = [v10 objectAtIndexedSubscript:0];
  if ([v11 length] == 2)
  {

    goto LABEL_4;
  }

  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v12 length];

  if (v13 == 3)
  {
LABEL_4:
    v14 = [v10 objectAtIndexedSubscript:0];
    if ([v10 count] > 1)
    {
      v15 = [v10 objectAtIndexedSubscript:1];
      v16 = [v15 length];

      v17 = [v10 objectAtIndexedSubscript:1];
      v18 = v17;
      if (v16 == 4)
      {
LABEL_12:
        v24 = 0;
LABEL_13:
        if ([v10 count] >= 3)
        {
          v25 = [v10 objectAtIndexedSubscript:2];
          if ([v25 length] == 2)
          {

LABEL_17:
            v31 = [v10 objectAtIndexedSubscript:2];

            v24 = v31;
            goto LABEL_18;
          }

          [v10 objectAtIndexedSubscript:2];
          v36 = v9;
          v26 = a3;
          v27 = a4;
          v29 = v28 = a5;
          v30 = [v29 length];

          a5 = v28;
          a4 = v27;
          a3 = v26;
          v9 = v36;

          if (v30 == 3)
          {
            goto LABEL_17;
          }
        }

LABEL_18:
        v32 = v14;
        *a3 = v14;
        v33 = v18;
        *a4 = v18;
        v34 = v24;
        *a5 = v24;

        v21 = 1;
        goto LABEL_19;
      }

      if ([v17 length] == 2)
      {

LABEL_10:
        v24 = [v10 objectAtIndexedSubscript:1];
        v18 = 0;
        goto LABEL_13;
      }

      v22 = [v10 objectAtIndexedSubscript:1];
      v23 = [v22 length];

      if (v23 == 3)
      {
        goto LABEL_10;
      }
    }

    v18 = 0;
    goto LABEL_12;
  }

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSULocaleStructuredDictionary p_extractLanguage:script:region:fromString:]"];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSULocaleStructuredDictionary.m"];
  [OITSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:244 isFatal:0 description:"Got an identifier (%@) whose first component isn't 2 or 3 char long, which violates BCP47. How did that go into our CLDR?", v9];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v21 = 0;
LABEL_19:

  return v21;
}

- (id)p_makeLocaleIdentifierWithLanguage:(id)a3 script:(id)a4 region:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = v10;
  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:*MEMORY[0x277CBE6C8]];
  }

  if (v8)
  {
    [v11 setObject:v8 forKeyedSubscript:*MEMORY[0x277CBE6F8]];
  }

  if (v9)
  {
    [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x277CBE690]];
  }

  v12 = MEMORY[0x277CBEAF8];
  v13 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v11];
  v14 = [v12 canonicalLocaleIdentifierFromString:v13];

  return v14;
}

+ (id)dateFormatterSymbolsFallbackDictionary
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v2 initWithDictionary:&unk_286F6DE30 locale:v3];

  return v4;
}

+ (id)numberFormatterSymbolsFallbackDictionary
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v2 initWithDictionary:&unk_286F6DE80 locale:v3];

  return v4;
}

@end