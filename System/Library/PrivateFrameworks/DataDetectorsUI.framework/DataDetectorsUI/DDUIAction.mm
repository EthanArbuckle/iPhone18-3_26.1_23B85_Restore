@interface DDUIAction
- (void)dd_performAction;
- (void)dd_performActionWithRect:(CGRect)rect;
@end

@implementation DDUIAction

- (void)dd_performAction
{
  dd_handler = [(DDUIAction *)self dd_handler];

  if (dd_handler)
  {
    dd_handler2 = [(DDUIAction *)self dd_handler];
    dd_handler2[2](dd_handler2, self);
  }
}

- (void)dd_performActionWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dd_action = [(DDUIAction *)self dd_action];
  [dd_action updateSourceRect:{x, y, width, height}];

  [(DDUIAction *)self dd_performAction];
}

@end