@interface CKDismissView
- (CKDismissViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation CKDismissView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v23 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v21.receiver = self;
  v21.super_class = CKDismissView;
  v8 = [(CKDismissView *)&v21 hitTest:v7 withEvent:x, y];
  if (v8 == self)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(CKDismissView *)self passthroughViews];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          [v14 convertPoint:self fromView:{x, y}];
          v15 = [v14 hitTest:v7 withEvent:?];

          if (v15)
          {

            v8 = 0;
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v8;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = CKDismissView;
  [(CKDismissView *)&v6 touchesBegan:a3 withEvent:a4];
  v5 = [(CKDismissView *)self delegate];
  [v5 dismissViewWasTapped:self];
}

- (CKDismissViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end