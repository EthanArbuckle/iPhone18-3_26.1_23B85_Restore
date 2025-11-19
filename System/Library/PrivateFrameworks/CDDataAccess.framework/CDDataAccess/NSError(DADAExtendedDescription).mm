@interface NSError(DADAExtendedDescription)
- (id)DAExtendedDescription;
@end

@implementation NSError(DADAExtendedDescription)

- (id)DAExtendedDescription
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [a1 description];
  v3 = [a1 userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"NSDetailedErrors"];
    if (v4)
    {
      v5 = [v2 stringByAppendingString:@"NSDetailedErrors: "];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v22;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(*(&v21 + 1) + 8 * i) DAExtendedDescription];
            if (v11)
            {
              v12 = [v5 stringByAppendingString:v11];

              v5 = v12;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v16 = [a1 userInfo];
      v17 = [v16 description];

      if (v17)
      {
        v18 = [v2 stringByAppendingString:v17];

        v2 = v18;
      }

      v5 = v2;
    }
  }

  else
  {
    v13 = [a1 userInfo];
    v14 = [v13 description];

    if (v14)
    {
      v15 = [v2 stringByAppendingString:v14];

      v2 = v15;
    }

    v5 = v2;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

@end