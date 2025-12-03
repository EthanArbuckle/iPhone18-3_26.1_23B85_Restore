@interface UIView(CNKChatKit)
- (id)subviewForEffectsBrowserViewController;
@end

@implementation UIView(CNKChatKit)

- (id)subviewForEffectsBrowserViewController
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subviews = [self subviews];
  v2 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(subviews);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 valueForKey:@"_viewDelegate"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v6;

          goto LABEL_11;
        }
      }

      v3 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end