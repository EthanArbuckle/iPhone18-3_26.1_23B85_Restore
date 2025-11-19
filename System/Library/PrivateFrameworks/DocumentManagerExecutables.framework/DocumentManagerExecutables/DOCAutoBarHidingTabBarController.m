@interface DOCAutoBarHidingTabBarController
+ (BOOL)disableWorkaroundFor123787016;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (id)_selectedOrInflightSelectedViewController;
- (unint64_t)selectedOrInflightSelectedTab;
- (void)_performWhileNotingInflightSelectedViewController:(id)a3 block:(id)a4;
- (void)_setSelectedViewController:(id)a3;
- (void)_showBarWithTransition:(int)a3 isExplicit:(BOOL)a4 duration:(double)a5;
- (void)_updateBarVisibility;
- (void)_updateBarVisibilityAnimated:(BOOL)a3;
- (void)loadViewControllers:(id)a3 initialIndex:(unint64_t)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setNeverAllowShowingSystemTabs:(BOOL)a3;
- (void)setSoleValidIndex:(id)a3;
- (void)showBarIfAllowed;
- (void)viewDidLoad;
@end

@implementation DOCAutoBarHidingTabBarController

- (void)setNeverAllowShowingSystemTabs:(BOOL)a3
{
  if (self->_neverAllowShowingSystemTabs != a3)
  {
    self->_neverAllowShowingSystemTabs = a3;
    [(DOCAutoBarHidingTabBarController *)self _updateBarVisibility];
  }
}

- (void)setSoleValidIndex:(id)a3
{
  v5 = a3;
  soleValidIndex = self->_soleValidIndex;
  if (soleValidIndex != v5)
  {
    v7 = v5 == 0;
    v9 = v5;
    objc_storeStrong(&self->_soleValidIndex, a3);
    v5 = v9;
    if (((v7 ^ (soleValidIndex != 0)) & 1) == 0)
    {
      if (v9)
      {
        v8 = [(NSNumber *)self->_soleValidIndex unsignedIntegerValue];
        if (v8 != [(DOCAutoBarHidingTabBarController *)self selectedIndex])
        {
          [(DOCAutoBarHidingTabBarController *)self setSelectedIndex:v8];
        }
      }

      [(DOCAutoBarHidingTabBarController *)self _updateBarVisibility];
      v5 = v9;
    }
  }
}

- (id)_selectedOrInflightSelectedViewController
{
  tabViewControllerBeingSelected = self->_tabViewControllerBeingSelected;
  if (tabViewControllerBeingSelected)
  {
    v3 = tabViewControllerBeingSelected;
  }

  else
  {
    v3 = [(DOCAutoBarHidingTabBarController *)self _underlyingSelectedViewController];
  }

  return v3;
}

- (unint64_t)selectedOrInflightSelectedTab
{
  v2 = [(DOCAutoBarHidingTabBarController *)self _selectedOrInflightSelectedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 actualViewController];

    v2 = v3;
  }

  v4 = [v2 tabBarItem];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 tab];
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
  v3 = [MEMORY[0x277D75658] isOnScreen];
  self->_forceBarHidden = 0;

  [(DOCAutoBarHidingTabBarController *)self _updateBarVisibilityAnimated:v3 ^ 1u];
}

- (void)_updateBarVisibility
{
  v3 = [(DOCAutoBarHidingTabBarController *)self _appearState]== 2;

  [(DOCAutoBarHidingTabBarController *)self _updateBarVisibilityAnimated:v3];
}

- (void)_updateBarVisibilityAnimated:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277D75D18] areAnimationsEnabled];
  }

  else
  {
    v4 = 0;
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
  v8 = v4;
  [MEMORY[0x277D75D18] doc_performAllowingAnimations:v4 block:v6];
}

- (void)_showBarWithTransition:(int)a3 isExplicit:(BOOL)a4 duration:(double)a5
{
  v6 = a4;
  v7 = *&a3;
  if (![(DOCAutoBarHidingTabBarController *)self neverAllowShowingSystemTabs])
  {
    v9.receiver = self;
    v9.super_class = DOCAutoBarHidingTabBarController;
    [(DOCAutoBarHidingTabBarController *)&v9 _showBarWithTransition:v7 isExplicit:v6 duration:a5];
  }
}

