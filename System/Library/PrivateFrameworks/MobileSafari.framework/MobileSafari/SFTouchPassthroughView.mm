@interface SFTouchPassthroughView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (void)safeAreaInsetsDidChange;
@end

@implementation SFTouchPassthroughView

- (void)safeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = SFTouchPassthroughView;
  [(SFTouchPassthroughView *)&v4 safeAreaInsetsDidChange];
  safeAreaInsetsChangeHandler = self->_safeAreaInsetsChangeHandler;
  if (safeAreaInsetsChangeHandler)
  {
    safeAreaInsetsChangeHandler[2]();
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(SFTouchPassthroughView *)self subviews];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [(SFTouchPassthroughView *)self convertPoint:v13 toView:x, y];
        v14 = [v13 hitTest:v7 withEvent:?];

        if (v14)
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

@end