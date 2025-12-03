@interface UIView(Helper)
- (void)ck_recursivelySetContentScaleFactor:()Helper;
@end

@implementation UIView(Helper)

- (void)ck_recursivelySetContentScaleFactor:()Helper
{
  v14 = *MEMORY[0x1E69E9840];
  [self setContentScaleFactor:?];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  subviews = [self subviews];
  v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v9 + 1) + 8 * v8++) ck_recursivelySetContentScaleFactor:a2];
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end