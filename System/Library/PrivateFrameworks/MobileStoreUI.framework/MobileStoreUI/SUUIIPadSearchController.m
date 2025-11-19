@interface SUUIIPadSearchController
+ (void)setLastSearchTerm:(id)a3;
- (SUUIIPadSearchController)initWithParentViewController:(id)a3;
- (UIViewController)parentViewController;
- (id)_searchFieldController;
- (id)newSearchFieldBarItem;
- (void)_termDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)reloadSearchField;
- (void)searchFieldController:(id)a3 requestSearch:(id)a4;
- (void)setClientContext:(id)a3;
- (void)setNumberOfSearchResults:(int64_t)a3;
- (void)setSearchFieldPlaceholderText:(id)a3;
@end

@implementation SUUIIPadSearchController

- (SUUIIPadSearchController)initWithParentViewController:(id)a3
{
  objc_initWeak(&location, a3);
  v8.receiver = self;
  v8.super_class = SUUIIPadSearchController;
  v4 = [(SUUIIPadSearchController *)&v8 init];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v4->_parentViewController, v5);

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v4 selector:sel__termDidChangeNotification_ name:@"SUUIIPadSearchControllerTermDidChangeNotification" object:0];
  }

  objc_destroyWeak(&location);
  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SUUIIPadSearchControllerTermDidChangeNotification" object:0];
  [(SUUISearchFieldController *)self->_searchFieldController setDelegate:0];

  v4.receiver = self;
  v4.super_class = SUUIIPadSearchController;
  [(SUUIIPadSearchController *)&v4 dealloc];
}

- (void)setClientContext:(id)a3
{
  v5 = a3;
  p_clientContext = &self->_clientContext;
  if (self->_clientContext != v5)
  {
    v7 = v5;
    objc_storeStrong(p_clientContext, a3);
    p_clientContext = [(SUUISearchFieldController *)self->_searchFieldController setClientContext:self->_clientContext];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_clientContext, v5);
}

- (void)setSearchFieldPlaceholderText:(id)a3
{
  v4 = a3;
  v5 = [(SUUIIPadSearchController *)self _searchFieldController];
  v6 = [v5 searchBar];

  [v6 setPlaceholder:v4];
}

- (id)newSearchFieldBarItem
{
  v2 = [(SUUIIPadSearchController *)self _searchFieldController];
  v3 = [v2 searchBar];

  [v3 sizeToFit];
  [v3 frame];
  [v3 setFrame:?];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v3];

  return v4;
}

- (void)reloadSearchField
{
  v3 = [objc_opt_class() lastSearchTerm];
  [(SUUIIPadSearchController *)self setSearchFieldText:v3];
}

- (void)setNumberOfSearchResults:(int64_t)a3
{
  v4 = [(SUUIIPadSearchController *)self _searchFieldController];
  [v4 setNumberOfSearchResults:a3];
}

+ (void)setLastSearchTerm:(id)a3
{
  v3 = [a3 copy];
  v4 = _LastSearchTerm;
  _LastSearchTerm = v3;

  MEMORY[0x2821F96F8](v3, v4);
}

- (void)searchFieldController:(id)a3 requestSearch:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = objc_opt_class();
    v7 = [v5 term];
    [v6 setLastSearchTerm:v7];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"SUUIIPadSearchControllerTermDidChangeNotification" object:self];

    v9 = [v5 term];
    v10 = [v5 URL];

    v11 = [v10 absoluteString];
    v13 = SUUIXEventSearchDictionary(v9, v11);

    v12 = [(SUUIIPadSearchController *)self clientContext];
    [v12 sendOnXEventWithDictionary:v13 completionBlock:0];
  }
}

- (void)_termDidChangeNotification:(id)a3
{
  v4 = [a3 object];

  if (v4 != self)
  {

    [(SUUIIPadSearchController *)self reloadSearchField];
  }
}

- (id)_searchFieldController
{
  searchFieldController = self->_searchFieldController;
  if (!searchFieldController)
  {
    v4 = [SUUISearchFieldController alloc];
    v5 = [(SUUIIPadSearchController *)self parentViewController];
    v6 = [(SUUISearchFieldController *)v4 initWithContentsController:v5 clientContext:self->_clientContext];
    v7 = self->_searchFieldController;
    self->_searchFieldController = v6;

    [(SUUISearchFieldController *)self->_searchFieldController setDelegate:self];
    [(SUUISearchFieldController *)self->_searchFieldController setShowsResultsForEmptyField:1];
    [(SUUIIPadSearchController *)self reloadSearchField];
    searchFieldController = self->_searchFieldController;
  }

  return searchFieldController;
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end