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
    v2 = [a1 view];
    v3 = [v2 superview];
    v4 = [v3 subviews];

    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [v9 layer];
          [v10 setCornerRadius:38.0];

          v11 = [v9 layer];
          [v11 setContinuousCorners:1];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

@end