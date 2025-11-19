@interface SUUISearchFieldController
- (BOOL)_presentsInPopover:(id)a3;
- (BOOL)canBecomeActive;
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (BOOL)searchBarShouldClear:(id)a3;
- (SUUISearchFieldController)initWithContentsController:(id)a3;
- (SUUISearchFieldController)initWithContentsController:(id)a3 clientContext:(id)a4;
- (SUUISearchFieldDelegate)delegate;
- (UIViewController)contentsController;
- (id)URLForTrendingSearchPageView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_adjustInsetsForResultsTableView:(id)a3;
- (void)_loadResultsForSearchRequest:(id)a3;
- (void)_reloadData;
- (void)_reloadTrendingVisibility;
- (void)_setResponse:(id)a3 error:(id)a4;
- (void)becomeActive;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)presentSearchController:(id)a3;
- (void)resignActive:(BOOL)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchControllerWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)setClientContext:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setNumberOfSearchResults:(int64_t)a3;
- (void)setSearchBarAccessoryText:(id)a3;
- (void)setSearchTerm:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)trendingSearchPageView:(id)a3 didSelectSearch:(id)a4;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation SUUISearchFieldController

- (SUUISearchFieldController)initWithContentsController:(id)a3 clientContext:(id)a4
{
  objc_initWeak(&location, a3);
  v6 = a4;
  v34.receiver = self;
  v34.super_class = SUUISearchFieldController;
  v7 = [(SUUISearchFieldController *)&v34 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v8;

    v10 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_contentsController, v10);

    v11 = [SUUISearchFieldTableView alloc];
    v12 = [(SUUISearchFieldTableView *)v11 initWithFrame:0 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(SUUISearchFieldTableView *)v12 setTrendingSearchDelegate:v7];
    v13 = [v6 trendingSearchProvider];
    [(SUUISearchFieldTableView *)v12 setTrendingSearchProvider:v13];

    v14 = [(SUUISearchFieldController *)v7 _presentsInPopover:v6];
    v15 = [objc_alloc(MEMORY[0x277D75B58]) initWithStyle:0];
    searchResultsController = v7->_searchResultsController;
    v7->_searchResultsController = v15;

    [(UITableViewController *)v7->_searchResultsController setTableView:v12];
    v17 = [(UITableViewController *)v7->_searchResultsController tableView];
    [v17 setDataSource:v7];

    v18 = [(UITableViewController *)v7->_searchResultsController tableView];
    [v18 setDelegate:v7];

    v19 = [(UITableViewController *)v7->_searchResultsController tableView];
    if (v14)
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemBackgroundColor];
    }
    v20 = ;
    [v19 setBackgroundColor:v20];

    if (v14)
    {
      v21 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7->_searchResultsController];
      v22 = [[SUUISearchController alloc] initWithSearchResultsController:v21];
      searchController = v7->_searchController;
      v7->_searchController = v22;
    }

    else
    {
      v24 = [[SUUISearchController alloc] initWithSearchResultsController:v7->_searchResultsController];
      v25 = v7->_searchController;
      v7->_searchController = v24;

      [(UITableViewController *)v7->_searchResultsController setAutomaticallyAdjustsScrollViewInsets:0];
      v21 = [(UITableViewController *)v7->_searchResultsController tableView];
      [v21 setContentInsetAdjustmentBehavior:101];
    }

    [(SUUISearchController *)v7->_searchController setHidesNavigationBarDuringPresentation:0];
    [(SUUISearchController *)v7->_searchController setDelegate:v7];
    [(SUUISearchController *)v7->_searchController setSearchResultsUpdater:v7];
    v26 = [(SUUISearchController *)v7->_searchController searchBar];
    [v26 setDrawsBackground:0];
    [v26 setAutocapitalizationType:0];
    [v26 setAutocorrectionType:1];
    [v26 setDelegate:v7];
    [v26 setSearchBarStyle:2];
    v27 = objc_loadWeakRetained(&location);
    v28 = [v27 navigationController];
    v29 = [v28 navigationBar];
    v30 = [v29 barStyle];

    if (v30 == 1)
    {
      v31 = [v26 searchField];
      v32 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.6];
      [v31 setTextColor:v32];
    }

    if (v6)
    {
      [(SUUISearchFieldController *)v7 setClientContext:v6];
    }
  }

  objc_destroyWeak(&location);
  return v7;
}

