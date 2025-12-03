@interface SUUISearchFieldTableView
- (SUUITrendingSearchPageViewDelegate)trendingSearchDelegate;
- (void)_reloadData;
- (void)_reloadView;
- (void)_setTrendingResponse:(id)response error:(id)error;
- (void)layoutSubviews;
- (void)setTrendingSearchDelegate:(id)delegate;
- (void)setTrendingSearchProvider:(id)provider;
- (void)setTrendingSearchesVisible:(BOOL)visible;
@end

@implementation SUUISearchFieldTableView

- (void)setTrendingSearchProvider:(id)provider
{
  providerCopy = provider;
  if (self->_trendingSearchProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_trendingSearchProvider, provider);
    providerCopy = v6;
    if (self->_trendingSearchesVisible && !self->_page)
    {
      [(SUUISearchFieldTableView *)self _reloadData];
      providerCopy = v6;
    }
  }
}

- (void)setTrendingSearchDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_trendingSearchDelegate, delegateCopy);
  [(SUUITrendingSearchPageView *)self->_pageView setDelegate:delegateCopy];
}

- (void)setTrendingSearchesVisible:(BOOL)visible
{
  if (self->_trendingSearchesVisible != visible)
  {
    self->_trendingSearchesVisible = visible;
    if (visible && !self->_page)
    {
      [(SUUISearchFieldTableView *)self _reloadData];
    }

    else
    {
      [(SUUISearchFieldTableView *)self _reloadView];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SUUISearchFieldTableView;
  [(SUUISearchFieldTableView *)&v3 layoutSubviews];
  [(SUUISearchFieldTableView *)self bounds];
  [(SUUITrendingSearchPageView *)self->_pageView setFrame:0.0, 0.0];
}

- (void)_reloadData
{
  if (self->_trendingSearchProvider)
  {
    WeakRetained = objc_loadWeakRetained(&self->_trendingSearchDelegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_trendingSearchDelegate);
      v6 = [v5 URLForTrendingSearchPageView:self->_pageView];
    }

    else
    {
      v6 = 0;
    }

    objc_initWeak(&location, self);
    trendingSearchProvider = [(SUUISearchFieldTableView *)self trendingSearchProvider];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__SUUISearchFieldTableView__reloadData__block_invoke;
    v8[3] = &unk_2798FC980;
    objc_copyWeak(&v9, &location);
    [trendingSearchProvider trendingSearchPageWithURL:v6 completionBlock:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __39__SUUISearchFieldTableView__reloadData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setTrendingResponse:v6 error:v5];
}

- (void)_setTrendingResponse:(id)response error:(id)error
{
  responseCopy = response;
  if (responseCopy)
  {
    v7 = responseCopy;
    objc_storeStrong(&self->_page, response);
    [(SUUISearchFieldTableView *)self _reloadView];
    responseCopy = v7;
  }
}

- (void)_reloadView
{
  trendingSearchesVisible = self->_trendingSearchesVisible;
  pageView = self->_pageView;
  if (trendingSearchesVisible)
  {
    if (!pageView && self->_page)
    {
      v5 = objc_alloc_init(SUUITrendingSearchPageView);
      v6 = self->_pageView;
      self->_pageView = v5;

      WeakRetained = objc_loadWeakRetained(&self->_trendingSearchDelegate);
      [(SUUITrendingSearchPageView *)self->_pageView setDelegate:WeakRetained];

      [(SUUISearchFieldTableView *)self addSubview:self->_pageView];
    }

    v8 = *MEMORY[0x277CBF348];
    v9 = *(MEMORY[0x277CBF348] + 8);
    [(SUUISearchFieldTableView *)self frame];
    [(SUUITrendingSearchPageView *)self->_pageView setFrame:v8, v9];
    [(SUUITrendingSearchPageView *)self->_pageView setPage:self->_page];
    [(SUUITrendingSearchPageView *)self->_pageView setHidden:0];
    v10 = objc_alloc(MEMORY[0x277D75D18]);
    v11 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(SUUISearchFieldTableView *)self setTableFooterView:v11];
  }

  else
  {
    [(SUUITrendingSearchPageView *)pageView setHidden:1];

    [(SUUISearchFieldTableView *)self setTableFooterView:0];
  }
}

- (SUUITrendingSearchPageViewDelegate)trendingSearchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_trendingSearchDelegate);

  return WeakRetained;
}

@end