@interface TKContainerViewController
- (unint64_t)edgesForExtendedLayout;
- (void)dealloc;
- (void)observeChild;
- (void)setChildViewController:(id)controller;
- (void)updateInternals:(id)internals;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TKContainerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = TKContainerViewController;
  [(TKContainerViewController *)&v4 viewDidLoad];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  view = [(TKContainerViewController *)selfCopy view];
  [view setBackgroundColor:whiteColor];
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](whiteColor);
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(TKKeyPathObserver *)self->_observer stopObserving];
  v2.receiver = selfCopy;
  v2.super_class = TKContainerViewController;
  [(TKContainerViewController *)&v2 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = TKContainerViewController;
  [(TKContainerViewController *)&v3 viewWillAppear:appear];
  selfCopy->_appearing = 1;
  [(TKContainerViewController *)selfCopy observeChild];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = TKContainerViewController;
  [(TKContainerViewController *)&v3 viewDidAppear:appear];
  selfCopy->_appearing = 0;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v5 = a2;
  disappearCopy = disappear;
  [(TKKeyPathObserver *)self->_observer stopObserving];
  v3.receiver = selfCopy;
  v3.super_class = TKContainerViewController;
  [(TKContainerViewController *)&v3 viewWillDisappear:disappearCopy];
}

- (unint64_t)edgesForExtendedLayout
{
  selfCopy = self;
  v4 = a2;
  if (self->_childViewController)
  {
    return [(UIViewController *)selfCopy->_childViewController edgesForExtendedLayout];
  }

  v3.receiver = selfCopy;
  v3.super_class = TKContainerViewController;
  return [(TKContainerViewController *)&v3 edgesForExtendedLayout];
}

