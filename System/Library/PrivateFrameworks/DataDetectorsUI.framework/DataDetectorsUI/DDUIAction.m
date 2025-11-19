@interface DDUIAction
- (void)dd_performAction;
- (void)dd_performActionWithRect:(CGRect)a3;
@end

@implementation DDUIAction

- (void)dd_performAction
{
  v3 = [(DDUIAction *)self dd_handler];

  if (v3)
  {
    v4 = [(DDUIAction *)self dd_handler];
    v4[2](v4, self);
  }
}

- (void)dd_performActionWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(DDUIAction *)self dd_action];
  [v8 updateSourceRect:{x, y, width, height}];

  [(DDUIAction *)self dd_performAction];
}

@end