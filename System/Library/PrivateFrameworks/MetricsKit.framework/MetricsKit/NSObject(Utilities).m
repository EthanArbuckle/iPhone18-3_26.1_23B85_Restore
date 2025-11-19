@interface NSObject(Utilities)
- (id)mt_nullableValueForKey:()Utilities;
- (id)mt_nullableValueForKeyPath:()Utilities;
- (id)mt_nullableValueForKeyPathArray:()Utilities index:;
- (id)mt_nullableValueForKeyPathExt:()Utilities;
@end

@implementation NSObject(Utilities)

- (id)mt_nullableValueForKeyPathArray:()Utilities index:
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a1;
  if (v7)
  {
    do
    {
      if (a4 >= [v6 count])
      {
        break;
      }

      v8 = [v6 objectAtIndexedSubscript:a4];
      if ([v8 hasSuffix:@"]"])
      {
        v9 = [v8 rangeOfString:@"["];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = MTMetricsKitOSLog();
          v23 = v15;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = v8;
            _os_log_impl(&dword_258F4B000, v15, OS_LOG_TYPE_ERROR, "MetricsKit: Invalid keypath %@", buf, 0xCu);
          }

          v14 = 0;
          goto LABEL_29;
        }

        v23 = [v8 substringToIndex:v9];
        v24 = [v8 substringWithRange:{v9 + 1, objc_msgSend(v8, "length") - v9 - 2}];
        v25 = [v7 valueForKeyPath:v23];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = 0;
          goto LABEL_28;
        }

        if (![v24 length])
        {
          v14 = [MEMORY[0x277CBEB18] array];
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v16 = v25;
          v17 = [v16 countByEnumeratingWithState:&v26 objects:v32 count:16];
          if (v17)
          {
            v18 = *v27;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v27 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = [*(*(&v26 + 1) + 8 * i) mt_nullableValueForKeyPathArray:v6 index:a4 + 1];
                if (v20)
                {
                  [v14 addObject:v20];
                }
              }

              v17 = [v16 countByEnumeratingWithState:&v26 objects:v32 count:16];
            }

            while (v17);
          }

LABEL_28:
LABEL_29:

          v13 = v7;
          goto LABEL_30;
        }

        v10 = [v24 integerValue];
        if ((v10 & 0x8000000000000000) == 0 && v10 < [v25 count])
        {
          v11 = [v25 objectAtIndexedSubscript:v10];

          v7 = v11;
        }

        v12 = v7;
        v7 = v23;
      }

      else
      {
        v12 = [v7 valueForKeyPath:v8];
      }

      ++a4;
      v7 = v12;
    }

    while (v12);
  }

  v13 = v7;
  v14 = v13;
LABEL_30:

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)mt_nullableValueForKeyPathExt:()Utilities
{
  v4 = [a3 componentsSeparatedByString:@"."];
  v5 = [a1 mt_nullableValueForKeyPathArray:v4 index:0];

  return v5;
}

- (id)mt_nullableValueForKeyPath:()Utilities
{
  v4 = a3;
  v5 = [a1 valueForKeyPath:v4];

  return v5;
}

- (id)mt_nullableValueForKey:()Utilities
{
  v4 = a3;
  v5 = [a1 valueForKey:v4];

  return v5;
}

@end