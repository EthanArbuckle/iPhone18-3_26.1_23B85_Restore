@interface SUUIContentUnavailableDocumentViewController
- (SUUIContentUnavailableDocumentViewController)initWithTemplateElement:(id)element;
- (UIEdgeInsets)_contentInsets;
- (id)_layoutContext;
- (void)_reloadContentUnavailableView:(id)view width:(double)width;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)dealloc;
- (void)documentDidUpdate:(id)update;
- (void)layoutCacheDidFinishBatch:(id)batch;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUIContentUnavailableDocumentViewController

- (SUUIContentUnavailableDocumentViewController)initWithTemplateElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUIContentUnavailableDocumentViewController;
  v6 = [(SUUIContentUnavailableDocumentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, element);
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

- (void)documentDidUpdate:(id)update
{
  templateElement = [update templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = templateElement;

  if (self->_contentUnavailableView)
  {
    style = [(SUUIContentUnavailableTemplateElement *)self->_templateElement style];
    ikBackgroundColor = [style ikBackgroundColor];
    color = [ikBackgroundColor color];

    contentUnavailableView = self->_contentUnavailableView;
    if (color)
    {
      [(SUUIViewReuseView *)self->_contentUnavailableView setBackgroundColor:color];
    }

    else
    {
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      [(SUUIViewReuseView *)contentUnavailableView setBackgroundColor:systemBackgroundColor];
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
    style = [(SUUIContentUnavailableTemplateElement *)self->_templateElement style];
    ikBackgroundColor = [style ikBackgroundColor];
    color = [ikBackgroundColor color];

    v7 = [SUUIContentUnavailableView alloc];
    view = [(SUUIContentUnavailableDocumentViewController *)self view];
    [view bounds];
    v9 = [(SUUIViewReuseView *)v7 initWithFrame:?];
    v10 = self->_contentUnavailableView;
    self->_contentUnavailableView = v9;

    v11 = self->_contentUnavailableView;
    if (color)
    {
      [(SUUIViewReuseView *)self->_contentUnavailableView setBackgroundColor:color];
    }

    else
    {
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      [(SUUIViewReuseView *)v11 setBackgroundColor:systemBackgroundColor];
    }

    contentUnavailableView = self->_contentUnavailableView;
  }

  [(SUUIContentUnavailableView *)contentUnavailableView setAutoresizingMask:18];
  view2 = [(SUUIContentUnavailableDocumentViewController *)self view];
  [view2 addSubview:self->_contentUnavailableView];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  contentUnavailableView = self->_contentUnavailableView;
  coordinatorCopy = coordinator;
  [(SUUIContentUnavailableDocumentViewController *)self _reloadContentUnavailableView:contentUnavailableView width:width];
  v9.receiver = self;
  v9.super_class = SUUIContentUnavailableDocumentViewController;
  [(SUUIContentUnavailableDocumentViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  contentUnavailableView = self->_contentUnavailableView;
  imageCopy = image;
  requestCopy = request;
  _layoutContext = [(SUUIContentUnavailableDocumentViewController *)self _layoutContext];
  [(SUUIContentUnavailableView *)contentUnavailableView setImage:imageCopy forArtworkRequest:requestCopy context:_layoutContext];
}

- (void)layoutCacheDidFinishBatch:(id)batch
{
  contentUnavailableView = self->_contentUnavailableView;
  templateElement = self->_templateElement;
  [(SUUIContentUnavailableView *)contentUnavailableView bounds];
  v7 = v6;
  _layoutContext = [(SUUIContentUnavailableDocumentViewController *)self _layoutContext];
  [(SUUIContentUnavailableView *)contentUnavailableView reloadWithViewElement:templateElement width:_layoutContext context:v7];
}

- (UIEdgeInsets)_contentInsets
{
  topLayoutGuide = [(SUUIContentUnavailableDocumentViewController *)self topLayoutGuide];
  [topLayoutGuide length];
  v5 = v4;
  bottomLayoutGuide = [(SUUIContentUnavailableDocumentViewController *)self bottomLayoutGuide];
  [bottomLayoutGuide length];
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
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUIViewElementLayoutContext *)v6 setClientContext:clientContext];

    [(SUUIViewElementLayoutContext *)self->_layoutContext setContainerViewElementType:[(SUUIContentUnavailableTemplateElement *)self->_templateElement elementType]];
    [(SUUIViewElementLayoutContext *)self->_layoutContext setParentViewController:self];
    v8 = objc_alloc_init(SUUILayoutCache);
    textLayoutCache = self->_textLayoutCache;
    self->_textLayoutCache = v8;

    [(SUUILayoutCache *)self->_textLayoutCache setDelegate:self];
    v10 = [[SUUIViewElementTextLayoutCache alloc] initWithLayoutCache:self->_textLayoutCache];
    [(SUUIViewElementLayoutContext *)self->_layoutContext setLabelLayoutCache:v10];
    v11 = [SUUIResourceLoader alloc];
    operationQueue = [(SUUIViewController *)self operationQueue];
    clientContext2 = [(SUUIViewController *)self clientContext];
    v14 = [(SUUIResourceLoader *)v11 initWithOperationQueue:operationQueue clientContext:clientContext2];

    [(SUUIViewElementLayoutContext *)self->_layoutContext setResourceLoader:v14];
    layoutContext = self->_layoutContext;
  }

  return layoutContext;
}

- (void)_reloadContentUnavailableView:(id)view width:(double)width
{
  if (width > 0.00000011920929)
  {
    viewCopy = view;
    _layoutContext = [(SUUIContentUnavailableDocumentViewController *)self _layoutContext];
    tintColor = [viewCopy tintColor];
    [_layoutContext setTintColor:tintColor];

    [objc_opt_class() prefetchResourcesForViewElement:self->_templateElement reason:1 context:_layoutContext];
    v8 = width + -30.0;
    v9 = floorf(v8);
    [objc_opt_class() requestLayoutForViewElement:self->_templateElement width:_layoutContext context:v9];
    [(SUUILayoutCache *)self->_textLayoutCache commitLayoutRequests];
    [viewCopy reloadWithViewElement:self->_templateElement width:_layoutContext context:v9];
    [(SUUIContentUnavailableDocumentViewController *)self _contentInsets];
    [viewCopy setContentInset:?];
  }
}

@end