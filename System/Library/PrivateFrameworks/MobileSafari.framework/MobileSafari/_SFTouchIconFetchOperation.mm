@interface _SFTouchIconFetchOperation
+ (id)deviceIdealDefaultTouchIconURLsWithURL:(id)l;
- (id)webViewConfiguration;
- (void)didCreateWebView;
- (void)didFetchTouchIconURLs:(id)ls andFaviconURLs:(id)rLs forURL:(id)l;
@end

@implementation _SFTouchIconFetchOperation

+ (id)deviceIdealDefaultTouchIconURLsWithURL:(id)l
{
  v3 = MEMORY[0x1E695DF70];
  lCopy = l;
  array = [v3 array];
  [MEMORY[0x1E6963698] _applicationIconCanvasSize];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldx%ld", v6, v7];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/apple-touch-icon-%@-precomposed.png", v8];
  v10 = [MEMORY[0x1E695DFF8] URLWithString:v9 relativeToURL:lCopy];
  [array addObject:v10];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/apple-touch-icon-%@.png", v8];
  v12 = [MEMORY[0x1E695DFF8] URLWithString:v11 relativeToURL:lCopy];

  [array addObject:v12];

  return array;
}

- (id)webViewConfiguration
{
  v6.receiver = self;
  v6.super_class = _SFTouchIconFetchOperation;
  webViewConfiguration = [(WBSTouchIconFetchOperation *)&v6 webViewConfiguration];
  [webViewConfiguration _setClientNavigationsRunAtForegroundPriority:1];
  v3 = _SFApplicationNameForUserAgent();
  [webViewConfiguration setApplicationNameForUserAgent:v3];

  v4 = objc_alloc_init(MEMORY[0x1E6985338]);
  [v4 setJavaScriptEnabled:0];
  [webViewConfiguration setPreferences:v4];

  return webViewConfiguration;
}

- (void)didCreateWebView
{
  v5.receiver = self;
  v5.super_class = _SFTouchIconFetchOperation;
  [(WBSTouchIconFetchOperation *)&v5 didCreateWebView];
  v3 = _SFCustomUserAgentStringIfNeeded();
  if (v3)
  {
    webView = [(WBSWebViewMetadataFetchOperation *)self webView];
    [webView _setCustomUserAgent:v3];
  }
}

- (void)didFetchTouchIconURLs:(id)ls andFaviconURLs:(id)rLs forURL:(id)l
{
  lCopy = l;
  rLsCopy = rLs;
  lsCopy = ls;
  v11 = [objc_opt_class() deviceIdealDefaultTouchIconURLsWithURL:lCopy];
  v12 = [v11 arrayByAddingObjectsFromArray:lsCopy];

  v13.receiver = self;
  v13.super_class = _SFTouchIconFetchOperation;
  [(WBSTouchIconFetchOperation *)&v13 didFetchTouchIconURLs:v12 andFaviconURLs:rLsCopy forURL:lCopy];
}

@end