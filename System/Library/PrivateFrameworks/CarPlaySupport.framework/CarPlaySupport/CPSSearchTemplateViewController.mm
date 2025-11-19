@interface CPSSearchTemplateViewController
- (BOOL)_isSceneActive;
- (BOOL)searchBarShouldEndEditing:(id)a3;
- (CPSSearchTemplateViewController)initWithSearchTemplate:(id)a3 templateDelegate:(id)a4 templateEnvironment:(id)a5 interactionModel:(unint64_t)a6;
- (CPSTemplateViewControllerDelegate)viewControllerDelegate;
- (CPSearchTemplate)searchTemplate;
- (void)_cleanup;
- (void)_cps_viewControllerWasPopped;
- (void)didDismissSearchController:(id)a3;
- (void)listTemplate:(id)a3 didSelectListItem:(id)a4 completionHandler:(id)a5;
- (void)removeFromParentViewController;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)setDidDisappear:(BOOL)a3;
- (void)setDidPop:(BOOL)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CPSSearchTemplateViewController

- (CPSSearchTemplateViewController)initWithSearchTemplate:(id)a3 templateDelegate:(id)a4 templateEnvironment:(id)a5 interactionModel:(unint64_t)a6
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v26 = 0;
  objc_storeStrong(&v26, a5);
  v25[1] = a6;
  v6 = objc_alloc(MEMORY[0x277CBB0E8]);
  v25[0] = [v6 initWithTitle:0 sections:MEMORY[0x277CBEBF8]];
  v7 = [CPSListTemplateViewController alloc];
  v24 = [(CPSListTemplateViewController *)v7 initWithListTemplate:v25[0] templateDelegate:v25[0] templateEnvironment:v26];
  v23 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:v24];
  [v23 _setRequestedInteractionModel:a6];
  v8 = v29;
  v29 = 0;
  v29 = [(UISearchContainerViewController *)v8 initWithSearchController:v23];
  objc_storeStrong(&v29, v29);
  if (v29)
  {
    objc_storeStrong(&v29->_templateDelegate, v27);
    objc_storeStrong(&v29->_associatedTemplate, location[0]);
    v9 = objc_opt_new();
    templateProviderFuture = v29->_templateProviderFuture;
    v29->_templateProviderFuture = v9;
    [v25[0] connectTemplateProvider:{v24, MEMORY[0x277D82BD8](templateProviderFuture).n128_f64[0]}];
    [v25[0] setDelegate:v29];
    objc_storeStrong(&v29->_listTemplate, v25[0]);
    v15 = v29;
    v16 = [(UISearchContainerViewController *)v29 searchController];
    [(UISearchController *)v16 setDelegate:v15];
    *&v11 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    v17 = v29;
    v18 = [(UISearchContainerViewController *)v29 searchController];
    [(UISearchController *)v18 setSearchResultsUpdater:v17];
    *&v12 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    v19 = [(UISearchContainerViewController *)v29 searchController];
    [(UISearchController *)v19 setHidesNavigationBarDuringPresentation:0];
    MEMORY[0x277D82BD8](v19);
  }

  v14 = MEMORY[0x277D82BE0](v29);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v29, 0);
  return v14;
}

- (void)setDidPop:(BOOL)a3
{
  if (self->_didPop != a3)
  {
    self->_didPop = a3;
    if (a3 && [(CPSSearchTemplateViewController *)self didDisappear])
    {
      [(CPSSearchTemplateViewController *)self _cleanup];
    }
  }
}

- (void)setDidDisappear:(BOOL)a3
{
  if (self->_didDisappear != a3)
  {
    self->_didDisappear = a3;
    if (a3 && [(CPSSearchTemplateViewController *)self didPop])
    {
      [(CPSSearchTemplateViewController *)self _cleanup];
    }
  }
}

- (void)removeFromParentViewController
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSSearchTemplateViewController;
  [(CPSSearchTemplateViewController *)&v2 removeFromParentViewController];
  [(CPSSearchTemplateViewController *)v4 _cleanup];
}

- (void)_cleanup
{
  objc_storeStrong(&self->_templateProviderFuture, 0);
  v2 = [(UISearchContainerViewController *)self searchController];
  [(UISearchController *)v2 setActive:0];
  v3 = [(CPSSearchTemplateViewController *)self viewControllerDelegate];
  [(CPSTemplateViewControllerDelegate *)v3 templateViewControllerDidPop:self];
  MEMORY[0x277D82BD8](v3);
}

