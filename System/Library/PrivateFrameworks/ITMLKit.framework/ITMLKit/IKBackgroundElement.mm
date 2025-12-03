@interface IKBackgroundElement
- (NSArray)images;
- (UIColor)backgroundColor;
- (double)transitionInterval;
@end

@implementation IKBackgroundElement

- (NSArray)images
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  children = [(IKViewElement *)self children];
  v5 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(children);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 elementType] == 49 && !objc_msgSend(v9, "imageType"))
        {
          [array addObject:v9];
        }
      }

      v6 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if ([array count])
  {
    v10 = [array copy];
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
  style = [(IKViewElement *)self style];
  transitionInterval = [style transitionInterval];
  [transitionInterval doubleValue];
  v5 = v4;

  return v5;
}

- (UIColor)backgroundColor
{
  style = [(IKViewElement *)self style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  return color;
}

@end