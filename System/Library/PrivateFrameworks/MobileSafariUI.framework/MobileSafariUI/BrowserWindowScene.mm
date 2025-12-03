@interface BrowserWindowScene
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (id)_browserController;
- (void)closeActiveTab:(id)tab;
@end

@implementation BrowserWindowScene

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_closeActiveTab_ == action)
  {
    _browserController = [(BrowserWindowScene *)self _browserController];
    tabController = [_browserController tabController];
    canCloseTab = [tabController canCloseTab];

    return canCloseTab;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BrowserWindowScene;
    return [BrowserWindowScene canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }
}

- (void)closeActiveTab:(id)tab
{
  tabCopy = tab;
  _browserController = [(BrowserWindowScene *)self _browserController];
  [_browserController closeActiveTab:tabCopy];
}

- (id)_browserController
{
  delegate = [(BrowserWindowScene *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = delegate;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end