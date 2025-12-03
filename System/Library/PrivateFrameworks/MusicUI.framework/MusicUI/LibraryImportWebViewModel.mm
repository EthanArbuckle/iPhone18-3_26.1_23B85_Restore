@interface LibraryImportWebViewModel
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (void)webView:(WKWebView *)view decidePolicyForNavigationAction:(WKNavigationAction *)action decisionHandler:(id)handler;
- (void)webView:(id)view didCommitNavigation:(id)navigation;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
@end

@implementation LibraryImportWebViewModel

- (void)webView:(WKWebView *)view decidePolicyForNavigationAction:(WKNavigationAction *)action decisionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = view;
  v9[3] = action;
  v9[4] = v8;
  v9[5] = self;
  viewCopy = view;
  actionCopy = action;
  selfCopy = self;

  sub_216B64168(&unk_217049CD8, v9);
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  sub_216B64278(viewCopy);
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  sub_216B64E10(viewCopy, navigation);
}

- (void)webView:(id)view didCommitNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  sub_216B65220();
}

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  v6 = sub_216B66070();

  return v6;
}

@end