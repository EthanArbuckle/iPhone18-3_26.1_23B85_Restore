@interface SUUIProductPagePlaceholderViewController
- (SUUIProductPageChildViewControllerDelegate)delegate;
- (SUUIProductPagePlaceholderViewController)initWithStyle:(int64_t)a3;
- (UIScrollView)scrollView;
- (void)_addHeaderView;
- (void)loadView;
- (void)scrollViewDidScroll:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setHeaderViewController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation SUUIProductPagePlaceholderViewController

- (SUUIProductPagePlaceholderViewController)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SUUIProductPagePlaceholderViewController;
  result = [(SUUIProductPagePlaceholderViewController *)&v5 init];
  if (result)
  {
    result->_style = a3;
  }

  return result;
}

- (void)loadView
{
  v3 = [(SUUIProductPagePlaceholderViewController *)self scrollView];
  [(SUUIProductPagePlaceholderViewController *)self setView:v3];

  [(SUUIProductPagePlaceholderViewController *)self _addHeaderView];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIProductPagePlaceholderViewController;
  [(SUUIProductPagePlaceholderViewController *)&v4 viewDidAppear:a3];
  [(UIActivityIndicatorView *)self->_indicator startAnimating];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIProductPagePlaceholderViewController;
  [(SUUIProductPagePlaceholderViewController *)&v4 viewDidDisappear:a3];
  [(UIActivityIndicatorView *)self->_indicator stopAnimating];
}

- (void)scrollViewDidScroll:(id)a3
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
      v10 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
      [(UIActivityIndicatorView *)v6 setTextColor:v10];

      v11 = [(SUUIColorScheme *)self->_colorScheme backgroundColor];
      if (v11)
      {
        [(UIActivityIndicatorView *)v6 setBackgroundColor:v11];
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
    v16 = [(SUUIColorScheme *)self->_colorScheme backgroundColor];
    if (v16)
    {
      [(SUUIProductPagePlaceholderScrollView *)v15 setBackgroundColor:v16];
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

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (void)setHeaderViewController:(id)a3
{
  v5 = a3;
  headerViewController = self->_headerViewController;
  v9 = v5;
  if (headerViewController != v5)
  {
    v7 = [(SUUIProductPageHeaderViewController *)headerViewController view];
    [v7 removeFromSuperview];

    v8 = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
    [v8 removeFromSuperview];

    [(SUUIProductPageHeaderViewController *)self->_headerViewController removeFromParentViewController];
    objc_storeStrong(&self->_headerViewController, a3);
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
  v8 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [v8 setAutoresizingMask:2];
  [v8 frame];
  v4 = v3;
  [(SUUIProductPagePlaceholderScrollView *)self->_scrollView bounds];
  [v8 setFrame:{0.0, v4}];
  [(SUUIProductPagePlaceholderScrollView *)self->_scrollView addSubview:v8];
  v5 = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [v5 setAutoresizingMask:2];
  [v5 frame];
  v7 = v6;
  [(SUUIProductPagePlaceholderScrollView *)self->_scrollView bounds];
  [v5 setFrame:{0.0, v7}];
  [(SUUIProductPagePlaceholderScrollView *)self->_scrollView addSubview:v5];
}

- (SUUIProductPageChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end