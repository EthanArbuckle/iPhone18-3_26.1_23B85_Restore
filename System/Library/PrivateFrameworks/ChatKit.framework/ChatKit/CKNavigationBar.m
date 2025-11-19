@interface CKNavigationBar
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation CKNavigationBar

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v12.receiver = self;
  v12.super_class = CKNavigationBar;
  v7 = [(CKNavigationBar *)&v12 hitTest:a4 withEvent:?];
  if (v7 == self)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CKNavigationBar *)self backButtonViewAtPoint:x, y];

      v9 = [(CKNavigationBar *)self topItem];
      if (v8)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v9 = [(CKNavigationBar *)self topItem];
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 contentScrollView];

      v7 = v10;
    }

    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

@end