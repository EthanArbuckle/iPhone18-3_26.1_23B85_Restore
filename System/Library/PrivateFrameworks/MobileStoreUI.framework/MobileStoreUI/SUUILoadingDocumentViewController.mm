@interface SUUILoadingDocumentViewController
- (CGRect)_computedFrameForActivityIndicatorView;
- (SUUILoadingDocumentViewController)initWithActivityIndicatorElement:(id)element;
- (SUUILoadingDocumentViewController)initWithTemplateElement:(id)element;
- (id)_activityIndicator;
- (id)_layoutCache;
- (id)_viewLayoutContext;
- (void)_reloadViewStyling;
- (void)_showActivityIndicator;
- (void)dealloc;
- (void)documentDidUpdate:(id)update;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation SUUILoadingDocumentViewController

- (SUUILoadingDocumentViewController)initWithActivityIndicatorElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUILoadingDocumentViewController;
  v6 = [(SUUILoadingDocumentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityIndicatorElement, element);
  }

  return v7;
}

- (SUUILoadingDocumentViewController)initWithTemplateElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUILoadingDocumentViewController;
  v6 = [(SUUILoadingDocumentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, element);
  }

  return v7;
}

- (void)dealloc
{
  delayTimer = self->_delayTimer;
  if (delayTimer)
  {
    dispatch_source_cancel(delayTimer);
  }

  [(SUUIViewElementLayoutContext *)self->_viewLayoutContext setParentViewController:0];
  v4.receiver = self;
  v4.super_class = SUUILoadingDocumentViewController;
  [(SUUIViewController *)&v4 dealloc];
}

- (void)loadView
{
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(SUUILoadingDocumentViewController *)self setView:?];
  activityIndicatorView = self->_activityIndicatorView;
  if (activityIndicatorView)
  {
    [(SUUIActivityIndicatorView *)activityIndicatorView frame];
    [v5 setFrame:?];
    v4 = self->_activityIndicatorView;
    [v5 bounds];
    [(SUUIActivityIndicatorView *)v4 setFrame:?];
    [v5 addSubview:self->_activityIndicatorView];
  }

  [(SUUILoadingDocumentViewController *)self _reloadViewStyling];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (!self->_activityIndicatorView && !self->_delayTimer)
  {
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    delayTimer = self->_delayTimer;
    self->_delayTimer = v5;

    v7 = self->_delayTimer;
    v8 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, self);
    v9 = self->_delayTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __51__SUUILoadingDocumentViewController_viewDidAppear___block_invoke;
    handler[3] = &unk_2798F67A0;
    objc_copyWeak(&v12, &location);
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(self->_delayTimer);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v10.receiver = self;
  v10.super_class = SUUILoadingDocumentViewController;
  [(SUUILoadingDocumentViewController *)&v10 viewDidAppear:appearCopy];
}

