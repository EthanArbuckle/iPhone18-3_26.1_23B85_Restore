@interface SUUIProductPageSegmentedControl
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SUUIProductPageSegmentedControl

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(SUUIProductPageSegmentedControl *)self isEnabled]&& ![(SUUIProductPageSegmentedControl *)self isHidden])
  {
    [(SUUIProductPageSegmentedControl *)self bounds];
    v19.origin.x = v9 + -10.0;
    v19.origin.y = v10 + -10.0;
    v19.size.width = v11 + 20.0;
    v19.size.height = v12 + 20.0;
    v18.x = x;
    v18.y = y;
    if (CGRectContainsPoint(v19, v18))
    {
      v13 = self;
    }

    else
    {
      v13 = 0;
    }

    v8 = v13;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SUUIProductPageSegmentedControl;
    v8 = [(SUUIProductPageSegmentedControl *)&v16 hitTest:v7 withEvent:x, y];
  }

  v14 = v8;

  return v14;
}

@end