- (void)setChildViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  if (selfCopy->_childViewController == location[0])
  {
    v54 = 1;
  }

  else
  {
    [(TKKeyPathObserver *)selfCopy->_observer stopObserving];
    objc_storeStrong(&selfCopy->_childNavigationItem, 0);
    if (selfCopy->_childViewController)
    {
      [(UIViewController *)selfCopy->_childViewController willMoveToParentViewController:0];
      view = [(UIViewController *)selfCopy->_childViewController view];
      [(UIView *)view removeFromSuperview];
      MEMORY[0x277D82BD8](view);
      [(UIViewController *)selfCopy->_childViewController removeFromParentViewController];
    }

    objc_storeStrong(&selfCopy->_childViewController, location[0]);
    if (location[0])
    {
      view2 = [(TKContainerViewController *)selfCopy view];
      [(TKContainerViewController *)selfCopy addChildViewController:location[0]];
      view3 = [location[0] view];
      [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
      [view2 bounds];
      *&v50 = v3;
      *(&v50 + 1) = v4;
      *&v51 = v5;
      *(&v51 + 1) = v6;
      v48 = v50;
      v49 = v51;
      [view3 setFrame:{v3, v4, v5, v6}];
      [view3 setAutoresizingMask:18];
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128] statusBarOrientationAnimationDuration];
      v20 = v7 / 2.0;
      MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
      v47[1] = *&v20;
      v22 = MEMORY[0x277D75D18];
      v21 = view2;
      v41 = MEMORY[0x277D85DD0];
      v42 = -1073741824;
      v43 = 0;
      v44 = __52__TKContainerViewController_setChildViewController___block_invoke;
      v45 = &unk_2797EE270;
      v46 = MEMORY[0x277D82BE0](view2);
      v47[0] = MEMORY[0x277D82BE0](view3);
      v34 = MEMORY[0x277D85DD0];
      v35 = -1073741824;
      v36 = 0;
      v37 = __52__TKContainerViewController_setChildViewController___block_invoke_2;
      v38 = &unk_2797EE1F8;
      v39 = MEMORY[0x277D82BE0](location[0]);
      v40 = MEMORY[0x277D82BE0](selfCopy);
      [v22 transitionWithView:v21 duration:5243008 options:&v41 animations:&v34 completion:v20];
      navigationItem = [location[0] navigationItem];
      childNavigationItem = selfCopy->_childNavigationItem;
      selfCopy->_childNavigationItem = navigationItem;
      MEMORY[0x277D82BD8](childNavigationItem);
      rightBarButtonItems = [(UINavigationItem *)selfCopy->_childNavigationItem rightBarButtonItems];
      if (rightBarButtonItems)
      {
        navigationItem2 = [(TKContainerViewController *)selfCopy navigationItem];
        [navigationItem2 setRightBarButtonItems:rightBarButtonItems];
        MEMORY[0x277D82BD8](navigationItem2);
      }

      leftBarButtonItems = [(UINavigationItem *)selfCopy->_childNavigationItem leftBarButtonItems];
      v11 = rightBarButtonItems;
      rightBarButtonItems = leftBarButtonItems;
      MEMORY[0x277D82BD8](v11);
      if (rightBarButtonItems)
      {
        navigationItem3 = [(TKContainerViewController *)selfCopy navigationItem];
        [navigationItem3 setLeftBarButtonItems:rightBarButtonItems];
        MEMORY[0x277D82BD8](navigationItem3);
      }

      title = [(UINavigationItem *)selfCopy->_childNavigationItem title];
      if (title)
      {
        navigationItem4 = [(TKContainerViewController *)selfCopy navigationItem];
        [navigationItem4 setTitle:title];
        MEMORY[0x277D82BD8](navigationItem4);
      }

      titleView = [(UINavigationItem *)selfCopy->_childNavigationItem titleView];
      if (titleView)
      {
        navigationItem5 = [(TKContainerViewController *)selfCopy navigationItem];
        [navigationItem5 setTitleView:titleView];
        MEMORY[0x277D82BD8](navigationItem5);
      }

      if (!selfCopy->_observer)
      {
        objc_initWeak(&from, selfCopy);
        v14 = [TKKeyPathObserver alloc];
        v24 = MEMORY[0x277D85DD0];
        v25 = -1073741824;
        v26 = 0;
        v27 = __52__TKContainerViewController_setChildViewController___block_invoke_3;
        v28 = &unk_2797EE820;
        objc_copyWeak(&v29, &from);
        v13 = [(TKKeyPathObserver *)v14 initWithBlock:&v24];
        observer = selfCopy->_observer;
        selfCopy->_observer = v13;
        MEMORY[0x277D82BD8](observer);
        objc_destroyWeak(&v29);
        objc_destroyWeak(&from);
      }

      [(TKContainerViewController *)selfCopy observeChild];
      objc_storeStrong(&titleView, 0);
      objc_storeStrong(&title, 0);
      objc_storeStrong(&rightBarButtonItems, 0);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(v47, 0);
      objc_storeStrong(&v46, 0);
      objc_storeStrong(&view3, 0);
      objc_storeStrong(&view2, 0);
      v54 = 0;
    }

    else
    {
      v54 = 1;
    }
  }

  objc_storeStrong(location, 0);
}

