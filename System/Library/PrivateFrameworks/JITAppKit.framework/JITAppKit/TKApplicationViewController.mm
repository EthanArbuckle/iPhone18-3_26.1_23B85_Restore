@interface TKApplicationViewController
+ (id)applicationViewController:(id)controller;
- (BOOL)handleApplicationControllerError;
- (TKApplicationViewController)initWithBundleURL:(id)l loadPage:(id)page;
- (TKApplicationViewController)initWithBundleURL:(id)l loadPage:(id)page withData:(id)data;
- (TKApplicationViewController)initWithBundleURL:(id)l loadPage:(id)page withDataRequest:(id)request;
- (TKApplicationViewController)initWithBundleURL:(id)l viewName:(id)name delegate:(id)delegate;
- (TKApplicationViewControllerDelegate)delegate;
- (void)didLoadViewController:(id)controller;
- (void)dismissApplicationControllerAnimated:(BOOL)animated;
- (void)setChildViewController:(id)controller;
- (void)setLoadingViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation TKApplicationViewController

- (TKApplicationViewController)initWithBundleURL:(id)l loadPage:(id)page
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v15 = 0;
  objc_storeStrong(&v15, page);
  v8 = selfCopy;
  v6 = location[0];
  v7 = v15;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __58__TKApplicationViewController_initWithBundleURL_loadPage___block_invoke;
  v13 = &unk_2797EE130;
  v14 = MEMORY[0x277D82BE0](v15);
  selfCopy = 0;
  selfCopy = [(TKApplicationViewController *)v8 initWithBundleURL:v6 viewName:v7 delegate:?];
  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

id __58__TKApplicationViewController_initWithBundleURL_loadPage___block_invoke(uint64_t a1)
{
  v3 = +[TKApplication shared];
  v4 = [v3 loadPage:*(a1 + 32)];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (TKApplicationViewController)initWithBundleURL:(id)l loadPage:(id)page withData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v19 = 0;
  objc_storeStrong(&v19, page);
  v18 = 0;
  objc_storeStrong(&v18, data);
  v10 = selfCopy;
  v8 = location[0];
  v9 = v19;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __67__TKApplicationViewController_initWithBundleURL_loadPage_withData___block_invoke;
  v15 = &unk_2797EE158;
  v16 = MEMORY[0x277D82BE0](v19);
  v17 = MEMORY[0x277D82BE0](v18);
  selfCopy = 0;
  selfCopy = [(TKApplicationViewController *)v10 initWithBundleURL:v8 viewName:v9 delegate:?];
  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

id __67__TKApplicationViewController_initWithBundleURL_loadPage_withData___block_invoke(uint64_t a1)
{
  v3 = +[TKApplication shared];
  v4 = [v3 loadPage:*(a1 + 32) withData:*(a1 + 40)];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (TKApplicationViewController)initWithBundleURL:(id)l loadPage:(id)page withDataRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v19 = 0;
  objc_storeStrong(&v19, page);
  v18 = 0;
  objc_storeStrong(&v18, request);
  v10 = selfCopy;
  v8 = location[0];
  v9 = v19;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __74__TKApplicationViewController_initWithBundleURL_loadPage_withDataRequest___block_invoke;
  v15 = &unk_2797EE158;
  v16 = MEMORY[0x277D82BE0](v19);
  v17 = MEMORY[0x277D82BE0](v18);
  selfCopy = 0;
  selfCopy = [(TKApplicationViewController *)v10 initWithBundleURL:v8 viewName:v9 delegate:?];
  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

id __74__TKApplicationViewController_initWithBundleURL_loadPage_withDataRequest___block_invoke(uint64_t a1)
{
  v3 = +[TKApplication shared];
  v4 = [v3 loadPage:*(a1 + 32) withDataRequest:*(a1 + 40)];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (TKApplicationViewController)initWithBundleURL:(id)l viewName:(id)name delegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v23 = 0;
  objc_storeStrong(&v23, name);
  v22 = 0;
  objc_storeStrong(&v22, delegate);
  v5 = selfCopy;
  selfCopy = 0;
  v21.receiver = v5;
  v21.super_class = TKApplicationViewController;
  selfCopy = [(TKApplicationViewController *)&v21 initWithNibName:0 bundle:?];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_initWeak(&from, selfCopy);
    v9 = +[TKApplication shared];
    v8 = location[0];
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __67__TKApplicationViewController_initWithBundleURL_viewName_delegate___block_invoke;
    v16 = &unk_2797EE1A8;
    objc_copyWeak(&v19, &from);
    v17 = MEMORY[0x277D82BE0](v23);
    v18 = MEMORY[0x277D82BE0](v22);
    [v9 loadBundle:v8 completion:&v12];
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&from);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

void __67__TKApplicationViewController_initWithBundleURL_viewName_delegate___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[1] = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __67__TKApplicationViewController_initWithBundleURL_viewName_delegate___block_invoke_2;
  v10 = &unk_2797EE180;
  objc_copyWeak(v14, (a1 + 48));
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](*(a1 + 32));
  v13 = MEMORY[0x277D82BE0](*(a1 + 40));
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(v14);
  objc_storeStrong(location, 0);
}

