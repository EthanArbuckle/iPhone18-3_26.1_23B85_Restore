@interface NSArray(IntlPreferencesAdditions)
- (id)filteredLanguagesBySearchString:()IntlPreferencesAdditions;
@end

@implementation NSArray(IntlPreferencesAdditions)

- (id)filteredLanguagesBySearchString:()IntlPreferencesAdditions
{
  v43 = *MEMORY[0x277D85DE8];
  v20 = a3;
  if ([v20 length])
  {
    v23 = [MEMORY[0x277CBEB18] array];
    v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF beginswith[cld] %@", v20];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = a1;
    v5 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v5)
    {
      v22 = *v39;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v38 + 1) + 8 * i);
          v8 = [v7 name];
          v9 = [v7 localizedStringForName];
          if ([v4 evaluateWithObject:v8] || objc_msgSend(v4, "evaluateWithObject:", v9))
          {
            [v23 addObject:v7];
          }

          else
          {
            v34 = 0;
            v35 = &v34;
            v36 = 0x2020000000;
            v37 = 0;
            v10 = [v8 length];
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __69__NSArray_IntlPreferencesAdditions__filteredLanguagesBySearchString___block_invoke;
            v29[3] = &unk_2787A93D0;
            v11 = v4;
            v30 = v11;
            v12 = v23;
            v31 = v12;
            v32 = v7;
            v33 = &v34;
            [v8 enumerateSubstringsInRange:0 options:v10 usingBlock:{3, v29}];
            if ((v35[3] & 1) == 0)
            {
              v13 = [v9 length];
              v24[0] = MEMORY[0x277D85DD0];
              v24[1] = 3221225472;
              v24[2] = __69__NSArray_IntlPreferencesAdditions__filteredLanguagesBySearchString___block_invoke_2;
              v24[3] = &unk_2787A93D0;
              v25 = v11;
              v14 = v12;
              v26 = v14;
              v27 = v7;
              v28 = &v34;
              [v9 enumerateSubstringsInRange:0 options:v13 usingBlock:{3, v24}];
              if ((v35[3] & 1) == 0)
              {
                v15 = [v7 identifier];
                v16 = [v20 lowercaseString];
                v17 = [v15 hasPrefix:v16];

                if (v17)
                {
                  [v14 addObject:v7];
                }
              }
            }

            _Block_object_dispose(&v34, 8);
          }
        }

        v5 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v23 = [a1 copy];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v23;
}

@end