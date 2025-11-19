@interface CPSOverlayViewController
- (BOOL)_needsVisibilityView;
- (BOOL)_useRightHandDriveFocusGuide;
- (BOOL)restoresFocusAfterTransition;
- (BOOL)shouldHideNavigationBarForViewController:(id)a3;
- (CPSVisibilityEnvironmentProviding)environmentProvider;
- (UIFocusGuide)rightHandDriveGuide;
- (UIFocusItem)preferredFocusItem;
- (id)_firstFocusProvidingForViewController:(id)a3;
- (id)_linearFocusMovementSequences;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (id)popToViewController:(id)a3 animated:(BOOL)a4;
- (id)popViewControllerAnimated:(BOOL)a3;
- (id)preferredFocusEnvironments;
- (id)presentedTemplateViewController;
- (id)templates;
- (id)topTemplate;
- (id)viewControllerForTemplate:(id)a3;
- (unint64_t)indexOfTemplate:(id)a3;
- (void)_resetRightHandDriveGuide;
- (void)_updateVisibilityView;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)dismissTemplateAnimated:(BOOL)a3 completion:(id)a4;
- (void)invalidate;
- (void)popTemplateAnimated:(BOOL)a3 completion:(id)a4;
- (void)popToRootTemplateAnimated:(BOOL)a3 completion:(id)a4;
- (void)popToTemplate:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentActionSheetTemplate:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentTemplateViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)pushTemplateViewController:(id)a3 animated:(BOOL)a4 presentationStyle:(unint64_t)a5 completion:(id)a6;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CPSOverlayViewController

- (BOOL)_useRightHandDriveFocusGuide
{
  v14 = self;
  v13[1] = a2;
  v13[0] = 0;
  v8 = objc_opt_class();
  v9 = [(CPSOverlayViewController *)v14 topViewController];
  location = CPSSafeCast_2(v8, v9);
  MEMORY[0x277D82BD8](v9);
  v10 = [(CPSOverlayViewController *)v14 topViewController];
  v11 = [v10 conformsToProtocol:&unk_2855E1980];
  MEMORY[0x277D82BD8](v10);
  if (v11)
  {
    v2 = [(CPSOverlayViewController *)v14 topViewController];
    v3 = v13[0];
    v13[0] = v2;
    MEMORY[0x277D82BD8](v3);
  }

  else if (location)
  {
    v7 = [location selectedViewController];
    v4 = [(CPSOverlayViewController *)v14 _firstFocusProvidingForViewController:?];
    v5 = v13[0];
    v13[0] = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v7);
  }

  v15 = (objc_opt_respondsToSelector() & 1) != 0 && ([v13[0] useRightHandDriveFocusGuide] & 1) != 0;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v13, 0);
  return v15;
}

- (void)invalidate
{
  [(CPSOverlayViewController *)self _invalidateVisibilityView];
  v2 = [(CPSOverlayViewController *)self viewControllers];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_0];
  MEMORY[0x277D82BD8](v2);
}

void __38__CPSOverlayViewController_invalidate__block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[3] = a3;
  v7[2] = a4;
  v7[1] = a1;
  v7[0] = CPSSafeProtocolCast(&unk_2855D67D8, location[0]);
  [v7[0] invalidate];
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = CPSOverlayViewController;
  [(CPSOverlayViewController *)&v3 viewDidAppear:a3];
  [(CPSOverlayViewController *)v6 _updateVisibilityView];
}

