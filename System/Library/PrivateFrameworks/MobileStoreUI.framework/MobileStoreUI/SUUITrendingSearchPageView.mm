@interface SUUITrendingSearchPageView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUITrendingSearchPageView)initWithFrame:(CGRect)frame;
- (SUUITrendingSearchPageViewDelegate)delegate;
- (UIEdgeInsets)contentInset;
- (void)_buttonAction:(id)action;
- (void)setBackgroundColor:(id)color;
- (void)setPage:(id)page;
@end

@implementation SUUITrendingSearchPageView

- (SUUITrendingSearchPageView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SUUITrendingSearchPageView;
  v3 = [(SUUITrendingSearchPageView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [SUUITrendingSearchView alloc];
    [(SUUITrendingSearchPageView *)v3 bounds];
    v5 = [(SUUITrendingSearchView *)v4 initWithFrame:?];
    trendingSearchView = v3->_trendingSearchView;
    v3->_trendingSearchView = v5;

    [(SUUITrendingSearchView *)v3->_trendingSearchView setAutoresizingMask:18];
    [(SUUITrendingSearchPageView *)v3 addSubview:v3->_trendingSearchView];
  }

  return v3;
}

- (UIEdgeInsets)contentInset
{
  [(SUUITrendingSearchView *)self->_trendingSearchView layoutMargins];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setPage:(id)page
{
  pageCopy = page;
  if (self->_page != pageCopy)
  {
    objc_storeStrong(&self->_page, page);
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v8 = 0;
    }

    else
    {
      v9 = MEMORY[0x277D756B8];
      page = [(SUUITrendingSearchPageView *)self page];
      title = [page title];
      v8 = [v9 SUUITrending_defaultLabelWithText:title];
    }

    [(SUUITrendingSearchView *)self->_trendingSearchView setTrendingTitleView:v8];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    searches = [(SUUITrendingSearchPage *)self->_page searches];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __38__SUUITrendingSearchPageView_setPage___block_invoke;
    v18 = &unk_2798FCB90;
    selfCopy = self;
    v20 = v12;
    v14 = v12;
    [searches enumerateObjectsUsingBlock:&v15];

    [(SUUITrendingSearchView *)self->_trendingSearchView setTrendingSearchViews:v14, v15, v16, v17, v18, selfCopy];
  }
}

void __38__SUUITrendingSearchPageView_setPage___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D75220];
  v4 = [a2 term];
  v5 = [v3 SUUITrending_searchButtonWithTitle:v4];

  [v5 addTarget:*(a1 + 32) action:sel__buttonAction_ forControlEvents:64];
  [*(a1 + 40) addObject:v5];
}

- (void)setBackgroundColor:(id)color
{
  trendingSearchView = self->_trendingSearchView;
  colorCopy = color;
  [(SUUITrendingSearchView *)trendingSearchView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUITrendingSearchPageView;
  [(SUUITrendingSearchPageView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SUUITrendingSearchView *)self->_trendingSearchView systemLayoutSizeFittingSize:fits.width withHorizontalFittingPriority:fits.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_buttonAction:(id)action
{
  page = self->_page;
  actionCopy = action;
  searches = [(SUUITrendingSearchPage *)page searches];
  trendingSearchViews = [(SUUITrendingSearchView *)self->_trendingSearchView trendingSearchViews];
  v8 = [trendingSearchViews indexOfObjectIdenticalTo:actionCopy];

  v10 = [searches objectAtIndex:v8];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained trendingSearchPageView:self didSelectSearch:v10];
}

- (SUUITrendingSearchPageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end