- (void)viewDidLoad
{
  v28 = self;
  v27 = a2;
  v26.receiver = self;
  v26.super_class = CPSSearchTemplateViewController;
  [(UISearchContainerViewController *)&v26 viewDidLoad];
  v8 = v28;
  v10 = [(UISearchContainerViewController *)v28 searchController];
  v9 = [(UISearchController *)v10 searchBar];
  [(UISearchBar *)v9 setDelegate:v8];
  MEMORY[0x277D82BD8](v9);
  *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v12 = [(UISearchContainerViewController *)v28 searchController];
  v11 = [(UISearchController *)v12 searchBar];
  [(UISearchBar *)v11 setShowsCancelButton:1];
  MEMORY[0x277D82BD8](v11);
  *&v3 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v14 = [(UISearchContainerViewController *)v28 searchController];
  v13 = [(UISearchController *)v14 searchBar];
  [(UISearchBar *)v13 setSearchBarStyle:?];
  MEMORY[0x277D82BD8](v13);
  v16 = [MEMORY[0x277D75348] clearColor];
  v15 = [(CPSSearchTemplateViewController *)v28 view];
  [v15 setBackgroundColor:v16];
  MEMORY[0x277D82BD8](v15);
  v19 = [MEMORY[0x277D75348] clearColor];
  v18 = [(UISearchContainerViewController *)v28 searchController];
  v17 = [(UISearchController *)v18 searchBar];
  [(UISearchBar *)v17 setBackgroundColor:v19];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  *&v4 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v20 = [(UISearchContainerViewController *)v28 searchController];
  [(UISearchController *)v20 setObscuresBackgroundDuringPresentation:0];
  *&v5 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v23 = [(UISearchContainerViewController *)v28 searchController];
  v22 = [(UISearchController *)v23 searchBar];
  v21 = [(CPSSearchTemplateViewController *)v28 navigationItem];
  [v21 setTitleView:v22];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  *&v6 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  v24 = [(CPSSearchTemplateViewController *)v28 navigationItem];
  [v24 setHidesBackButton:1];
  *&v7 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  [(CPSSearchTemplateViewController *)v28 setDefinesPresentationContext:1, v7];
  [(CPSSearchTemplateViewController *)v28 setExtendedLayoutIncludesOpaqueBars:1];
  [(CPSSearchTemplateViewController *)v28 setEdgesForExtendedLayout:1];
  v25 = [(CPSSearchTemplateViewController *)v28 templateProviderFuture];
  [(NAFuture *)v25 finishWithResult:v28];
  MEMORY[0x277D82BD8](v25);
}

