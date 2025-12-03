@interface SUUITrendingSearchDocumentViewController
- (SUUITrendingSearchDocumentViewController)initWithTemplateElement:(id)element;
- (SUUITrendingSearchView)resultsView;
- (UIEdgeInsets)_resultsViewContentInset;
- (void)_reloadResultsView;
- (void)documentDidUpdate:(id)update;
- (void)loadView;
- (void)resultsViewTapRecognized:(id)recognized;
- (void)searchResultButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation SUUITrendingSearchDocumentViewController

- (SUUITrendingSearchDocumentViewController)initWithTemplateElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SUUITrendingSearchDocumentViewController;
  v5 = [(SUUITrendingSearchDocumentViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SUUITrendingSearchDocumentViewController *)v5 setTemplate:elementCopy];
  }

  return v6;
}

- (void)documentDidUpdate:(id)update
{
  templateElement = [update templateElement];
  [(SUUITrendingSearchDocumentViewController *)self setTemplate:templateElement];

  [(SUUITrendingSearchDocumentViewController *)self _reloadResultsView];
}

- (void)loadView
{
  [(SUUITrendingSearchDocumentViewController *)self _reloadResultsView];
  resultsView = [(SUUITrendingSearchDocumentViewController *)self resultsView];
  [(SUUITrendingSearchDocumentViewController *)self setView:resultsView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = SUUITrendingSearchDocumentViewController;
  [(SUUITrendingSearchDocumentViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillLayoutSubviews
{
  resultsView = [(SUUITrendingSearchDocumentViewController *)self resultsView];
  [(SUUITrendingSearchDocumentViewController *)self _resultsViewContentInset];
  [resultsView setLayoutMargins:?];

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
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUUITrendingSearchView *)v7 setBackgroundColor:systemBackgroundColor];

    v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_resultsViewTapRecognized_];
    [(SUUITrendingSearchView *)self->_resultsView addGestureRecognizer:v9];
    v3 = self->_resultsView;
  }

  return v3;
}

- (void)resultsViewTapRecognized:(id)recognized
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

- (void)searchResultButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  template = [(SUUITrendingSearchDocumentViewController *)self template];
  buttons = [template buttons];

  resultsView = [(SUUITrendingSearchDocumentViewController *)self resultsView];
  trendingSearchViews = [resultsView trendingSearchViews];
  v8 = [trendingSearchViews indexOfObjectIdenticalTo:tappedCopy];

  if (v8 < [buttons count])
  {
    v9 = [buttons objectAtIndex:v8];
    [v9 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

- (void)_reloadResultsView
{
  v24 = *MEMORY[0x277D85DE8];
  template = [(SUUITrendingSearchDocumentViewController *)self template];
  titleLabel = [template titleLabel];

  v18 = titleLabel;
  v5 = [MEMORY[0x277D756B8] SUUITrending_titleLabelWithElement:titleLabel];
  resultsView = [(SUUITrendingSearchDocumentViewController *)self resultsView];
  [resultsView setTrendingTitleView:v5];

  template2 = [(SUUITrendingSearchDocumentViewController *)self template];
  buttons = [template2 buttons];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = buttons;
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

  resultsView2 = [(SUUITrendingSearchDocumentViewController *)self resultsView];
  [resultsView2 setTrendingSearchViews:v9];

  resultsView3 = [(SUUITrendingSearchDocumentViewController *)self resultsView];
  [(SUUITrendingSearchDocumentViewController *)self _resultsViewContentInset];
  [resultsView3 setLayoutMargins:?];
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