@interface BrowserWindowScene
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (id)_browserController;
- (void)closeActiveTab:(id)a3;
@end

@implementation BrowserWindowScene

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_closeActiveTab_ == a3)
  {
    v5 = [(BrowserWindowScene *)self _browserController];
    v6 = [v5 tabController];
    v7 = [v6 canCloseTab];

    return v7;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BrowserWindowScene;
    return [BrowserWindowScene canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }
}

- (void)closeActiveTab:(id)a3
{
  v4 = a3;
  v5 = [(BrowserWindowScene *)self _browserController];
  [v5 closeActiveTab:v4];
}

- (id)_browserController
{
  v2 = [(BrowserWindowScene *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end