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
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          dictionaryRepresentation = [v8 dictionaryRepresentation];
LABEL_10:
          v10 = dictionaryRepresentation;
          [v2 addObject:{dictionaryRepresentation, v13}];

          continue;
        }

        if (objc_opt_respondsToSelector())
        {
          dictionaryRepresentation = [v8 arrayRepresentation];
          goto LABEL_10;
        }

        [v2 addObject:{v8, v13}];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

@end