@interface DOCAutoBarHidingTabBarController
+ (BOOL)disableWorkaroundFor123787016;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (id)_selectedOrInflightSelectedViewController;
- (unint64_t)selectedOrInflightSelectedTab;
- (void)_performWhileNotingInflightSelectedViewController:(id)controller block:(id)block;
- (void)_setSelectedViewController:(id)controller;
- (void)_showBarWithTransition:(int)transition isExplicit:(BOOL)explicit duration:(double)duration;
- (void)_updateBarVisibility;
- (void)_updateBarVisibilityAnimated:(BOOL)animated;
- (void)loadViewControllers:(id)controllers initialIndex:(unint64_t)index;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setNeverAllowShowingSystemTabs:(BOOL)tabs;
- (void)setSoleValidIndex:(id)index;
- (void)showBarIfAllowed;
- (void)viewDidLoad;
@end

@implementation DOCAutoBarHidingTabBarController

- (void)setNeverAllowShowingSystemTabs:(BOOL)tabs
{
  if (self->_neverAllowShowingSystemTabs != tabs)
  {
    self->_neverAllowShowingSystemTabs = tabs;
    [(DOCAutoBarHidingTabBarController *)self _updateBarVisibility];
  }
}

- (void)setSoleValidIndex:(id)index
{
  indexCopy = index;
  soleValidIndex = self->_soleValidIndex;
  if (soleValidIndex != indexCopy)
  {
    v7 = indexCopy == 0;
    v9 = indexCopy;
    objc_storeStrong(&self->_soleValidIndex, index);
    indexCopy = v9;
    if (((v7 ^ (soleValidIndex != 0)) & 1) == 0)
    {
      if (v9)
      {
        unsignedIntegerValue = [(NSNumber *)self->_soleValidIndex unsignedIntegerValue];
        if (unsignedIntegerValue != [(DOCAutoBarHidingTabBarController *)self selectedIndex])
        {
          [(DOCAutoBarHidingTabBarController *)self setSelectedIndex:unsignedIntegerValue];
        }
      }

      [(DOCAutoBarHidingTabBarController *)self _updateBarVisibility];
      indexCopy = v9;
    }
  }
}

- (id)_selectedOrInflightSelectedViewController
{
  tabViewControllerBeingSelected = self->_tabViewControllerBeingSelected;
  if (tabViewControllerBeingSelected)
  {
    _underlyingSelectedViewController = tabViewControllerBeingSelected;
  }

  else
  {
    _underlyingSelectedViewController = [(DOCAutoBarHidingTabBarController *)self _underlyingSelectedViewController];
  }

  return _underlyingSelectedViewController;
}

- (unint64_t)selectedOrInflightSelectedTab
{
  _selectedOrInflightSelectedViewController = [(DOCAutoBarHidingTabBarController *)self _selectedOrInflightSelectedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actualViewController = [_selectedOrInflightSelectedViewController actualViewController];

    _selectedOrInflightSelectedViewController = actualViewController;
  }

  tabBarItem = [_selectedOrInflightSelectedViewController tabBarItem];
  if (tabBarItem && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [tabBarItem tab];
  }

  else
  {
    DOCLogAssertionFailure();
    v5 = 0;
  }

  return v5;
}

- (void)showBarIfAllowed
{
  isOnScreen = [MEMORY[0x277D75658] isOnScreen];
  self->_forceBarHidden = 0;

  [(DOCAutoBarHidingTabBarController *)self _updateBarVisibilityAnimated:isOnScreen ^ 1u];
}

- (void)_updateBarVisibility
{
  v3 = [(DOCAutoBarHidingTabBarController *)self _appearState]== 2;

  [(DOCAutoBarHidingTabBarController *)self _updateBarVisibilityAnimated:v3];
}

