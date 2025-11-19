@interface NSArray(CAF)
- (id)arrayRepresentation;
@end

@implementation NSArray(CAF)

- (id)arrayRepresentation
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 dictionaryRepresentation];
LABEL_10:
          v10 = v9;
          [v2 addObject:{v9, v13}];

          continue;
        }

        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 arrayRepresentation];
          goto LABEL_10;
        }

        [v2 addObject:{v8, v13}];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

@end