- (void)viewWillAppear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = CPSSearchTemplateViewController;
  [(CPSSearchTemplateViewController *)&v9 viewWillAppear:a3];
  [(CPSSearchTemplateViewController *)v12 setDidPop:0];
  [(CPSSearchTemplateViewController *)v12 setDidDisappear:0];
  v7 = [(CPSSearchTemplateViewController *)v12 templateDelegate];
  v8 = [(CPTemplateDelegate *)v7 conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSSearchTemplateViewController *)v12 templateDelegate];
    v5 = [(CPSSearchTemplateViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [CPTemplateDelegate templateWillAppearWithIdentifier:v6 animated:"templateWillAppearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = CPSSearchTemplateViewController;
  [(UISearchContainerViewController *)&v9 viewDidAppear:a3];
  v7 = [(CPSSearchTemplateViewController *)v12 templateDelegate];
  v8 = [(CPTemplateDelegate *)v7 conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSSearchTemplateViewController *)v12 templateDelegate];
    v5 = [(CPSSearchTemplateViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [CPTemplateDelegate templateDidAppearWithIdentifier:v6 animated:"templateDidAppearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = CPSSearchTemplateViewController;
  [(CPSSearchTemplateViewController *)&v9 viewWillDisappear:a3];
  v7 = [(CPSSearchTemplateViewController *)v12 templateDelegate];
  v8 = [(CPTemplateDelegate *)v7 conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSSearchTemplateViewController *)v12 templateDelegate];
    v5 = [(CPSSearchTemplateViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [CPTemplateDelegate templateWillDisappearWithIdentifier:v6 animated:"templateWillDisappearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = CPSSearchTemplateViewController;
  [(UISearchContainerViewController *)&v9 viewDidDisappear:a3];
  v7 = [(CPSSearchTemplateViewController *)v12 templateDelegate];
  v8 = [(CPTemplateDelegate *)v7 conformsToProtocol:&unk_28562C040];
  v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSSearchTemplateViewController *)v12 templateDelegate];
    v5 = [(CPSSearchTemplateViewController *)v12 associatedTemplate];
    v4 = [(CPTemplate *)v5 identifier];
    [CPTemplateDelegate templateDidDisappearWithIdentifier:v6 animated:"templateDidDisappearWithIdentifier:animated:"];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  [(CPSSearchTemplateViewController *)v12 setDidDisappear:1, *&v3];
}

- (CPSearchTemplate)searchTemplate
{
  v3 = objc_opt_class();
  v4 = [(CPSSearchTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast_13(v3, v4);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)_cps_viewControllerWasPopped
{
  v8 = self;
  location[1] = a2;
  v4 = objc_opt_class();
  v6 = [(UISearchContainerViewController *)v8 searchController];
  v5 = [(UISearchController *)v6 searchResultsController];
  location[0] = CPSSafeCast_13(v4, v5);
  MEMORY[0x277D82BD8](v5);
  v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (location[0])
  {
    v3 = [(CPSSearchTemplateViewController *)v8 viewControllerDelegate];
    [(CPSTemplateViewControllerDelegate *)v3 templateViewControllerDidPop:location[0]];
    v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  }

  [(CPSSearchTemplateViewController *)v8 setDidPop:1, *&v2];
  objc_storeStrong(location, 0);
}

- (void)listTemplate:(id)a3 didSelectListItem:(id)a4 completionHandler:(id)a5
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v12 = [(CPSSearchTemplateViewController *)v17 searchTemplateDelegate];
  v13 = [(CPSearchClientTemplateDelegate *)v12 conformsToProtocol:&unk_285632948];
  *&v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (v13)
  {
    v9 = [(CPSSearchTemplateViewController *)v17 searchTemplateDelegate];
    v8 = [(CPSSearchTemplateViewController *)v17 searchTemplate];
    v7 = [(CPSearchTemplate *)v8 identifier];
    v6 = [v15 identifier];
    [CPSearchClientTemplateDelegate searchTemplateWithIdentifier:v9 selectedResultWithIdentifier:"searchTemplateWithIdentifier:selectedResultWithIdentifier:completionHandler:" completionHandler:v7];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(CPSSearchTemplateViewController *)v10 searchTemplateDelegate];
  v8 = [(CPSearchClientTemplateDelegate *)v7 conformsToProtocol:&unk_285632948];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSSearchTemplateViewController *)v10 searchTemplateDelegate];
    v5 = [(CPSSearchTemplateViewController *)v10 searchTemplate];
    v4 = [(CPSearchTemplate *)v5 identifier];
    [(CPSearchClientTemplateDelegate *)v6 searchTemplateSearchButtonPressedWithIdentifier:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)searchBarShouldEndEditing:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = objc_opt_class();
  v11 = [(UISearchContainerViewController *)v18 searchController];
  v10 = [(UISearchController *)v11 searchResultsController];
  v9 = CPSSafeCast_13(v8, v10);
  objc_initWeak(&v16, v9);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v14 = 0;
  v12 = 0;
  v7 = [(CPSSearchTemplateViewController *)v18 viewIfLoaded];
  v5 = [v7 window];
  v6 = 1;
  if (v5)
  {
    v15 = objc_loadWeakRetained(&v16);
    v14 = 1;
    v13 = [v15 dataSource];
    v12 = 1;
    v6 = 1;
    if ([v13 numberOfItems] <= 0)
    {
      v6 = 1;
      if ([(CPSSearchTemplateViewController *)v18 _isSceneActive])
      {
        v6 = [(CPSSearchTemplateViewController *)v18 _appearState]!= 2;
      }
    }
  }

  v19 = v6;
  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v7);
  objc_destroyWeak(&v16);
  objc_storeStrong(location, 0);
  return v19;
}

- (BOOL)_isSceneActive
{
  v5 = [(CPSSearchTemplateViewController *)self view];
  v4 = [v5 window];
  v3 = [v4 windowScene];
  v6 = [v3 activationState];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  v7 = 1;
  if (v6)
  {
    return v6 == 1;
  }

  return v7;
}

- (void)didDismissSearchController:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(CPSSearchTemplateViewController *)v10 navigationController];
  v6 = [v7 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](v6);
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (isKindOfClass)
  {
    v5 = [(CPSSearchTemplateViewController *)v10 navigationController];
    v4 = [v5 popViewControllerAnimated:1];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(location, 0);
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [(CPSSearchTemplateViewController *)v20 searchTemplateDelegate];
  v9 = [(CPSearchClientTemplateDelegate *)v8 conformsToProtocol:&unk_285632948];
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9)
  {
    v18 = [(CPSSearchTemplateViewController *)v20 searchTemplate];
    v7 = [location[0] searchBar];
    v17 = [v7 text];
    MEMORY[0x277D82BD8](v7);
    objc_initWeak(&from, v20);
    v6 = [(CPSSearchTemplateViewController *)v20 searchTemplateDelegate];
    v4 = [v18 identifier];
    v5 = v17;
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __74__CPSSearchTemplateViewController_updateSearchResultsForSearchController___block_invoke;
    v14 = &unk_278D93160;
    objc_copyWeak(&v15, &from);
    [(CPSearchClientTemplateDelegate *)v6 searchTemplateWithIdentifier:v4 updateSearchResultsForSearchText:v5 completionResults:&v10];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v6);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&from);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
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