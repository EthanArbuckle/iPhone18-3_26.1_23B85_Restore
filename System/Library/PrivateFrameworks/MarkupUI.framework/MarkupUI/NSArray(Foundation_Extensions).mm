@interface NSArray(Foundation_Extensions)
- (void)muDeepMutableCopy;
@end

@implementation NSArray(Foundation_Extensions)

- (void)muDeepMutableCopy
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(self, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(selfCopy);
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

          muDeepMutableCopy = [v8 muDeepMutableCopy];
        }

        else if ([v8 conformsToProtocol:&unk_2869902D0])
        {
          muDeepMutableCopy = [v8 mutableCopy];
        }

        else if ([v8 conformsToProtocol:&unk_28698FC20])
        {
          muDeepMutableCopy = [v8 copy];
        }

        else
        {
          muDeepMutableCopy = v8;
        }

        v10 = muDeepMutableCopy;
        if (muDeepMutableCopy)
        {
          [v2 addObject:muDeepMutableCopy];

          continue;
        }

LABEL_17:
        NSLog(&cfstr_UnableToCopyOb.isa, v8);
      }

      v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

@end