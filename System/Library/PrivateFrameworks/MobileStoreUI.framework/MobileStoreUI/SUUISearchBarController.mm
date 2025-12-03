@interface SUUISearchBarController
- (SUUISearchBarController)initWithSearchBarViewElement:(id)element;
- (UISearchBar)searchBar;
- (UIViewController)parentViewController;
- (id)_newSearchFieldController;
- (id)_searchFieldController;
- (void)_cancelGestureAction:(id)action;
- (void)_customizeSearchBar:(id)bar;
- (void)_customizeSearchFieldController:(id)controller;
- (void)_dispatchChangeEventWithText:(id)text;
- (void)_dispatchSubmitEventWithText:(id)text URL:(id)l searchHintOriginalTerm:(id)term searchHintIndex:(id)index;
- (void)_removeCancelTouchGestureRecognizer;
- (void)dealloc;
- (void)reloadAfterDocumentUpdate;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchFieldController:(id)controller requestSearch:(id)search;
- (void)searchFieldController:(id)controller searchBarDidChangeText:(id)text;
- (void)setDisplaysSearchBarInNavigationBar:(BOOL)bar;
- (void)setSearchBarViewElement:(id)element;
@end

@implementation SUUISearchBarController

- (SUUISearchBarController)initWithSearchBarViewElement:(id)element
{
  elementCopy = element;
  v11.receiver = self;
  v11.super_class = SUUISearchBarController;
  v6 = [(SUUISearchBarController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewElement, element);
    searchHintsURLString = [(SUUISearchBarViewElement *)v7->_viewElement searchHintsURLString];
    trendingSearchURLString = [(SUUISearchBarViewElement *)v7->_viewElement trendingSearchURLString];
    if (searchHintsURLString | trendingSearchURLString)
    {
      v7->_usesSearchFieldController = 1;
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = 40;
  if (self->_usesSearchFieldController)
  {
    v3 = 48;
  }

  [*(&self->super.isa + v3) setDelegate:0];
  [(SUUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer removeTarget:self action:0];
  v4.receiver = self;
  v4.super_class = SUUISearchBarController;
  [(SUUISearchBarController *)&v4 dealloc];
}

- (void)reloadAfterDocumentUpdate
{
  if (self->_searchFieldController)
  {
    [(SUUISearchBarController *)self _customizeSearchFieldController:?];
    searchBar = [(SUUISearchFieldController *)self->_searchFieldController searchBar];
    [(SUUISearchBarController *)self _customizeSearchBar:searchBar];
  }
}

- (UISearchBar)searchBar
{
  if (!self->_searchBar)
  {
    if (self->_usesSearchFieldController)
    {
      _searchFieldController = [(SUUISearchBarController *)self _searchFieldController];
      searchBar = [_searchFieldController searchBar];
      searchBar = self->_searchBar;
      self->_searchBar = searchBar;
    }

    else
    {
      _searchFieldController = [(SUUISearchBarController *)self _newSearchFieldController];
      searchBar2 = [_searchFieldController searchBar];
      v7 = self->_searchBar;
      self->_searchBar = searchBar2;

      [(UISearchBar *)self->_searchBar setDelegate:self];
    }
  }

  v8 = self->_searchBar;

  return v8;
}

- (void)setDisplaysSearchBarInNavigationBar:(BOOL)bar
{
  if (self->_displaysSearchBarInNavigationBar != bar)
  {
    self->_displaysSearchBarInNavigationBar = bar;
    [(SUUISearchFieldController *)self->_searchFieldController setDisplaysSearchBarInNavigationBar:?];
  }
}

- (void)setSearchBarViewElement:(id)element
{
  elementCopy = element;
  p_viewElement = &self->_viewElement;
  if (self->_viewElement != elementCopy)
  {
    v7 = elementCopy;
    objc_storeStrong(p_viewElement, element);
    p_viewElement = [(SUUISearchBarController *)self reloadAfterDocumentUpdate];
    elementCopy = v7;
  }

  MEMORY[0x2821F96F8](p_viewElement, elementCopy);
}

- (void)searchFieldController:(id)controller requestSearch:(id)search
{
  searchCopy = search;
  term = [searchCopy term];
  [SUUIIPadSearchController setLastSearchTerm:term];

  term2 = [searchCopy term];
  v7 = [searchCopy URL];
  searchHintOriginalTerm = [searchCopy searchHintOriginalTerm];
  searchHintIndex = [searchCopy searchHintIndex];

  [(SUUISearchBarController *)self _dispatchSubmitEventWithText:term2 URL:v7 searchHintOriginalTerm:searchHintOriginalTerm searchHintIndex:searchHintIndex];
}

- (void)searchFieldController:(id)controller searchBarDidChangeText:(id)text
{
  textCopy = text;
  [SUUIIPadSearchController setLastSearchTerm:textCopy];
  [(SUUISearchBarController *)self _dispatchChangeEventWithText:textCopy];
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  cancelTouchGestureRecognizer = self->_cancelTouchGestureRecognizer;
  if (cancelTouchGestureRecognizer)
  {
    [(SUUIFocusedTouchGestureRecognizer *)cancelTouchGestureRecognizer removeTarget:self action:0];
    view = [(SUUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer view];
    [view removeGestureRecognizer:self->_cancelTouchGestureRecognizer];

    v6 = self->_cancelTouchGestureRecognizer;
    self->_cancelTouchGestureRecognizer = 0;
  }

  v7 = [SUUIFocusedTouchGestureRecognizer alloc];
  v8 = [(SUUIFocusedTouchGestureRecognizer *)v7 initWithFocusedView:editingCopy touchAllowance:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  v9 = self->_cancelTouchGestureRecognizer;
  self->_cancelTouchGestureRecognizer = v8;

  [(SUUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer addTarget:self action:sel__cancelGestureAction_];
  window = [editingCopy window];
  [window addGestureRecognizer:self->_cancelTouchGestureRecognizer];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  [clickedCopy resignFirstResponder];
  text = [clickedCopy text];

  [(SUUISearchBarController *)self _dispatchSubmitEventWithText:text URL:0 searchHintOriginalTerm:0 searchHintIndex:0];
}

- (void)_cancelGestureAction:(id)action
{
  if (self->_cancelTouchGestureRecognizer == action)
  {
    [(UISearchBar *)self->_searchBar resignFirstResponder];

    [(SUUISearchBarController *)self _removeCancelTouchGestureRecognizer];
  }
}

- (void)_customizeSearchBar:(id)bar
{
  barCopy = bar;
  searchField = [barCopy searchField];
  style = [(SUUISearchBarViewElement *)self->_viewElement style];
  v6 = SUUIViewElementPlainColorWithStyle(style, 0);

  if (v6)
  {
    [searchField setTextColor:v6];
  }

  if (([barCopy isFirstResponder] & 1) == 0)
  {
    defaultText = [(SUUISearchBarViewElement *)self->_viewElement defaultText];
    string = [defaultText string];
    [searchField setText:string];
  }

  placeholderString = [(SUUISearchBarViewElement *)self->_viewElement placeholderString];
  [searchField setPlaceholder:placeholderString];
}

- (void)_customizeSearchFieldController:(id)controller
{
  viewElement = self->_viewElement;
  controllerCopy = controller;
  accessoryText = [(SUUISearchBarViewElement *)viewElement accessoryText];
  [controllerCopy setSearchBarAccessoryText:accessoryText];

  searchHintsURLString = [(SUUISearchBarViewElement *)self->_viewElement searchHintsURLString];
  [controllerCopy setSearchHintsURLString:searchHintsURLString];

  trendingSearchURLString = [(SUUISearchBarViewElement *)self->_viewElement trendingSearchURLString];
  [controllerCopy setTrendingSearchURLString:trendingSearchURLString];
}

- (void)_dispatchChangeEventWithText:(id)text
{
  v4 = MEMORY[0x277CBEAC0];
  textCopy = text;
  v6 = [[v4 alloc] initWithObjectsAndKeys:{textCopy, @"term", 0}];

  [(SUUISearchBarViewElement *)self->_viewElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v6 completionBlock:0];
}

- (void)_dispatchSubmitEventWithText:(id)text URL:(id)l searchHintOriginalTerm:(id)term searchHintIndex:(id)index
{
  textCopy = text;
  lCopy = l;
  termCopy = term;
  indexCopy = index;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = v13;
  if (textCopy)
  {
    [v13 setObject:textCopy forKey:@"term"];
  }

  if (lCopy)
  {
    absoluteString = [lCopy absoluteString];
    [v14 setObject:absoluteString forKey:@"url"];
  }

  if (termCopy)
  {
    [v14 setObject:termCopy forKey:@"searchHintOriginalTerm"];
  }

  if (indexCopy)
  {
    [v14 setObject:indexCopy forKey:@"searchHintIndex"];
  }

  if ([v14 count])
  {
    [(SUUISearchBarViewElement *)self->_viewElement dispatchEventOfType:14 canBubble:1 isCancelable:1 extraInfo:v14 completionBlock:0];
  }
}

- (id)_newSearchFieldController
{
  v3 = [SUUISearchFieldController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  v5 = [(SUUISearchFieldController *)v3 initWithContentsController:WeakRetained clientContext:self->_clientContext];

  [(SUUISearchBarController *)self _customizeSearchFieldController:v5];
  if (self->_displaysSearchBarInNavigationBar)
  {
    [(SUUISearchFieldController *)v5 setDisplaysSearchBarInNavigationBar:1];
  }

  if (self->_showsResultsForEmptyField)
  {
    [(SUUISearchFieldController *)v5 setShowsResultsForEmptyField:1];
  }

  searchBar = [(SUUISearchFieldController *)v5 searchBar];
  [(SUUISearchBarController *)self _customizeSearchBar:searchBar];

  return v5;
}

- (void)_removeCancelTouchGestureRecognizer
{
  [(SUUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer removeTarget:self action:0];
  view = [(SUUIFocusedTouchGestureRecognizer *)self->_cancelTouchGestureRecognizer view];
  [view removeGestureRecognizer:self->_cancelTouchGestureRecognizer];

  cancelTouchGestureRecognizer = self->_cancelTouchGestureRecognizer;
  self->_cancelTouchGestureRecognizer = 0;
}

- (id)_searchFieldController
{
  searchFieldController = self->_searchFieldController;
  if (!searchFieldController)
  {
    _newSearchFieldController = [(SUUISearchBarController *)self _newSearchFieldController];
    v5 = self->_searchFieldController;
    self->_searchFieldController = _newSearchFieldController;

    [(SUUISearchFieldController *)self->_searchFieldController setDelegate:self];
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