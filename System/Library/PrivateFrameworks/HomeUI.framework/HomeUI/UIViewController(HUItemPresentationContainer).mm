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
  childViewControllers = [self childViewControllers];
  v2 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        hu_presentedItem = [*(*(&v9 + 1) + 8 * i) hu_presentedItem];
        if (hu_presentedItem)
        {
          v7 = hu_presentedItem;
          goto LABEL_11;
        }
      }

      v3 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  presentedViewController = [self presentedViewController];
  if (presentedViewController)
  {
    presentedViewController2 = [self presentedViewController];
    hu_topmostPresentedItem = [presentedViewController2 hu_topmostPresentedItem];
  }

  else
  {
    hu_topmostPresentedItem = [self hu_presentedItem];
  }

  return hu_topmostPresentedItem;
}

@end