@interface LibraryImportWebViewModel
- (id)presentationAnchorForWebAuthenticationSession:(id)a3;
- (void)webView:(WKWebView *)a3 decidePolicyForNavigationAction:(WKNavigationAction *)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didCommitNavigation:(id)a4;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
@end

@implementation LibraryImportWebViewModel

- (void)webView:(WKWebView *)a3 decidePolicyForNavigationAction:(WKNavigationAction *)a4 decisionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_216B64168(&unk_217049CD8, v9);
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_216B64278(v6);
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_216B64E10(v6, a4);
}

- (void)webView:(id)a3 didCommitNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_216B65220();
}

- (id)presentationAnchorForWebAuthenticationSession:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_216B66070();

  return v6;
}

@end