- (void)viewDidLoad
{
  v23[4] = *MEMORY[0x277D85DE8];
  v22 = self;
  v21 = a2;
  v20.receiver = self;
  v20.super_class = CPSOverlayViewController;
  [(CPSOverlayViewController *)&v20 viewDidLoad];
  v19 = [(CPSOverlayViewController *)v22 view];
  v2 = [_CPSOverlayTouchBlockingView alloc];
  v18 = [(_CPSOverlayTouchBlockingView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(_CPSOverlayTouchBlockingView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_CPSOverlayTouchBlockingView *)v18 setUserInteractionEnabled:1];
  if (_UISolariumEnabled())
  {
    v16 = [MEMORY[0x277D75348] clearColor];
    [v19 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v16);
  }

  [v19 insertSubview:v18 atIndex:0];
  v15 = [v19 topAnchor];
  v14 = [(_CPSOverlayTouchBlockingView *)v18 topAnchor];
  v13 = [v15 constraintEqualToAnchor:?];
  v23[0] = v13;
  v12 = [v19 leftAnchor];
  v11 = [(_CPSOverlayTouchBlockingView *)v18 leftAnchor];
  v10 = [v12 constraintEqualToAnchor:?];
  v23[1] = v10;
  v9 = [v19 rightAnchor];
  v8 = [(_CPSOverlayTouchBlockingView *)v18 rightAnchor];
  v7 = [v9 constraintEqualToAnchor:?];
  v23[2] = v7;
  v6 = [v19 bottomAnchor];
  v5 = [(_CPSOverlayTouchBlockingView *)v18 bottomAnchor];
  v4 = [v6 constraintEqualToAnchor:?];
  v23[3] = v4;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  *&v3 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v17, v3}];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
}

- (UIFocusGuide)rightHandDriveGuide
{
  v28[4] = *MEMORY[0x277D85DE8];
  if (!self->_rightHandDriveGuide)
  {
    v2 = objc_alloc_init(MEMORY[0x277D75500]);
    rightHandDriveGuide = self->_rightHandDriveGuide;
    self->_rightHandDriveGuide = v2;
    v8 = [(CPSOverlayViewController *)self view];
    v7 = [(CPSOverlayViewController *)self rightHandDriveGuide];
    [v8 addLayoutGuide:?];
    MEMORY[0x277D82BD8](v7);
    *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    v9 = MEMORY[0x277CCAAD0];
    v26 = [(CPSOverlayViewController *)self rightHandDriveGuide];
    v25 = [(UIFocusGuide *)v26 rightAnchor];
    v24 = [(CPSOverlayViewController *)self view];
    v23 = [v24 rightAnchor];
    v22 = [v25 constraintEqualToAnchor:?];
    v28[0] = v22;
    v21 = [(CPSOverlayViewController *)self rightHandDriveGuide];
    v20 = [(UIFocusGuide *)v21 bottomAnchor];
    v19 = [(CPSOverlayViewController *)self view];
    v18 = [v19 bottomAnchor];
    v17 = [v20 constraintEqualToAnchor:?];
    v28[1] = v17;
    v16 = [(CPSOverlayViewController *)self rightHandDriveGuide];
    v15 = [(UIFocusGuide *)v16 heightAnchor];
    v14 = [v15 constraintEqualToConstant:?];
    v28[2] = v14;
    v13 = [(CPSOverlayViewController *)self rightHandDriveGuide];
    v12 = [(UIFocusGuide *)v13 widthAnchor];
    v11 = [v12 constraintEqualToConstant:1.0];
    v28[3] = v11;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v9 activateConstraints:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
  }

  v5 = self->_rightHandDriveGuide;

  return v5;
}

- (void)_resetRightHandDriveGuide
{
  if (self->_rightHandDriveGuide)
  {
    [(UIFocusGuide *)self->_rightHandDriveGuide setPreferredFocusEnvironments:0];
  }
}