void __51__SUUILoadingDocumentViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showActivityIndicator];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  delayTimer = self->_delayTimer;
  if (delayTimer)
  {
    dispatch_source_cancel(delayTimer);
    v6 = self->_delayTimer;
    self->_delayTimer = 0;
  }

  v7.receiver = self;
  v7.super_class = SUUILoadingDocumentViewController;
  [(SUUILoadingDocumentViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)viewWillLayoutSubviews
{
  activityIndicatorView = self->_activityIndicatorView;
  if (activityIndicatorView)
  {
    [(SUUILoadingDocumentViewController *)self _computedFrameForActivityIndicatorView];
    [(SUUIActivityIndicatorView *)activityIndicatorView setFrame:?];
  }

  v4.receiver = self;
  v4.super_class = SUUILoadingDocumentViewController;
  [(SUUILoadingDocumentViewController *)&v4 viewWillLayoutSubviews];
}

- (void)documentDidUpdate:(id)update
{
  templateElement = [update templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = templateElement;

  [(SUUILoadingDocumentViewController *)self _reloadViewStyling];
}

- (id)_activityIndicator
{
  if (self->_templateElement)
  {
    activityIndicator = [(SUUILoadingTemplateViewElement *)self->_templateElement activityIndicator];
  }

  else
  {
    activityIndicator = self->_activityIndicatorElement;
  }

  return activityIndicator;
}

- (id)_layoutCache
{
  layoutCache = self->_layoutCache;
  if (!layoutCache)
  {
    v4 = objc_alloc_init(SUUILayoutCache);
    v5 = self->_layoutCache;
    self->_layoutCache = v4;

    layoutCache = self->_layoutCache;
  }

  return layoutCache;
}

- (void)_reloadViewStyling
{
  view = [(SUUILoadingDocumentViewController *)self view];
  style = [(SUUILoadingTemplateViewElement *)self->_templateElement style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    [view setBackgroundColor:color];
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [view setBackgroundColor:whiteColor];
  }

  if (self->_activityIndicatorView)
  {
    [(SUUILoadingDocumentViewController *)self _showActivityIndicator];
  }
}

- (void)_showActivityIndicator
{
  delayTimer = self->_delayTimer;
  if (delayTimer)
  {
    dispatch_source_cancel(delayTimer);
    v4 = self->_delayTimer;
    self->_delayTimer = 0;
  }

  view = [(SUUILoadingDocumentViewController *)self view];
  if (!self->_activityIndicatorView)
  {
    v5 = objc_alloc_init(SUUIActivityIndicatorView);
    activityIndicatorView = self->_activityIndicatorView;
    self->_activityIndicatorView = v5;
  }

  _activityIndicator = [(SUUILoadingDocumentViewController *)self _activityIndicator];
  _viewLayoutContext = [(SUUILoadingDocumentViewController *)self _viewLayoutContext];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v11 = v10;

  [objc_opt_class() requestLayoutForViewElement:_activityIndicator width:_viewLayoutContext context:v11];
  _layoutCache = [(SUUILoadingDocumentViewController *)self _layoutCache];
  [_layoutCache commitLayoutRequests];

  [(SUUIActivityIndicatorView *)self->_activityIndicatorView reloadWithViewElement:_activityIndicator width:_viewLayoutContext context:v11];
  v13 = self->_activityIndicatorView;
  [(SUUILoadingDocumentViewController *)self _computedFrameForActivityIndicatorView];
  [(SUUIActivityIndicatorView *)v13 setFrame:?];
  [(SUUIActivityIndicatorView *)self->_activityIndicatorView setAutoresizingMask:45];
  v14 = self->_activityIndicatorView;
  backgroundColor = [view backgroundColor];
  [(SUUIViewReuseView *)v14 setBackgroundColor:backgroundColor];

  [view addSubview:self->_activityIndicatorView];
}

- (CGRect)_computedFrameForActivityIndicatorView
{
  view = [(SUUILoadingDocumentViewController *)self view];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = v5;

  [(SUUIActivityIndicatorView *)self->_activityIndicatorView frame];
  [(SUUIActivityIndicatorView *)self->_activityIndicatorView sizeThatFits:1.79769313e308, v6];
  v8 = v7;
  v10 = v9;
  [view frame];
  v12 = (v11 - v8) * 0.5;
  v13 = floorf(v12);
  v14 = v6 * 0.5 - v10;
  v15 = floorf(v14);

  v16 = v13;
  v17 = v15;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)_viewLayoutContext
{
  viewLayoutContext = self->_viewLayoutContext;
  if (!viewLayoutContext)
  {
    v4 = objc_alloc_init(SUUIViewElementLayoutContext);
    v5 = self->_viewLayoutContext;
    self->_viewLayoutContext = v4;

    [(SUUIViewElementLayoutContext *)self->_viewLayoutContext setParentViewController:self];
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUIViewElementLayoutContext *)self->_viewLayoutContext setClientContext:clientContext];
    v7 = [SUUIViewElementTextLayoutCache alloc];
    _layoutCache = [(SUUILoadingDocumentViewController *)self _layoutCache];
    v9 = [(SUUIViewElementTextLayoutCache *)v7 initWithLayoutCache:_layoutCache];

    [(SUUIViewElementLayoutContext *)self->_viewLayoutContext setLabelLayoutCache:v9];
    v10 = [SUUIResourceLoader alloc];
    operationQueue = [(SUUIViewController *)self operationQueue];
    v12 = [(SUUIResourceLoader *)v10 initWithOperationQueue:operationQueue clientContext:clientContext];

    [(SUUIViewElementLayoutContext *)self->_viewLayoutContext setResourceLoader:v12];
    viewLayoutContext = self->_viewLayoutContext;
  }

  return viewLayoutContext;
}

@end