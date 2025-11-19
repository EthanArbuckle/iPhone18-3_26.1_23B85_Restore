@interface HUInlineWebContainerView
- (HUInlineWebContainerView)initWithFrame:(CGRect)a3;
- (HUInlineWebContainerViewDelegate)delegate;
- (void)layoutSubviews;
- (void)setFont:(id)a3;
- (void)setHTMLContent:(id)a3;
- (void)setUserStyleSheet;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation HUInlineWebContainerView

- (HUInlineWebContainerView)initWithFrame:(CGRect)a3
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

    v11 = [(HUInlineWebContainerView *)v7 contentController];
    [v8 setUserContentController:v11];

    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    font = v7->_font;
    v7->_font = v12;

    [(HUInlineWebContainerView *)v7 setUserStyleSheet];
    v14 = [objc_alloc(MEMORY[0x277CE3850]) initWithFrame:v8 configuration:{v3, v4, v5, v6}];
    webView = v7->_webView;
    v7->_webView = v14;

    v16 = [(HUInlineWebContainerView *)v7 webView];
    [v16 setUIDelegate:v7];

    v17 = [(HUInlineWebContainerView *)v7 webView];
    [v17 setNavigationDelegate:v7];

    v18 = [(HUInlineWebContainerView *)v7 webView];
    v19 = [MEMORY[0x277D75348] clearColor];
    [v18 setBackgroundColor:v19];

    v20 = [(HUInlineWebContainerView *)v7 webView];
    [v20 setOpaque:0];

    v21 = [(HUInlineWebContainerView *)v7 webView];
    [v21 setAutoresizesSubviews:0];

    v22 = [(HUInlineWebContainerView *)v7 webView];
    v23 = [v22 scrollView];
    [v23 _setShowsBackgroundShadow:0];

    v24 = [(HUInlineWebContainerView *)v7 webView];
    v25 = [v24 scrollView];
    [v25 setBounces:0];

    v26 = [(HUInlineWebContainerView *)v7 webView];
    v27 = [v26 scrollView];
    [v27 setZoomEnabled:0];

    v28 = [(HUInlineWebContainerView *)v7 webView];
    v29 = [v28 scrollView];
    [v29 setScrollEnabled:0];

    [(HUInlineWebContainerView *)v7 setClipsToBounds:1];
    v30 = [(HUInlineWebContainerView *)v7 webView];
    [(HUInlineWebContainerView *)v7 addSubview:v30];

    [(HUInlineWebContainerView *)v7 setEstimatedHeight:0.0];
  }

  return v7;
}

- (void)setUserStyleSheet
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(HUInlineWebContainerView *)self font];
  v5 = [v4 markupDescription];
  v6 = [MEMORY[0x277D75348] tableCellBlueTextColor];
  v7 = [v6 styleString];
  v10 = [v3 initWithFormat:@"var styleTag = document.createElement('style');styleTag.textContent ='   body {       %@;   }   :root {       color-scheme: light dark;   }   a {       text-decoration: none;       color: %@;   }';document.documentElement.appendChild(styleTag);", v5, v7];

  v8 = [objc_alloc(MEMORY[0x277CE3838]) initWithSource:v10 injectionTime:0 forMainFrameOnly:0];
  v9 = [(HUInlineWebContainerView *)self contentController];
  [v9 addUserScript:v8];
}

- (void)setFont:(id)a3
{
  v5 = a3;
  font = self->_font;
  v10 = v5;
  v7 = font;
  if (v7 == v10)
  {

    goto LABEL_8;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  v8 = [(UIFont *)v10 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_font, a3);
    v9 = [(HUInlineWebContainerView *)self contentController];
    [v9 removeAllUserScripts];

    [(HUInlineWebContainerView *)self setUserStyleSheet];
  }

LABEL_8:
}

- (void)setHTMLContent:(id)a3
{
  v4 = a3;
  HTMLContent = self->_HTMLContent;
  v16 = v4;
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

    v11 = [(HUInlineWebContainerView *)self semanticContentAttribute];
    v12 = [(HUInlineWebContainerView *)self webView];
    v8 = v12;
    if (v11 == 4)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"<div dir='rtl'>%@<div>", self->_HTMLContent];
      v14 = [(NSString *)v8 loadHTMLString:v13 baseURL:0];
    }

    else
    {
      v15 = [(NSString *)v12 loadHTMLString:self->_HTMLContent baseURL:0];
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
  v3 = [(HUInlineWebContainerView *)self webView];
  [(HUInlineWebContainerView *)self bounds];
  [v3 setFrame:?];

  v4 = [(HUInlineWebContainerView *)self webView];
  [v4 _setLayoutMode:0];

  v5 = [(HUInlineWebContainerView *)self webView];
  [v5 layoutSubviews];
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v12 = a4;
  v6 = a5;
  if ([v12 navigationType])
  {
    v7 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277D148E8] sharedInstance];
    v9 = [v12 request];
    v10 = [v9 URL];
    v11 = [v8 openURL:v10];

    v7 = 0;
  }

  v6[2](v6, v7);
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v5 = [(HUInlineWebContainerView *)self webView:a3];
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