- (BOOL)shouldHideNavigationBarForViewController:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 1;
    v16 = 1;
  }

  else
  {
    v11 = [(CPSOverlayViewController *)v18 viewControllers];
    v10 = [v11 firstObject];
    v12 = [v10 isEqual:location[0]];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    if (v12)
    {
      v3 = objc_opt_class();
      v15 = CPSSafeCast_2(v3, location[0]);
      v9 = [v15 navigationItem];
      v14 = [v9 title];
      *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      if (v14 && [v14 length])
      {
        v19 = 0;
        v16 = 1;
      }

      else
      {
        v7 = objc_opt_class();
        v8 = [v15 associatedTemplate];
        v13 = CPSSafeCast_2(v7, v8);
        *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
        if (v13)
        {
          v19 = [v13 shouldHideNavigationBar] & 1;
        }

        else
        {
          v19 = 0;
        }

        v16 = 1;
        objc_storeStrong(&v13, 0);
      }

      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
    }

    else
    {
      v19 = 0;
      v16 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v19 & 1;
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v5.receiver = self;
  v5.super_class = CPSOverlayViewController;
  v6 = [(CPSOverlayViewController *)&v5 popViewControllerAnimated:a3];
  [v6 _cps_viewControllerWasPopped];
  v4 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);

  return v4;
}

- (id)popToViewController:(id)a3 animated:(BOOL)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v7.receiver = v11;
  v7.super_class = CPSOverlayViewController;
  v8 = [(CPSOverlayViewController *)&v7 popToViewController:location[0] animated:a4];
  [v8 enumerateObjectsWithOptions:2 usingBlock:&__block_literal_global_168];
  v6 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

void __57__CPSOverlayViewController_popToViewController_animated___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] _cps_viewControllerWasPopped];
  objc_storeStrong(location, 0);
}

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v5.receiver = self;
  v5.super_class = CPSOverlayViewController;
  v6 = [(CPSOverlayViewController *)&v5 popToRootViewControllerAnimated:a3];
  [v6 enumerateObjectsWithOptions:2 usingBlock:&__block_literal_global_172];
  v4 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);

  return v4;
}

void __60__CPSOverlayViewController_popToRootViewControllerAnimated___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] _cps_viewControllerWasPopped];
  objc_storeStrong(location, 0);
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = a4;
  memset(__b, 0, sizeof(__b));
  obj = [(CPSOverlayViewController *)v27 viewControllers];
  v21 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
  if (v21)
  {
    v16 = *__b[2];
    v17 = 0;
    v18 = v21;
    while (1)
    {
      v15 = v17;
      if (*__b[2] != v16)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(__b[1] + 8 * v17);
      v14 = [v24 parentViewController];
      v13 = v27;
      *&v4 = MEMORY[0x277D82BD8](v14).n128_u64[0];
      if (v14 == v13)
      {
        v12 = [v24 view];
        [v12 removeFromSuperview];
        *&v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
        [v24 removeFromParentViewController];
      }

      ++v17;
      if (v15 + 1 >= v18)
      {
        v17 = 0;
        v18 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v18)
        {
          break;
        }
      }
    }
  }

  *&v6 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  v9 = v27;
  v10 = location[0];
  v11 = [(CPSOverlayViewController *)v27 viewControllers];
  if ([v11 count])
  {
    v8 = v25;
  }

  else
  {
    v8 = 0;
  }

  v22.receiver = v9;
  v22.super_class = CPSOverlayViewController;
  [(CPSOverlayViewController *)&v22 setViewControllers:v10 animated:v8 != 0];
  *&v7 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  [(CPSOverlayViewController *)v27 _updateVisibilityView];
  objc_storeStrong(location, 0);
}

- (unint64_t)indexOfTemplate:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSOverlayViewController *)v13 viewControllers];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __44__CPSOverlayViewController_indexOfTemplate___block_invoke;
  v10 = &unk_278D91690;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v5 = [v4 indexOfObjectPassingTest:?];
  objc_storeStrong(&v11, 0);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v5;
}

uint64_t __44__CPSOverlayViewController_indexOfTemplate___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[3] = a3;
  v12[2] = a4;
  v12[1] = a1;
  v12[0] = CPSSafeProtocolCast(&unk_2855D67D8, location[0]);
  v11 = [v12[0] associatedTemplate];
  v9 = [v11 identifier];
  v8 = [a1[4] identifier];
  v10 = [v9 isEqual:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v12, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (id)viewControllerForTemplate:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(CPSOverlayViewController *)v8 indexOfTemplate:location[0]];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v5 = [(CPSOverlayViewController *)v8 viewControllers];
    v9 = [v5 objectAtIndexedSubscript:v6];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

