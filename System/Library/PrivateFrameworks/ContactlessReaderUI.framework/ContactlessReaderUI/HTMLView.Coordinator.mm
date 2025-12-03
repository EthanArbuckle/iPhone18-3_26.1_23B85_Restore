@interface HTMLView.Coordinator
- (_TtCV19ContactlessReaderUI8HTMLView11Coordinator)init;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation HTMLView.Coordinator

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  sub_244073ED0(viewCopy);
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  viewCopy = view;
  actionCopy = action;
  selfCopy = self;
  sub_244074714(actionCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtCV19ContactlessReaderUI8HTMLView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end