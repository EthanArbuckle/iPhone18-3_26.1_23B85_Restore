@interface CKNavigationBar
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CKNavigationBar

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v12.receiver = self;
  v12.super_class = CKNavigationBar;
  v7 = [(CKNavigationBar *)&v12 hitTest:event withEvent:?];
  if (v7 == self)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CKNavigationBar *)self backButtonViewAtPoint:x, y];

      topItem = [(CKNavigationBar *)self topItem];
      if (v8)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      topItem = [(CKNavigationBar *)self topItem];
    }

    if (objc_opt_respondsToSelector())
    {
      contentScrollView = [topItem contentScrollView];

      v7 = contentScrollView;
    }

    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

@end