- (void)popToTemplate:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v11 = [(CPSOverlayViewController *)v15 viewControllerForTemplate:location[0]];
  if (v11)
  {
    v5 = [(CPSOverlayViewController *)v15 popToViewController:v11 animated:v13];
    if (v13)
    {
      v10 = [(CPSOverlayViewController *)v15 transitionCoordinator];
      v6 = v10;
      v9 = MEMORY[0x277D82BE0](v12);
      [v6 animateAlongsideTransition:? completion:?];
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    else
    {
      (*(v12 + 2))(v12, 1);
    }
  }

  else
  {
    (*(v12 + 2))(v12, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void __62__CPSOverlayViewController_popToTemplate_animated_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)popToRootTemplateAnimated:(BOOL)a3 completion:(id)a4
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v9 = [(CPSOverlayViewController *)v13 popToRootViewControllerAnimated:v11];
  v8 = [v9 count] != 0;
  if (location)
  {
    v7 = [(CPSOverlayViewController *)v13 transitionCoordinator];
    if (v7)
    {
      v4 = v7;
      v5 = MEMORY[0x277D82BE0](location);
      v6 = v8;
      [v4 animateAlongsideTransition:? completion:?];
      objc_storeStrong(&v5, 0);
    }

    else
    {
      (*(location + 2))(location, v8);
    }

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

void __65__CPSOverlayViewController_popToRootTemplateAnimated_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)popTemplateAnimated:(BOOL)a3 completion:(id)a4
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v9 = [(CPSOverlayViewController *)v13 popViewControllerAnimated:v11];
  v8 = v9 != 0;
  v7 = [(CPSOverlayViewController *)v13 transitionCoordinator];
  if (v7)
  {
    v4 = v7;
    v5 = MEMORY[0x277D82BE0](location);
    v6 = v8;
    [v4 animateAlongsideTransition:? completion:?];
    objc_storeStrong(&v5, 0);
  }

  else
  {
    (*(location + 2))(location, v8);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

void __59__CPSOverlayViewController_popTemplateAnimated_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)pushTemplateViewController:(id)a3 animated:(BOOL)a4 presentationStyle:(unint64_t)a5 completion:(id)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = a4;
  v20 = a5;
  v19 = 0;
  objc_storeStrong(&v19, a6);
  v14 = [(CPSOverlayViewController *)v23 view];
  v15 = [v14 isHidden];
  v6 = MEMORY[0x277D82BD8](v14);
  if (v15)
  {
    v10 = [(CPSOverlayViewController *)v23 view];
    [v10 setHidden:0];
    v6 = MEMORY[0x277D82BD8](v10);
  }

  if (v20)
  {
    if (v20 == 1)
    {
      v8 = v23;
      v24[0] = location[0];
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:{1, v6.n128_f64[0]}];
      [CPSOverlayViewController setViewControllers:v8 animated:"setViewControllers:animated:"];
      v6.n128_u64[0] = MEMORY[0x277D82BD8](v9).n128_u64[0];
    }

    else if (v20 == 2)
    {
      (*(v19 + 2))(v6);
      v18 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    [(CPSOverlayViewController *)v23 pushViewController:location[0] animated:v21, v6.n128_f64[0]];
  }

  [(CPSOverlayViewController *)v23 setNavigationBarHidden:0 animated:1, v6.n128_f64[0]];
  v17 = [(CPSOverlayViewController *)v23 transitionCoordinator];
  if (v17)
  {
    v7 = v17;
    v16 = MEMORY[0x277D82BE0](v19);
    [v7 animateAlongsideTransition:? completion:?];
    objc_storeStrong(&v16, 0);
  }

  else
  {
    (*(v19 + 2))();
  }

  [(CPSOverlayViewController *)v23 _updateVisibilityView];
  objc_storeStrong(&v17, 0);
  v18 = 0;
LABEL_14:
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

void __93__CPSOverlayViewController_pushTemplateViewController_animated_presentationStyle_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)presentTemplateViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v10 = [(CPSOverlayViewController *)v16 view];
  v11 = [v10 isHidden];
  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    v7 = [(CPSOverlayViewController *)v16 view];
    [v7 setHidden:0];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = objc_alloc(MEMORY[0x277D757A0]);
  v12 = [v6 initWithRootViewController:location[0]];
  [v12 setOverrideUserInterfaceStyle:{-[CPSOverlayViewController overrideUserInterfaceStyle](v16, "overrideUserInterfaceStyle")}];
  [v12 setModalPresentationStyle:0];
  [(CPSOverlayViewController *)v16 presentViewController:v12 animated:v14 completion:v13];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)presentActionSheetTemplate:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v9 = [(CPSOverlayViewController *)v16 view];
  v10 = [v9 isHidden];
  v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    v6 = [(CPSOverlayViewController *)v16 view];
    [v6 setHidden:0];
    v5 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  v12 = [CPSActionSheetController actionSheetControllerWithActionSheet:location[0], *&v5];
  if (v12)
  {
    oslog = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v17, location[0]);
      _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "Presenting action sheet template %@", v17, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(CPSOverlayViewController *)v16 presentViewController:v12 animated:v14 completion:v13];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (id)presentedTemplateViewController
{
  v10 = self;
  v9[1] = a2;
  v8 = [(CPSOverlayViewController *)self presentedViewController];
  MEMORY[0x277D82BD8](v8);
  if (v8)
  {
    v4 = objc_opt_class();
    v5 = [(CPSOverlayViewController *)v10 presentedViewController];
    v9[0] = CPSSafeCast_2(v4, v5);
    MEMORY[0x277D82BD8](v5);
    v6 = objc_opt_class();
    v7 = [v9[0] topViewController];
    v11 = CPSSafeCast_2(v6, v7);
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(v9, 0);
  }

  else
  {
    v11 = 0;
  }

  v2 = v11;

  return v2;
}

