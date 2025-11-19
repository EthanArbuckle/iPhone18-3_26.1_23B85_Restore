@interface HTMLView.Coordinator
- (_TtCV19ContactlessReaderUI8HTMLView11Coordinator)init;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation HTMLView.Coordinator

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_244073ED0(v6);
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_244074714(v10, v11, v8);
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