@interface UIPageViewController(IC)
- (id)ic_internalScrollView;
- (void)ic_setAutoscrollEnabled:()IC;
@end

@implementation UIPageViewController(IC)

- (id)ic_internalScrollView
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  view = [self view];
  subviews = [view subviews];

  v3 = [subviews countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(subviews);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [subviews countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)ic_setAutoscrollEnabled:()IC
{
  ic_internalScrollView = [self ic_internalScrollView];
  [ic_internalScrollView _setAutoScrollEnabled:a3];
}

@end