- (void)dismissTemplateAnimated:(BOOL)a3 completion:(id)a4
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v7 = [(CPSOverlayViewController *)v12 visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (isKindOfClass & 1) != 0 || (v5 = [(CPSOverlayViewController *)v12 visibleViewController], objc_opt_class(), v6 = objc_opt_isKindOfClass(), v4 = MEMORY[0x277D82BD8](v5).n128_u64[0], (v6))
  {
    [(CPSOverlayViewController *)v12 dismissViewControllerAnimated:v10 completion:location, *&v4];
  }

  objc_storeStrong(&location, 0);
}

- (id)topTemplate
{
  v6[2] = self;
  v6[1] = a2;
  v4 = [(CPSOverlayViewController *)self topViewController];
  v6[0] = CPSSafeProtocolCast(&unk_2855D67D8, v4);
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v5 = [v6[0] associatedTemplate];
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)templates
{
  v3 = [(CPSOverlayViewController *)self viewControllers];
  v4 = [v3 cps_map:&__block_literal_global_183];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

id __37__CPSOverlayViewController_templates__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5[1] = a1;
  v5[0] = CPSSafeProtocolCast(&unk_2855D67D8, location[0]);
  v4 = [v5[0] associatedTemplate];
  objc_storeStrong(v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)restoresFocusAfterTransition
{
  v3 = [(CPSOverlayViewController *)self topViewController];
  v4 = [v3 restoresFocusAfterTransition];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (id)preferredFocusEnvironments
{
  v12 = self;
  v11[1] = a2;
  v11[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(CPSOverlayViewController *)v12 usePreferredItemOnNextUpdate])
  {
    [(CPSOverlayViewController *)v12 setUsePreferredItemOnNextUpdate:0];
    [(CPSOverlayViewController *)v12 _resetRightHandDriveGuide];
    v10 = [(CPSOverlayViewController *)v12 preferredFocusItem];
    *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v10)
    {
      v9 = [(CPSOverlayViewController *)v12 preferredFocusItem];
      [v11[0] addObject:?];
      MEMORY[0x277D82BD8](v9);
    }
  }

  v8 = [(CPSOverlayViewController *)v12 topViewController];
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v8)
  {
    v7 = [(CPSOverlayViewController *)v12 topViewController];
    v6 = [v7 preferredFocusEnvironments];
    [v11[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  v5 = MEMORY[0x277D82BE0](v11[0]);
  objc_storeStrong(v11, 0);

  return v5;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v14 = [location[0] nextFocusedView];
  v16 = [v14 _window];
  v13 = [(CPSOverlayViewController *)v23 view];
  v15 = [v13 _window];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v16);
  *&v4 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v16 != v15)
  {
    [(CPSOverlayViewController *)v23 setUsePreferredItemOnNextUpdate:1, v4];
    if ([(CPSOverlayViewController *)v23 _useRightHandDriveFocusGuide])
    {
      v11 = [(CPSOverlayViewController *)v23 preferredFocusItem];
      v24[0] = v11;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v9 = [(CPSOverlayViewController *)v23 rightHandDriveGuide];
      [(UIFocusGuide *)v9 setPreferredFocusEnvironments:v10];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
    }
  }

  v7 = [location[0] nextFocusedView];
  v19 = 0;
  v17 = 0;
  v8 = 0;
  if (v7)
  {
    v20 = [location[0] nextFocusedView];
    v19 = 1;
    v18 = [(CPSOverlayViewController *)v23 view];
    v17 = 1;
    v8 = [v20 isDescendantOfView:?];
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  *&v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [location[0] nextFocusedItem];
    [(CPSOverlayViewController *)v23 setPreferredFocusItem:?];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (id)_firstFocusProvidingForViewController:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] conformsToProtocol:&unk_2855E1980])
  {
    v17 = MEMORY[0x277D82BE0](location[0]);
    v14 = 1;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    obj = [location[0] childViewControllers];
    v10 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(__b[1] + 8 * v7);
        v11 = [(CPSOverlayViewController *)v16 _firstFocusProvidingForViewController:v13];
        if (v11)
        {
          v17 = MEMORY[0x277D82BE0](v11);
          v14 = 1;
        }

        else
        {
          v14 = 0;
        }

        objc_storeStrong(&v11, 0);
        if (v14)
        {
          break;
        }

        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
          if (!v8)
          {
            goto LABEL_13;
          }
        }
      }
    }

    else
    {
LABEL_13:
      v14 = 0;
    }

    MEMORY[0x277D82BD8](obj);
    if (!v14)
    {
      v17 = 0;
      v14 = 1;
    }
  }

  objc_storeStrong(location, 0);
  v3 = v17;

  return v3;
}

