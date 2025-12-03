@interface DDCreateEventAction
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action;
@end

@implementation DDCreateEventAction

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  [controller setEditViewDelegate:{0, action}];
  viewController = [(DDAction *)self viewController];
  [viewController setAction:0];

  [(DDAction *)self setViewController:0];
  delegate = [(DDAction *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    delegate2 = [(DDAction *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate3 = [(DDAction *)self delegate];
      [delegate3 actionDidFinish:self];
    }
  }
}

@end