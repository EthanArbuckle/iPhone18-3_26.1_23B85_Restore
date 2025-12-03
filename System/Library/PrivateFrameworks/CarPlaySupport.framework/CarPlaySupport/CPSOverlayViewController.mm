@interface CPSOverlayViewController
- (BOOL)_needsVisibilityView;
- (BOOL)_useRightHandDriveFocusGuide;
- (BOOL)restoresFocusAfterTransition;
- (BOOL)shouldHideNavigationBarForViewController:(id)controller;
- (CPSVisibilityEnvironmentProviding)environmentProvider;
- (UIFocusGuide)rightHandDriveGuide;
- (UIFocusItem)preferredFocusItem;
- (id)_firstFocusProvidingForViewController:(id)controller;
- (id)_linearFocusMovementSequences;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (id)popToViewController:(id)controller animated:(BOOL)animated;
- (id)popViewControllerAnimated:(BOOL)animated;
- (id)preferredFocusEnvironments;
- (id)presentedTemplateViewController;
- (id)templates;
- (id)topTemplate;
- (id)viewControllerForTemplate:(id)template;
- (unint64_t)indexOfTemplate:(id)template;
- (void)_resetRightHandDriveGuide;
- (void)_updateVisibilityView;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)dismissTemplateAnimated:(BOOL)animated completion:(id)completion;
- (void)invalidate;
- (void)popTemplateAnimated:(BOOL)animated completion:(id)completion;
- (void)popToRootTemplateAnimated:(BOOL)animated completion:(id)completion;
- (void)popToTemplate:(id)template animated:(BOOL)animated completion:(id)completion;
- (void)presentActionSheetTemplate:(id)template animated:(BOOL)animated completion:(id)completion;
- (void)presentTemplateViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)pushTemplateViewController:(id)controller animated:(BOOL)animated presentationStyle:(unint64_t)style completion:(id)completion;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation CPSOverlayViewController

- (BOOL)_useRightHandDriveFocusGuide
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = 0;
  v8 = objc_opt_class();
  topViewController = [(CPSOverlayViewController *)selfCopy topViewController];
  location = CPSSafeCast_2(v8, topViewController);
  MEMORY[0x277D82BD8](topViewController);
  topViewController2 = [(CPSOverlayViewController *)selfCopy topViewController];
  v11 = [topViewController2 conformsToProtocol:&unk_2855E1980];
  MEMORY[0x277D82BD8](topViewController2);
  if (v11)
  {
    topViewController3 = [(CPSOverlayViewController *)selfCopy topViewController];
    v3 = v13[0];
    v13[0] = topViewController3;
    MEMORY[0x277D82BD8](v3);
  }

  else if (location)
  {
    selectedViewController = [location selectedViewController];
    v4 = [(CPSOverlayViewController *)selfCopy _firstFocusProvidingForViewController:?];
    v5 = v13[0];
    v13[0] = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](selectedViewController);
  }

  v15 = (objc_opt_respondsToSelector() & 1) != 0 && ([v13[0] useRightHandDriveFocusGuide] & 1) != 0;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v13, 0);
  return v15;
}

- (void)invalidate
{
  [(CPSOverlayViewController *)self _invalidateVisibilityView];
  viewControllers = [(CPSOverlayViewController *)self viewControllers];
  [viewControllers enumerateObjectsUsingBlock:&__block_literal_global_0];
  MEMORY[0x277D82BD8](viewControllers);
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = CPSOverlayViewController;
  [(CPSOverlayViewController *)&v3 viewDidAppear:appear];
  [(CPSOverlayViewController *)selfCopy _updateVisibilityView];
}