- (id)_linearFocusMovementSequences
{
  v29[1] = *MEMORY[0x277D85DE8];
  v26 = self;
  v25[1] = a2;
  v11 = objc_opt_class();
  v12 = [(CPSOverlayViewController *)v26 topViewController];
  v25[0] = CPSSafeCast_2(v11, v12);
  v13 = [(CPSOverlayViewController *)v26 topViewController];
  v14 = [v13 conformsToProtocol:&unk_2855E1980];
  *&v2 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v14)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = objc_opt_class();
    v10 = [(CPSOverlayViewController *)v26 navigationBar];
    v23 = CPSSafeCast_2(v9, v10);
    v22 = [v23 _linearFocusItems];
    if ([v22 count])
    {
      [v24 addObjectsFromArray:v22];
    }

    v8 = [(CPSOverlayViewController *)v26 topViewController];
    v21 = CPSSafeProtocolCast(&unk_2855E1980, v8);
    v20 = [v21 _linearFocusItems];
    if ([v20 count])
    {
      [v24 addObjectsFromArray:v20];
    }

    v19 = [objc_alloc(MEMORY[0x277D75F88]) initWithItems:v24 loops:0];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v21 useRightHandDriveFocusGuide] & 1) == 0)
    {
      [(CPSOverlayViewController *)v26 _resetRightHandDriveGuide];
    }

    v29[0] = v19;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    v18 = 1;
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  else
  {
    if (!v25[0])
    {
      goto LABEL_18;
    }

    v7 = [v25[0] selectedViewController];
    v17 = [(CPSOverlayViewController *)v26 _firstFocusProvidingForViewController:?];
    MEMORY[0x277D82BD8](v7);
    if (v17)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5 = [v25[0] tabBarButtons];
      [v16 addObjectsFromArray:?];
      v6 = [v17 _linearFocusItems];
      [v16 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v6);
      v15 = [objc_alloc(MEMORY[0x277D75F88]) initWithItems:v16 loops:0];
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([v17 useRightHandDriveFocusGuide] & 1) == 0)
      {
        [(CPSOverlayViewController *)v26 _resetRightHandDriveGuide];
      }

      v28 = v15;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      v18 = 1;
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      v18 = 0;
    }

    objc_storeStrong(&v17, 0);
    if (!v18)
    {
LABEL_18:
      v27 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
      v18 = 1;
    }
  }

  objc_storeStrong(v25, 0);
  v3 = v27;

  return v3;
}

