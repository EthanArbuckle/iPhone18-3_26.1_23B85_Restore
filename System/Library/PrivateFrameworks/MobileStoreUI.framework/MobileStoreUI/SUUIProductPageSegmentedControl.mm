@interface SUUIProductPageSegmentedControl
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SUUIProductPageSegmentedControl

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
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
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v8 = selfCopy;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SUUIProductPageSegmentedControl;
    v8 = [(SUUIProductPageSegmentedControl *)&v16 hitTest:eventCopy withEvent:x, y];
  }

  v14 = v8;

  return v14;
}

@end