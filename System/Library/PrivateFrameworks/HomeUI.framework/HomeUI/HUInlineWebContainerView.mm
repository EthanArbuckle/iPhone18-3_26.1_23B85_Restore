@interface HUInlineWebContainerView
- (HUInlineWebContainerView)initWithFrame:(CGRect)frame;
- (HUInlineWebContainerViewDelegate)delegate;
- (void)layoutSubviews;
- (void)setFont:(id)font;
- (void)setHTMLContent:(id)content;
- (void)setUserStyleSheet;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation HUInlineWebContainerView

- (HUInlineWebContainerView)initWithFrame:(CGRect)frame
{
  v32.receiver = self;
  v32.super_class = HUInlineWebContainerView;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = [(HUInlineWebContainerView *)&v32 initWithFrame:*MEMORY[0x277CBF3A0], v4, v5, v6];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CE3858]);
    [v8 setDataDetectorTypes:0];
    v9 = objc_opt_new();
    contentController = v7->_contentController;
    v7->_contentController = v9;

    contentController = [(HUInlineWebContainerView *)v7 contentController];
    [v8 setUserContentController:contentController];

    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    font = v7->_font;
    v7->_font = v12;

    [(HUInlineWebContainerView *)v7 setUserStyleSheet];
    v14 = [objc_alloc(MEMORY[0x277CE3850]) initWithFrame:v8 configuration:{v3, v4, v5, v6}];
    webView = v7->_webView;
    v7->_webView = v14;

    webView = [(HUInlineWebContainerView *)v7 webView];
    [webView setUIDelegate:v7];

    webView2 = [(HUInlineWebContainerView *)v7 webView];
    [webView2 setNavigationDelegate:v7];

    webView3 = [(HUInlineWebContainerView *)v7 webView];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [webView3 setBackgroundColor:clearColor];

    webView4 = [(HUInlineWebContainerView *)v7 webView];
    [webView4 setOpaque:0];

    webView5 = [(HUInlineWebContainerView *)v7 webView];
    [webView5 setAutoresizesSubviews:0];

    webView6 = [(HUInlineWebContainerView *)v7 webView];
    scrollView = [webView6 scrollView];
    [scrollView _setShowsBackgroundShadow:0];

    webView7 = [(HUInlineWebContainerView *)v7 webView];
    scrollView2 = [webView7 scrollView];
    [scrollView2 setBounces:0];

    webView8 = [(HUInlineWebContainerView *)v7 webView];
    scrollView3 = [webView8 scrollView];
    [scrollView3 setZoomEnabled:0];

    webView9 = [(HUInlineWebContainerView *)v7 webView];
    scrollView4 = [webView9 scrollView];
    [scrollView4 setScrollEnabled:0];

    [(HUInlineWebContainerView *)v7 setClipsToBounds:1];
    webView10 = [(HUInlineWebContainerView *)v7 webView];
    [(HUInlineWebContainerView *)v7 addSubview:webView10];

    [(HUInlineWebContainerView *)v7 setEstimatedHeight:0.0];
  }

  return v7;
}

- (void)setUserStyleSheet
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  font = [(HUInlineWebContainerView *)self font];
  markupDescription = [font markupDescription];
  tableCellBlueTextColor = [MEMORY[0x277D75348] tableCellBlueTextColor];
  styleString = [tableCellBlueTextColor styleString];
  v10 = [v3 initWithFormat:@"var styleTag = document.createElement('style');styleTag.textContent ='   body {       %@;   }   :root {       color-scheme: light dark;   }   a {       text-decoration: none;       color: %@;   }';document.documentElement.appendChild(styleTag);", markupDescription, styleString];

  v8 = [objc_alloc(MEMORY[0x277CE3838]) initWithSource:v10 injectionTime:0 forMainFrameOnly:0];
  contentController = [(HUInlineWebContainerView *)self contentController];
  [contentController addUserScript:v8];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  font = self->_font;
  v10 = fontCopy;
  fontCopy2 = font;
  if (fontCopy2 == v10)
  {

    goto LABEL_8;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  v8 = [(UIFont *)v10 isEqual:fontCopy2];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_font, font);
    contentController = [(HUInlineWebContainerView *)self contentController];
    [contentController removeAllUserScripts];

    [(HUInlineWebContainerView *)self setUserStyleSheet];
  }

LABEL_8:
}

- (void)setHTMLContent:(id)content
{
  contentCopy = content;
  HTMLContent = self->_HTMLContent;
  v16 = contentCopy;
  v6 = HTMLContent;
  if (v6 == v16)
  {

    v8 = v16;
LABEL_11:

    goto LABEL_12;
  }

  if (!v16)
  {

    goto LABEL_7;
  }

  v7 = [(NSString *)v16 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v9 = [(NSString *)v16 copy];
    v10 = self->_HTMLContent;
    self->_HTMLContent = v9;

    if (!self->_HTMLContent)
    {
      goto LABEL_12;
    }

    semanticContentAttribute = [(HUInlineWebContainerView *)self semanticContentAttribute];
    webView = [(HUInlineWebContainerView *)self webView];
    v8 = webView;
    if (semanticContentAttribute == 4)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"<div dir='rtl'>%@<div>", self->_HTMLContent];
      v14 = [(NSString *)v8 loadHTMLString:v13 baseURL:0];
    }

    else
    {
      v15 = [(NSString *)webView loadHTMLString:self->_HTMLContent baseURL:0];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = HUInlineWebContainerView;
  [(HUInlineWebContainerView *)&v6 layoutSubviews];
  webView = [(HUInlineWebContainerView *)self webView];
  [(HUInlineWebContainerView *)self bounds];
  [webView setFrame:?];

  webView2 = [(HUInlineWebContainerView *)self webView];
  [webView2 _setLayoutMode:0];

  webView3 = [(HUInlineWebContainerView *)self webView];
  [webView3 layoutSubviews];
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  if ([actionCopy navigationType])
  {
    v7 = 1;
  }

  else
  {
    mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
    request = [actionCopy request];
    v10 = [request URL];
    v11 = [mEMORY[0x277D148E8] openURL:v10];

    v7 = 0;
  }

  handlerCopy[2](handlerCopy, v7);
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v5 = [(HUInlineWebContainerView *)self webView:view];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HUInlineWebContainerView_webView_didFinishNavigation___block_invoke;
  v6[3] = &unk_277DB7530;
  v6[4] = self;
  [v5 evaluateJavaScript:@"document.body.offsetHeight" completionHandler:v6];
}

void __56__HUInlineWebContainerView_webView_didFinishNavigation___block_invoke(uint64_t a1, void *a2)
{
  [a2 floatValue];
  if (v3 != 0.0)
  {
    v4 = v3;
    [*(a1 + 32) estimatedHeight];
    if (v5 != v4)
    {
      [*(a1 + 32) setEstimatedHeight:v4];
      v6 = [*(a1 + 32) delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [*(a1 + 32) delegate];
        [v8 inlineWebContainerViewDidFinishLoadingContent:*(a1 + 32)];
      }
    }
  }
}

- (HUInlineWebContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end