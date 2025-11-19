@interface UIViewController(HUItemPresentationContainer)
- (id)hu_presentedItem;
- (id)hu_topmostPresentedItem;
@end

@implementation UIViewController(HUItemPresentationContainer)

- (id)hu_presentedItem
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [a1 childViewControllers];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) hu_presentedItem];
        if (v6)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (id)hu_topmostPresentedItem
{
  v2 = [a1 presentedViewController];
  if (v2)
  {
    v3 = [a1 presentedViewController];
    v4 = [v3 hu_topmostPresentedItem];
  }

  else
  {
    v4 = [a1 hu_presentedItem];
  }

  return v4;
}

@end