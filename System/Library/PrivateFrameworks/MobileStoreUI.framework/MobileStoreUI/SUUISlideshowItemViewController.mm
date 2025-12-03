@interface SUUISlideshowItemViewController
- (SUUISlideshowItemViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SUUISlideshowItemViewControllerDelegate)delegate;
- (id)_newLoadingView;
- (void)_pinchGestureAction:(id)action;
- (void)dealloc;
- (void)setItemImage:(id)image;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation SUUISlideshowItemViewController

- (SUUISlideshowItemViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = SUUISlideshowItemViewController;
  v4 = [(SUUISlideshowItemViewController *)&v11 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_indexInCollection = 0;
    v6 = objc_alloc_init(SUUISlideshowImageScrollView);
    imageScrollView = v5->_imageScrollView;
    v5->_imageScrollView = v6;

    [(SUUISlideshowImageScrollView *)v5->_imageScrollView setDelegate:v5];
    [(SUUISlideshowImageScrollView *)v5->_imageScrollView setAutoresizingMask:18];
    v8 = v5->_imageScrollView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUISlideshowImageScrollView *)v8 setBackgroundColor:clearColor];

    v5->_zoomingGestureThresholdBroken = 0;
    v5->_lastContentOffset = *MEMORY[0x277CBF348];
    v5->_lastZoomScale = 0.0;
  }

  return v5;
}

- (void)dealloc
{
  [(SUUISlideshowImageScrollView *)self->_imageScrollView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUISlideshowItemViewController;
  [(SUUISlideshowItemViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = SUUISlideshowItemViewController;
  [(SUUISlideshowItemViewController *)&v11 viewDidLoad];
  view = [(SUUISlideshowItemViewController *)self view];
  imageScrollView = self->_imageScrollView;
  [view bounds];
  [(SUUISlideshowImageScrollView *)imageScrollView setFrame:?];
  [view addSubview:self->_imageScrollView];
  itemImage = [(SUUISlideshowItemViewController *)self itemImage];

  if (!itemImage)
  {
    loadingView = self->_loadingView;
    if (!loadingView)
    {
      _newLoadingView = [(SUUISlideshowItemViewController *)self _newLoadingView];
      v8 = self->_loadingView;
      self->_loadingView = _newLoadingView;

      v9 = self->_loadingView;
      [view center];
      [(UIView *)v9 setCenter:?];
      loadingView = self->_loadingView;
    }

    [view addSubview:loadingView];
  }

  v10 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel__pinchGestureAction_];
  [v10 setDelegate:self];
  [(SUUISlideshowImageScrollView *)self->_imageScrollView addGestureRecognizer:v10];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SUUISlideshowItemViewController;
  [(SUUISlideshowItemViewController *)&v4 viewDidDisappear:disappear];
  [(SUUISlideshowImageScrollView *)self->_imageScrollView resetZoomScale];
}

- (void)setItemImage:(id)image
{
  [(SUUISlideshowImageScrollView *)self->_imageScrollView setImage:?];
  loadingView = self->_loadingView;
  if (image)
  {
    if (!loadingView)
    {
      return;
    }

    [(UIView *)loadingView removeFromSuperview];
    v6 = self->_loadingView;
    self->_loadingView = 0;
  }

  else
  {
    if (!loadingView)
    {
      _newLoadingView = [(SUUISlideshowItemViewController *)self _newLoadingView];
      v8 = self->_loadingView;
      self->_loadingView = _newLoadingView;
    }

    view = [(SUUISlideshowItemViewController *)self view];
    [(UIView *)view addSubview:self->_loadingView];
    v6 = view;
  }
}

- (id)_newLoadingView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:1];
  [v3 addSubview:v5];
  [v5 startAnimating];
  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SUUIClientContext *)clientContext localizedStringForKey:@"SCREENSHOTS_LOADING"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"SCREENSHOTS_LOADING" inBundles:0];
  }
  v8 = ;
  [v6 setText:v8];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v6 setTextColor:whiteColor];

  v10 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
  [v6 setFont:v10];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:clearColor2];

  [v6 sizeToFit];
  [v5 bounds];
  v13 = v12 + 5.0;
  [v5 bounds];
  v15 = v14 * 0.5;
  [v6 bounds];
  v17 = v15 - v16 * 0.5;
  [v6 bounds];
  v19 = v18;
  [v6 bounds];
  v21 = v20;
  [v6 setFrame:{v13, v17, v19}];
  [v3 addSubview:v6];
  v27.origin.x = v13;
  v27.origin.y = v17;
  v27.size.width = v19;
  v27.size.height = v21;
  MaxX = CGRectGetMaxX(v27);
  [v5 frame];
  MaxY = CGRectGetMaxY(v28);
  v29.origin.x = v13;
  v29.origin.y = v17;
  v29.size.width = v19;
  v29.size.height = v21;
  v24 = CGRectGetMaxY(v29);
  if (MaxY >= v24)
  {
    v25 = MaxY;
  }

  else
  {
    v25 = v24;
  }

  [v3 setFrame:{0.0, 0.0, MaxX, v25}];

  return v3;
}

- (void)_pinchGestureAction:(id)action
{
  actionCopy = action;
  [(SUUISlideshowImageScrollView *)self->_imageScrollView contentOffset];
  self->_lastContentOffset.x = v4;
  self->_lastContentOffset.y = v5;
  [(SUUISlideshowImageScrollView *)self->_imageScrollView zoomScale];
  self->_lastZoomScale = v6;
  if ([actionCopy state] == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained slideshowItemViewControllerDidBeginPinchGesture:self];
LABEL_6:

    goto LABEL_7;
  }

  if ([actionCopy state] == 2)
  {
    [(SUUISlideshowImageScrollView *)self->_imageScrollView zoomScale];
    v9 = v8;
    [(SUUISlideshowImageScrollView *)self->_imageScrollView minimumZoomScale];
    v11 = v9 / v10;
    if (v9 / v10 != 1.0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained slideshowItemViewControllerDidDismissWithPinchGesture:self ratio:(v11 + -0.550000012) / -0.0999999642 + 1.0];
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (SUUISlideshowItemViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end