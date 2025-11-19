@interface NSDictionary(PrintDebugging)
- (id)_gkDescriptionWithChildren:()PrintDebugging;
@end

@implementation NSDictionary(PrintDebugging)

- (id)_gkDescriptionWithChildren:()PrintDebugging
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = _gkTabStringForTabLevel(a3);
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v24 = v4;
  [v5 appendFormat:@"%@<%@ %p> {\n", v4, v7, a1];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = a1;
  obj = [a1 allKeys];
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        v15 = v14;
        if (v14)
        {
          [v14 _gkDescriptionWithChildren:a3 + 1];
          v17 = v16 = v5;
          v18 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v19 = [v17 stringByTrimmingCharactersInSet:v18];

          v5 = v16;
        }

        else
        {
          v19 = @"(null)\n";
        }

        [v5 appendFormat:@"%@    %@ : %@", v24, v13, v19];
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  [v5 appendFormat:@"%@}\n", v24];
  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

@end