@interface INPlayMediaIntent(IntentUtilities)
- (id)atx_nonNilParametersByName;
@end

@implementation INPlayMediaIntent(IntentUtilities)

- (id)atx_nonNilParametersByName
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = a1;
  v20.super_class = &off_28579B5E8;
  v1 = objc_msgSendSuper2(&v20, sel_atx_nonNilParametersByName);
  v2 = [v1 mutableCopy];

  v3 = [v2 objectForKeyedSubscript:@"buckets"];
  if ([v3 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      v8 = 1;
      do
      {
        v9 = 0;
        v10 = v8;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v16 + 1) + 8 * v9);
          v8 = (v10 + 1);
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"bucket_%i", v10];
          [v2 setObject:v11 forKeyedSubscript:v12];

          ++v9;
          v10 = v8;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v6);
    }

    v3 = v15;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

@end