@interface CPSSearchTemplateViewController
- (BOOL)_isSceneActive;
- (BOOL)searchBarShouldEndEditing:(id)editing;
- (CPSSearchTemplateViewController)initWithSearchTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment interactionModel:(unint64_t)model;
- (CPSTemplateViewControllerDelegate)viewControllerDelegate;
- (CPSearchTemplate)searchTemplate;
- (void)_cleanup;
- (void)_cps_viewControllerWasPopped;
- (void)didDismissSearchController:(id)controller;
- (void)listTemplate:(id)template didSelectListItem:(id)item completionHandler:(id)handler;
- (void)removeFromParentViewController;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)setDidDisappear:(BOOL)disappear;
- (void)setDidPop:(BOOL)pop;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CPSSearchTemplateViewController

- (CPSSearchTemplateViewController)initWithSearchTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment interactionModel:(unint64_t)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v27 = 0;
  objc_storeStrong(&v27, delegate);
  v26 = 0;
  objc_storeStrong(&v26, environment);
  v25[1] = model;
  v6 = objc_alloc(MEMORY[0x277CBB0E8]);
  v25[0] = [v6 initWithTitle:0 sections:MEMORY[0x277CBEBF8]];
  v7 = [CPSListTemplateViewController alloc];
  v24 = [(CPSListTemplateViewController *)v7 initWithListTemplate:v25[0] templateDelegate:v25[0] templateEnvironment:v26];
  v23 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:v24];
  [v23 _setRequestedInteractionModel:model];
  v8 = selfCopy;
  selfCopy = 0;
  selfCopy = [(UISearchContainerViewController *)v8 initWithSearchController:v23];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_templateDelegate, v27);
    objc_storeStrong(&selfCopy->_associatedTemplate, location[0]);
    v9 = objc_opt_new();
    templateProviderFuture = selfCopy->_templateProviderFuture;
    selfCopy->_templateProviderFuture = v9;
    [v25[0] connectTemplateProvider:{v24, MEMORY[0x277D82BD8](templateProviderFuture).n128_f64[0]}];
    [v25[0] setDelegate:selfCopy];
    objc_storeStrong(&selfCopy->_listTemplate, v25[0]);
    v15 = selfCopy;
    searchController = [(UISearchContainerViewController *)selfCopy searchController];
    [(UISearchController *)searchController setDelegate:v15];
    *&v11 = MEMORY[0x277D82BD8](searchController).n128_u64[0];
    v17 = selfCopy;
    searchController2 = [(UISearchContainerViewController *)selfCopy searchController];
    [(UISearchController *)searchController2 setSearchResultsUpdater:v17];
    *&v12 = MEMORY[0x277D82BD8](searchController2).n128_u64[0];
    searchController3 = [(UISearchContainerViewController *)selfCopy searchController];
    [(UISearchController *)searchController3 setHidesNavigationBarDuringPresentation:0];
    MEMORY[0x277D82BD8](searchController3);
  }

  v14 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (void)setDidPop:(BOOL)pop
{
  if (self->_didPop != pop)
  {
    self->_didPop = pop;
    if (pop && [(CPSSearchTemplateViewController *)self didDisappear])
    {
      [(CPSSearchTemplateViewController *)self _cleanup];
    }
  }
}

- (void)setDidDisappear:(BOOL)disappear
{
  if (self->_didDisappear != disappear)
  {
    self->_didDisappear = disappear;
    if (disappear && [(CPSSearchTemplateViewController *)self didPop])
    {
      [(CPSSearchTemplateViewController *)self _cleanup];
    }
  }
}

- (void)removeFromParentViewController
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSSearchTemplateViewController;
  [(CPSSearchTemplateViewController *)&v2 removeFromParentViewController];
  [(CPSSearchTemplateViewController *)selfCopy _cleanup];
}