- (void)viewDidLoad
{
  v23[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v21 = a2;
  v20.receiver = self;
  v20.super_class = CPSOverlayViewController;
  [(CPSOverlayViewController *)&v20 viewDidLoad];
  view = [(CPSOverlayViewController *)selfCopy view];
  v2 = [_CPSOverlayTouchBlockingView alloc];
  v18 = [(_CPSOverlayTouchBlockingView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(_CPSOverlayTouchBlockingView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_CPSOverlayTouchBlockingView *)v18 setUserInteractionEnabled:1];
  if (_UISolariumEnabled())
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [view setBackgroundColor:?];
    MEMORY[0x277D82BD8](clearColor);
  }

  [view insertSubview:v18 atIndex:0];
  topAnchor = [view topAnchor];
  topAnchor2 = [(_CPSOverlayTouchBlockingView *)v18 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:?];
  v23[0] = v13;
  leftAnchor = [view leftAnchor];
  leftAnchor2 = [(_CPSOverlayTouchBlockingView *)v18 leftAnchor];
  v10 = [leftAnchor constraintEqualToAnchor:?];
  v23[1] = v10;
  rightAnchor = [view rightAnchor];
  rightAnchor2 = [(_CPSOverlayTouchBlockingView *)v18 rightAnchor];
  v7 = [rightAnchor constraintEqualToAnchor:?];
  v23[2] = v7;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [(_CPSOverlayTouchBlockingView *)v18 bottomAnchor];
  v4 = [bottomAnchor constraintEqualToAnchor:?];
  v23[3] = v4;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](rightAnchor2);
  MEMORY[0x277D82BD8](rightAnchor);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](leftAnchor2);
  MEMORY[0x277D82BD8](leftAnchor);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](topAnchor2);
  *&v3 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v17, v3}];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&view, 0);
}

- (UIFocusGuide)rightHandDriveGuide
{
  v28[4] = *MEMORY[0x277D85DE8];
  if (!self->_rightHandDriveGuide)
  {
    v2 = objc_alloc_init(MEMORY[0x277D75500]);
    rightHandDriveGuide = self->_rightHandDriveGuide;
    self->_rightHandDriveGuide = v2;
    view = [(CPSOverlayViewController *)self view];
    rightHandDriveGuide = [(CPSOverlayViewController *)self rightHandDriveGuide];
    [view addLayoutGuide:?];
    MEMORY[0x277D82BD8](rightHandDriveGuide);
    *&v4 = MEMORY[0x277D82BD8](view).n128_u64[0];
    v9 = MEMORY[0x277CCAAD0];
    rightHandDriveGuide2 = [(CPSOverlayViewController *)self rightHandDriveGuide];
    rightAnchor = [(UIFocusGuide *)rightHandDriveGuide2 rightAnchor];
    view2 = [(CPSOverlayViewController *)self view];
    rightAnchor2 = [view2 rightAnchor];
    v22 = [rightAnchor constraintEqualToAnchor:?];
    v28[0] = v22;
    rightHandDriveGuide3 = [(CPSOverlayViewController *)self rightHandDriveGuide];
    bottomAnchor = [(UIFocusGuide *)rightHandDriveGuide3 bottomAnchor];
    view3 = [(CPSOverlayViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:?];
    v28[1] = v17;
    rightHandDriveGuide4 = [(CPSOverlayViewController *)self rightHandDriveGuide];
    heightAnchor = [(UIFocusGuide *)rightHandDriveGuide4 heightAnchor];
    v14 = [heightAnchor constraintEqualToConstant:?];
    v28[2] = v14;
    rightHandDriveGuide5 = [(CPSOverlayViewController *)self rightHandDriveGuide];
    widthAnchor = [(UIFocusGuide *)rightHandDriveGuide5 widthAnchor];
    v11 = [widthAnchor constraintEqualToConstant:1.0];
    v28[3] = v11;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v9 activateConstraints:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](widthAnchor);
    MEMORY[0x277D82BD8](rightHandDriveGuide5);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](rightHandDriveGuide4);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](view3);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](rightHandDriveGuide3);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](rightAnchor2);
    MEMORY[0x277D82BD8](view2);
    MEMORY[0x277D82BD8](rightAnchor);
    MEMORY[0x277D82BD8](rightHandDriveGuide2);
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

- (BOOL)shouldHideNavigationBarForViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 1;
    v16 = 1;
  }

  else
  {
    viewControllers = [(CPSOverlayViewController *)selfCopy viewControllers];
    firstObject = [viewControllers firstObject];
    v12 = [firstObject isEqual:location[0]];
    MEMORY[0x277D82BD8](firstObject);
    MEMORY[0x277D82BD8](viewControllers);
    if (v12)
    {
      v3 = objc_opt_class();
      v15 = CPSSafeCast_2(v3, location[0]);
      navigationItem = [v15 navigationItem];
      title = [navigationItem title];
      *&v4 = MEMORY[0x277D82BD8](navigationItem).n128_u64[0];
      if (title && [title length])
      {
        v19 = 0;
        v16 = 1;
      }

      else
      {
        v7 = objc_opt_class();
        associatedTemplate = [v15 associatedTemplate];
        v13 = CPSSafeCast_2(v7, associatedTemplate);
        *&v5 = MEMORY[0x277D82BD8](associatedTemplate).n128_u64[0];
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

      objc_storeStrong(&title, 0);
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

- (id)popViewControllerAnimated:(BOOL)animated
{
  selfCopy = self;
  v8 = a2;
  animatedCopy = animated;
  v5.receiver = self;
  v5.super_class = CPSOverlayViewController;
  v6 = [(CPSOverlayViewController *)&v5 popViewControllerAnimated:animated];
  [v6 _cps_viewControllerWasPopped];
  v4 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);

  return v4;
}

- (id)popToViewController:(id)controller animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  animatedCopy = animated;
  v7.receiver = selfCopy;
  v7.super_class = CPSOverlayViewController;
  v8 = [(CPSOverlayViewController *)&v7 popToViewController:location[0] animated:animated];
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

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  selfCopy = self;
  v8 = a2;
  animatedCopy = animated;
  v5.receiver = self;
  v5.super_class = CPSOverlayViewController;
  v6 = [(CPSOverlayViewController *)&v5 popToRootViewControllerAnimated:animated];
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

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controllers);
  animatedCopy = animated;
  memset(__b, 0, sizeof(__b));
  obj = [(CPSOverlayViewController *)selfCopy viewControllers];
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
      parentViewController = [v24 parentViewController];
      v13 = selfCopy;
      *&v4 = MEMORY[0x277D82BD8](parentViewController).n128_u64[0];
      if (parentViewController == v13)
      {
        view = [v24 view];
        [view removeFromSuperview];
        *&v5 = MEMORY[0x277D82BD8](view).n128_u64[0];
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
  v9 = selfCopy;
  v10 = location[0];
  viewControllers = [(CPSOverlayViewController *)selfCopy viewControllers];
  if ([viewControllers count])
  {
    v8 = animatedCopy;
  }

  else
  {
    v8 = 0;
  }

  v22.receiver = v9;
  v22.super_class = CPSOverlayViewController;
  [(CPSOverlayViewController *)&v22 setViewControllers:v10 animated:v8 != 0];
  *&v7 = MEMORY[0x277D82BD8](viewControllers).n128_u64[0];
  [(CPSOverlayViewController *)selfCopy _updateVisibilityView];
  objc_storeStrong(location, 0);
}

- (unint64_t)indexOfTemplate:(id)template
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  viewControllers = [(CPSOverlayViewController *)selfCopy viewControllers];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __44__CPSOverlayViewController_indexOfTemplate___block_invoke;
  v10 = &unk_278D91690;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v5 = [viewControllers indexOfObjectPassingTest:?];
  objc_storeStrong(&v11, 0);
  MEMORY[0x277D82BD8](viewControllers);
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

- (id)viewControllerForTemplate:(id)template
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v6 = [(CPSOverlayViewController *)selfCopy indexOfTemplate:location[0]];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    viewControllers = [(CPSOverlayViewController *)selfCopy viewControllers];
    v9 = [viewControllers objectAtIndexedSubscript:v6];
    MEMORY[0x277D82BD8](viewControllers);
  }

  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

