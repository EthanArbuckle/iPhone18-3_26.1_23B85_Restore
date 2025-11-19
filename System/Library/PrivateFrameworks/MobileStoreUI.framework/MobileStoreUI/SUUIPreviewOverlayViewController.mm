@interface SUUIPreviewOverlayViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (SUUIPreviewOverlayViewController)initWithDocument:(id)a3;
- (double)_overlayWidth;
- (id)_layoutCache;
- (void)_tapAction:(id)a3;
- (void)dealloc;
- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4;
- (void)loadView;
- (void)prepareOverlayView;
- (void)reloadOverlayView;
- (void)setBackgroundStyle:(int64_t)a3;
- (void)showPreviewProgressWithStatus:(id)a3 animated:(BOOL)a4;
@end

@implementation SUUIPreviewOverlayViewController

- (SUUIPreviewOverlayViewController)initWithDocument:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SUUIPreviewOverlayViewController;
  v6 = [(SUUIPreviewOverlayViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_document, a3);
    v8 = +[SUUIItemStateCenter defaultCenter];
    [v8 addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(SUUILayoutCache *)self->_layoutCache setDelegate:0];
  [(SUUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:0];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer removeTarget:self action:0];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:0];
  v3 = [(UITapGestureRecognizer *)self->_tapGestureRecognizer view];
  [v3 removeGestureRecognizer:self->_tapGestureRecognizer];

  v4 = +[SUUIItemStateCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SUUIPreviewOverlayViewController;
  [(SUUIViewController *)&v5 dealloc];
}

- (void)prepareOverlayView
{
  if (!self->_layoutContext)
  {
    v3 = objc_alloc_init(SUUIViewElementLayoutContext);
    layoutContext = self->_layoutContext;
    self->_layoutContext = v3;

    v5 = self->_layoutContext;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_backgroundStyle];
    [(SUUIViewElementLayoutContext *)v5 setAggregateValue:v6 forKey:0x286AF73C0];

    [(SUUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:self];
    v7 = [(SUUIViewController *)self clientContext];
    [(SUUIViewElementLayoutContext *)self->_layoutContext setClientContext:v7];
    v8 = [SUUIResourceLoader alloc];
    v9 = [(SUUIViewController *)self operationQueue];
    v10 = [(SUUIResourceLoader *)v8 initWithOperationQueue:v9 clientContext:v7];

    [(SUUIViewElementLayoutContext *)self->_layoutContext setResourceLoader:v10];
    v11 = [SUUIViewElementTextLayoutCache alloc];
    v12 = [(SUUIPreviewOverlayViewController *)self _layoutCache];
    v13 = [(SUUIViewElementTextLayoutCache *)v11 initWithLayoutCache:v12];

    [(SUUIViewElementLayoutContext *)self->_layoutContext setLabelLayoutCache:v13];
  }

  v16 = [(IKAppDocument *)self->_document templateElement];
  v14 = [v16 previewLockup];
  [(SUUIPreviewOverlayViewController *)self _overlayWidth];
  [SUUIHorizontalLockupView requestLayoutForViewElement:v14 width:self->_layoutContext context:?];
  [SUUIHorizontalLockupView prefetchResourcesForViewElement:v14 reason:0 context:self->_layoutContext];
  v15 = [(SUUIPreviewOverlayViewController *)self _layoutCache];
  [v15 commitLayoutRequests];
}

- (void)reloadOverlayView
{
  v3 = [(IKAppDocument *)self->_document templateElement];
  v5 = [v3 previewLockup];

  lockupView = self->_lockupView;
  [(SUUIPreviewOverlayViewController *)self _overlayWidth];
  [(SUUIHorizontalLockupView *)lockupView reloadWithViewElement:v5 width:self->_layoutContext context:?];
}

- (void)setBackgroundStyle:(int64_t)a3
{
  self->_backgroundStyle = a3;
  layoutContext = self->_layoutContext;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [(SUUIViewElementLayoutContext *)layoutContext setAggregateValue:v4 forKey:0x286AF73C0];
}

- (void)showPreviewProgressWithStatus:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  objc_storeStrong(&self->_previewStatus, a3);
  v7 = a3;
  [(SUUIHorizontalLockupView *)self->_lockupView showPreviewProgressWithStatus:v7 animated:v4];
}

- (void)loadView
{
  [(SUUIPreviewOverlayViewController *)self _overlayWidth];
  v4 = v3;
  v5 = [(IKAppDocument *)self->_document templateElement];
  v17 = [v5 previewLockup];

  if (!self->_lockupView)
  {
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    [SUUIHorizontalLockupView sizeThatFitsWidth:v17 viewElement:self->_layoutContext context:v4];
    if (v9 >= 44.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 44.0;
    }

    v11 = [[SUUIHorizontalLockupView alloc] initWithFrame:v6, v7, v8, v10];
    lockupView = self->_lockupView;
    self->_lockupView = v11;

    v13 = self->_lockupView;
    v14 = [MEMORY[0x277D75348] clearColor];
    [(SUUIHorizontalLockupView *)v13 setBackgroundColor:v14];

    [(SUUIHorizontalLockupView *)self->_lockupView setContentInset:0.0, 15.0, 0.0, 15.0];
    [(SUUIHorizontalLockupView *)self->_lockupView reloadWithViewElement:v17 width:self->_layoutContext context:v4];
    [(SUUIHorizontalLockupView *)self->_lockupView showPreviewProgressWithStatus:self->_previewStatus animated:0];
    [(SUUIHorizontalLockupView *)self->_lockupView setUpdateLayoutOnButtonConfirmation:1];
  }

  if (!self->_tapGestureRecognizer)
  {
    v15 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapAction_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v15;

    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
    [(SUUIHorizontalLockupView *)self->_lockupView addGestureRecognizer:self->_tapGestureRecognizer];
  }

  [(SUUIPreviewOverlayViewController *)self setView:self->_lockupView];
}

- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (self->_lockupView)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__SUUIPreviewOverlayViewController_itemStateCenter_itemStatesChanged___block_invoke;
    v7[3] = &unk_2798F5AF8;
    v8 = v5;
    v9 = self;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

void __70__SUUIPreviewOverlayViewController_itemStateCenter_itemStatesChanged___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 1096) updateWithItemState:*(*(&v7 + 1) + 8 * v6++) context:*(*(a1 + 40) + 1088) animated:{1, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = [a4 view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)_tapAction:(id)a3
{
  if ([a3 state] == 3)
  {
    v8 = [(IKAppDocument *)self->_document templateElement];
    v4 = [v8 previewURLString];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
      v6 = [MEMORY[0x277D7FDA8] sessionManager];
      v7 = [v6 endSessionForURL:v5];

      [v7 stop];
    }
  }
}

- (id)_layoutCache
{
  layoutCache = self->_layoutCache;
  if (!layoutCache)
  {
    v4 = objc_alloc_init(SUUILayoutCache);
    v5 = self->_layoutCache;
    self->_layoutCache = v4;

    [(SUUILayoutCache *)self->_layoutCache setDelegate:self];
    layoutCache = self->_layoutCache;
  }

  return layoutCache;
}

- (double)_overlayWidth
{
  v2 = [(SUUIViewController *)self clientContext];
  v3 = SUUIUserInterfaceIdiom(v2);

  if (v3 == 1)
  {
    return 290.0;
  }

  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 bounds];
  v7 = v6;

  return v7 + -30.0;
}

@end