void __67__TKApplicationViewController_initWithBundleURL_viewName_delegate___block_invoke_2(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 56));
  if (location[0])
  {
    if (*(a1 + 32))
    {
      if (([location[0] handleApplicationControllerError] & 1) == 0)
      {
        v7 = +[TKApplication shared];
        v6 = [*(a1 + 32) localizedDescription];
        v5 = [v7 newErrorViewController:?];
        [location[0] setChildViewController:?];
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v7);
      }
    }

    else
    {
      v3 = +[TKApplication shared];
      v2 = [v3 repository];
      v4 = [v2 tmlPathForName:*(a1 + 40)];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v2);
      MEMORY[0x277D82BD8](v3);
      if (v4 || ([location[0] handleApplicationControllerError] & 1) == 0)
      {
        v1 = (*(*(a1 + 48) + 16))();
        [location[0] didLoadViewController:?];
        MEMORY[0x277D82BD8](v1);
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (BOOL)handleApplicationControllerError
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  [(TKApplicationViewController *)self setLoadingViewController:0];
  v3 = objc_loadWeakRetained(&self->_delegate);
  [v3 applicationControllerError:self];
  MEMORY[0x277D82BD8](v3);
  return 1;
}

- (void)didLoadViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  [(TKApplicationViewController *)selfCopy setChildViewController:location[0]];
  v5 = 0;
  v4 = 0;
  if (location[0])
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v5 = 1;
    v4 = objc_opt_respondsToSelector();
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](WeakRetained);
  }

  if (v4)
  {
    v3 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v3 applicationController:selfCopy didLoadViewController:location[0]];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = TKApplicationViewController;
  [(TKApplicationViewController *)&v6 viewDidLoad];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  view = [(TKApplicationViewController *)selfCopy view];
  [view setBackgroundColor:whiteColor];
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](whiteColor);
  if (!selfCopy->_loadingViewController)
  {
    v3 = +[TKApplication shared];
    newLoadingViewController = [v3 newLoadingViewController];
    [(TKApplicationViewController *)selfCopy setLoadingViewController:?];
    MEMORY[0x277D82BD8](newLoadingViewController);
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)setChildViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  if (selfCopy->_childViewController == location[0])
  {
    v34 = 1;
  }

  else
  {
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
      view2 = [(TKApplicationViewController *)selfCopy view];
      [(TKApplicationViewController *)selfCopy addChildViewController:location[0]];
      [(UIViewController *)selfCopy->_loadingViewController willMoveToParentViewController:?];
      view3 = [location[0] view];
      [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
      [view2 bounds];
      *&v30 = v3;
      *(&v30 + 1) = v4;
      *&v31 = v5;
      *(&v31 + 1) = v6;
      v28 = v30;
      v29 = v31;
      [view3 setFrame:{v3, v4, v5, v6}];
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128] statusBarOrientationAnimationDuration];
      v9 = v7 / 2.0;
      MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
      v27[1] = *&v9;
      v10 = MEMORY[0x277D75D18];
      view4 = [(TKApplicationViewController *)selfCopy view];
      v20 = MEMORY[0x277D85DD0];
      v21 = -1073741824;
      v22 = 0;
      v23 = __54__TKApplicationViewController_setChildViewController___block_invoke;
      v24 = &unk_2797EE1D0;
      v25 = MEMORY[0x277D82BE0](selfCopy);
      v26 = MEMORY[0x277D82BE0](view2);
      v27[0] = MEMORY[0x277D82BE0](view3);
      v13 = MEMORY[0x277D85DD0];
      v14 = -1073741824;
      v15 = 0;
      v16 = __54__TKApplicationViewController_setChildViewController___block_invoke_2;
      v17 = &unk_2797EE1F8;
      v18 = MEMORY[0x277D82BE0](location[0]);
      v19 = MEMORY[0x277D82BE0](selfCopy);
      [v10 transitionWithView:view4 duration:5243008 options:&v20 animations:&v13 completion:v9];
      MEMORY[0x277D82BD8](view4);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
      objc_storeStrong(v27, 0);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&view3, 0);
      objc_storeStrong(&view2, 0);
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }
  }

  objc_storeStrong(location, 0);
}