- (void)popToTemplate:(id)template animated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  animatedCopy = animated;
  v12 = 0;
  objc_storeStrong(&v12, completion);
  v11 = [(CPSOverlayViewController *)selfCopy viewControllerForTemplate:location[0]];
  if (v11)
  {
    v5 = [(CPSOverlayViewController *)selfCopy popToViewController:v11 animated:animatedCopy];
    if (animatedCopy)
    {
      transitionCoordinator = [(CPSOverlayViewController *)selfCopy transitionCoordinator];
      v6 = transitionCoordinator;
      v9 = MEMORY[0x277D82BE0](v12);
      [v6 animateAlongsideTransition:? completion:?];
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&transitionCoordinator, 0);
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

- (void)popToRootTemplateAnimated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  v12 = a2;
  animatedCopy = animated;
  location = 0;
  objc_storeStrong(&location, completion);
  v9 = [(CPSOverlayViewController *)selfCopy popToRootViewControllerAnimated:animatedCopy];
  v8 = [v9 count] != 0;
  if (location)
  {
    transitionCoordinator = [(CPSOverlayViewController *)selfCopy transitionCoordinator];
    if (transitionCoordinator)
    {
      v4 = transitionCoordinator;
      v5 = MEMORY[0x277D82BE0](location);
      v6 = v8;
      [v4 animateAlongsideTransition:? completion:?];
      objc_storeStrong(&v5, 0);
    }

    else
    {
      (*(location + 2))(location, v8);
    }

    objc_storeStrong(&transitionCoordinator, 0);
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

- (void)popTemplateAnimated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  v12 = a2;
  animatedCopy = animated;
  location = 0;
  objc_storeStrong(&location, completion);
  v9 = [(CPSOverlayViewController *)selfCopy popViewControllerAnimated:animatedCopy];
  v8 = v9 != 0;
  transitionCoordinator = [(CPSOverlayViewController *)selfCopy transitionCoordinator];
  if (transitionCoordinator)
  {
    v4 = transitionCoordinator;
    v5 = MEMORY[0x277D82BE0](location);
    v6 = v8;
    [v4 animateAlongsideTransition:? completion:?];
    objc_storeStrong(&v5, 0);
  }

  else
  {
    (*(location + 2))(location, v8);
  }

  objc_storeStrong(&transitionCoordinator, 0);
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

- (void)pushTemplateViewController:(id)controller animated:(BOOL)animated presentationStyle:(unint64_t)style completion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  animatedCopy = animated;
  styleCopy = style;
  v19 = 0;
  objc_storeStrong(&v19, completion);
  view = [(CPSOverlayViewController *)selfCopy view];
  isHidden = [view isHidden];
  v6 = MEMORY[0x277D82BD8](view);
  if (isHidden)
  {
    view2 = [(CPSOverlayViewController *)selfCopy view];
    [view2 setHidden:0];
    v6 = MEMORY[0x277D82BD8](view2);
  }

  if (styleCopy)
  {
    if (styleCopy == 1)
    {
      v8 = selfCopy;
      v24[0] = location[0];
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:{1, v6.n128_f64[0]}];
      [CPSOverlayViewController setViewControllers:v8 animated:"setViewControllers:animated:"];
      v6.n128_u64[0] = MEMORY[0x277D82BD8](v9).n128_u64[0];
    }

    else if (styleCopy == 2)
    {
      (*(v19 + 2))(v6);
      v18 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    [(CPSOverlayViewController *)selfCopy pushViewController:location[0] animated:animatedCopy, v6.n128_f64[0]];
  }

  [(CPSOverlayViewController *)selfCopy setNavigationBarHidden:0 animated:1, v6.n128_f64[0]];
  transitionCoordinator = [(CPSOverlayViewController *)selfCopy transitionCoordinator];
  if (transitionCoordinator)
  {
    v7 = transitionCoordinator;
    v16 = MEMORY[0x277D82BE0](v19);
    [v7 animateAlongsideTransition:? completion:?];
    objc_storeStrong(&v16, 0);
  }

  else
  {
    (*(v19 + 2))();
  }

  [(CPSOverlayViewController *)selfCopy _updateVisibilityView];
  objc_storeStrong(&transitionCoordinator, 0);
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

- (void)presentTemplateViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  animatedCopy = animated;
  v13 = 0;
  objc_storeStrong(&v13, completion);
  view = [(CPSOverlayViewController *)selfCopy view];
  isHidden = [view isHidden];
  *&v5 = MEMORY[0x277D82BD8](view).n128_u64[0];
  if (isHidden)
  {
    view2 = [(CPSOverlayViewController *)selfCopy view];
    [view2 setHidden:0];
    MEMORY[0x277D82BD8](view2);
  }

  v6 = objc_alloc(MEMORY[0x277D757A0]);
  v12 = [v6 initWithRootViewController:location[0]];
  [v12 setOverrideUserInterfaceStyle:{-[CPSOverlayViewController overrideUserInterfaceStyle](selfCopy, "overrideUserInterfaceStyle")}];
  [v12 setModalPresentationStyle:0];
  [(CPSOverlayViewController *)selfCopy presentViewController:v12 animated:animatedCopy completion:v13];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)presentActionSheetTemplate:(id)template animated:(BOOL)animated completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  animatedCopy = animated;
  v13 = 0;
  objc_storeStrong(&v13, completion);
  view = [(CPSOverlayViewController *)selfCopy view];
  isHidden = [view isHidden];
  v5 = MEMORY[0x277D82BD8](view).n128_u64[0];
  if (isHidden)
  {
    view2 = [(CPSOverlayViewController *)selfCopy view];
    [view2 setHidden:0];
    v5 = MEMORY[0x277D82BD8](view2).n128_u64[0];
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
    [(CPSOverlayViewController *)selfCopy presentViewController:v12 animated:animatedCopy completion:v13];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (id)presentedTemplateViewController
{
  selfCopy = self;
  v9[1] = a2;
  presentedViewController = [(CPSOverlayViewController *)self presentedViewController];
  MEMORY[0x277D82BD8](presentedViewController);
  if (presentedViewController)
  {
    v4 = objc_opt_class();
    presentedViewController2 = [(CPSOverlayViewController *)selfCopy presentedViewController];
    v9[0] = CPSSafeCast_2(v4, presentedViewController2);
    MEMORY[0x277D82BD8](presentedViewController2);
    v6 = objc_opt_class();
    topViewController = [v9[0] topViewController];
    v11 = CPSSafeCast_2(v6, topViewController);
    MEMORY[0x277D82BD8](topViewController);
    objc_storeStrong(v9, 0);
  }

  else
  {
    v11 = 0;
  }

  v2 = v11;

  return v2;
}

- (void)dismissTemplateAnimated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  v11 = a2;
  animatedCopy = animated;
  location = 0;
  objc_storeStrong(&location, completion);
  visibleViewController = [(CPSOverlayViewController *)selfCopy visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = MEMORY[0x277D82BD8](visibleViewController).n128_u64[0];
  if (isKindOfClass & 1) != 0 || (v5 = [(CPSOverlayViewController *)selfCopy visibleViewController], objc_opt_class(), v6 = objc_opt_isKindOfClass(), v4 = MEMORY[0x277D82BD8](v5).n128_u64[0], (v6))
  {
    [(CPSOverlayViewController *)selfCopy dismissViewControllerAnimated:animatedCopy completion:location, *&v4];
  }

  objc_storeStrong(&location, 0);
}

- (id)topTemplate
{
  v6[2] = self;
  v6[1] = a2;
  topViewController = [(CPSOverlayViewController *)self topViewController];
  v6[0] = CPSSafeProtocolCast(&unk_2855D67D8, topViewController);
  *&v2 = MEMORY[0x277D82BD8](topViewController).n128_u64[0];
  associatedTemplate = [v6[0] associatedTemplate];
  objc_storeStrong(v6, 0);

  return associatedTemplate;
}

- (id)templates
{
  viewControllers = [(CPSOverlayViewController *)self viewControllers];
  v4 = [viewControllers cps_map:&__block_literal_global_183];
  MEMORY[0x277D82BD8](viewControllers);

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
  topViewController = [(CPSOverlayViewController *)self topViewController];
  restoresFocusAfterTransition = [topViewController restoresFocusAfterTransition];
  MEMORY[0x277D82BD8](topViewController);
  return restoresFocusAfterTransition;
}

- (id)preferredFocusEnvironments
{
  selfCopy = self;
  v11[1] = a2;
  v11[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(CPSOverlayViewController *)selfCopy usePreferredItemOnNextUpdate])
  {
    [(CPSOverlayViewController *)selfCopy setUsePreferredItemOnNextUpdate:0];
    [(CPSOverlayViewController *)selfCopy _resetRightHandDriveGuide];
    preferredFocusItem = [(CPSOverlayViewController *)selfCopy preferredFocusItem];
    *&v2 = MEMORY[0x277D82BD8](preferredFocusItem).n128_u64[0];
    if (preferredFocusItem)
    {
      preferredFocusItem2 = [(CPSOverlayViewController *)selfCopy preferredFocusItem];
      [v11[0] addObject:?];
      MEMORY[0x277D82BD8](preferredFocusItem2);
    }
  }

  topViewController = [(CPSOverlayViewController *)selfCopy topViewController];
  *&v3 = MEMORY[0x277D82BD8](topViewController).n128_u64[0];
  if (topViewController)
  {
    topViewController2 = [(CPSOverlayViewController *)selfCopy topViewController];
    preferredFocusEnvironments = [topViewController2 preferredFocusEnvironments];
    [v11[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](preferredFocusEnvironments);
    MEMORY[0x277D82BD8](topViewController2);
  }

  v5 = MEMORY[0x277D82BE0](v11[0]);
  objc_storeStrong(v11, 0);

  return v5;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v24[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v21 = 0;
  objc_storeStrong(&v21, coordinator);
  nextFocusedView = [location[0] nextFocusedView];
  _window = [nextFocusedView _window];
  view = [(CPSOverlayViewController *)selfCopy view];
  _window2 = [view _window];
  MEMORY[0x277D82BD8](_window2);
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](_window);
  *&v4 = MEMORY[0x277D82BD8](nextFocusedView).n128_u64[0];
  if (_window != _window2)
  {
    [(CPSOverlayViewController *)selfCopy setUsePreferredItemOnNextUpdate:1, v4];
    if ([(CPSOverlayViewController *)selfCopy _useRightHandDriveFocusGuide])
    {
      preferredFocusItem = [(CPSOverlayViewController *)selfCopy preferredFocusItem];
      v24[0] = preferredFocusItem;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      rightHandDriveGuide = [(CPSOverlayViewController *)selfCopy rightHandDriveGuide];
      [(UIFocusGuide *)rightHandDriveGuide setPreferredFocusEnvironments:v10];
      MEMORY[0x277D82BD8](rightHandDriveGuide);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](preferredFocusItem);
    }
  }

  nextFocusedView2 = [location[0] nextFocusedView];
  v19 = 0;
  v17 = 0;
  v8 = 0;
  if (nextFocusedView2)
  {
    nextFocusedView3 = [location[0] nextFocusedView];
    v19 = 1;
    view2 = [(CPSOverlayViewController *)selfCopy view];
    v17 = 1;
    v8 = [nextFocusedView3 isDescendantOfView:?];
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](view2);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](nextFocusedView3);
  }

  *&v5 = MEMORY[0x277D82BD8](nextFocusedView2).n128_u64[0];
  if (v8)
  {
    nextFocusedItem = [location[0] nextFocusedItem];
    [(CPSOverlayViewController *)selfCopy setPreferredFocusItem:?];
    MEMORY[0x277D82BD8](nextFocusedItem);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (id)_firstFocusProvidingForViewController:(id)controller
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
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
        v11 = [(CPSOverlayViewController *)selfCopy _firstFocusProvidingForViewController:v13];
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
  selfCopy = self;
  v25[1] = a2;
  v11 = objc_opt_class();
  topViewController = [(CPSOverlayViewController *)selfCopy topViewController];
  v25[0] = CPSSafeCast_2(v11, topViewController);
  topViewController2 = [(CPSOverlayViewController *)selfCopy topViewController];
  v14 = [topViewController2 conformsToProtocol:&unk_2855E1980];
  *&v2 = MEMORY[0x277D82BD8](topViewController2).n128_u64[0];
  if (v14)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = objc_opt_class();
    navigationBar = [(CPSOverlayViewController *)selfCopy navigationBar];
    v23 = CPSSafeCast_2(v9, navigationBar);
    _linearFocusItems = [v23 _linearFocusItems];
    if ([_linearFocusItems count])
    {
      [v24 addObjectsFromArray:_linearFocusItems];
    }

    topViewController3 = [(CPSOverlayViewController *)selfCopy topViewController];
    v21 = CPSSafeProtocolCast(&unk_2855E1980, topViewController3);
    _linearFocusItems2 = [v21 _linearFocusItems];
    if ([_linearFocusItems2 count])
    {
      [v24 addObjectsFromArray:_linearFocusItems2];
    }

    v19 = [objc_alloc(MEMORY[0x277D75F88]) initWithItems:v24 loops:0];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v21 useRightHandDriveFocusGuide] & 1) == 0)
    {
      [(CPSOverlayViewController *)selfCopy _resetRightHandDriveGuide];
    }

    v29[0] = v19;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    v18 = 1;
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&_linearFocusItems2, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&_linearFocusItems, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  else
  {
    if (!v25[0])
    {
      goto LABEL_18;
    }

    selectedViewController = [v25[0] selectedViewController];
    v17 = [(CPSOverlayViewController *)selfCopy _firstFocusProvidingForViewController:?];
    MEMORY[0x277D82BD8](selectedViewController);
    if (v17)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      tabBarButtons = [v25[0] tabBarButtons];
      [v16 addObjectsFromArray:?];
      _linearFocusItems3 = [v17 _linearFocusItems];
      [v16 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](_linearFocusItems3);
      v15 = [objc_alloc(MEMORY[0x277D75F88]) initWithItems:v16 loops:0];
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([v17 useRightHandDriveFocusGuide] & 1) == 0)
      {
        [(CPSOverlayViewController *)selfCopy _resetRightHandDriveGuide];
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
    templates = [(CPSOverlayViewController *)self templates];
    v4 = 1;
    v3 = [templates count] != 0;
  }

  if (v4)
  {
    MEMORY[0x277D82BD8](templates);
  }

  return v3;
}

