@interface SUUIGiftContactSearchController
- (BOOL)cancelSearch;
- (CNAutocompleteResultsTableViewController)searchResultsViewController;
- (SUUIGiftContactSearchDelegate)delegate;
- (UIView)searchResultsView;
- (void)_finishSearchWithResults:(id)results;
- (void)_setResults:(id)results;
- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d;
- (void)dealloc;
- (void)resetSearch;
- (void)searchForText:(id)text;
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

- (void)searchForText:(id)text
{
  textCopy = text;
  if (!self->_autocompleteSearchResults)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    autocompleteSearchResults = self->_autocompleteSearchResults;
    self->_autocompleteSearchResults = v4;
  }

  [(SUUIGiftContactSearchController *)self cancelSearch];
  [(NSMutableArray *)self->_autocompleteSearchResults removeAllObjects];
  if ([textCopy length])
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

    v10 = [(CNAutocompleteSearchManager *)searchManager searchForText:textCopy withAutocompleteFetchContext:0 consumer:self];
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

    searchResultsViewController = [(SUUIGiftContactSearchController *)self searchResultsViewController];
    tableView = [searchResultsViewController tableView];

    v8 = self->_searchResultsView;
    [tableView frame];
    [(UIView *)v8 setFrame:?];
    [(UIView *)self->_searchResultsView bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [tableView setAutoresizingMask:18];
    [tableView setFrame:{v10, v12, v14, v16}];
    [(UIView *)self->_searchResultsView addSubview:tableView];

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

- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d
{
  resultsCopy = results;
  if ([d isEqualToNumber:self->_searchTaskIdentifier])
  {
    [(NSMutableArray *)self->_autocompleteSearchResults addObjectsFromArray:resultsCopy];
  }
}

- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  controllerCopy = controller;
  recipientCopy = recipient;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    tableView = objc_loadWeakRetained(&self->_delegate);
    [tableView searchController:self didSelectRecipient:recipientCopy];
  }

  else
  {
    tableView = [controllerCopy tableView];
    v12 = [MEMORY[0x277CCAA70] indexPathWithIndex:index];
    [tableView deselectRowAtIndexPath:v12 animated:1];
  }
}

- (void)_finishSearchWithResults:(id)results
{
  [(SUUIGiftContactSearchController *)self _setResults:results];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 searchControllerDidFinishSearch:self];
  }
}

- (void)_setResults:(id)results
{
  if (self->_results != results)
  {
    v5 = [results copy];
    results = self->_results;
    self->_results = v5;

    v7 = self->_results;
    searchResultsViewController = [(SUUIGiftContactSearchController *)self searchResultsViewController];
    [searchResultsViewController setRecipients:v7];

    tableView = [(CNAutocompleteResultsTableViewController *)self->_searchResultsViewController tableView];
    [tableView reloadData];
  }
}

- (SUUIGiftContactSearchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end