uint64_t __54__TKApplicationViewController_setChildViewController___block_invoke(uint64_t a1)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 1016) view];
  [v2 removeFromSuperview];
  MEMORY[0x277D82BD8](v2);
  [*(a1 + 40) insertSubview:*(a1 + 48) atIndex:0];
  v4 = MEMORY[0x277CCAAD0];
  v17 = [*(a1 + 48) leftAnchor];
  v16 = [*(a1 + 40) leftAnchor];
  v15 = [v17 constraintEqualToAnchor:?];
  v18[0] = v15;
  v14 = [*(a1 + 48) rightAnchor];
  v13 = [*(a1 + 40) rightAnchor];
  v12 = [v14 constraintEqualToAnchor:?];
  v18[1] = v12;
  v11 = [*(a1 + 48) topAnchor];
  v10 = [*(a1 + 40) topAnchor];
  v9 = [v11 constraintEqualToAnchor:?];
  v18[2] = v9;
  v8 = [*(a1 + 48) bottomAnchor];
  v7 = [*(a1 + 40) bottomAnchor];
  v6 = [v8 constraintEqualToAnchor:?];
  v18[3] = v6;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  [v4 activateConstraints:?];
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
  MEMORY[0x277D82BD8](v16);
  result = MEMORY[0x277D82BD8](v17);
  *MEMORY[0x277D85DE8];
  return result;
}

void __54__TKApplicationViewController_setChildViewController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) didMoveToParentViewController:*(a1 + 40)];
  [*(*(a1 + 40) + 1016) removeFromParentViewController];
  objc_storeStrong((*(a1 + 40) + 1016), 0);
}

