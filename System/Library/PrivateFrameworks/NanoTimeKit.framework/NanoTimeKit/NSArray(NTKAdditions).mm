@interface NSArray(NTKAdditions)
- (id)ntk_flatDescription;
@end

@implementation NSArray(NTKAdditions)

- (id)ntk_flatDescription
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v2 appendString:@"["];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v2 length] >= 2)
        {
          [v2 appendString:{@", "}];
        }

        [v2 appendFormat:@"%@", v8];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [v2 appendString:@"]"];

  return v2;
}

@end