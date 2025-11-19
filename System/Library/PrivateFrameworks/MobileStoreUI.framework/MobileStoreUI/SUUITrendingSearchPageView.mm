@interface SUUITrendingSearchPageView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUITrendingSearchPageView)initWithFrame:(CGRect)a3;
- (SUUITrendingSearchPageViewDelegate)delegate;
- (UIEdgeInsets)contentInset;
- (void)_buttonAction:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setPage:(id)a3;
@end

@implementation SUUITrendingSearchPageView

- (SUUITrendingSearchPageView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SUUITrendingSearchPageView;
  v3 = [(SUUITrendingSearchPageView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setPage:(id)a3
{
  v5 = a3;
  if (self->_page != v5)
  {
    objc_storeStrong(&self->_page, a3);
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 1)
    {
      v8 = 0;
    }

    else
    {
      v9 = MEMORY[0x277D756B8];
      v10 = [(SUUITrendingSearchPageView *)self page];
      v11 = [v10 title];
      v8 = [v9 SUUITrending_defaultLabelWithText:v11];
    }

    [(SUUITrendingSearchView *)self->_trendingSearchView setTrendingTitleView:v8];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = [(SUUITrendingSearchPage *)self->_page searches];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __38__SUUITrendingSearchPageView_setPage___block_invoke;
    v18 = &unk_2798FCB90;
    v19 = self;
    v20 = v12;
    v14 = v12;
    [v13 enumerateObjectsUsingBlock:&v15];

    [(SUUITrendingSearchView *)self->_trendingSearchView setTrendingSearchViews:v14, v15, v16, v17, v18, v19];
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

- (void)setBackgroundColor:(id)a3
{
  trendingSearchView = self->_trendingSearchView;
  v5 = a3;
  [(SUUITrendingSearchView *)trendingSearchView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUITrendingSearchPageView;
  [(SUUITrendingSearchPageView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SUUITrendingSearchView *)self->_trendingSearchView systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_buttonAction:(id)a3
{
  page = self->_page;
  v5 = a3;
  v6 = [(SUUITrendingSearchPage *)page searches];
  v7 = [(SUUITrendingSearchView *)self->_trendingSearchView trendingSearchViews];
  v8 = [v7 indexOfObjectIdenticalTo:v5];

  v10 = [v6 objectAtIndex:v8];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained trendingSearchPageView:self didSelectSearch:v10];
}

- (SUUITrendingSearchPageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end