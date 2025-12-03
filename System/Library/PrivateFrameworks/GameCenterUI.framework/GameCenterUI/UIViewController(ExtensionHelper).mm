@interface UIViewController(ExtensionHelper)
- (void)_updateExtensionHostViewWithRoundedCorners;
@end

@implementation UIViewController(ExtensionHelper)

- (void)_updateExtensionHostViewWithRoundedCorners
{
  v17 = *MEMORY[0x277D85DE8];
  if (GKHostUsesXRUIIdiom())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    view = [self view];
    superview = [view superview];
    subviews = [superview subviews];

    v5 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(subviews);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          layer = [v9 layer];
          [layer setCornerRadius:38.0];

          layer2 = [v9 layer];
          [layer2 setContinuousCorners:1];
        }

        v6 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

@end