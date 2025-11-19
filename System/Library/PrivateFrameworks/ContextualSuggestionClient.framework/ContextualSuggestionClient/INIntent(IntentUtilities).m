@interface INIntent(IntentUtilities)
- (id)atx_hashApproximately;
- (id)atx_nonNilParameters;
- (id)atx_nonNilParametersByName;
- (id)atx_parameterValueForKey:()IntentUtilities;
- (uint64_t)atx_backingStoreDataHash;
@end

@implementation INIntent(IntentUtilities)

- (id)atx_nonNilParameters
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277CBEB58];
    v3 = a1;
    v4 = objc_alloc_init(v2);
    v5 = [v3 serializedParameters];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__INIntent_IntentUtilities__atx_nonNilParameters__block_invoke;
    v8[3] = &unk_278E08CF8;
    v6 = v4;
    v9 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
  }

  else
  {
    v6 = [a1 _nonNilParameters];
  }

  return v6;
}

- (id)atx_nonNilParametersByName
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1 atx_nonNilParameters];
  v3 = [v2 copy];

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [a1 atx_parameterValueForKey:{v10, v15}];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (uint64_t)atx_backingStoreDataHash
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  v1 = [a1 backingStore];
  v2 = [v1 data];

  CC_SHA256([v2 bytes], objc_msgSend(v2, "length"), v6);
  v3 = LODWORD(v6[0]);

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)atx_parameterValueForKey:()IntentUtilities
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v4 || (isKindOfClass & 1) == 0)
  {
    v13 = [a1 valueForKey:v4];
    goto LABEL_10;
  }

  v6 = a1;
  v7 = [v6 appIntentIdentifier];
  if (![v7 isEqualToString:@"SettingsNavigationEventDonationIntent"])
  {

    goto LABEL_8;
  }

  v8 = [v4 isEqualToString:@"target"];

  if (!v8)
  {
LABEL_8:
    v11 = [v6 serializedParameters];
    v13 = [v11 objectForKeyedSubscript:v4];
    goto LABEL_9;
  }

  v9 = [v6 serializedParameters];
  v10 = [v9 valueForKeyPath:@"target.value.properties"];
  v11 = [v10 _pas_filteredArrayWithTest:&__block_literal_global_0];

  v12 = [v11 firstObject];
  v13 = [v12 valueForKeyPath:@"value.value"];

LABEL_9:
LABEL_10:

  return v13;
}

- (id)atx_hashApproximately
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = objc_autoreleasePoolPush();
  v5 = [a1 _className];
  v6 = [v5 dataUsingEncoding:4];
  [v3 appendData:v6];

  objc_autoreleasePoolPop(v4);
  v7 = [a1 atx_nonNilParametersByName];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v7 allKeys];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = [v14 dataUsingEncoding:4];
        [v3 appendData:v16];

        v17 = [v7 objectForKeyedSubscript:v14];
        hashIt(v17, v3);

        objc_autoreleasePoolPop(v15);
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), md);
  v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:md length:8];

  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end