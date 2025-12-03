@interface UIViewController(NAUIUIKitDebugging)
- (id)_recursiveDescriptionWithInset:()NAUIUIKitDebugging;
@end

@implementation UIViewController(NAUIUIKitDebugging)

- (id)_recursiveDescriptionWithInset:()NAUIUIKitDebugging
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@    ", v4];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  childViewControllers = [self childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v12 = [*(*(&v22 + 1) + 8 * i) _recursiveDescriptionWithInset:v6];
        [array addObject:v12];
      }

      v9 = [childViewControllers countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [self description];
  view = [self view];
  v16 = [view description];
  v17 = [v13 stringWithFormat:@"%@%@ view:%@", v4, v14, v16];

  if ([array count])
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [array componentsJoinedByString:@"\n"];
    v20 = [v18 stringWithFormat:@"%@\n%@", v17, v19];
  }

  else
  {
    v20 = v17;
  }

  return v20;
}

@end