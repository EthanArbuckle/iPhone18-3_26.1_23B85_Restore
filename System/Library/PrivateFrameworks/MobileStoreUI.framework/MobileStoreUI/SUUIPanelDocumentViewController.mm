@interface SUUIPanelDocumentViewController
- (SUUIPanelDocumentViewController)initWithTemplateElement:(id)a3;
- (id)_activeBackgroundColor;
- (id)_imageForBackgroundImageElement:(id)a3;
- (id)_layoutContext;
- (id)_templateBackgroundColor;
- (void)_keyboardHideNotification:(id)a3;
- (void)_keyboardWillChangeNotification:(id)a3;
- (void)_layoutBackgroundImageView;
- (void)_layoutScrollView;
- (void)_reloadBackgroundImageView;
- (void)_reloadContentSize;
- (void)_reloadPanelViewWithScrollViewSize:(CGSize)a3;
- (void)_requestPanelViewLayoutWithContentWidth:(int64_t)a3 forced:(BOOL)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)dealloc;
- (void)documentDidUpdate:(id)a3;
- (void)layoutCacheDidFinishBatch:(id)a3;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIPanelDocumentViewController

- (SUUIPanelDocumentViewController)initWithTemplateElement:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SUUIPanelDocumentViewController;
  v6 = [(SUUIPanelDocumentViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_lastContentWidth = -1;
    objc_storeStrong(&v6->_templateElement, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__keyboardHideNotification_ name:*MEMORY[0x277D76BA0] object:0];
    [v8 addObserver:v7 selector:sel__keyboardHideNotification_ name:*MEMORY[0x277D76C50] object:0];
    [v8 addObserver:v7 selector:sel__keyboardWillChangeNotification_ name:*MEMORY[0x277D76C48] object:0];
    [v8 addObserver:v7 selector:sel__keyboardWillChangeNotification_ name:*MEMORY[0x277D76C60] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C48] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C50] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [(SUUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:0];
  [(SUUIViewElementLayoutContext *)self->_layoutContext setParentViewController:0];
  [(SUUILayoutCache *)self->_textLayoutCache setDelegate:0];

  v4.receiver = self;
  v4.super_class = SUUIPanelDocumentViewController;
  [(SUUIViewController *)&v4 dealloc];
}

- (void)loadView
{
  v13 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [(SUUIPanelDocumentViewController *)self _templateBackgroundColor];
  [v13 setBackgroundColor:v3];

  [v13 setPreservesSuperviewLayoutMargins:1];
  if (!self->_panelView)
  {
    v4 = objc_alloc_init(SUUIPanelView);
    panelView = self->_panelView;
    self->_panelView = v4;

    v6 = self->_panelView;
    v7 = [(SUUIPanelDocumentViewController *)self _activeBackgroundColor];
    [(SUUIViewReuseView *)v6 setBackgroundColor:v7];

    [(SUUIPanelView *)self->_panelView setPreservesSuperviewLayoutMargins:1];
  }

  scrollView = self->_scrollView;
  if (!scrollView)
  {
    v9 = objc_alloc_init(MEMORY[0x277D759D8]);
    v10 = self->_scrollView;
    self->_scrollView = v9;

    [(UIScrollView *)self->_scrollView setAlwaysBounceHorizontal:0];
    [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:0];
    v11 = self->_scrollView;
    v12 = [(SUUIPanelDocumentViewController *)self _activeBackgroundColor];
    [(UIScrollView *)v11 setBackgroundColor:v12];

    [(UIScrollView *)self->_scrollView setPreservesSuperviewLayoutMargins:1];
    [(UIScrollView *)self->_scrollView addSubview:self->_panelView];
    scrollView = self->_scrollView;
  }

  [v13 addSubview:scrollView];
  [(SUUIPanelDocumentViewController *)self setView:v13];
  [(SUUIPanelDocumentViewController *)self _reloadBackgroundImageView];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(SUUIMetricsImpressionSession);
  metricsImpressionSession = self->_metricsImpressionSession;
  self->_metricsImpressionSession = v5;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(SUUIPanelTemplateViewElement *)self->_templateElement children];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SUUIMetricsImpressionSession *)self->_metricsImpressionSession beginActiveImpressionForViewElement:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12.receiver = self;
  v12.super_class = SUUIPanelDocumentViewController;
  [(SUUIPanelDocumentViewController *)&v12 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SUUIPanelTemplateViewElement *)self->_templateElement children];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SUUIMetricsImpressionSession *)self->_metricsImpressionSession endActiveImpressionForViewElement:*(*(&v12 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  metricsImpressionSession = self->_metricsImpressionSession;
  self->_metricsImpressionSession = 0;

  self->_didAttemptBecomeFirstResponder = 0;
  v11.receiver = self;
  v11.super_class = SUUIPanelDocumentViewController;
  [(SUUIPanelDocumentViewController *)&v11 viewDidDisappear:v3];
}

- (void)viewDidLayoutSubviews
{
  if (!self->_didAttemptBecomeFirstResponder)
  {
    if ([(SUUIPanelView *)self->_panelView canBecomeFirstResponder])
    {
      UIKeyboardOrderInAutomatic();
      [(SUUIPanelView *)self->_panelView becomeFirstResponder];
    }

    self->_didAttemptBecomeFirstResponder = 1;
  }

  v3.receiver = self;
  v3.super_class = SUUIPanelDocumentViewController;
  [(SUUIPanelDocumentViewController *)&v3 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(SUUIPanelDocumentViewController *)self _layoutScrollView];
  if (self->_panelView)
  {
    [(UIScrollView *)self->_scrollView bounds];
    [(SUUIPanelDocumentViewController *)self _reloadPanelViewWithScrollViewSize:v5, v6];
  }

  v7.receiver = self;
  v7.super_class = SUUIPanelDocumentViewController;
  [(SUUIViewController *)&v7 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  self->_didAttemptBecomeFirstResponder = 0;
  [(SUUIPanelView *)self->_panelView resignFirstResponder];
  v5.receiver = self;
  v5.super_class = SUUIPanelDocumentViewController;
  [(SUUIPanelDocumentViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewWillLayoutSubviews
{
  [(SUUIPanelDocumentViewController *)self _layoutBackgroundImageView];
  [(SUUIPanelDocumentViewController *)self _layoutScrollView];
  if (self->_panelView)
  {
    [(SUUIPanelDocumentViewController *)self _reloadContentSize];
  }

  v3.receiver = self;
  v3.super_class = SUUIPanelDocumentViewController;
  [(SUUIPanelDocumentViewController *)&v3 viewWillLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(SUUIPanelDocumentViewController *)self _reloadPanelViewWithScrollViewSize:width, height];
  v8.receiver = self;
  v8.super_class = SUUIPanelDocumentViewController;
  [(SUUIPanelDocumentViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(SUUIPanelTemplateViewElement *)self->_templateElement backgroundImageElement];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 resourceCacheKey];
    v10 = [v14 cacheKey];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      [(UIImageView *)self->_backgroundImageView setImage:v6];
      [(SUUIPanelDocumentViewController *)self _layoutBackgroundImageView];
    }
  }

  panelView = self->_panelView;
  v13 = [(SUUIPanelDocumentViewController *)self _layoutContext];
  [(SUUIPanelView *)panelView setImage:v6 forArtworkRequest:v14 context:v13];
}

- (void)documentDidUpdate:(id)a3
{
  v4 = [a3 templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = v4;

  v11 = [(SUUIPanelDocumentViewController *)self _activeBackgroundColor];
  [(UIScrollView *)self->_scrollView setBackgroundColor:?];
  panelView = self->_panelView;
  if (panelView)
  {
    [(SUUIViewReuseView *)panelView setBackgroundColor:v11];
    [(UIScrollView *)self->_scrollView bounds];
    [(SUUIPanelDocumentViewController *)self _reloadPanelViewWithScrollViewSize:v7, v8];
  }

  if ([(SUUIPanelDocumentViewController *)self isViewLoaded])
  {
    [(SUUIPanelDocumentViewController *)self _reloadBackgroundImageView];
    v9 = [(SUUIPanelDocumentViewController *)self view];
    v10 = [(SUUIPanelDocumentViewController *)self _templateBackgroundColor];
    [v9 setBackgroundColor:v10];
  }
}

- (void)layoutCacheDidFinishBatch:(id)a3
{
  panelView = self->_panelView;
  templateElement = self->_templateElement;
  [(UIScrollView *)self->_scrollView bounds];
  v7 = v6;
  v8 = [(SUUIPanelDocumentViewController *)self _layoutContext];
  [(SUUIPanelView *)panelView reloadWithViewElement:templateElement width:v8 context:v7];
}

- (void)_keyboardHideNotification:(id)a3
{
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  self->_keyboardFrame.origin = *MEMORY[0x277CBF3A0];
  self->_keyboardFrame.size = v4;
  [(SUUIPanelDocumentViewController *)self _layoutScrollView];

  [(SUUIPanelDocumentViewController *)self _reloadContentSize];
}

- (void)_keyboardWillChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v10 = [v4 objectForKey:*MEMORY[0x277D76BB8]];

  v5 = v10;
  if (v10)
  {
    [v10 CGRectValue];
    self->_keyboardFrame.origin.x = v6;
    self->_keyboardFrame.origin.y = v7;
    self->_keyboardFrame.size.width = v8;
    self->_keyboardFrame.size.height = v9;
    [(SUUIPanelDocumentViewController *)self _layoutScrollView];
    [(SUUIPanelDocumentViewController *)self _reloadContentSize];
    v5 = v10;
  }
}

- (id)_activeBackgroundColor
{
  v3 = [(SUUIPanelTemplateViewElement *)self->_templateElement backgroundImageElement];
  if (v3)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [(SUUIPanelDocumentViewController *)self _templateBackgroundColor];
  }
  v4 = ;

  return v4;
}

- (id)_imageForBackgroundImageElement:(id)a3
{
  v4 = a3;
  v5 = [(SUUIPanelDocumentViewController *)self _layoutContext];
  v6 = [v5 resourceLoader];

  v7 = [v4 resourceName];
  if ([v7 length])
  {
    v8 = SUUIImageWithResourceName(v7);
  }

  else
  {
    v9 = [v4 resourceCacheKey];
    v10 = [v6 requestIdentifierForCacheKey:v9];
    v11 = v10;
    if (v10)
    {
      v8 = [v6 cachedResourceForRequestIdentifier:{objc_msgSend(v10, "unsignedIntegerValue")}];
      if ([v6 trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v11, "unsignedIntegerValue")}])
      {

        v12 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = objc_alloc_init(SUUIArtworkRequest);
    [(SUUIResourceRequest *)v13 setCacheKey:v9];
    v14 = +[(SSVURLDataConsumer *)SUUIImageDataConsumer];
    [(SUUIArtworkRequest *)v13 setDataConsumer:v14];

    [(SUUIArtworkRequest *)v13 setDelegate:self];
    v15 = [v4 URL];
    [(SUUIArtworkRequest *)v13 setURL:v15];

    [v6 loadResourceWithRequest:v13 reason:1];
  }

  v8 = v8;
  v12 = v8;
LABEL_9:

  return v12;
}

- (void)_layoutBackgroundImageView
{
  if (!self->_backgroundImageView)
  {
    return;
  }

  v3 = [(SUUIPanelDocumentViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19 = [(UIImageView *)self->_backgroundImageView image];
  if ([(UIImageView *)self->_backgroundImageView contentMode]!= 2 && v19)
  {
    [v19 size];
    *&v12 = v13 * (v9 / v12);
    v14 = floorf(*&v12);
    v15 = [(SUUIPanelTemplateViewElement *)self->_templateElement backgroundImageElement];
    v16 = [v15 style];
    v17 = [v16 elementPosition];

    v18 = 0.0;
    if (v17 <= 9)
    {
      if (((1 << v17) & 0x33) != 0)
      {
        v7 = floor((v11 - v14) * 0.5);
LABEL_12:
        v11 = v14;
        goto LABEL_13;
      }

      if (((1 << v17) & 0x308) != 0)
      {
        v21.origin.x = v5;
        v21.origin.y = v7;
        v21.size.width = v9;
        v21.size.height = v11;
        v7 = CGRectGetMaxY(v21) - v14;
        goto LABEL_12;
      }
    }

    v7 = 0.0;
    goto LABEL_12;
  }

  v18 = v5;
LABEL_13:
  [(UIImageView *)self->_backgroundImageView setFrame:v18, v7, v9, v11];
}

- (id)_layoutContext
{
  layoutContext = self->_layoutContext;
  if (!layoutContext)
  {
    v4 = objc_alloc_init(SUUIViewElementLayoutContext);
    v5 = self->_layoutContext;
    self->_layoutContext = v4;

    [(SUUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:self];
    v6 = self->_layoutContext;
    v7 = [(SUUIViewController *)self clientContext];
    [(SUUIViewElementLayoutContext *)v6 setClientContext:v7];

    [(SUUIViewElementLayoutContext *)self->_layoutContext setContainerViewElementType:[(SUUIPanelTemplateViewElement *)self->_templateElement elementType]];
    [(SUUIViewElementLayoutContext *)self->_layoutContext setParentViewController:self];
    v8 = objc_alloc_init(SUUILayoutCache);
    textLayoutCache = self->_textLayoutCache;
    self->_textLayoutCache = v8;

    [(SUUILayoutCache *)self->_textLayoutCache setDelegate:self];
    v10 = [[SUUIViewElementTextLayoutCache alloc] initWithLayoutCache:self->_textLayoutCache];
    [(SUUIViewElementLayoutContext *)self->_layoutContext setLabelLayoutCache:v10];
    v11 = [SUUIResourceLoader alloc];
    v12 = [(SUUIViewController *)self clientContext];
    v13 = [(SUUIResourceLoader *)v11 initWithClientContext:v12];

    [(SUUIViewElementLayoutContext *)self->_layoutContext setResourceLoader:v13];
    layoutContext = self->_layoutContext;
  }

  return layoutContext;
}

- (void)_layoutScrollView
{
  v3 = [(SUUIPanelDocumentViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  scrollView = self->_scrollView;
  v13 = v11 - self->_keyboardFrame.size.height;

  [(UIScrollView *)scrollView setFrame:v5, v7, v9, v13];
}

- (void)_reloadBackgroundImageView
{
  v3 = [(SUUIPanelTemplateViewElement *)self->_templateElement backgroundImageElement];
  backgroundImageView = self->_backgroundImageView;
  v16 = v3;
  if (v3)
  {
    if (!backgroundImageView)
    {
      v5 = objc_alloc_init(MEMORY[0x277D755E8]);
      v6 = self->_backgroundImageView;
      self->_backgroundImageView = v5;

      [(UIImageView *)self->_backgroundImageView setClipsToBounds:1];
      v7 = [(SUUIPanelDocumentViewController *)self view];
      [v7 insertSubview:self->_backgroundImageView atIndex:0];

      v3 = v16;
    }

    v8 = [v3 style];
    v9 = [v8 fillImage];

    if (v9 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    [(UIImageView *)self->_backgroundImageView setContentMode:v10];
    v11 = self->_backgroundImageView;
    v12 = [(SUUIPanelDocumentViewController *)self _templateBackgroundColor];
    [(UIImageView *)v11 setBackgroundColor:v12];

    v13 = self->_backgroundImageView;
    v14 = [(SUUIPanelDocumentViewController *)self _imageForBackgroundImageElement:v16];
    [(UIImageView *)v13 setImage:v14];

    [(SUUIPanelDocumentViewController *)self _layoutBackgroundImageView];
  }

  else
  {
    [(UIImageView *)backgroundImageView removeFromSuperview];
    v15 = self->_backgroundImageView;
    self->_backgroundImageView = 0;
  }
}

- (void)_reloadContentSize
{
  [(UIScrollView *)self->_scrollView contentInset];
  v4 = v3;
  v6 = v5;
  [(SUUIPanelView *)self->_panelView layoutMargins];
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self->_scrollView bounds];
  v13 = v11;
  if (self->_keyboardFrame.size.height >= 0.00000011920929)
  {
    v14 = v12 - v4;
  }

  else
  {
    v14 = v12 - v4 - v6;
  }

  v15 = v11 - v8 - v10;
  v16 = vcvtms_s32_f32(v15);
  [(SUUIPanelDocumentViewController *)self _requestPanelViewLayoutWithContentWidth:v16 forced:0];
  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = objc_opt_class();
  v20 = v16;
  templateElement = self->_templateElement;
  v22 = [(SUUIPanelDocumentViewController *)self _layoutContext];
  [v19 sizeThatFitsWidth:templateElement viewElement:v22 context:v20];
  v24 = v23;
  v26 = v25;

  if (v26 < v14)
  {
    v26 = v14;
  }

  if (v24 < v13)
  {
    v24 = v13;
  }

  [(SUUIPanelView *)self->_panelView setFrame:v17, v18, v24, v26];
  scrollView = self->_scrollView;

  [(UIScrollView *)scrollView setContentSize:v24, v26];
}

- (void)_reloadPanelViewWithScrollViewSize:(CGSize)a3
{
  width = a3.width;
  if (self->_panelView)
  {
    v4 = a3.width <= 0.00000011920929;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v12 = [(SUUIPanelDocumentViewController *)self _layoutContext];
    v6 = [(SUUIPanelView *)self->_panelView tintColor];
    [v12 setTintColor:v6];

    [objc_opt_class() prefetchResourcesForViewElement:self->_templateElement reason:1 context:v12];
    [(SUUIPanelView *)self->_panelView layoutMargins];
    v8 = v7;
    v10 = v9;
    [(SUUIPanelView *)self->_panelView setLayoutMargins:0.0];
    v11 = width - v8 - v10;
    [(SUUIPanelDocumentViewController *)self _requestPanelViewLayoutWithContentWidth:vcvtms_s32_f32(v11) forced:1];
    [(SUUIPanelDocumentViewController *)self _reloadContentSize];
  }
}

- (void)_requestPanelViewLayoutWithContentWidth:(int64_t)a3 forced:(BOOL)a4
{
  if (a4 || self->_lastContentWidth != a3)
  {
    v6 = [(SUUIPanelDocumentViewController *)self _layoutContext];
    [objc_opt_class() requestLayoutForViewElement:self->_templateElement width:v6 context:a3];
    [(SUUILayoutCache *)self->_textLayoutCache commitLayoutRequests];
    [(SUUIPanelView *)self->_panelView reloadWithViewElement:self->_templateElement width:v6 context:a3];
    self->_lastContentWidth = a3;
  }
}

- (id)_templateBackgroundColor
{
  v2 = [(SUUIPanelTemplateViewElement *)self->_templateElement style];
  v3 = [v2 ikBackgroundColor];
  v4 = [v3 color];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
  }

  v6 = v5;

  return v6;
}

@end