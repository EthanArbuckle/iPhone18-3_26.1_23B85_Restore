@interface SUUITrendingSearchDocumentViewController
- (SUUITrendingSearchDocumentViewController)initWithTemplateElement:(id)a3;
- (SUUITrendingSearchView)resultsView;
- (UIEdgeInsets)_resultsViewContentInset;
- (void)_reloadResultsView;
- (void)documentDidUpdate:(id)a3;
- (void)loadView;
- (void)resultsViewTapRecognized:(id)a3;
- (void)searchResultButtonTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SUUITrendingSearchDocumentViewController

- (SUUITrendingSearchDocumentViewController)initWithTemplateElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUITrendingSearchDocumentViewController;
  v5 = [(SUUITrendingSearchDocumentViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SUUITrendingSearchDocumentViewController *)v5 setTemplate:v4];
  }

  return v6;
}

- (void)documentDidUpdate:(id)a3
{
  v4 = [a3 templateElement];
  [(SUUITrendingSearchDocumentViewController *)self setTemplate:v4];

  [(SUUITrendingSearchDocumentViewController *)self _reloadResultsView];
}

- (void)loadView
{
  [(SUUITrendingSearchDocumentViewController *)self _reloadResultsView];
  v3 = [(SUUITrendingSearchDocumentViewController *)self resultsView];
  [(SUUITrendingSearchDocumentViewController *)self setView:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SUUITrendingSearchDocumentViewController;
  [(SUUITrendingSearchDocumentViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(SUUITrendingSearchDocumentViewController *)self resultsView];
  [(SUUITrendingSearchDocumentViewController *)self _resultsViewContentInset];
  [v3 setLayoutMargins:?];

  v4.receiver = self;
  v4.super_class = SUUITrendingSearchDocumentViewController;
  [(SUUITrendingSearchDocumentViewController *)&v4 viewWillLayoutSubviews];
}

- (SUUITrendingSearchView)resultsView
{
  resultsView = self->_resultsView;
  if (resultsView)
  {
    v3 = resultsView;
  }

  else
  {
    v5 = objc_alloc_init(SUUITrendingSearchView);
    v6 = self->_resultsView;
    self->_resultsView = v5;

    v7 = self->_resultsView;
    v8 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUUITrendingSearchView *)v7 setBackgroundColor:v8];

    v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_resultsViewTapRecognized_];
    [(SUUITrendingSearchView *)self->_resultsView addGestureRecognizer:v9];
    v3 = self->_resultsView;
  }

  return v3;
}

- (void)resultsViewTapRecognized:(id)a3
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

- (void)searchResultButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(SUUITrendingSearchDocumentViewController *)self template];
  v10 = [v5 buttons];

  v6 = [(SUUITrendingSearchDocumentViewController *)self resultsView];
  v7 = [v6 trendingSearchViews];
  v8 = [v7 indexOfObjectIdenticalTo:v4];

  if (v8 < [v10 count])
  {
    v9 = [v10 objectAtIndex:v8];
    [v9 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

- (void)_reloadResultsView
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(SUUITrendingSearchDocumentViewController *)self template];
  v4 = [v3 titleLabel];

  v18 = v4;
  v5 = [MEMORY[0x277D756B8] SUUITrending_titleLabelWithElement:v4];
  v6 = [(SUUITrendingSearchDocumentViewController *)self resultsView];
  [v6 setTrendingTitleView:v5];

  v7 = [(SUUITrendingSearchDocumentViewController *)self template];
  v8 = [v7 buttons];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [MEMORY[0x277D75220] SUUITrending_searchButtonWithElement:*(*(&v19 + 1) + 8 * i)];
        [v15 addTarget:self action:sel_searchResultButtonTapped_ forControlEvents:64];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [(SUUITrendingSearchDocumentViewController *)self resultsView];
  [v16 setTrendingSearchViews:v9];

  v17 = [(SUUITrendingSearchDocumentViewController *)self resultsView];
  [(SUUITrendingSearchDocumentViewController *)self _resultsViewContentInset];
  [v17 setLayoutMargins:?];
}

- (UIEdgeInsets)_resultsViewContentInset
{
  v2 = 50.0;
  v3 = 40.0;
  v4 = 50.0;
  v5 = 40.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end