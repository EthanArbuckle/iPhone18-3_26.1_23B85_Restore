@interface SUUIGiftContactSearchController
- (BOOL)cancelSearch;
- (CNAutocompleteResultsTableViewController)searchResultsViewController;
- (SUUIGiftContactSearchDelegate)delegate;
- (UIView)searchResultsView;
- (void)_finishSearchWithResults:(id)a3;
- (void)_setResults:(id)a3;
- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5;
- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4;
- (void)dealloc;
- (void)resetSearch;
- (void)searchForText:(id)a3;
@end

@implementation SUUIGiftContactSearchController

- (void)dealloc
{
  if (self->_searchTaskIdentifier)
  {
    [(CNAutocompleteSearchManager *)self->_searchManager cancelTaskWithID:?];
  }

  [(CNAutocompleteResultsTableViewController *)self->_searchResultsViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIGiftContactSearchController;
  [(SUUIGiftContactSearchController *)&v3 dealloc];
}

- (BOOL)cancelSearch
{
  searchTaskIdentifier = self->_searchTaskIdentifier;
  if (searchTaskIdentifier)
  {
    [(CNAutocompleteSearchManager *)self->_searchManager cancelTaskWithID:searchTaskIdentifier];
    v4 = self->_searchTaskIdentifier;
    self->_searchTaskIdentifier = 0;
  }

  return searchTaskIdentifier != 0;
}

- (void)resetSearch
{
  [(SUUIGiftContactSearchController *)self cancelSearch];

  [(SUUIGiftContactSearchController *)self _setResults:0];
}

- (void)searchForText:(id)a3
{
  v12 = a3;
  if (!self->_autocompleteSearchResults)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    autocompleteSearchResults = self->_autocompleteSearchResults;
    self->_autocompleteSearchResults = v4;
  }

  [(SUUIGiftContactSearchController *)self cancelSearch];
  [(NSMutableArray *)self->_autocompleteSearchResults removeAllObjects];
  if ([v12 length])
  {
    searchManager = self->_searchManager;
    if (!searchManager)
    {
      v7 = SUUIContactsAutocompleteUIFramework();
      v8 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Cnautocomplete.isa v7))];
      v9 = self->_searchManager;
      self->_searchManager = v8;

      [(CNAutocompleteSearchManager *)self->_searchManager setSearchTypes:3];
      searchManager = self->_searchManager;
    }

    v10 = [(CNAutocompleteSearchManager *)searchManager searchForText:v12 withAutocompleteFetchContext:0 consumer:self];
    searchTaskIdentifier = self->_searchTaskIdentifier;
    self->_searchTaskIdentifier = v10;
  }

  else
  {
    [(SUUIGiftContactSearchController *)self _finishSearchWithResults:0];
  }
}

- (UIView)searchResultsView
{
  searchResultsView = self->_searchResultsView;
  if (!searchResultsView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_searchResultsView;
    self->_searchResultsView = v4;

    v6 = [(SUUIGiftContactSearchController *)self searchResultsViewController];
    v7 = [v6 tableView];

    v8 = self->_searchResultsView;
    [v7 frame];
    [(UIView *)v8 setFrame:?];
    [(UIView *)self->_searchResultsView bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v7 setAutoresizingMask:18];
    [v7 setFrame:{v10, v12, v14, v16}];
    [(UIView *)self->_searchResultsView addSubview:v7];

    searchResultsView = self->_searchResultsView;
  }

  return searchResultsView;
}

- (CNAutocompleteResultsTableViewController)searchResultsViewController
{
  searchResultsViewController = self->_searchResultsViewController;
  if (!searchResultsViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x277CFBC80]);
    v5 = self->_searchResultsViewController;
    self->_searchResultsViewController = v4;

    [(CNAutocompleteResultsTableViewController *)self->_searchResultsViewController setDelegate:self];
    searchResultsViewController = self->_searchResultsViewController;
  }

  return searchResultsViewController;
}

- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToNumber:self->_searchTaskIdentifier])
  {
    [(NSMutableArray *)self->_autocompleteSearchResults addObjectsFromArray:v6];
  }
}

- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5
{
  v13 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 searchController:self didSelectRecipient:v8];
  }

  else
  {
    v11 = [v13 tableView];
    v12 = [MEMORY[0x277CCAA70] indexPathWithIndex:a5];
    [v11 deselectRowAtIndexPath:v12 animated:1];
  }
}

- (void)_finishSearchWithResults:(id)a3
{
  [(SUUIGiftContactSearchController *)self _setResults:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 searchControllerDidFinishSearch:self];
  }
}

- (void)_setResults:(id)a3
{
  if (self->_results != a3)
  {
    v5 = [a3 copy];
    results = self->_results;
    self->_results = v5;

    v7 = self->_results;
    v8 = [(SUUIGiftContactSearchController *)self searchResultsViewController];
    [v8 setRecipients:v7];

    v9 = [(CNAutocompleteResultsTableViewController *)self->_searchResultsViewController tableView];
    [v9 reloadData];
  }
}

- (SUUIGiftContactSearchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end