- (void)setLoadingViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  if (selfCopy->_loadingViewController == location[0])
  {
    v49 = 1;
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] statusBarOrientationAnimationDuration];
    v15 = v3 / 2.0;
    MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
    v48 = v15;
    if (selfCopy->_loadingViewController)
    {
      [(UIViewController *)selfCopy->_loadingViewController willMoveToParentViewController:?];
      v12 = MEMORY[0x277D75D18];
      view = [(TKApplicationViewController *)selfCopy view];
      v11 = v48;
      v42 = MEMORY[0x277D85DD0];
      v43 = -1073741824;
      v44 = 0;
      v45 = __56__TKApplicationViewController_setLoadingViewController___block_invoke;
      v46 = &unk_2797EE220;
      v47 = MEMORY[0x277D82BE0](selfCopy);
      v36 = MEMORY[0x277D85DD0];
      v37 = -1073741824;
      v38 = 0;
      v39 = __56__TKApplicationViewController_setLoadingViewController___block_invoke_2;
      v40 = &unk_2797EE248;
      v41 = MEMORY[0x277D82BE0](selfCopy);
      [v12 transitionWithView:view duration:5243008 options:&v42 animations:&v36 completion:v11];
      MEMORY[0x277D82BD8](view);
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v47, 0);
    }

    objc_storeStrong(&selfCopy->_loadingViewController, location[0]);
    if (location[0])
    {
      view2 = [(TKApplicationViewController *)selfCopy view];
      [(TKApplicationViewController *)selfCopy addChildViewController:location[0]];
      view3 = [location[0] view];
      [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
      [view2 bounds];
      *&v32 = v4;
      *(&v32 + 1) = v5;
      *&v33 = v6;
      *(&v33 + 1) = v7;
      v30 = v32;
      v31 = v33;
      [view3 setFrame:{v32, v33}];
      v10 = MEMORY[0x277D75D18];
      v8 = view2;
      v9 = v48;
      v23 = MEMORY[0x277D85DD0];
      v24 = -1073741824;
      v25 = 0;
      v26 = __56__TKApplicationViewController_setLoadingViewController___block_invoke_3;
      v27 = &unk_2797EE270;
      v28 = MEMORY[0x277D82BE0](view2);
      v29 = MEMORY[0x277D82BE0](view3);
      v16 = MEMORY[0x277D85DD0];
      v17 = -1073741824;
      v18 = 0;
      v19 = __56__TKApplicationViewController_setLoadingViewController___block_invoke_4;
      v20 = &unk_2797EE1F8;
      v21 = MEMORY[0x277D82BE0](location[0]);
      v22 = MEMORY[0x277D82BE0](selfCopy);
      [v10 transitionWithView:v8 duration:5243008 options:&v23 animations:&v16 completion:v9];
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&view3, 0);
      objc_storeStrong(&view2, 0);
      v49 = 0;
    }

    else
    {
      v49 = 1;
    }
  }

  objc_storeStrong(location, 0);
}

uint64_t __56__TKApplicationViewController_setLoadingViewController___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1016) view];
  [v2 removeFromSuperview];
  return MEMORY[0x277D82BD8](v2);
}

uint64_t __56__TKApplicationViewController_setLoadingViewController___block_invoke_3(uint64_t a1)
{
  v17[4] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addSubview:*(a1 + 40)];
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

- (void)dismissApplicationControllerAnimated:(BOOL)animated
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v9)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 dismissApplicationController:self animated:animated];
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    presentingViewController = [(TKApplicationViewController *)self presentingViewController];
    MEMORY[0x277D82BD8](presentingViewController);
    if (presentingViewController)
    {
      [(TKApplicationViewController *)self dismissViewControllerAnimated:animated completion:0];
    }

    else
    {
      navigationController = [(TKApplicationViewController *)self navigationController];
      MEMORY[0x277D82BD8](navigationController);
      if (navigationController)
      {
        navigationController2 = [(TKApplicationViewController *)self navigationController];
        v3 = [navigationController2 popViewControllerAnimated:animated];
        MEMORY[0x277D82BD8](navigationController2);
      }
    }
  }
}

+ (id)applicationViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v8 = MEMORY[0x277D82BE0](location[0]);
  while (1)
  {
    LOBYTE(v7) = 0;
    if (v8)
    {
      objc_opt_class();
      v7 = objc_opt_isKindOfClass() ^ 1;
    }

    if ((v7 & 1) == 0)
    {
      break;
    }

    parentViewController = [v8 parentViewController];
    v4 = v8;
    v8 = parentViewController;
    MEMORY[0x277D82BD8](v4);
  }

  v6 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (TKApplicationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end