@interface HMAccessoryDiagnosticsMetadata(HFAdditions)
+ (id)hf_serviceURL:()HFAdditions withParameters:;
- (id)hf_serviceURLWithParameters;
@end

@implementation HMAccessoryDiagnosticsMetadata(HFAdditions)

- (id)hf_serviceURLWithParameters
{
  v2 = objc_opt_class();
  v3 = [a1 uploadDestination];
  v4 = [a1 urlParameters];
  v5 = [v2 hf_serviceURL:v3 withParameters:v4];

  return v5;
}

+ (id)hf_serviceURL:()HFAdditions withParameters:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  v7 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:{v13, v19}];
        v15 = [MEMORY[0x277CCAD18] queryItemWithName:v13 value:v14];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    [v6 setQueryItems:v7];
  }

  v16 = [v6 URL];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end