- (SUUISearchFieldController)initWithContentsController:(id)a3
{
  v4 = a3;
  v5 = [(SUUISearchFieldController *)self initWithContentsController:v4 clientContext:0];

  return v5;
}

- (BOOL)canBecomeActive
{
  if (([(SUUISearchController *)self->_searchController isActive]& 1) != 0)
  {
    return 0;
  }

  v4 = [(SUUISearchController *)self->_searchController searchBar];
  v5 = [v4 superview];
  v3 = v5 != 0;

  return v3;
}

- (void)becomeActive
{
  v3 = [(SUUISearchController *)self->_searchController transitionCoordinator];
  v4 = v3;
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41__SUUISearchFieldController_becomeActive__block_invoke;
    v6[3] = &unk_2798F5A88;
    v6[4] = self;
    [v3 animateAlongsideTransition:0 completion:v6];
  }

  else
  {
    v5 = [(SUUISearchController *)self->_searchController searchBar];
    [v5 becomeFirstResponder];
  }
}

void __41__SUUISearchFieldController_becomeActive__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 40) searchBar];
  [v1 becomeFirstResponder];
}

- (void)resignActive:(BOOL)a3
{
  v3 = a3;
  if ([(SUUISearchController *)self->_searchController isActive])
  {
    if (v3)
    {
      searchController = self->_searchController;

      [(SUUISearchController *)searchController setActive:0];
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __42__SUUISearchFieldController_resignActive___block_invoke;
      v6[3] = &unk_2798F5BE8;
      v6[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v6];
    }
  }
}

- (void)setNumberOfSearchResults:(int64_t)a3
{
  if (self->_numberOfSearchResults != a3)
  {
    self->_numberOfSearchResults = a3;
    if (a3)
    {
      clientContext = self->_clientContext;
      if (a3 == 1)
      {
        v6 = @"SEARCH_FIELD_ONE_RESULT";
      }

      else
      {
        v6 = @"SEARCH_FIELD_PLURAL_RESULTS";
      }

      if (clientContext)
      {
        [(SUUIClientContext *)clientContext localizedStringForKey:v6];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:v6 inBundles:0];
      }
      v7 = ;
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfSearchResults];
      v10 = [v8 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v9];

      [(SUUISearchController *)self->_searchController _setSuffix:v10];
    }

    else
    {
      v10 = 0;
      [(SUUISearchController *)self->_searchController _setSuffix:0];
    }
  }
}

- (void)setClientContext:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_clientContext, a3);
  searchResultsController = self->_searchResultsController;
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SUUIClientContext *)clientContext localizedStringForKey:@"SEARCH_SUGGESTIONS"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"SEARCH_SUGGESTIONS" inBundles:0];
  }
  v7 = ;
  [(UITableViewController *)searchResultsController setTitle:v7];

  [(SUUISearchFieldController *)self _reloadTrendingVisibility];
}

- (void)setSearchBarAccessoryText:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_searchBarAccessoryText] & 1) == 0)
  {
    v4 = [v6 copy];
    searchBarAccessoryText = self->_searchBarAccessoryText;
    self->_searchBarAccessoryText = v4;

    [(SUUISearchController *)self->_searchController _setSuffix:self->_searchBarAccessoryText];
  }
}

- (void)setSearchTerm:(id)a3
{
  searchController = self->_searchController;
  v5 = a3;
  v6 = [(SUUISearchController *)searchController searchBar];
  v7 = [v6 searchField];
  [v7 setText:v5];

  [(SUUISearchFieldController *)self _reloadTrendingVisibility];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFD | v5;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFB | v7;
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(SUUISearchRequest);
  v5 = [v4 text];
  [(SUUISearchRequest *)v6 setTerm:v5];

  [(SUUISearchFieldController *)self _loadResultsForSearchRequest:v6];
  [v4 resignFirstResponder];

  [(SUUISearchController *)self->_searchController setActive:0];
}

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  if ((*&self->_delegateRespondsTo & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained searchFieldControllerShouldBeginEditing:self];
  }

  else
  {
    v4 = 1;
  }

  v6 = [(UITableViewController *)self->_searchResultsController tableView];
  [(SUUISearchFieldController *)self _adjustInsetsForResultsTableView:v6];

  return v4;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    v6 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchFieldController:self searchBarDidChangeText:v6];
  }
}

