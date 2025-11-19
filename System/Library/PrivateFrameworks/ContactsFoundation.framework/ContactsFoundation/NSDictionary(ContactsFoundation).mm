@interface NSDictionary(ContactsFoundation)
- (id)_cn_diff:()ContactsFoundation;
- (id)_cn_filter:()ContactsFoundation;
- (id)_cn_keysAndValues;
- (id)_cn_map:()ContactsFoundation;
- (id)_cn_mapKeys:()ContactsFoundation;
- (id)_cn_mapValues:()ContactsFoundation;
- (id)_cn_objectForKey:()ContactsFoundation ofClass:;
- (void)_cn_each:()ContactsFoundation;
@end

@implementation NSDictionary(ContactsFoundation)

- (void)_cn_each:()ContactsFoundation
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__NSDictionary_ContactsFoundation___cn_each___block_invoke;
  v6[3] = &unk_1E6ED5FB8;
  v7 = v4;
  v5 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:v6];
}

- (id)_cn_keysAndValues
{
  v2 = [a1 allKeys];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__NSDictionary_ContactsFoundation___cn_keysAndValues__block_invoke;
  v6[3] = &unk_1E6ED5FE0;
  v6[4] = a1;
  v3 = [v2 _cn_map:v6];
  v4 = [CNPair pairWithFirst:v2 second:v3];

  return v4;
}

- (id)_cn_filter:()ContactsFoundation
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47__NSDictionary_ContactsFoundation___cn_filter___block_invoke;
  v13 = &unk_1E6ED6008;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)_cn_map:()ContactsFoundation
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__NSDictionary_ContactsFoundation___cn_map___block_invoke;
  v11[3] = &unk_1E6ED6008;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)_cn_mapKeys:()ContactsFoundation
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__NSDictionary_ContactsFoundation___cn_mapKeys___block_invoke;
  v11[3] = &unk_1E6ED6008;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)_cn_mapValues:()ContactsFoundation
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__NSDictionary_ContactsFoundation___cn_mapValues___block_invoke;
  v11[3] = &unk_1E6ED6008;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)_cn_diff:()ContactsFoundation
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFA0];
  v6 = [a1 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];
  v8 = [v5 orderedSetWithArray:v7];

  v9 = MEMORY[0x1E695DFA0];
  v10 = [v4 allKeys];
  v11 = [v10 sortedArrayUsingSelector:sel_compare_];
  v45 = [v9 orderedSetWithArray:v11];

  v12 = [MEMORY[0x1E695DF90] dictionary];
  v44 = v8;
  v13 = [v8 array];
  v14 = [v13 copy];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v54 objects:v60 count:16];
  v43 = v15;
  if (v16)
  {
    v17 = v16;
    v18 = *v55;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v55 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v54 + 1) + 8 * i);
        [v44 removeObject:v20];
        [v45 removeObject:v20];
        v21 = [a1 objectForKeyedSubscript:v20];
        v22 = v4;
        v23 = [v4 objectForKeyedSubscript:v20];
        if (v21 | v23 && ([v21 isEqual:v23] & 1) == 0)
        {
          v24 = [CNPair pairWithFirst:v21 second:v23];
          [v12 setObject:v24 forKeyedSubscript:v20];

          v15 = v43;
        }

        v4 = v22;
      }

      v17 = [v15 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v17);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v25 = v44;
  v26 = [v25 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v51;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v51 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v50 + 1) + 8 * j);
        v31 = [a1 objectForKeyedSubscript:v30];
        v32 = [CNPair pairWithFirst:v31 second:0];
        [v12 setObject:v32 forKeyedSubscript:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v27);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v33 = v45;
  v34 = [v33 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v47;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v47 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v46 + 1) + 8 * k);
        v39 = [v4 objectForKeyedSubscript:v38];
        v40 = [CNPair pairWithFirst:0 second:v39];
        [v12 setObject:v40 forKeyedSubscript:v38];
      }

      v35 = [v33 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v35);
  }

  v41 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_cn_objectForKey:()ContactsFoundation ofClass:
{
  v5 = [a1 objectForKey:?];
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (!v7)
    {
      [CNSimulatedCrashReporter simulateCrashWithMessage:@"Expected class of %@ but was %@", a4, objc_opt_class()];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end