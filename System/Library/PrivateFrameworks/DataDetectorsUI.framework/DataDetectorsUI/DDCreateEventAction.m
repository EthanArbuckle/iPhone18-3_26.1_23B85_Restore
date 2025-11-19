@interface DDCreateEventAction
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
@end

@implementation DDCreateEventAction

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  [a3 setEditViewDelegate:{0, a4}];
  v5 = [(DDAction *)self viewController];
  [v5 setAction:0];

  [(DDAction *)self setViewController:0];
  v6 = [(DDAction *)self delegate];
  if (v6)
  {
    v7 = v6;
    v8 = [(DDAction *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(DDAction *)self delegate];
      [v10 actionDidFinish:self];
    }
  }
}

@end