@interface SUUIContentUnavailableDocumentViewController
- (SUUIContentUnavailableDocumentViewController)initWithTemplateElement:(id)a3;
- (UIEdgeInsets)_contentInsets;
- (id)_layoutContext;
- (void)_reloadContentUnavailableView:(id)a3 width:(double)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)dealloc;
- (void)documentDidUpdate:(id)a3;
- (void)layoutCacheDidFinishBatch:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIContentUnavailableDocumentViewController

- (SUUIContentUnavailableDocumentViewController)initWithTemplateElement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIContentUnavailableDocumentViewController;
  v6 = [(SUUIContentUnavailableDocumentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, a3);
  }

  return v7;
}

- (void)dealloc
{
  [(SUUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:0];
  [(SUUIViewElementLayoutContext *)self->_layoutContext setParentViewController:0];
  [(SUUILayoutCache *)self->_textLayoutCache setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIContentUnavailableDocumentViewController;
  [(SUUIViewController *)&v3 dealloc];
}

- (void)documentDidUpdate:(id)a3
{
  v4 = [a3 templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = v4;

  if (self->_contentUnavailableView)
  {
    v6 = [(SUUIContentUnavailableTemplateElement *)self->_templateElement style];
    v7 = [v6 ikBackgroundColor];
    v12 = [v7 color];

    contentUnavailableView = self->_contentUnavailableView;
    if (v12)
    {
      [(SUUIViewReuseView *)self->_contentUnavailableView setBackgroundColor:v12];
    }

    else
    {
      v9 = [MEMORY[0x277D75348] systemBackgroundColor];
      [(SUUIViewReuseView *)contentUnavailableView setBackgroundColor:v9];
    }

    v10 = self->_contentUnavailableView;
    [(SUUIContentUnavailableView *)v10 bounds];
    [(SUUIContentUnavailableDocumentViewController *)self _reloadContentUnavailableView:v10 width:v11];
  }
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = SUUIContentUnavailableDocumentViewController;
  [(SUUIContentUnavailableDocumentViewController *)&v14 viewDidLoad];
  contentUnavailableView = self->_contentUnavailableView;
  if (!contentUnavailableView)
  {
    v4 = [(SUUIContentUnavailableTemplateElement *)self->_templateElement style];
    v5 = [v4 ikBackgroundColor];
    v6 = [v5 color];

    v7 = [SUUIContentUnavailableView alloc];
    v8 = [(SUUIContentUnavailableDocumentViewController *)self view];
    [v8 bounds];
    v9 = [(SUUIViewReuseView *)v7 initWithFrame:?];
    v10 = self->_contentUnavailableView;
    self->_contentUnavailableView = v9;

    v11 = self->_contentUnavailableView;
    if (v6)
    {
      [(SUUIViewReuseView *)self->_contentUnavailableView setBackgroundColor:v6];
    }

    else
    {
      v12 = [MEMORY[0x277D75348] systemBackgroundColor];
      [(SUUIViewReuseView *)v11 setBackgroundColor:v12];
    }

    contentUnavailableView = self->_contentUnavailableView;
  }

  [(SUUIContentUnavailableView *)contentUnavailableView setAutoresizingMask:18];
  v13 = [(SUUIContentUnavailableDocumentViewController *)self view];
  [v13 addSubview:self->_contentUnavailableView];
}

- (void)viewWillLayoutSubviews
{
  contentUnavailableView = self->_contentUnavailableView;
  [(SUUIContentUnavailableDocumentViewController *)self _contentInsets];
  [(SUUIContentUnavailableView *)contentUnavailableView setContentInset:?];
  v4 = self->_contentUnavailableView;
  if (v4)
  {
    [(SUUIContentUnavailableView *)self->_contentUnavailableView bounds];
    [(SUUIContentUnavailableDocumentViewController *)self _reloadContentUnavailableView:v4 width:v5];
  }

  v6.receiver = self;
  v6.super_class = SUUIContentUnavailableDocumentViewController;
  [(SUUIContentUnavailableDocumentViewController *)&v6 viewWillLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  contentUnavailableView = self->_contentUnavailableView;
  v8 = a4;
  [(SUUIContentUnavailableDocumentViewController *)self _reloadContentUnavailableView:contentUnavailableView width:width];
  v9.receiver = self;
  v9.super_class = SUUIContentUnavailableDocumentViewController;
  [(SUUIContentUnavailableDocumentViewController *)&v9 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  contentUnavailableView = self->_contentUnavailableView;
  v7 = a4;
  v8 = a3;
  v9 = [(SUUIContentUnavailableDocumentViewController *)self _layoutContext];
  [(SUUIContentUnavailableView *)contentUnavailableView setImage:v7 forArtworkRequest:v8 context:v9];
}

- (void)layoutCacheDidFinishBatch:(id)a3
{
  contentUnavailableView = self->_contentUnavailableView;
  templateElement = self->_templateElement;
  [(SUUIContentUnavailableView *)contentUnavailableView bounds];
  v7 = v6;
  v8 = [(SUUIContentUnavailableDocumentViewController *)self _layoutContext];
  [(SUUIContentUnavailableView *)contentUnavailableView reloadWithViewElement:templateElement width:v8 context:v7];
}

- (UIEdgeInsets)_contentInsets
{
  v3 = [(SUUIContentUnavailableDocumentViewController *)self topLayoutGuide];
  [v3 length];
  v5 = v4;
  v6 = [(SUUIContentUnavailableDocumentViewController *)self bottomLayoutGuide];
  [v6 length];
  v8 = v7;

  v9 = 15.0;
  v10 = 15.0;
  v11 = v5;
  v12 = v8;
  result.right = v10;
  result.bottom = v12;
  result.left = v9;
  result.top = v11;
  return result;
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

    [(SUUIViewElementLayoutContext *)self->_layoutContext setContainerViewElementType:[(SUUIContentUnavailableTemplateElement *)self->_templateElement elementType]];
    [(SUUIViewElementLayoutContext *)self->_layoutContext setParentViewController:self];
    v8 = objc_alloc_init(SUUILayoutCache);
    textLayoutCache = self->_textLayoutCache;
    self->_textLayoutCache = v8;

    [(SUUILayoutCache *)self->_textLayoutCache setDelegate:self];
    v10 = [[SUUIViewElementTextLayoutCache alloc] initWithLayoutCache:self->_textLayoutCache];
    [(SUUIViewElementLayoutContext *)self->_layoutContext setLabelLayoutCache:v10];
    v11 = [SUUIResourceLoader alloc];
    v12 = [(SUUIViewController *)self operationQueue];
    v13 = [(SUUIViewController *)self clientContext];
    v14 = [(SUUIResourceLoader *)v11 initWithOperationQueue:v12 clientContext:v13];

    [(SUUIViewElementLayoutContext *)self->_layoutContext setResourceLoader:v14];
    layoutContext = self->_layoutContext;
  }

  return layoutContext;
}

- (void)_reloadContentUnavailableView:(id)a3 width:(double)a4
{
  if (a4 > 0.00000011920929)
  {
    v6 = a3;
    v10 = [(SUUIContentUnavailableDocumentViewController *)self _layoutContext];
    v7 = [v6 tintColor];
    [v10 setTintColor:v7];

    [objc_opt_class() prefetchResourcesForViewElement:self->_templateElement reason:1 context:v10];
    v8 = a4 + -30.0;
    v9 = floorf(v8);
    [objc_opt_class() requestLayoutForViewElement:self->_templateElement width:v10 context:v9];
    [(SUUILayoutCache *)self->_textLayoutCache commitLayoutRequests];
    [v6 reloadWithViewElement:self->_templateElement width:v10 context:v9];
    [(SUUIContentUnavailableDocumentViewController *)self _contentInsets];
    [v6 setContentInset:?];
  }
}

@end