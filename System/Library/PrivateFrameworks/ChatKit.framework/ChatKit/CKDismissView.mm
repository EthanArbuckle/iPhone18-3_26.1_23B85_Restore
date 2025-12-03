@interface CKDismissView
- (CKDismissViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation CKDismissView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v23 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v21.receiver = self;
  v21.super_class = CKDismissView;
  v8 = [(CKDismissView *)&v21 hitTest:eventCopy withEvent:x, y];
  if (v8 == self)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    passthroughViews = [(CKDismissView *)self passthroughViews];
    v10 = [passthroughViews countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(passthroughViews);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          [v14 convertPoint:self fromView:{x, y}];
          v15 = [v14 hitTest:eventCopy withEvent:?];

          if (v15)
          {

            v8 = 0;
            goto LABEL_12;
          }
        }

        v11 = [passthroughViews countByEnumeratingWithState:&v17 objects:v22 count:16];
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = CKDismissView;
  [(CKDismissView *)&v6 touchesBegan:began withEvent:event];
  delegate = [(CKDismissView *)self delegate];
  [delegate dismissViewWasTapped:self];
}

- (CKDismissViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end