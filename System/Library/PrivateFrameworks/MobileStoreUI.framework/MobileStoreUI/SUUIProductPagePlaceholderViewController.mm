@interface SUUIProductPagePlaceholderViewController
- (SUUIProductPageChildViewControllerDelegate)delegate;
- (SUUIProductPagePlaceholderViewController)initWithStyle:(int64_t)style;
- (UIScrollView)scrollView;
- (void)_addHeaderView;
- (void)loadView;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setDelegate:(id)delegate;
- (void)setHeaderViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation SUUIProductPagePlaceholderViewController

- (SUUIProductPagePlaceholderViewController)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = SUUIProductPagePlaceholderViewController;
  result = [(SUUIProductPagePlaceholderViewController *)&v5 init];
  if (result)
  {
    result->_style = style;
  }

  return result;
}

- (void)loadView
{
  scrollView = [(SUUIProductPagePlaceholderViewController *)self scrollView];
  [(SUUIProductPagePlaceholderViewController *)self setView:scrollView];

  [(SUUIProductPagePlaceholderViewController *)self _addHeaderView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SUUIProductPagePlaceholderViewController;
  [(SUUIProductPagePlaceholderViewController *)&v4 viewDidAppear:appear];
  [(UIActivityIndicatorView *)self->_indicator startAnimating];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SUUIProductPagePlaceholderViewController;
  [(SUUIProductPagePlaceholderViewController *)&v4 viewDidDisappear:disappear];
  [(UIActivityIndicatorView *)self->_indicator stopAnimating];
}

- (void)scrollViewDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained productPageChildViewControllerDidScroll:self];
}

- (UIScrollView)scrollView
{
  scrollView = self->_scrollView;
  if (!scrollView)
  {
    if (self->_style)
    {
      v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
      indicator = self->_indicator;
      self->_indicator = v4;

      [(UIActivityIndicatorView *)self->_indicator startAnimating];
      v6 = self->_indicator;
      v7 = 40.0;
    }

    else
    {
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SUUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_NO_RELATED_CONTENT" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_NO_RELATED_CONTENT" inBundles:0 inTable:@"ProductPage"];
      }
      v9 = ;
      v6 = [[SUUIProductPagePlaceholderView alloc] initWithPlaceholderString:v9 isPad:SUUIUserInterfaceIdiom(self->_clientContext) == 1];
      secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
      [(UIActivityIndicatorView *)v6 setTextColor:secondaryTextColor];

      backgroundColor = [(SUUIColorScheme *)self->_colorScheme backgroundColor];
      if (backgroundColor)
      {
        [(UIActivityIndicatorView *)v6 setBackgroundColor:backgroundColor];
      }

      else
      {
        v12 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
        [(UIActivityIndicatorView *)v6 setBackgroundColor:v12];
      }

      v7 = 0.0;
    }

    v13 = objc_alloc_init(SUUIProductPagePlaceholderScrollView);
    v14 = self->_scrollView;
    self->_scrollView = v13;

    [(SUUIProductPagePlaceholderScrollView *)self->_scrollView setIsPad:SUUIUserInterfaceIdiom(self->_clientContext) == 1];
    [(SUUIProductPagePlaceholderScrollView *)self->_scrollView setAlwaysBounceVertical:1];
    v15 = self->_scrollView;
    backgroundColor2 = [(SUUIColorScheme *)self->_colorScheme backgroundColor];
    if (backgroundColor2)
    {
      [(SUUIProductPagePlaceholderScrollView *)v15 setBackgroundColor:backgroundColor2];
    }

    else
    {
      v17 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [(SUUIProductPagePlaceholderScrollView *)v15 setBackgroundColor:v17];
    }

    [(SUUIProductPagePlaceholderScrollView *)self->_scrollView setDelegate:self];
    [(SUUIProductPagePlaceholderScrollView *)self->_scrollView setOffset:v7];
    [(SUUIProductPagePlaceholderScrollView *)self->_scrollView setPlaceholderView:v6];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained productPageChildViewControllerDidLoadScrollView:self];

    scrollView = self->_scrollView;
  }

  return scrollView;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    if (self->_scrollView)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 productPageChildViewControllerDidLoadScrollView:self];

      v5 = obj;
    }
  }
}

- (void)setHeaderViewController:(id)controller
{
  controllerCopy = controller;
  headerViewController = self->_headerViewController;
  v9 = controllerCopy;
  if (headerViewController != controllerCopy)
  {
    view = [(SUUIProductPageHeaderViewController *)headerViewController view];
    [view removeFromSuperview];

    floatingView = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
    [floatingView removeFromSuperview];

    [(SUUIProductPageHeaderViewController *)self->_headerViewController removeFromParentViewController];
    objc_storeStrong(&self->_headerViewController, controller);
    if (self->_headerViewController)
    {
      [(SUUIProductPagePlaceholderViewController *)self addChildViewController:?];
      if ([(SUUIProductPagePlaceholderViewController *)self isViewLoaded])
      {
        [(SUUIProductPagePlaceholderViewController *)self _addHeaderView];
      }
    }
  }
}

- (void)_addHeaderView
{
  view = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [view setAutoresizingMask:2];
  [view frame];
  v4 = v3;
  [(SUUIProductPagePlaceholderScrollView *)self->_scrollView bounds];
  [view setFrame:{0.0, v4}];
  [(SUUIProductPagePlaceholderScrollView *)self->_scrollView addSubview:view];
  floatingView = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [floatingView setAutoresizingMask:2];
  [floatingView frame];
  v7 = v6;
  [(SUUIProductPagePlaceholderScrollView *)self->_scrollView bounds];
  [floatingView setFrame:{0.0, v7}];
  [(SUUIProductPagePlaceholderScrollView *)self->_scrollView addSubview:floatingView];
}

- (SUUIProductPageChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end