- (void)_updateVisibilityView
{
  v72 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v66 = a2;
  visibilityView = [(CPSOverlayViewController *)self visibilityView];
  v65 = [(_UINonHostingVisibilityPropagationView *)visibilityView pid];
  v64 = [(CPSOverlayViewController *)selfCopy pid];
  visibilityView2 = [(CPSOverlayViewController *)selfCopy visibilityView];
  v63 = visibilityView2 != 0;
  _needsVisibilityView = [(CPSOverlayViewController *)selfCopy _needsVisibilityView];
  v61 = v65 != v64;
  environmentProvider = [(CPSOverlayViewController *)selfCopy environmentProvider];
  visibilityEnvironmentIdentifier = [(CPSVisibilityEnvironmentProviding *)environmentProvider visibilityEnvironmentIdentifier];
  v3 = MEMORY[0x277D82BD8](environmentProvider).n128_u64[0];
  if (!visibilityEnvironmentIdentifier)
  {
    v35 = MEMORY[0x277CCACA8];
    view = [(CPSOverlayViewController *)selfCopy view];
    window = [view window];
    windowScene = [window windowScene];
    _FBSScene = [windowScene _FBSScene];
    identifier = [_FBSScene identifier];
    visibilityEnvironmentIdentifier = [v35 stringWithFormat:@"CPTUIH-Overlay-%d-%@", v64, identifier];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](_FBSScene);
    MEMORY[0x277D82BD8](windowScene);
    MEMORY[0x277D82BD8](window);
    v3 = MEMORY[0x277D82BD8](view).n128_u64[0];
  }

  v57 = 0;
  v55 = 0;
  v34 = 0;
  if (v63)
  {
    visibilityView3 = [(CPSOverlayViewController *)selfCopy visibilityView];
    v57 = 1;
    environmentIdentifier = [(_UINonHostingVisibilityPropagationView *)visibilityView3 environmentIdentifier];
    v55 = 1;
    v34 = [visibilityEnvironmentIdentifier isEqualToString:?];
  }

  if (v55)
  {
    MEMORY[0x277D82BD8](environmentIdentifier);
  }

  if (v57)
  {
    MEMORY[0x277D82BD8](visibilityView3);
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
  if (_needsVisibilityView || !v63)
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
      [(CPSOverlayViewController *)selfCopy _invalidateVisibilityView];
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
    [(CPSOverlayViewController *)selfCopy _invalidateVisibilityView];
  }

  if (_needsVisibilityView && (v54 & 1) == 0)
  {
    v49 = CarPlaySupportGeneralLogging();
    v48 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_2(v69, v64);
      _os_log_impl(&dword_242FE8000, v49, v48, "Client needs visibility view, installing for pid: %{public}d", v69, 8u);
    }

    objc_storeStrong(&v49, 0);
    view2 = [(CPSOverlayViewController *)selfCopy view];
    window2 = [view2 window];
    MEMORY[0x277D82BD8](window2);
    MEMORY[0x277D82BD8](view2);
    if (window2)
    {
      v4 = objc_alloc(MEMORY[0x277D76130]);
      v47 = [v4 initWithFrame:v64 pid:visibilityEnvironmentIdentifier environmentIdentifier:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CPSOverlayViewController *)selfCopy setVisibilityView:v47];
      view3 = [(CPSOverlayViewController *)selfCopy view];
      window3 = [view3 window];
      [window3 insertSubview:v47 atIndex:0];
      MEMORY[0x277D82BD8](window3);
      *&v5 = MEMORY[0x277D82BD8](view3).n128_u64[0];
      view4 = [(CPSOverlayViewController *)selfCopy view];
      window4 = [view4 window];
      topAnchor = [window4 topAnchor];
      topAnchor2 = [v47 topAnchor];
      v26 = [topAnchor constraintEqualToAnchor:?];
      v68[0] = v26;
      view5 = [(CPSOverlayViewController *)selfCopy view];
      window5 = [view5 window];
      leftAnchor = [window5 leftAnchor];
      leftAnchor2 = [v47 leftAnchor];
      v21 = [leftAnchor constraintEqualToAnchor:?];
      v68[1] = v21;
      view6 = [(CPSOverlayViewController *)selfCopy view];
      window6 = [view6 window];
      rightAnchor = [window6 rightAnchor];
      rightAnchor2 = [v47 rightAnchor];
      v16 = [rightAnchor constraintEqualToAnchor:?];
      v68[2] = v16;
      view7 = [(CPSOverlayViewController *)selfCopy view];
      window7 = [view7 window];
      bottomAnchor = [window7 bottomAnchor];
      bottomAnchor2 = [v47 bottomAnchor];
      v11 = [bottomAnchor constraintEqualToAnchor:?];
      v68[3] = v11;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](bottomAnchor2);
      MEMORY[0x277D82BD8](bottomAnchor);
      MEMORY[0x277D82BD8](window7);
      MEMORY[0x277D82BD8](view7);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](rightAnchor2);
      MEMORY[0x277D82BD8](rightAnchor);
      MEMORY[0x277D82BD8](window6);
      MEMORY[0x277D82BD8](view6);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](leftAnchor2);
      MEMORY[0x277D82BD8](leftAnchor);
      MEMORY[0x277D82BD8](window5);
      MEMORY[0x277D82BD8](view5);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](topAnchor2);
      MEMORY[0x277D82BD8](topAnchor);
      MEMORY[0x277D82BD8](window4);
      *&v6 = MEMORY[0x277D82BD8](view4).n128_u64[0];
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

  objc_storeStrong(&visibilityEnvironmentIdentifier, 0);
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