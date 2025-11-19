@interface SUUILocalizedStringTable
- (SUUILocalizedStringTable)initWithBundle:(id)a3 localeName:(id)a4 tableName:(id)a5;
- (id)_legacyLanguageNameForLanguageCode:(id)a3;
@end

@implementation SUUILocalizedStringTable

- (SUUILocalizedStringTable)initWithBundle:(id)a3 localeName:(id)a4 tableName:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v39.receiver = self;
  v39.super_class = SUUILocalizedStringTable;
  v12 = [(SUUILocalizedStringTable *)&v39 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundle, a3);
    v14 = [v11 copy];
    tableName = v13->_tableName;
    v13->_tableName = v14;

    v16 = [v10 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    if ([v16 isEqualToString:@"zh_Hans"])
    {
      v17 = @"zh_CN";
    }

    else
    {
      if (![v16 isEqualToString:@"zh_Hant"])
      {
LABEL_7:
        v18 = [v9 pathForResource:v11 ofType:@"strings" inDirectory:0 forLocalization:v16];
        v19 = v18;
        if (!v16 || v18)
        {
          v10 = v16;
          if (!v18)
          {
LABEL_33:

            goto LABEL_34;
          }
        }

        else
        {
          v20 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v16];
          v10 = [v20 objectForKey:*MEMORY[0x277CBE6C8]];

          v21 = [v9 pathForResource:v11 ofType:@"strings" inDirectory:0 forLocalization:v10];
          if (v21)
          {
            v19 = v21;
          }

          else
          {
            v22 = [(SUUILocalizedStringTable *)v13 _legacyLanguageNameForLanguageCode:v10];
            if (!v22 || (v23 = v22, [v9 pathForResource:v11 ofType:@"strings" inDirectory:0 forLocalization:v22], v19 = objc_claimAutoreleasedReturnValue(), v23, !v19))
            {
              [v9 preferredLocalizations];
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v24 = v38 = 0u;
              v25 = [v24 countByEnumeratingWithState:&v35 objects:v40 count:16];
              if (v25)
              {
                v26 = v25;
                v34 = v20;
                v27 = *v36;
                while (2)
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (*v36 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = *(*(&v35 + 1) + 8 * i);
                    if ([v29 hasPrefix:v10])
                    {
                      v30 = [v9 pathForResource:v11 ofType:@"strings" inDirectory:0 forLocalization:v29];
                      if (v30)
                      {
                        v19 = v30;
                        goto LABEL_26;
                      }
                    }
                  }

                  v26 = [v24 countByEnumeratingWithState:&v35 objects:v40 count:16];
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }

                v19 = 0;
LABEL_26:
                v20 = v34;
              }

              else
              {
                v19 = 0;
              }
            }
          }

          if (!v19)
          {
            goto LABEL_33;
          }
        }

        v31 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v19];
        v32 = [MEMORY[0x277CCAC58] propertyListWithData:v31 options:0 format:0 error:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v13->_strings, v32);
        }

        goto LABEL_33;
      }

      v17 = @"zh_TW";
    }

    v16 = v17;
    goto LABEL_7;
  }

LABEL_34:

  return v13;
}

- (id)_legacyLanguageNameForLanguageCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"de"])
  {
    v4 = @"German";
  }

  else if ([v3 isEqualToString:@"en"])
  {
    v4 = @"English";
  }

  else if ([v3 isEqualToString:@"es"])
  {
    v4 = @"Spanish";
  }

  else if ([v3 isEqualToString:@"fr"])
  {
    v4 = @"French";
  }

  else if ([v3 isEqualToString:@"it"])
  {
    v4 = @"Italian";
  }

  else if ([v3 isEqualToString:@"jp"])
  {
    v4 = @"Japanese";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end