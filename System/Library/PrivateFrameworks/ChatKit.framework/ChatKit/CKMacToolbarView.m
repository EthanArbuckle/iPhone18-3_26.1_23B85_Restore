@interface CKMacToolbarView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CKMacToolbarViewDelegate)delegate;
@end

@implementation CKMacToolbarView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(CKMacToolbarView *)self subviews:0];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = [(CKMacToolbarView *)self delegate];
          v13 = [v14 macToolbarView:self shouldAllowTouchesForPoint:v7 andEvent:{x, y}];

          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (CKMacToolbarViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end