- (BOOL)_needsVisibilityView
{
  v4 = 0;
  v3 = 0;
  if ([(CPSOverlayViewController *)self pid]> 0)
  {
    v5 = [(CPSOverlayViewController *)self templates];
    v4 = 1;
    v3 = [v5 count] != 0;
  }

  if (v4)
  {
    MEMORY[0x277D82BD8](v5);
  }

  return v3;
}

- (void)_updateVisibilityView
{
  v72 = *MEMORY[0x277D85DE8];
  v67 = self;
  v66 = a2;
  v41 = [(CPSOverlayViewController *)self visibilityView];
  v65 = [(_UINonHostingVisibilityPropagationView *)v41 pid];
  v64 = [(CPSOverlayViewController *)v67 pid];
  v2 = [(CPSOverlayViewController *)v67 visibilityView];
  v63 = v2 != 0;
  v62 = [(CPSOverlayViewController *)v67 _needsVisibilityView];
  v61 = v65 != v64;
  v42 = [(CPSOverlayViewController *)v67 environmentProvider];
  v60 = [(CPSVisibilityEnvironmentProviding *)v42 visibilityEnvironmentIdentifier];
  v3 = MEMORY[0x277D82BD8](v42).n128_u64[0];
  if (!v60)
  {
    v35 = MEMORY[0x277CCACA8];
    v40 = [(CPSOverlayViewController *)v67 view];
    v39 = [v40 window];
    v38 = [v39 windowScene];
    v37 = [v38 _FBSScene];
    v36 = [v37 identifier];
    v60 = [v35 stringWithFormat:@"CPTUIH-Overlay-%d-%@", v64, v36];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    v3 = MEMORY[0x277D82BD8](v40).n128_u64[0];
  }

  v57 = 0;
  v55 = 0;
  v34 = 0;
  if (v63)
  {
    v58 = [(CPSOverlayViewController *)v67 visibilityView];
    v57 = 1;
    v56 = [(_UINonHostingVisibilityPropagationView *)v58 environmentIdentifier];
    v55 = 1;
    v34 = [v60 isEqualToString:?];
  }

  if (v55)
  {
    MEMORY[0x277D82BD8](v56);
  }

  if (v57)
  {
    MEMORY[0x277D82BD8](v58);
  }

  v59 = v34 & 1;
  v33 = 0;
  if (v63)
  {
    v33 = 0;
    if (v65 == v64)
    {
      v33 = v59;
    }
  }

  v54 = v33;
  if (v62 || !v63)
  {
    if (v61 && v63)
    {
      v51 = CarPlaySupportGeneralLogging();
      v50 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_2(v70, v65);
        _os_log_impl(&dword_242FE8000, v51, v50, "Removing visibility view for invalid pid: %{public}d", v70, 8u);
      }

      objc_storeStrong(&v51, 0);
      [(CPSOverlayViewController *)v67 _invalidateVisibilityView];
    }
  }

  else
  {
    location = CarPlaySupportGeneralLogging();
    v52 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_2(v71, v65);
      _os_log_impl(&dword_242FE8000, location, v52, "Removing visibility view for pid: %{public}d, not considered visible", v71, 8u);
    }

    objc_storeStrong(&location, 0);
    [(CPSOverlayViewController *)v67 _invalidateVisibilityView];
  }

  if (v62 && (v54 & 1) == 0)
  {
    v49 = CarPlaySupportGeneralLogging();
    v48 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_2(v69, v64);
      _os_log_impl(&dword_242FE8000, v49, v48, "Client needs visibility view, installing for pid: %{public}d", v69, 8u);
    }

    objc_storeStrong(&v49, 0);
    v31 = [(CPSOverlayViewController *)v67 view];
    v32 = [v31 window];
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v31);
    if (v32)
    {
      v4 = objc_alloc(MEMORY[0x277D76130]);
      v47 = [v4 initWithFrame:v64 pid:v60 environmentIdentifier:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CPSOverlayViewController *)v67 setVisibilityView:v47];
      v10 = [(CPSOverlayViewController *)v67 view];
      v9 = [v10 window];
      [v9 insertSubview:v47 atIndex:0];
      MEMORY[0x277D82BD8](v9);
      *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
      v30 = [(CPSOverlayViewController *)v67 view];
      v29 = [v30 window];
      v28 = [v29 topAnchor];
      v27 = [v47 topAnchor];
      v26 = [v28 constraintEqualToAnchor:?];
      v68[0] = v26;
      v25 = [(CPSOverlayViewController *)v67 view];
      v24 = [v25 window];
      v23 = [v24 leftAnchor];
      v22 = [v47 leftAnchor];
      v21 = [v23 constraintEqualToAnchor:?];
      v68[1] = v21;
      v20 = [(CPSOverlayViewController *)v67 view];
      v19 = [v20 window];
      v18 = [v19 rightAnchor];
      v17 = [v47 rightAnchor];
      v16 = [v18 constraintEqualToAnchor:?];
      v68[2] = v16;
      v15 = [(CPSOverlayViewController *)v67 view];
      v14 = [v15 window];
      v13 = [v14 bottomAnchor];
      v12 = [v47 bottomAnchor];
      v11 = [v13 constraintEqualToAnchor:?];
      v68[3] = v11;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      *&v6 = MEMORY[0x277D82BD8](v30).n128_u64[0];
      [MEMORY[0x277CCAAD0] activateConstraints:{v46, v6}];
      objc_storeStrong(&v46, 0);
      objc_storeStrong(&v47, 0);
    }

    else
    {
      v45 = CarPlaySupportGeneralLogging();
      v44 = 16;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v7 = v45;
        v8 = v44;
        __os_log_helper_16_0_0(v43);
        _os_log_error_impl(&dword_242FE8000, v7, v8, "No window available to install visibility view", v43, 2u);
      }

      objc_storeStrong(&v45, 0);
    }
  }

  objc_storeStrong(&v60, 0);
}

- (UIFocusItem)preferredFocusItem
{
  WeakRetained = objc_loadWeakRetained(&self->preferredFocusItem);

  return WeakRetained;
}

- (CPSVisibilityEnvironmentProviding)environmentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_environmentProvider);

  return WeakRetained;
}

@end