- (BOOL)searchBarShouldClear:(id)a3
{
  v4 = a3;
  if (([v4 isFirstResponder] & 1) != 0 || -[SUUISearchFieldController _presentsInPopover:](self, "_presentsInPopover:", self->_clientContext))
  {
    v5 = 1;
  }

  else
  {
    [v4 setText:0];
    v6 = [v4 text];
    [(SUUISearchFieldController *)self searchBar:v4 textDidChange:v6];

    [(SUUISearchFieldController *)self becomeActive];
    v5 = 0;
  }

  return v5;
}

- (void)willPresentSearchController:(id)a3
{
  v4 = [(UITableViewController *)self->_searchResultsController tableView];
  [(SUUISearchFieldController *)self _adjustInsetsForResultsTableView:v4];

  [(SUUISearchFieldController *)self _reloadData];
}

- (void)presentSearchController:(id)a3
{
  v4 = a3;
  if ([(SUUISearchFieldController *)self _presentsInPopover:self->_clientContext])
  {
    [v4 setModalPresentationStyle:7];
    v5 = [v4 popoverPresentationController];
    [v5 setDelegate:self];
  }

  v6 = [(SUUISearchFieldController *)self contentsController];
  [v6 setDefinesPresentationContext:1];

  v7 = [(SUUISearchFieldController *)self contentsController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SUUISearchFieldController_presentSearchController___block_invoke;
  v8[3] = &unk_2798F5BE8;
  v8[4] = self;
  [v7 presentViewController:v4 animated:1 completion:v8];
}

void __53__SUUISearchFieldController_presentSearchController___block_invoke(uint64_t a1)
{
  v14 = [*(a1 + 32) searchBar];
  v2 = [v14 superview];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [*(a1 + 32) searchBar];
    v4 = [v3 autoresizingMask];

    if ((v4 & 2) == 0)
    {
      return;
    }

    v14 = [*(a1 + 32) searchBar];
    v2 = [v14 superview];
    [v2 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [*(a1 + 32) searchBar];
    [v13 setFrame:{v6, v8, v10, v12}];
  }
}

- (void)willDismissSearchController:(id)a3
{
  v3 = [(SUUISearchFieldController *)self contentsController];
  [v3 setDefinesPresentationContext:0];
}

- (void)searchControllerWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __92__SUUISearchFieldController_searchControllerWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_2798F5A88;
  v4[4] = self;
  [a4 animateAlongsideTransition:0 completion:v4];
}

void __92__SUUISearchFieldController_searchControllerWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[4] tableView];
  [v1 _adjustInsetsForResultsTableView:v2];
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setPermittedArrowDirections:1];
  v5 = [(SUUISearchController *)self->_searchController searchBar];
  [v4 setSourceView:v5];

  v6 = [(SUUISearchController *)self->_searchController searchBar];
  [v6 bounds];
  [v4 setSourceRect:?];

  v7 = [(SUUISearchController *)self->_searchController searchBar];
  v9[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v4 setPassthroughViews:v8];
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  v3 = [(SUUISearchFieldController *)self contentsController];
  [v3 setDefinesPresentationContext:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"a"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"a"];
  }

  v8 = [(SUUICompletionList *)self->_completionList completions];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  v11 = [v7 textLabel];
  v12 = [v10 alternateTitle];
  if ([v12 length])
  {
    [v10 alternateTitle];
  }

  else
  {
    [v10 title];
  }
  v13 = ;
  [v11 setText:v13];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(SUUICompletionList *)self->_completionList completions:a3];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v22 = objc_alloc_init(SUUISearchRequest);
  v6 = [(SUUISearchController *)self->_searchController searchBar];
  v7 = [v6 text];
  [(SUUISearchRequest *)v22 setSearchHintOriginalTerm:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "row")}];
  [(SUUISearchRequest *)v22 setSearchHintIndex:v8];

  v9 = [(SUUICompletionList *)self->_completionList completions];
  v10 = [v5 row];

  v11 = [v9 objectAtIndex:v10];

  v12 = [v11 title];
  [(SUUISearchRequest *)v22 setTerm:v12];
  v13 = objc_alloc(MEMORY[0x277CBEBC0]);
  v14 = [v11 URLString];
  v15 = [v13 initWithString:v14];

  [(SUUISearchRequest *)v22 setURL:v15];
  v16 = [v11 alternateTitle];
  v17 = [(SUUISearchController *)self->_searchController searchBar];
  v18 = [v17 searchField];
  v19 = v18;
  if (v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v12;
  }

  [v18 setText:v20];

  [(SUUISearchFieldController *)self _loadResultsForSearchRequest:v22];
  v21 = [(SUUISearchController *)self->_searchController searchBar];
  [v21 resignFirstResponder];

  [(SUUISearchController *)self->_searchController setActive:0];
}

