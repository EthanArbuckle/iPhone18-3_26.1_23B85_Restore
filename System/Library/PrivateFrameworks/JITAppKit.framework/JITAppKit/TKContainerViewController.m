@interface TKContainerViewController
- (unint64_t)edgesForExtendedLayout;
- (void)dealloc;
- (void)observeChild;
- (void)setChildViewController:(id)a3;
- (void)updateInternals:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TKContainerViewController

- (void)viewDidLoad
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = TKContainerViewController;
  [(TKContainerViewController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x277D75348] whiteColor];
  v2 = [(TKContainerViewController *)v6 view];
  [v2 setBackgroundColor:v3];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(TKKeyPathObserver *)self->_observer stopObserving];
  v2.receiver = v4;
  v2.super_class = TKContainerViewController;
  [(TKContainerViewController *)&v2 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = TKContainerViewController;
  [(TKContainerViewController *)&v3 viewWillAppear:a3];
  v6->_appearing = 1;
  [(TKContainerViewController *)v6 observeChild];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = TKContainerViewController;
  [(TKContainerViewController *)&v3 viewDidAppear:a3];
  v6->_appearing = 0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  [(TKKeyPathObserver *)self->_observer stopObserving];
  v3.receiver = v6;
  v3.super_class = TKContainerViewController;
  [(TKContainerViewController *)&v3 viewWillDisappear:v4];
}

- (unint64_t)edgesForExtendedLayout
{
  v5 = self;
  v4 = a2;
  if (self->_childViewController)
  {
    return [(UIViewController *)v5->_childViewController edgesForExtendedLayout];
  }

  v3.receiver = v5;
  v3.super_class = TKContainerViewController;
  return [(TKContainerViewController *)&v3 edgesForExtendedLayout];
}

- (void)setChildViewController:(id)a3
{
  v56 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v56->_childViewController == location[0])
  {
    v54 = 1;
  }

  else
  {
    [(TKKeyPathObserver *)v56->_observer stopObserving];
    objc_storeStrong(&v56->_childNavigationItem, 0);
    if (v56->_childViewController)
    {
      [(UIViewController *)v56->_childViewController willMoveToParentViewController:0];
      v23 = [(UIViewController *)v56->_childViewController view];
      [(UIView *)v23 removeFromSuperview];
      MEMORY[0x277D82BD8](v23);
      [(UIViewController *)v56->_childViewController removeFromParentViewController];
    }

    objc_storeStrong(&v56->_childViewController, location[0]);
    if (location[0])
    {
      v53 = [(TKContainerViewController *)v56 view];
      [(TKContainerViewController *)v56 addChildViewController:location[0]];
      v52 = [location[0] view];
      [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v53 bounds];
      *&v50 = v3;
      *(&v50 + 1) = v4;
      *&v51 = v5;
      *(&v51 + 1) = v6;
      v48 = v50;
      v49 = v51;
      [v52 setFrame:{v3, v4, v5, v6}];
      [v52 setAutoresizingMask:18];
      v19 = [MEMORY[0x277D75128] sharedApplication];
      [v19 statusBarOrientationAnimationDuration];
      v20 = v7 / 2.0;
      MEMORY[0x277D82BD8](v19);
      v47[1] = *&v20;
      v22 = MEMORY[0x277D75D18];
      v21 = v53;
      v41 = MEMORY[0x277D85DD0];
      v42 = -1073741824;
      v43 = 0;
      v44 = __52__TKContainerViewController_setChildViewController___block_invoke;
      v45 = &unk_2797EE270;
      v46 = MEMORY[0x277D82BE0](v53);
      v47[0] = MEMORY[0x277D82BE0](v52);
      v34 = MEMORY[0x277D85DD0];
      v35 = -1073741824;
      v36 = 0;
      v37 = __52__TKContainerViewController_setChildViewController___block_invoke_2;
      v38 = &unk_2797EE1F8;
      v39 = MEMORY[0x277D82BE0](location[0]);
      v40 = MEMORY[0x277D82BE0](v56);
      [v22 transitionWithView:v21 duration:5243008 options:&v41 animations:&v34 completion:v20];
      v8 = [location[0] navigationItem];
      childNavigationItem = v56->_childNavigationItem;
      v56->_childNavigationItem = v8;
      MEMORY[0x277D82BD8](childNavigationItem);
      v33 = [(UINavigationItem *)v56->_childNavigationItem rightBarButtonItems];
      if (v33)
      {
        v18 = [(TKContainerViewController *)v56 navigationItem];
        [v18 setRightBarButtonItems:v33];
        MEMORY[0x277D82BD8](v18);
      }

      v10 = [(UINavigationItem *)v56->_childNavigationItem leftBarButtonItems];
      v11 = v33;
      v33 = v10;
      MEMORY[0x277D82BD8](v11);
      if (v33)
      {
        v17 = [(TKContainerViewController *)v56 navigationItem];
        [v17 setLeftBarButtonItems:v33];
        MEMORY[0x277D82BD8](v17);
      }

      v32 = [(UINavigationItem *)v56->_childNavigationItem title];
      if (v32)
      {
        v16 = [(TKContainerViewController *)v56 navigationItem];
        [v16 setTitle:v32];
        MEMORY[0x277D82BD8](v16);
      }

      v31 = [(UINavigationItem *)v56->_childNavigationItem titleView];
      if (v31)
      {
        v15 = [(TKContainerViewController *)v56 navigationItem];
        [v15 setTitleView:v31];
        MEMORY[0x277D82BD8](v15);
      }

      if (!v56->_observer)
      {
        objc_initWeak(&from, v56);
        v14 = [TKKeyPathObserver alloc];
        v24 = MEMORY[0x277D85DD0];
        v25 = -1073741824;
        v26 = 0;
        v27 = __52__TKContainerViewController_setChildViewController___block_invoke_3;
        v28 = &unk_2797EE820;
        objc_copyWeak(&v29, &from);
        v13 = [(TKKeyPathObserver *)v14 initWithBlock:&v24];
        observer = v56->_observer;
        v56->_observer = v13;
        MEMORY[0x277D82BD8](observer);
        objc_destroyWeak(&v29);
        objc_destroyWeak(&from);
      }

      [(TKContainerViewController *)v56 observeChild];
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(v47, 0);
      objc_storeStrong(&v46, 0);
      objc_storeStrong(&v52, 0);
      objc_storeStrong(&v53, 0);
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

- (void)updateInternals:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:@"navigationItem"])
  {
    [(TKKeyPathObserver *)v12->_observer stopObserving];
  }

  else if ([location[0] isEqualToString:@"rightBarButtonItems"])
  {
    v10 = [(UINavigationItem *)v12->_childNavigationItem rightBarButtonItems];
    v9 = [(TKContainerViewController *)v12 navigationItem];
    [v9 setRightBarButtonItems:v10];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
  }

  else if ([location[0] isEqualToString:@"leftBarButtonItems"])
  {
    v8 = [(UINavigationItem *)v12->_childNavigationItem leftBarButtonItems];
    v7 = [(TKContainerViewController *)v12 navigationItem];
    [v7 setLeftBarButtonItems:v8];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  else if ([location[0] isEqualToString:@"title"])
  {
    v6 = [(UINavigationItem *)v12->_childNavigationItem title];
    v5 = [(TKContainerViewController *)v12 navigationItem];
    [v5 setTitle:v6];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  else if ([location[0] isEqualToString:@"titleView"])
  {
    v4 = [(UINavigationItem *)v12->_childNavigationItem titleView];
    v3 = [(TKContainerViewController *)v12 navigationItem];
    [v3 setTitleView:v4];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

@end