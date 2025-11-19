@interface UIViewController(NAUIUIKitDebugging)
- (id)_recursiveDescriptionWithInset:()NAUIUIKitDebugging;
@end

@implementation UIViewController(NAUIUIKitDebugging)

- (id)_recursiveDescriptionWithInset:()NAUIUIKitDebugging
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@    ", v4];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [a1 childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v22 + 1) + 8 * i) _recursiveDescriptionWithInset:v6];
        [v5 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [a1 description];
  v15 = [a1 view];
  v16 = [v15 description];
  v17 = [v13 stringWithFormat:@"%@%@ view:%@", v4, v14, v16];

  if ([v5 count])
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [v5 componentsJoinedByString:@"\n"];
    v20 = [v18 stringWithFormat:@"%@\n%@", v17, v19];
  }

  else
  {
    v20 = v17;
  }

  return v20;
}

@end