@interface NSArray(Foundation_Extensions)
- (void)muDeepMutableCopy;
@end

@implementation NSArray(Foundation_Extensions)

- (void)muDeepMutableCopy
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v9 = [v8 muDeepMutableCopy];
        }

        else if ([v8 conformsToProtocol:&unk_2869902D0])
        {
          v9 = [v8 mutableCopy];
        }

        else if ([v8 conformsToProtocol:&unk_28698FC20])
        {
          v9 = [v8 copy];
        }

        else
        {
          v9 = v8;
        }

        v10 = v9;
        if (v9)
        {
          [v2 addObject:v9];

          continue;
        }

LABEL_17:
        NSLog(&cfstr_UnableToCopyOb.isa, v8);
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

@end