- (void)_updateBarVisibilityAnimated:(BOOL)animated
{
  if (animated)
  {
    areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
  }

  else
  {
    areAnimationsEnabled = 0;
  }

  if (self->_soleValidIndex || self->_neverAllowShowingSystemTabs)
  {
    if (([(DOCAutoBarHidingTabBarController *)self isTabBarHidden]& 1) != 0)
    {
      return;
    }

    LOBYTE(forceBarHidden) = 1;
  }

  else
  {
    forceBarHidden = self->_forceBarHidden;
    if ([(DOCAutoBarHidingTabBarController *)self isTabBarHidden]== forceBarHidden)
    {
      return;
    }
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__DOCAutoBarHidingTabBarController__updateBarVisibilityAnimated___block_invoke;
  v6[3] = &unk_278FA1E58;
  v6[4] = self;
  v7 = forceBarHidden;
  v8 = areAnimationsEnabled;
  [MEMORY[0x277D75D18] doc_performAllowingAnimations:areAnimationsEnabled block:v6];
}

- (void)_showBarWithTransition:(int)transition isExplicit:(BOOL)explicit duration:(double)duration
{
  explicitCopy = explicit;
  v7 = *&transition;
  if (![(DOCAutoBarHidingTabBarController *)self neverAllowShowingSystemTabs])
  {
    v9.receiver = self;
    v9.super_class = DOCAutoBarHidingTabBarController;
    [(DOCAutoBarHidingTabBarController *)&v9 _showBarWithTransition:v7 isExplicit:explicitCopy duration:duration];
  }
}

- (void)_setSelectedViewController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy doc_isAppearing])
  {
    _underlyingSelectedViewController = [(DOCAutoBarHidingTabBarController *)self _underlyingSelectedViewController];

    if (_underlyingSelectedViewController != controllerCopy)
    {
      v6 = MEMORY[0x277D75D28];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __63__DOCAutoBarHidingTabBarController__setSelectedViewController___block_invoke;
      v19[3] = &unk_278FA1C30;
      v20 = controllerCopy;
      [v6 doc_performWithDeferredTransitionsAndAnimationsDisabled:v19];
    }
  }

  soleValidIndex = self->_soleValidIndex;
  if (soleValidIndex)
  {
    unsignedIntegerValue = [(NSNumber *)soleValidIndex unsignedIntegerValue];
    viewControllers = [(DOCAutoBarHidingTabBarController *)self viewControllers];
    v10 = [viewControllers indexOfObject:controllerCopy];

    if (v10 != unsignedIntegerValue)
    {
      [DOCAutoBarHidingTabBarController _setSelectedViewController:];
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__DOCAutoBarHidingTabBarController__setSelectedViewController___block_invoke_2;
  aBlock[3] = &unk_278FA1E80;
  aBlock[4] = self;
  v11 = controllerCopy;
  v18 = v11;
  v12 = _Block_copy(aBlock);
  usingSharedSplitBrowserStrategy = self->_usingSharedSplitBrowserStrategy;
  if (((-[DOCAutoBarHidingTabBarController enclosedInUIPDocumentLanding](self, "enclosedInUIPDocumentLanding") & 1) != 0 || usingSharedSplitBrowserStrategy) && ([objc_opt_class() disableWorkaroundFor123787016] & 1) == 0)
  {
    v14 = MEMORY[0x277D75D18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__DOCAutoBarHidingTabBarController__setSelectedViewController___block_invoke_4;
    v15[3] = &unk_278FA1EA8;
    v16 = v12;
    [v14 performWithoutAnimation:v15];
  }

  else
  {
    v12[2](v12);
  }
}

uint64_t __63__DOCAutoBarHidingTabBarController__setSelectedViewController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginAppearanceTransition:0 animated:0];
  v2 = *(a1 + 32);

  return [v2 endAppearanceTransition];
}

void __63__DOCAutoBarHidingTabBarController__setSelectedViewController___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__DOCAutoBarHidingTabBarController__setSelectedViewController___block_invoke_3;
  v6[3] = &unk_278FA1E80;
  v4 = v2;
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 _performWhileNotingInflightSelectedViewController:v4 block:v6];
}

id __63__DOCAutoBarHidingTabBarController__setSelectedViewController___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = DOCAutoBarHidingTabBarController;
  return objc_msgSendSuper2(&v3, sel__setSelectedViewController_, v1);
}