- (void)trendingSearchPageView:(id)a3 didSelectSearch:(id)a4
{
  v5 = a4;
  v12 = objc_alloc_init(SUUISearchRequest);
  v6 = MEMORY[0x277CBEBC0];
  v7 = [v5 URLString];
  v8 = [v6 URLWithString:v7];
  [(SUUISearchRequest *)v12 setURL:v8];

  v9 = [v5 term];

  [(SUUISearchRequest *)v12 setTerm:v9];
  v10 = [(SUUISearchController *)self->_searchController searchBar];
  v11 = [v10 searchField];
  [v11 setText:v9];

  [(SUUISearchFieldController *)self _loadResultsForSearchRequest:v12];
  [(SUUISearchController *)self->_searchController setActive:0];
}

- (id)URLForTrendingSearchPageView:(id)a3
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [(SUUISearchFieldController *)self trendingSearchURLString];
  v5 = [v3 URLWithString:v4];

  return v5;
}

- (BOOL)_presentsInPopover:(id)a3
{
  v3 = a3;
  if (SUUIUserInterfaceIdiom(v3) == 1)
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v4 keyWindow];
    [v5 bounds];
    if (v6 <= SUUICompactThreshold())
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = [v3 shouldForceTransientSearchControllerBahavior] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_adjustInsetsForResultsTableView:(id)a3
{
  v25 = a3;
  v4 = [(SUUISearchFieldController *)self clientContext];
  if (SUUIUserInterfaceIdiom(v4) == 1)
  {
    v5 = [MEMORY[0x277D75128] sharedApplication];
    v6 = [v5 keyWindow];
    [v6 bounds];
    if (v7 > SUUICompactThreshold())
    {
      v8 = [(SUUIClientContext *)self->_clientContext shouldForceTransientSearchControllerBahavior];

      if (!v8)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  [v25 contentInset];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v25 contentOffset];
  v18 = v17;
  v20 = v19;
  v21 = [(SUUISearchFieldController *)self contentsController];
  v22 = [v21 topLayoutGuide];
  [v22 length];
  v24 = v23;

  if (v24 != v10)
  {
    [v25 setContentInset:{v24, v12, v14, v16}];
    [v25 setScrollIndicatorInsets:{v24, v12, v14, v16}];
    [v25 setContentOffset:{v18, v20 - (v24 - v10)}];
  }

LABEL_9:
}

- (void)_loadResultsForSearchRequest:(id)a3
{
  v12 = a3;
  v4 = [(SUUISearchFieldController *)self delegate];
  v5 = v4;
  if (*&self->_delegateRespondsTo)
  {
    [v4 searchFieldController:self requestSearch:v12];
  }

  else
  {
    v6 = [v12 term];
    v7 = [v12 URL];
    v8 = v7;
    if (!v6 || v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        [v11 searchFieldController:self requestSearchWithURL:v8 metricsEvent:0];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v5 searchFieldController:self requestSearchWithSearchTerm:v6 metricsEvent:0];
    }
  }
}