- (void)_setSelectedViewController:(id)a3
{
  v4 = a3;
  if ([v4 doc_isAppearing])
  {
    v5 = [(DOCAutoBarHidingTabBarController *)self _underlyingSelectedViewController];

    if (v5 != v4)
    {
      v6 = MEMORY[0x277D75D28];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __63__DOCAutoBarHidingTabBarController__setSelectedViewController___block_invoke;
      v19[3] = &unk_278FA1C30;
      v20 = v4;
      [v6 doc_performWithDeferredTransitionsAndAnimationsDisabled:v19];
    }
  }

  soleValidIndex = self->_soleValidIndex;
  if (soleValidIndex)
  {
    v8 = [(NSNumber *)soleValidIndex unsignedIntegerValue];
    v9 = [(DOCAutoBarHidingTabBarController *)self viewControllers];
    v10 = [v9 indexOfObject:v4];

    if (v10 != v8)
    {
      [DOCAutoBarHidingTabBarController _setSelectedViewController:];
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__DOCAutoBarHidingTabBarController__setSelectedViewController___block_invoke_2;
  aBlock[3] = &unk_278FA1E80;
  aBlock[4] = self;
  v11 = v4;
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

- (void)_performWhileNotingInflightSelectedViewController:(id)a3 block:(id)a4
{
  v10 = a3;
  if (self->_tabViewControllerBeingSelected)
  {
    v7 = *(a4 + 2);
    tabViewControllerBeingSelected = a4;
    v7();
  }

  else
  {
    objc_storeStrong(&self->_tabViewControllerBeingSelected, a3);
    v9 = a4;
    v9[2]();

    tabViewControllerBeingSelected = self->_tabViewControllerBeingSelected;
    self->_tabViewControllerBeingSelected = 0;
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = DOCAutoBarHidingTabBarController;
  [(DOCAutoBarHidingTabBarController *)&v5 viewDidLoad];
  v3 = [(DOCAutoBarHidingTabBarController *)self tabBar];
  v4 = [v3 layer];
  [v4 setHitTestsAsOpaque:1];
}

- (void)loadViewControllers:(id)a3 initialIndex:(unint64_t)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(DOCAutoBarHidingTabBarController *)self selectedIndex];
  v38 = 0u;
  v39 = 0u;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v40 = 0uLL;
  v41 = 0uLL;
  v9 = [(DOCAutoBarHidingTabBarController *)self viewControllers];
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v38 + 1) + 8 * i) removeObserver:self forKeyPath:@"preferredContentSize"];
      }

      v11 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v11);
  }

  v14 = [v6 count];
  if (a4 == 0x7FFFFFFFFFFFFFFFLL || !v14 || [v6 count] <= v8)
  {
    v27 = self;
    v28 = v6;
LABEL_27:
    [(DOCAutoBarHidingTabBarController *)v27 setViewControllers:v28 animated:0];
    goto LABEL_28;
  }

  v15 = [v6 count];
  if (v15 <= a4)
  {
    [(DOCAutoBarHidingTabBarController *)a4 loadViewControllers:a2 initialIndex:self];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = v6;
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

  v21 = [v16 objectAtIndexedSubscript:a4];
  [v21 preferredContentSize];
  [(DOCAutoBarHidingTabBarController *)self setPreferredContentSize:?];

  if (v8 == a4 || v15 <= a4)
  {
    v27 = self;
    v28 = v16;
    goto LABEL_27;
  }

  v22 = objc_opt_new();
  v23 = [v16 objectAtIndexedSubscript:v8];
  [v22 setActualViewController:v23];

  v24 = [v16 mutableCopy];
  [v24 replaceObjectAtIndex:v8 withObject:v22];
  v25 = [v16 objectAtIndexedSubscript:a4];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __69__DOCAutoBarHidingTabBarController_loadViewControllers_initialIndex___block_invoke;
  v30[3] = &unk_278FA1ED0;
  v30[4] = self;
  v31 = v24;
  v33 = a4;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a4;
  v9 = a3;
  v12 = [(DOCAutoBarHidingTabBarController *)self _underlyingSelectedViewController];
  v10 = [v9 isEqualToString:@"preferredContentSize"];

  v11 = v12;
  if (v10 && v12 == v8)
  {
    [v12 preferredContentSize];
    [(DOCAutoBarHidingTabBarController *)self setPreferredContentSize:?];
    v11 = v12;
  }
}

+ (BOOL)disableWorkaroundFor123787016
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DisableWorkaroundFor123787016"];

  return v3;
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v23.receiver = self;
  v23.super_class = DOCAutoBarHidingTabBarController;
  v6 = a3;
  v7 = self;
  [(DOCAutoBarHidingTabBarController *)&v23 _edgeInsetsForChildViewController:v6 insetsAreAbsolute:a4];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(DOCAutoBarHidingTabBarController *)v7 traitCollection:v23.receiver];
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