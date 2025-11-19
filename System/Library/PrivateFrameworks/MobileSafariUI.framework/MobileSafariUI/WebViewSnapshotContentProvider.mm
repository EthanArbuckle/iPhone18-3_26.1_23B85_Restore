@interface WebViewSnapshotContentProvider
- (BOOL)snapshotContentShouldUnderlapTopBackdrop;
- (CGRect)contentFrame;
- (CGRect)snapshotContentRectInBounds:(CGRect)a3;
- (UIColor)snapshotBackgroundColor;
- (WebViewSnapshotContentProvider)initWithWebView:(id)a3 contentFrame:(CGRect)a4;
- (void)prepareForSnapshotOfSize:(CGSize)a3 completion:(id)a4;
@end

@implementation WebViewSnapshotContentProvider

- (WebViewSnapshotContentProvider)initWithWebView:(id)a3 contentFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v15.receiver = self;
  v15.super_class = WebViewSnapshotContentProvider;
  v11 = [(WebViewSnapshotContentProvider *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_webView, a3);
    v12->_contentFrame.origin.x = x;
    v12->_contentFrame.origin.y = y;
    v12->_contentFrame.size.width = width;
    v12->_contentFrame.size.height = height;
    v13 = v12;
  }

  return v12;
}

- (UIColor)snapshotBackgroundColor
{
  v2 = [(WKWebView *)self->_webView scrollView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (BOOL)snapshotContentShouldUnderlapTopBackdrop
{
  v2 = [(WKWebView *)self->_webView scrollView];
  [v2 contentInset];
  v4 = v3 != 0.0;

  return v4;
}

- (CGRect)snapshotContentRectInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!self->_snapshotImage)
  {
    [(WKWebView *)self->_webView bounds];
    v7 = v17.origin.x;
    v8 = v17.origin.y;
    v9 = v17.size.width;
    v10 = v17.size.height;
    v16 = CGRectGetHeight(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v11 = v16 * CGRectGetWidth(v18);
    v19.origin.x = v7;
    v19.origin.y = v8;
    v19.size.width = v9;
    v19.size.height = v10;
    height = v11 / CGRectGetWidth(v19);
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)prepareForSnapshotOfSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(WKWebView *)self->_webView window];
  v9 = [v8 windowScene];
  v10 = [v9 activationState];

  if (v10 == 2)
  {
    v7[2](v7, 1);
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CE3828]);
    v12 = CGRectGetWidth(self->_contentFrame);
    [v11 setRect:{CGRectGetMinX(self->_contentFrame), 0.0, v12, height * v12 / width}];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetWidth(self->_contentFrame)];
    [v11 setSnapshotWidth:v13];

    if ([(WKWebView *)self->_webView _isDisplayingPDF])
    {
      [v11 setAfterScreenUpdates:0];
    }

    webView = self->_webView;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70__WebViewSnapshotContentProvider_prepareForSnapshotOfSize_completion___block_invoke;
    v15[3] = &unk_2781DC608;
    v15[4] = self;
    v16 = v7;
    [(WKWebView *)webView takeSnapshotWithConfiguration:v11 completionHandler:v15];
  }
}

void __70__WebViewSnapshotContentProvider_prepareForSnapshotOfSize_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __70__WebViewSnapshotContentProvider_prepareForSnapshotOfSize_completion___block_invoke_cold_1(v7, v6);
    }
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = v5;
  v10 = v5;

  (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(a1 + 32) + 8) == 0);
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

void __70__WebViewSnapshotContentProvider_prepareForSnapshotOfSize_completion___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_215819000, v3, OS_LOG_TYPE_ERROR, "Failed to take web view snapshot: %{public}@ ", &v5, 0xCu);
}

@end