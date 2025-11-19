@interface MUILocalizationListFormatter
- (id)attributedLocalizedStringFromList:(id)a3;
- (id)localizedStringFromList:(id)a3;
- (id)stringForObjectValue:(id)a3;
@end

@implementation MUILocalizationListFormatter

- (id)localizedStringFromList:(id)a3
{
  v4 = [a3 ef_map:&__block_literal_global_21];
  v5 = [(MUILocalizationListFormatter *)self attributedLocalizedStringFromList:v4];
  v6 = [v5 string];

  return v6;
}

id __56__MUILocalizationListFormatter_localizedStringFromList___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA898];
  v3 = a2;
  v4 = [v2 alloc];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_2826EE5B8;
  }

  v6 = [v4 initWithString:v5];

  return v6;
}

- (id)attributedLocalizedStringFromList:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAB48]);
  if ([v3 count] == 2)
  {
    v5 = objc_alloc(MEMORY[0x277CCA898]);
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"LIST_EXACTLY_TWO_ITEMS" value:&stru_2826EE5B8 table:@"MUIListFormatter"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_2826EE5B8;
    }

    v10 = [v5 initWithString:v9];

    v11 = [v3 objectAtIndexedSubscript:0];
    v12 = [v3 objectAtIndexedSubscript:1];
    [v4 appendLocalizedFormat:v10, v11, v12];
  }

  else if (v3)
  {
    v13 = [v3 count];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v29 = v3;
    obj = v3;
    v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        v17 = 0;
        v30 = v13;
        v18 = v13 - 1;
        do
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v32 + 1) + 8 * v17);
          if ([v4 length])
          {
            v20 = objc_alloc(MEMORY[0x277CCA898]);
            v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v22 = v21;
            if (v18 == v17)
            {
              v23 = @"LIST_FINAL_ITEM";
            }

            else
            {
              v23 = @"LIST_NON_FINAL_ITEM";
            }
          }

          else
          {
            v20 = objc_alloc(MEMORY[0x277CCA898]);
            v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v22 = v21;
            v23 = @"LIST_INITIAL_ITEM";
          }

          v24 = [v21 localizedStringForKey:v23 value:&stru_2826EE5B8 table:@"MUIListFormatter"];
          v25 = v24;
          if (v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = &stru_2826EE5B8;
          }

          v27 = [v20 initWithString:v26];

          [v4 appendLocalizedFormat:v27, v19];
          ++v17;
        }

        while (v15 != v17);
        v13 = v30 - v15;
        v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v15);
    }

    v3 = v29;
  }

  return v4;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 ef_all:&__block_literal_global_23])
  {
    v5 = [(MUILocalizationListFormatter *)self localizedStringFromList:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __53__MUILocalizationListFormatter_stringForObjectValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end