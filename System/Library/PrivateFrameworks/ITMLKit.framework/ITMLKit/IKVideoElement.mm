@interface IKVideoElement
- (NSArray)timelines;
@end

@implementation IKVideoElement

- (NSArray)timelines
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  children = [(IKViewElement *)self children];
  v3 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    array = 0;
    v6 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(children);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        elementName = [v8 elementName];
        v10 = [elementName isEqualToString:@"timeline"];

        if (v10)
        {
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          [(NSArray *)array addObject:v8];
        }
      }

      v4 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    array = 0;
  }

  if ([(NSArray *)array count])
  {
    v11 = array;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

@end