- (void)_cleanup
{
  objc_storeStrong(&self->_templateProviderFuture, 0);
  searchController = [(UISearchContainerViewController *)self searchController];
  [(UISearchController *)searchController setActive:0];
  viewControllerDelegate = [(CPSSearchTemplateViewController *)self viewControllerDelegate];
  [(CPSTemplateViewControllerDelegate *)viewControllerDelegate templateViewControllerDidPop:self];
  MEMORY[0x277D82BD8](viewControllerDelegate);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v27 = a2;
  v26.receiver = self;
  v26.super_class = CPSSearchTemplateViewController;
  [(UISearchContainerViewController *)&v26 viewDidLoad];
  v8 = selfCopy;
  searchController = [(UISearchContainerViewController *)selfCopy searchController];
  searchBar = [(UISearchController *)searchController searchBar];
  [(UISearchBar *)searchBar setDelegate:v8];
  MEMORY[0x277D82BD8](searchBar);
  *&v2 = MEMORY[0x277D82BD8](searchController).n128_u64[0];
  searchController2 = [(UISearchContainerViewController *)selfCopy searchController];
  searchBar2 = [(UISearchController *)searchController2 searchBar];
  [(UISearchBar *)searchBar2 setShowsCancelButton:1];
  MEMORY[0x277D82BD8](searchBar2);
  *&v3 = MEMORY[0x277D82BD8](searchController2).n128_u64[0];
  searchController3 = [(UISearchContainerViewController *)selfCopy searchController];
  searchBar3 = [(UISearchController *)searchController3 searchBar];
  [(UISearchBar *)searchBar3 setSearchBarStyle:?];
  MEMORY[0x277D82BD8](searchBar3);
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(CPSSearchTemplateViewController *)selfCopy view];
  [view setBackgroundColor:clearColor];
  MEMORY[0x277D82BD8](view);
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  searchController4 = [(UISearchContainerViewController *)selfCopy searchController];
  searchBar4 = [(UISearchController *)searchController4 searchBar];
  [(UISearchBar *)searchBar4 setBackgroundColor:clearColor2];
  MEMORY[0x277D82BD8](searchBar4);
  MEMORY[0x277D82BD8](searchController4);
  *&v4 = MEMORY[0x277D82BD8](clearColor2).n128_u64[0];
  searchController5 = [(UISearchContainerViewController *)selfCopy searchController];
  [(UISearchController *)searchController5 setObscuresBackgroundDuringPresentation:0];
  *&v5 = MEMORY[0x277D82BD8](searchController5).n128_u64[0];
  searchController6 = [(UISearchContainerViewController *)selfCopy searchController];
  searchBar5 = [(UISearchController *)searchController6 searchBar];
  navigationItem = [(CPSSearchTemplateViewController *)selfCopy navigationItem];
  [navigationItem setTitleView:searchBar5];
  MEMORY[0x277D82BD8](navigationItem);
  MEMORY[0x277D82BD8](searchBar5);
  *&v6 = MEMORY[0x277D82BD8](searchController6).n128_u64[0];
  navigationItem2 = [(CPSSearchTemplateViewController *)selfCopy navigationItem];
  [navigationItem2 setHidesBackButton:1];
  *&v7 = MEMORY[0x277D82BD8](navigationItem2).n128_u64[0];
  [(CPSSearchTemplateViewController *)selfCopy setDefinesPresentationContext:1, v7];
  [(CPSSearchTemplateViewController *)selfCopy setExtendedLayoutIncludesOpaqueBars:1];
  [(CPSSearchTemplateViewController *)selfCopy setEdgesForExtendedLayout:1];
  templateProviderFuture = [(CPSSearchTemplateViewController *)selfCopy templateProviderFuture];
  [(NAFuture *)templateProviderFuture finishWithResult:selfCopy];
  MEMORY[0x277D82BD8](templateProviderFuture);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v11 = a2;
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = CPSSearchTemplateViewController;
  [(CPSSearchTemplateViewController *)&v9 viewWillAppear:appear];
  [(CPSSearchTemplateViewController *)selfCopy setDidPop:0];
  [(CPSSearchTemplateViewController *)selfCopy setDidDisappear:0];
  templateDelegate = [(CPSSearchTemplateViewController *)selfCopy templateDelegate];
  v8 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v8)
  {
    templateDelegate2 = [(CPSSearchTemplateViewController *)selfCopy templateDelegate];
    associatedTemplate = [(CPSSearchTemplateViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [CPTemplateDelegate templateWillAppearWithIdentifier:templateDelegate2 animated:"templateWillAppearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    MEMORY[0x277D82BD8](templateDelegate2);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v11 = a2;
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = CPSSearchTemplateViewController;
  [(UISearchContainerViewController *)&v9 viewDidAppear:appear];
  templateDelegate = [(CPSSearchTemplateViewController *)selfCopy templateDelegate];
  v8 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v8)
  {
    templateDelegate2 = [(CPSSearchTemplateViewController *)selfCopy templateDelegate];
    associatedTemplate = [(CPSSearchTemplateViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [CPTemplateDelegate templateDidAppearWithIdentifier:templateDelegate2 animated:"templateDidAppearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    MEMORY[0x277D82BD8](templateDelegate2);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v11 = a2;
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = CPSSearchTemplateViewController;
  [(CPSSearchTemplateViewController *)&v9 viewWillDisappear:disappear];
  templateDelegate = [(CPSSearchTemplateViewController *)selfCopy templateDelegate];
  v8 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v8)
  {
    templateDelegate2 = [(CPSSearchTemplateViewController *)selfCopy templateDelegate];
    associatedTemplate = [(CPSSearchTemplateViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [CPTemplateDelegate templateWillDisappearWithIdentifier:templateDelegate2 animated:"templateWillDisappearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    MEMORY[0x277D82BD8](templateDelegate2);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v11 = a2;
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = CPSSearchTemplateViewController;
  [(UISearchContainerViewController *)&v9 viewDidDisappear:disappear];
  templateDelegate = [(CPSSearchTemplateViewController *)selfCopy templateDelegate];
  v8 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v8)
  {
    templateDelegate2 = [(CPSSearchTemplateViewController *)selfCopy templateDelegate];
    associatedTemplate = [(CPSSearchTemplateViewController *)selfCopy associatedTemplate];
    identifier = [(CPTemplate *)associatedTemplate identifier];
    [CPTemplateDelegate templateDidDisappearWithIdentifier:templateDelegate2 animated:"templateDidDisappearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](associatedTemplate);
    v3 = MEMORY[0x277D82BD8](templateDelegate2).n128_u64[0];
  }

  [(CPSSearchTemplateViewController *)selfCopy setDidDisappear:1, *&v3];
}

- (CPSearchTemplate)searchTemplate
{
  v3 = objc_opt_class();
  associatedTemplate = [(CPSSearchTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast_13(v3, associatedTemplate);
  MEMORY[0x277D82BD8](associatedTemplate);

  return v5;
}

- (void)_cps_viewControllerWasPopped
{
  selfCopy = self;
  location[1] = a2;
  v4 = objc_opt_class();
  searchController = [(UISearchContainerViewController *)selfCopy searchController];
  searchResultsController = [(UISearchController *)searchController searchResultsController];
  location[0] = CPSSafeCast_13(v4, searchResultsController);
  MEMORY[0x277D82BD8](searchResultsController);
  v2 = MEMORY[0x277D82BD8](searchController).n128_u64[0];
  if (location[0])
  {
    viewControllerDelegate = [(CPSSearchTemplateViewController *)selfCopy viewControllerDelegate];
    [(CPSTemplateViewControllerDelegate *)viewControllerDelegate templateViewControllerDidPop:location[0]];
    v2 = MEMORY[0x277D82BD8](viewControllerDelegate).n128_u64[0];
  }

  [(CPSSearchTemplateViewController *)selfCopy setDidPop:1, *&v2];
  objc_storeStrong(location, 0);
}

- (void)listTemplate:(id)template didSelectListItem:(id)item completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v15 = 0;
  objc_storeStrong(&v15, item);
  v14 = 0;
  objc_storeStrong(&v14, handler);
  searchTemplateDelegate = [(CPSSearchTemplateViewController *)selfCopy searchTemplateDelegate];
  v13 = [(CPSearchClientTemplateDelegate *)searchTemplateDelegate conformsToProtocol:&unk_285632948];
  *&v5 = MEMORY[0x277D82BD8](searchTemplateDelegate).n128_u64[0];
  if (v13)
  {
    searchTemplateDelegate2 = [(CPSSearchTemplateViewController *)selfCopy searchTemplateDelegate];
    searchTemplate = [(CPSSearchTemplateViewController *)selfCopy searchTemplate];
    identifier = [(CPSearchTemplate *)searchTemplate identifier];
    identifier2 = [v15 identifier];
    [CPSearchClientTemplateDelegate searchTemplateWithIdentifier:searchTemplateDelegate2 selectedResultWithIdentifier:"searchTemplateWithIdentifier:selectedResultWithIdentifier:completionHandler:" completionHandler:identifier];
    MEMORY[0x277D82BD8](identifier2);
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](searchTemplate);
    MEMORY[0x277D82BD8](searchTemplateDelegate2);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, clicked);
  searchTemplateDelegate = [(CPSSearchTemplateViewController *)selfCopy searchTemplateDelegate];
  v8 = [(CPSearchClientTemplateDelegate *)searchTemplateDelegate conformsToProtocol:&unk_285632948];
  *&v3 = MEMORY[0x277D82BD8](searchTemplateDelegate).n128_u64[0];
  if (v8)
  {
    searchTemplateDelegate2 = [(CPSSearchTemplateViewController *)selfCopy searchTemplateDelegate];
    searchTemplate = [(CPSSearchTemplateViewController *)selfCopy searchTemplate];
    identifier = [(CPSearchTemplate *)searchTemplate identifier];
    [(CPSearchClientTemplateDelegate *)searchTemplateDelegate2 searchTemplateSearchButtonPressedWithIdentifier:?];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](searchTemplate);
    MEMORY[0x277D82BD8](searchTemplateDelegate2);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)searchBarShouldEndEditing:(id)editing
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, editing);
  v8 = objc_opt_class();
  searchController = [(UISearchContainerViewController *)selfCopy searchController];
  searchResultsController = [(UISearchController *)searchController searchResultsController];
  v9 = CPSSafeCast_13(v8, searchResultsController);
  objc_initWeak(&v16, v9);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](searchResultsController);
  *&v3 = MEMORY[0x277D82BD8](searchController).n128_u64[0];
  v14 = 0;
  v12 = 0;
  viewIfLoaded = [(CPSSearchTemplateViewController *)selfCopy viewIfLoaded];
  window = [viewIfLoaded window];
  v6 = 1;
  if (window)
  {
    v15 = objc_loadWeakRetained(&v16);
    v14 = 1;
    dataSource = [v15 dataSource];
    v12 = 1;
    v6 = 1;
    if ([dataSource numberOfItems] <= 0)
    {
      v6 = 1;
      if ([(CPSSearchTemplateViewController *)selfCopy _isSceneActive])
      {
        v6 = [(CPSSearchTemplateViewController *)selfCopy _appearState]!= 2;
      }
    }
  }

  v19 = v6;
  if (v12)
  {
    MEMORY[0x277D82BD8](dataSource);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  MEMORY[0x277D82BD8](window);
  MEMORY[0x277D82BD8](viewIfLoaded);
  objc_destroyWeak(&v16);
  objc_storeStrong(location, 0);
  return v19;
}

- (BOOL)_isSceneActive
{
  view = [(CPSSearchTemplateViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];
  MEMORY[0x277D82BD8](windowScene);
  MEMORY[0x277D82BD8](window);
  MEMORY[0x277D82BD8](view);
  v7 = 1;
  if (activationState)
  {
    return activationState == 1;
  }

  return v7;
}

- (void)didDismissSearchController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  navigationController = [(CPSSearchTemplateViewController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](topViewController);
  *&v3 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  if (isKindOfClass)
  {
    navigationController2 = [(CPSSearchTemplateViewController *)selfCopy navigationController];
    v4 = [navigationController2 popViewControllerAnimated:1];
    MEMORY[0x277D82BD8](navigationController2);
  }

  objc_storeStrong(location, 0);
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  searchTemplateDelegate = [(CPSSearchTemplateViewController *)selfCopy searchTemplateDelegate];
  v9 = [(CPSearchClientTemplateDelegate *)searchTemplateDelegate conformsToProtocol:&unk_285632948];
  *&v3 = MEMORY[0x277D82BD8](searchTemplateDelegate).n128_u64[0];
  if (v9)
  {
    searchTemplate = [(CPSSearchTemplateViewController *)selfCopy searchTemplate];
    searchBar = [location[0] searchBar];
    text = [searchBar text];
    MEMORY[0x277D82BD8](searchBar);
    objc_initWeak(&from, selfCopy);
    searchTemplateDelegate2 = [(CPSSearchTemplateViewController *)selfCopy searchTemplateDelegate];
    identifier = [searchTemplate identifier];
    v5 = text;
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __74__CPSSearchTemplateViewController_updateSearchResultsForSearchController___block_invoke;
    v14 = &unk_278D93160;
    objc_copyWeak(&v15, &from);
    [(CPSearchClientTemplateDelegate *)searchTemplateDelegate2 searchTemplateWithIdentifier:identifier updateSearchResultsForSearchText:v5 completionResults:&v10];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](searchTemplateDelegate2);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&from);
    objc_storeStrong(&text, 0);
    objc_storeStrong(&searchTemplate, 0);
  }

  objc_storeStrong(location, 0);
}

void __74__CPSSearchTemplateViewController_updateSearchResultsForSearchController___block_invoke(id *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v2 = objc_alloc(MEMORY[0x277CBB0E0]);
  v7[0] = [v2 initWithItems:location[0]];
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v5 = [WeakRetained listTemplate];
  v9[0] = v7[0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v5 updateSections:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
}

- (CPSTemplateViewControllerDelegate)viewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerDelegate);

  return WeakRetained;
}

@end