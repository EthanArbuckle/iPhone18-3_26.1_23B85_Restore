@interface IKBackgroundElement
- (NSArray)images;
- (UIColor)backgroundColor;
- (double)transitionInterval;
@end

@implementation IKBackgroundElement

- (NSArray)images
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(IKViewElement *)self children];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 elementType] == 49 && !objc_msgSend(v9, "imageType"))
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v10 = [v3 copy];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (double)transitionInterval
{
  v2 = [(IKViewElement *)self style];
  v3 = [v2 transitionInterval];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (UIColor)backgroundColor
{
  v2 = [(IKViewElement *)self style];
  v3 = [v2 ikBackgroundColor];
  v4 = [v3 color];

  return v4;
}

@end