- (void)_performWhileNotingInflightSelectedViewController:(id)controller block:(id)block
{
  controllerCopy = controller;
  if (self->_tabViewControllerBeingSelected)
  {
    v7 = *(block + 2);
    tabViewControllerBeingSelected = block;
    v7();
  }

  else
  {
    objc_storeStrong(&self->_tabViewControllerBeingSelected, controller);
    blockCopy = block;
    blockCopy[2]();

    tabViewControllerBeingSelected = self->_tabViewControllerBeingSelected;
    self->_tabViewControllerBeingSelected = 0;
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = DOCAutoBarHidingTabBarController;
  [(DOCAutoBarHidingTabBarController *)&v5 viewDidLoad];
  tabBar = [(DOCAutoBarHidingTabBarController *)self tabBar];
  layer = [tabBar layer];
  [layer setHitTestsAsOpaque:1];
}

- (void)loadViewControllers:(id)controllers initialIndex:(unint64_t)index
{
  v44 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  selectedIndex = [(DOCAutoBarHidingTabBarController *)self selectedIndex];
  v38 = 0u;
  v39 = 0u;
  if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = selectedIndex;
  }

  v40 = 0uLL;
  v41 = 0uLL;
  viewControllers = [(DOCAutoBarHidingTabBarController *)self viewControllers];
  v10 = [viewControllers countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v38 + 1) + 8 * i) removeObserver:self forKeyPath:@"preferredContentSize"];
      }

      v11 = [viewControllers countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v11);
  }

  v14 = [controllersCopy count];
  if (index == 0x7FFFFFFFFFFFFFFFLL || !v14 || [controllersCopy count] <= v8)
  {
    selfCopy2 = self;
    v28 = controllersCopy;
LABEL_27:
    [(DOCAutoBarHidingTabBarController *)selfCopy2 setViewControllers:v28 animated:0];
    goto LABEL_28;
  }

  v15 = [controllersCopy count];
  if (v15 <= index)
  {
    [(DOCAutoBarHidingTabBarController *)index loadViewControllers:a2 initialIndex:self];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = controllersCopy;
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v35;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v34 + 1) + 8 * j) addObserver:self forKeyPath:@"preferredContentSize" options:1 context:0];
      }

      v18 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v18);
  }

  v21 = [v16 objectAtIndexedSubscript:index];
  [v21 preferredContentSize];
  [(DOCAutoBarHidingTabBarController *)self setPreferredContentSize:?];

  if (v8 == index || v15 <= index)
  {
    selfCopy2 = self;
    v28 = v16;
    goto LABEL_27;
  }

  v22 = objc_opt_new();
  v23 = [v16 objectAtIndexedSubscript:v8];
  [v22 setActualViewController:v23];

  v24 = [v16 mutableCopy];
  [v24 replaceObjectAtIndex:v8 withObject:v22];
  v25 = [v16 objectAtIndexedSubscript:index];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __69__DOCAutoBarHidingTabBarController_loadViewControllers_initialIndex___block_invoke;
  v30[3] = &unk_278FA1ED0;
  v30[4] = self;
  v31 = v24;
  indexCopy = index;
  v32 = v16;
  v26 = v24;
  [(DOCAutoBarHidingTabBarController *)self _performWhileNotingInflightSelectedViewController:v25 block:v30];

LABEL_28:
}

uint64_t __69__DOCAutoBarHidingTabBarController_loadViewControllers_initialIndex___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setViewControllers:*(a1 + 40) animated:0];
  [*(a1 + 32) setSelectedIndex:*(a1 + 56)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 setViewControllers:v3 animated:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  pathCopy = path;
  _underlyingSelectedViewController = [(DOCAutoBarHidingTabBarController *)self _underlyingSelectedViewController];
  v10 = [pathCopy isEqualToString:@"preferredContentSize"];

  v11 = _underlyingSelectedViewController;
  if (v10 && _underlyingSelectedViewController == objectCopy)
  {
    [_underlyingSelectedViewController preferredContentSize];
    [(DOCAutoBarHidingTabBarController *)self setPreferredContentSize:?];
    v11 = _underlyingSelectedViewController;
  }
}

+ (BOOL)disableWorkaroundFor123787016
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"DisableWorkaroundFor123787016"];

  return v3;
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  v23.receiver = self;
  v23.super_class = DOCAutoBarHidingTabBarController;
  controllerCopy = controller;
  selfCopy = self;
  [(DOCAutoBarHidingTabBarController *)&v23 _edgeInsetsForChildViewController:controllerCopy insetsAreAbsolute:absolute];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(DOCAutoBarHidingTabBarController *)selfCopy traitCollection:v23.receiver];
  lazy protocol witness table accessor for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait();
  UITraitCollection.subscript.getter();
  v18 = v17;

  v19 = v13 + v18;
  v20 = v9;
  v21 = v11;
  v22 = v15;
  result.right = v22;
  result.bottom = v19;
  result.left = v21;
  result.top = v20;
  return result;
}

- (void)loadViewControllers:(uint64_t)a3 initialIndex:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  [v6 handleFailureInMethod:a2 object:a3 file:@"DOCAutoBarHidingTabBarController.m" lineNumber:278 description:{@"Invalid index (%@) provided", v7}];
}

@end