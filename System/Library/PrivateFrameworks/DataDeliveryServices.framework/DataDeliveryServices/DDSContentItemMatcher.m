@interface DDSContentItemMatcher
+ (BOOL)_anyDictionaryIn:(id)a3 matches:(id)a4 shouldLenientlyMatch:(id)a5;
+ (BOOL)_dictionary:(id)a3 matches:(id)a4 acceptUnspecifiedAttribute:(BOOL)a5 lenientMatch:(BOOL)a6;
+ (BOOL)_string:(id)a3 matches:(id)a4 acceptUnspecifiedValue:(BOOL)a5;
+ (BOOL)shouldLenientlyMatchWithContentItemsForRegion:(id)a3;
+ (id)assetContentItemsMatching:(id)a3 contentItems:(id)a4 parentAsset:(id)a5;
@end

@implementation DDSContentItemMatcher

+ (id)assetContentItemsMatching:(id)a3 contentItems:(id)a4 parentAsset:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v31 = a5;
  v35 = [v31 attributes];
  v32 = [MEMORY[0x1E695DF70] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    v36 = a1;
    v37 = v8;
    do
    {
      v13 = 0;
      v33 = v11;
      do
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v44 + 1) + 8 * v13);
        v42 = [v14 objectForKey:@"ContentType"];
        v41 = [v8 objectForKeyedSubscript:@"ContentType"];
        v15 = [v14 objectForKey:@"Locale"];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = [v35 objectForKeyedSubscript:@"AssetLocale"];
        }

        v40 = v17;

        v39 = [v8 objectForKeyedSubscript:@"Locale"];
        v18 = [v14 objectForKey:@"AssetRegion"];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = [v35 objectForKeyedSubscript:@"AssetRegion"];
        }

        v38 = v20;

        v21 = [v8 objectForKeyedSubscript:@"AssetRegion"];
        v22 = [v21 allObjects];

        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __76__DDSContentItemMatcher_assetContentItemsMatching_contentItems_parentAsset___block_invoke;
        v43[3] = &__block_descriptor_40_e22_B16__0__NSDictionary_8l;
        v43[4] = a1;
        v23 = MEMORY[0x1E12DF5E0](v43);
        v24 = objc_opt_class();
        v25 = [v41 allObjects];
        if ([v24 _anyStringIn:v25 matches:v42 acceptUnspecifiedValue:1])
        {
          v26 = objc_opt_class();
          v27 = [v39 allObjects];
          if ([v26 _anyStringIn:v27 matches:v40 acceptUnspecifiedValue:1])
          {
            v28 = [objc_opt_class() _anyDictionaryIn:v22 matches:v38 shouldLenientlyMatch:v23];

            v11 = v33;
            if (!v28)
            {
              goto LABEL_18;
            }

            v25 = [[DDSContentItem alloc] initWithParentAsset:v31 contents:v14];
            [v32 addObject:v25];
          }

          else
          {

            v11 = v33;
          }
        }

LABEL_18:
        ++v13;
        a1 = v36;
        v8 = v37;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v11);
  }

  v29 = *MEMORY[0x1E69E9840];

  return v32;
}

uint64_t __76__DDSContentItemMatcher_assetContentItemsMatching_contentItems_parentAsset___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() shouldLenientlyMatchWithContentItemsForRegion:v3];

  return v4;
}

+ (BOOL)shouldLenientlyMatchWithContentItemsForRegion:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"City"];
  if ([v4 length])
  {
    v5 = [v3 objectForKeyedSubscript:@"Province"];
    if ([v5 length])
    {
      v6 = [v3 objectForKeyedSubscript:@"Country"];
      v7 = [v6 length] == 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_string:(id)a3 matches:(id)a4 acceptUnspecifiedValue:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = &stru_1F5ABCB80;
  if (a4)
  {
    v8 = a4;
  }

  v9 = v8;
  v10 = v9;
  if (!v5)
  {
    if (!v7)
    {
      v12 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v11 = [(__CFString *)v9 length];
  v12 = 1;
  if (v7 && v11)
  {
LABEL_8:
    v12 = [v7 caseInsensitiveCompare:v10] == 0;
  }

LABEL_10:

  return v12;
}

+ (BOOL)_dictionary:(id)a3 matches:(id)a4 acceptUnspecifiedAttribute:(BOOL)a5 lenientMatch:(BOOL)a6
{
  v6 = a6;
  v24 = a5;
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && [v9 count])
  {
    if ([v8 count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = [v8 allKeys];
      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            v16 = [v8 objectForKeyedSubscript:v15];
            v17 = v16;
            if (!v6 || [v16 length])
            {
              v18 = [v10 objectForKeyedSubscript:v15];
              v19 = [objc_opt_class() _string:v17 matches:v18 acceptUnspecifiedValue:v24];

              if ((v19 & 1) == 0)
              {

                v20 = 0;
                goto LABEL_17;
              }
            }
          }

          v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v20 = 1;
LABEL_17:
    }

    else
    {
      v20 = [v10 count] == 0;
    }
  }

  else
  {
    v20 = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (BOOL)_anyDictionaryIn:(id)a3 matches:(id)a4 shouldLenientlyMatch:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    if ([v7 count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = v7;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            if (v9)
            {
              v16 = v9[2](v9, *(*(&v21 + 1) + 8 * i));
            }

            else
            {
              v16 = 0;
            }

            if ([objc_opt_class() _dictionary:v15 matches:v8 acceptUnspecifiedAttribute:v16 ^ 1 lenientMatch:v16])
            {

              v17 = 1;
              goto LABEL_17;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v17 = 0;
LABEL_17:
      v7 = v20;
    }

    else
    {
      v17 = [objc_opt_class() _dictionary:MEMORY[0x1E695E0F8] matches:v8 acceptUnspecifiedAttribute:1 lenientMatch:0];
    }
  }

  else
  {
    v17 = 1;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

@end