- (void)_reloadData
{
  v3 = [(SUUISearchController *)self->_searchController searchBar];
  v4 = [v3 text];

  if ([v4 length])
  {
    v5 = [(SUUISearchFieldController *)self searchHintsURLString];

    if (!v5)
    {
      objc_initWeak(&location, self);
      v18 = [(SUUIClientContext *)self->_clientContext URLBag];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __40__SUUISearchFieldController__reloadData__block_invoke;
      v21[3] = &unk_2798F7588;
      objc_copyWeak(&v22, &location);
      [v18 loadValueForKey:@"searchHints" completionBlock:v21];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
      goto LABEL_7;
    }

    [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
    [(SSVLoadURLOperation *)self->_loadOperation cancel];
    v6 = MEMORY[0x277CBEBC0];
    v7 = [(SUUISearchFieldController *)self searchHintsURLString];
    v8 = [v6 URLWithString:v7];
    v9 = [v8 URLByAppendingQueryParameter:@"term" value:v4];

    v10 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v9];
    loadOperation = self->_loadOperation;
    self->_loadOperation = v10;

    v12 = self->_loadOperation;
    v13 = +[(SSVURLDataConsumer *)SUUICompletionDataConsumer];
    [(SSVLoadURLOperation *)v12 setDataConsumer:v13];

    v14 = self->_loadOperation;
    v15 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    [(SSVLoadURLOperation *)v14 setStoreFrontSuffix:v15];

    objc_initWeak(&location, self);
    v16 = self->_loadOperation;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __40__SUUISearchFieldController__reloadData__block_invoke_3;
    v19[3] = &unk_2798F75B0;
    objc_copyWeak(&v20, &location);
    [(SSVLoadURLOperation *)v16 setOutputBlock:v19];
    [(NSOperationQueue *)self->_operationQueue addOperation:self->_loadOperation];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SUUISearchFieldController *)self _setResponse:0 error:0];
    [(SUUISearchFieldController *)self _loadResultsForSearchRequest:0];
    completionList = self->_completionList;
    self->_completionList = 0;

    v9 = [(UITableViewController *)self->_searchResultsController tableView];
    [v9 reloadData];
  }

LABEL_7:
  [(SUUISearchFieldController *)self _reloadTrendingVisibility];
}

void __40__SUUISearchFieldController__reloadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __40__SUUISearchFieldController__reloadData__block_invoke_2;
    v4[3] = &unk_2798F7560;
    objc_copyWeak(&v6, (a1 + 32));
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __40__SUUISearchFieldController__reloadData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setSearchHintsURLString:*(a1 + 32)];
    [v3 _reloadData];
    WeakRetained = v3;
  }
}

void __40__SUUISearchFieldController__reloadData__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SUUISearchFieldController__reloadData__block_invoke_4;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __40__SUUISearchFieldController__reloadData__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_reloadTrendingVisibility
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v14 keyWindow];
    [v5 bounds];
    if (v6 <= SUUICompactThreshold())
    {
    }

    else
    {
      v7 = [(SUUIClientContext *)self->_clientContext shouldForceTransientSearchControllerBahavior];

      if (v7)
      {
        return;
      }

      v14 = [(UITableViewController *)self->_searchResultsController tableView];
      v8 = [(SUUIClientContext *)self->_clientContext trendingSearchProvider];
      [v14 setTrendingSearchProvider:v8];

      v9 = [(SUUISearchController *)self->_searchController isActive];
      v10 = [(SUUISearchController *)self->_searchController searchBar];
      v11 = [v10 text];
      v12 = [v11 length];

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = v9;
      }

      [v14 setTrendingSearchesVisible:v13];
    }
  }
}

- (void)_setResponse:(id)a3 error:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (v12)
  {
    v8 = [(SUUISearchController *)self->_searchController searchBar];
    v9 = [v8 text];
    v10 = [v9 length];

    if (v10)
    {
      objc_storeStrong(&self->_completionList, a3);
      v11 = [(UITableViewController *)self->_searchResultsController tableView];
      [v11 reloadData];
    }
  }
}

- (UIViewController)contentsController
{
  WeakRetained = objc_loadWeakRetained(&self->_contentsController);

  return WeakRetained;
}

- (SUUISearchFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end