uint64_t __52__TKContainerViewController_setChildViewController___block_invoke(uint64_t a1)
{
  v17[4] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) insertSubview:*(a1 + 40) atIndex:0];
  v3 = MEMORY[0x277CCAAD0];
  v16 = [*(a1 + 40) leftAnchor];
  v15 = [*(a1 + 32) leftAnchor];
  v14 = [v16 constraintEqualToAnchor:?];
  v17[0] = v14;
  v13 = [*(a1 + 40) rightAnchor];
  v12 = [*(a1 + 32) rightAnchor];
  v11 = [v13 constraintEqualToAnchor:?];
  v17[1] = v11;
  v10 = [*(a1 + 40) topAnchor];
  v9 = [*(a1 + 32) topAnchor];
  v8 = [v10 constraintEqualToAnchor:?];
  v17[2] = v8;
  v7 = [*(a1 + 40) bottomAnchor];
  v6 = [*(a1 + 32) bottomAnchor];
  v5 = [v7 constraintEqualToAnchor:?];
  v17[3] = v5;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  [v3 activateConstraints:?];
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
  MEMORY[0x277D82BD8](v15);
  result = MEMORY[0x277D82BD8](v16);
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __52__TKContainerViewController_setChildViewController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) didMoveToParentViewController:*(a1 + 40)];
  if ([MEMORY[0x277D757A0] instancesRespondToSelector:sel__computeAndApplyScrollContentInsetDeltaForViewController_])
  {
    v4 = [*(a1 + 40) navigationController];
    [v4 _computeAndApplyScrollContentInsetDeltaForViewController:*(a1 + 32)];
    return MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v3 = [*(a1 + 40) navigationController];
    v2 = [v3 view];
    [v2 setNeedsLayout];
    MEMORY[0x277D82BD8](v2);
    return MEMORY[0x277D82BD8](v3);
  }
}

void __52__TKContainerViewController_setChildViewController___block_invoke_3(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained updateInternals:v6];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)observeChild
{
  [(TKKeyPathObserver *)self->_observer stopObserving];
  if (self->_childViewController)
  {
    if (self->_childNavigationItem)
    {
      [(TKKeyPathObserver *)self->_observer observe:self->_childViewController keyPath:@"navigationItem"];
      [(TKKeyPathObserver *)self->_observer observe:self->_childNavigationItem keyPath:@"rightBarButtonItems"];
      [(TKKeyPathObserver *)self->_observer observe:self->_childNavigationItem keyPath:@"leftBarButtonItems"];
      [(TKKeyPathObserver *)self->_observer observe:self->_childNavigationItem keyPath:@"title"];
      [(TKKeyPathObserver *)self->_observer observe:self->_childNavigationItem keyPath:@"titleView"];
    }
  }
}

- (void)updateInternals:(id)internals
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, internals);
  if ([location[0] isEqualToString:@"navigationItem"])
  {
    [(TKKeyPathObserver *)selfCopy->_observer stopObserving];
  }

  else if ([location[0] isEqualToString:@"rightBarButtonItems"])
  {
    rightBarButtonItems = [(UINavigationItem *)selfCopy->_childNavigationItem rightBarButtonItems];
    navigationItem = [(TKContainerViewController *)selfCopy navigationItem];
    [navigationItem setRightBarButtonItems:rightBarButtonItems];
    MEMORY[0x277D82BD8](navigationItem);
    MEMORY[0x277D82BD8](rightBarButtonItems);
  }

  else if ([location[0] isEqualToString:@"leftBarButtonItems"])
  {
    leftBarButtonItems = [(UINavigationItem *)selfCopy->_childNavigationItem leftBarButtonItems];
    navigationItem2 = [(TKContainerViewController *)selfCopy navigationItem];
    [navigationItem2 setLeftBarButtonItems:leftBarButtonItems];
    MEMORY[0x277D82BD8](navigationItem2);
    MEMORY[0x277D82BD8](leftBarButtonItems);
  }

  else if ([location[0] isEqualToString:@"title"])
  {
    title = [(UINavigationItem *)selfCopy->_childNavigationItem title];
    navigationItem3 = [(TKContainerViewController *)selfCopy navigationItem];
    [navigationItem3 setTitle:title];
    MEMORY[0x277D82BD8](navigationItem3);
    MEMORY[0x277D82BD8](title);
  }

  else if ([location[0] isEqualToString:@"titleView"])
  {
    titleView = [(UINavigationItem *)selfCopy->_childNavigationItem titleView];
    navigationItem4 = [(TKContainerViewController *)selfCopy navigationItem];
    [navigationItem4 setTitleView:titleView];
    MEMORY[0x277D82BD8](navigationItem4);
    MEMORY[0x277D82BD8](titleView);
  }

  objc_storeStrong(location, 0);
}

@end