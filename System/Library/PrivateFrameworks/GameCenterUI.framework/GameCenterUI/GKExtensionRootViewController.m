@interface GKExtensionRootViewController
- (GKExtensionRootViewController)initWithCoder:(id)a3;
- (GKExtensionRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIEdgeInsets)_gkAdditionalSafeAreaInset;
- (id)hostObjectProxy;
- (void)addDoneButtonToViewController:(id)a3;
- (void)addVisualEffectViewForView:(id)a3;
- (void)configureContentViewController;
- (void)constructContentViewController;
- (void)extensionIsCanceling;
- (void)extensionIsFinishing;
- (void)hostObjectProxy;
- (void)logOnceGameControllerUsedInGameLayer;
- (void)messageFromClient:(id)a3;
- (void)messageFromExtension:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
- (void)scrollToTopPressed:(id)a3;
- (void)sendMessageToClient:(id)a3;
- (void)setInitialState:(id)a3 withReply:(id)a4;
- (void)setToDarkBackground;
- (void)setToLightBackground;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)setup;
- (void)setupVisualEffects;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateScrollToTopViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation GKExtensionRootViewController

- (GKExtensionRootViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GKExtensionRootViewController;
  v3 = [(GKExtensionRootViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(GKExtensionRootViewController *)v3 setup];
  }

  return v4;
}

- (GKExtensionRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = GKExtensionRootViewController;
  v4 = [(GKExtensionRootViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(GKExtensionRootViewController *)v4 setup];
  }

  return v5;
}

- (void)setup
{
  GKUISetRemote();
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    [(GKExtensionRootViewController *)self setModalPresentationStyle:16];
    v5 = [MEMORY[0x277D0C8C8] sharedTheme];
    [v5 formSheetSize];
    [(GKExtensionRootViewController *)self setPreferredContentSize:?];

    *MEMORY[0x277D0C8F0] = 0;
  }

  else
  {
    [(GKExtensionRootViewController *)self setModalPresentationStyle:17];
  }

  self->_alwaysShowDoneButton = 1;
  self->_adjustTopConstraint = 1;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = GKExtensionRootViewController;
  [(GKExtensionRootViewController *)&v4 viewDidLoad];
  [(GKExtensionRootViewController *)self setOverrideUserInterfaceStyle:2];
  if ([(GKExtensionRootViewController *)self _useBackdropViewForWindowBackground])
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D68]);
    [(GKExtensionRootViewController *)self setEffectView:v3];

    [(GKExtensionRootViewController *)self setupVisualEffects];
  }
}

- (void)setupVisualEffects
{
  v3 = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  v4 = [(GKExtensionRootViewController *)self effectView];
  [v4 setBackgroundEffects:v3];

  v5 = [(GKExtensionRootViewController *)self effectView];
  [v5 _setGroupName:@"gameLayerGroup"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKExtensionRootViewController *)self daemonProxy];
  [v5 setDataUpdateDelegate:self];

  v28.receiver = self;
  v28.super_class = GKExtensionRootViewController;
  [(GKExtensionRootViewController *)&v28 viewWillAppear:v3];
  if ([(GKExtensionRootViewController *)self hasInitialData])
  {
    v6 = [(GKExtensionRootViewController *)self contentViewController];

    if (!v6)
    {
      [(GKExtensionRootViewController *)self constructContentViewController];
    }
  }

  if ([(GKExtensionRootViewController *)self _useBackdropViewForWindowBackground])
  {
    [(GKExtensionRootViewController *)self setupVisualEffects];
    v7 = [(GKExtensionRootViewController *)self view];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(GKExtensionRootViewController *)self effectView];
    [v16 setFrame:{v9, v11, v13, v15}];

    v17 = [(GKExtensionRootViewController *)self effectView];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(GKExtensionRootViewController *)self parentViewController];
    v19 = [v18 view];
    v20 = [v19 window];
    v21 = [v20 rootViewController];
    v22 = [v21 view];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v25 = [(GKExtensionRootViewController *)self parentViewController];
      v26 = [v25 view];
      v24 = [v26 window];
    }

    [(GKExtensionRootViewController *)self addVisualEffectViewForView:v24];
  }

  if ([(GKExtensionRootViewController *)self hasInitialData])
  {
    v27 = [(GKExtensionRootViewController *)self contentViewController];

    if (!v27)
    {
      [(GKExtensionRootViewController *)self constructContentViewController];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = GKExtensionRootViewController;
  [(GKExtensionRootViewController *)&v23 viewWillLayoutSubviews];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(GKExtensionRootViewController *)self childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = [(GKExtensionRootViewController *)self view];
        [v9 bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [v8 view];
        [v18 setFrame:{v11, v13, v15, v17}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = GKExtensionRootViewController;
  [(GKExtensionRootViewController *)&v11 viewDidAppear:a3];
  v4 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = MEMORY[0x277D0C2C8];
  v7 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "GKExtensionRootViewController viewDidAppear called", v10, 2u);
  }

  [(GKExtensionRootViewController *)self becomeFirstResponder];
  if (!*v4)
  {
    v8 = GKOSLoggers();
  }

  v9 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_24DE53000, v9, OS_LOG_TYPE_INFO, "ControllerSupport: Focus system activated by calling becomeFirstResponder", v10, 2u);
  }
}

- (void)addVisualEffectViewForView:(id)a3
{
  v4 = a3;
  v5 = [v4 viewWithTag:678];
  [v5 removeFromSuperview];

  v8 = objc_alloc_init(MEMORY[0x277D75D68]);
  v6 = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  [v8 setBackgroundEffects:v6];

  v7 = [(GKExtensionRootViewController *)self effectView];
  [v7 _setGroupName:@"gameLayerGroup"];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setTag:678];
  [v4 insertSubview:v8 atIndex:0];
  [MEMORY[0x277CCAAD0] _gkInstallEdgeConstraintsForView:v8 containedWithinParentView:v4];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = GKExtensionRootViewController;
  [(GKExtensionRootViewController *)&v7 viewDidDisappear:a3];
  [(GKExtensionRootViewController *)self setViewControllers:MEMORY[0x277CBEBF8] animated:0];
  [(GKExtensionRootViewController *)self setContentViewController:0];
  v4 = [(GKExtensionRootViewController *)self daemonProxy];
  v5 = [v4 dataUpdateDelegate];

  if (v5 == self)
  {
    v6 = [(GKExtensionRootViewController *)self daemonProxy];
    [v6 setDataUpdateDelegate:0];
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v8.receiver = self;
  v8.super_class = GKExtensionRootViewController;
  [(GKExtensionRootViewController *)&v8 willTransitionToTraitCollection:a3 withTransitionCoordinator:v6];
  if ([(GKExtensionRootViewController *)self requiresNavigationController])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __91__GKExtensionRootViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
    v7[3] = &unk_27966A690;
    v7[4] = self;
    [v6 animateAlongsideTransition:v7 completion:&__block_literal_global_7];
  }
}

void __91__GKExtensionRootViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  Height = 0.0;
  if ([*(a1 + 32) adjustTopConstraint])
  {
    v3 = [*(a1 + 32) navigationController];
    v4 = [v3 navigationBar];
    [v4 bounds];
    Height = CGRectGetHeight(v7);
  }

  v5 = [*(a1 + 32) effectTopConstraint];
  [v5 setConstant:Height];
}

- (void)constructContentViewController
{
  v3 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v4 = [v3 profileServicePrivate];

  [v4 startContactsIntegrationSyncWithOptions:2 completionHandler:&__block_literal_global_21];
  [(GKExtensionRootViewController *)self configureContentViewController];
}

void __63__GKExtensionRootViewController_constructContentViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = *MEMORY[0x277D0C278];
  if (os_log_type_enabled(*MEMORY[0x277D0C278], OS_LOG_TYPE_DEBUG))
  {
    __63__GKExtensionRootViewController_constructContentViewController__block_invoke_cold_1(v2, v4);
  }
}

- (void)configureContentViewController
{
  v50[1] = *MEMORY[0x277D85DE8];
  v3 = [(GKExtensionRootViewController *)self contentViewController];

  if (v3)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      [(GKExtensionRootViewController *)self setModalPresentationStyle:16];
      v6 = [MEMORY[0x277D0C8C8] sharedTheme];
      [v6 formSheetSize];
      [(GKExtensionRootViewController *)self setPreferredContentSize:?];
    }

    else
    {
      [(GKExtensionRootViewController *)self setModalPresentationStyle:17];
    }

    v7 = [(GKExtensionRootViewController *)self view];
    [v7 setClipsToBounds:0];
    v8 = [MEMORY[0x277D0C868] sharedPalette];
    v9 = [v8 systemInteractionColor];
    [v7 setTintColor:v9];

    if ([(GKExtensionRootViewController *)self alwaysShowDoneButton])
    {
      v10 = [(GKExtensionRootViewController *)self contentViewController];
      [(GKExtensionRootViewController *)self addDoneButtonToViewController:v10];
    }

    if ([(GKExtensionRootViewController *)self requiresNavigationController])
    {
      v11 = [(GKExtensionRootViewController *)self navigationController];

      if (!v11)
      {
        v12 = [(GKExtensionRootViewController *)self contentViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v14 = [(GKExtensionRootViewController *)self contentViewController];
          [(GKExtensionRootViewController *)self setNavigationController:v14];
        }

        else
        {
          v15 = objc_alloc_init(MEMORY[0x277D757A0]);
          [(GKExtensionRootViewController *)self setNavigationController:v15];

          v16 = [(GKExtensionRootViewController *)self navigationController];
          [v16 setDelegate:self];

          v17 = [(GKExtensionRootViewController *)self navigationController];
          [v17 _setClipUnderlapWhileTransitioning:1];

          v18 = [(GKExtensionRootViewController *)self navigationController];
          [v18 _setPositionBarsExclusivelyWithSafeArea:1];

          v19 = [(GKExtensionRootViewController *)self navigationController];
          v20 = [v19 navigationBar];
          [v20 setBarStyle:0];

          v21 = [(GKExtensionRootViewController *)self navigationController];
          v22 = [v21 navigationBar];
          [v22 setTranslucent:1];

          v23 = [(GKExtensionRootViewController *)self navigationController];
          [v23 beginAppearanceTransition:1 animated:0];

          v24 = [(GKExtensionRootViewController *)self navigationController];
          [(GKExtensionRootViewController *)self addChildViewController:v24];

          v25 = [(GKExtensionRootViewController *)self view];
          v26 = [(GKExtensionRootViewController *)self navigationController];
          v27 = [v26 view];
          [v25 addSubview:v27];

          v28 = [(GKExtensionRootViewController *)self view];
          [v28 bounds];
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v37 = [(GKExtensionRootViewController *)self navigationController];
          v38 = [v37 view];
          [v38 setFrame:{v30, v32, v34, v36}];

          v14 = [(GKExtensionRootViewController *)self navigationController];
          [v14 endAppearanceTransition];
        }

        if ([(GKExtensionRootViewController *)self shouldAddScrollToTopView])
        {
          [(GKExtensionRootViewController *)self _gkAdditionalSafeAreaInset];
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v47 = [(GKExtensionRootViewController *)self navigationController];
          [v47 setAdditionalSafeAreaInsets:{v40, v42, v44, v46}];
        }
      }
    }

    v48 = [(GKExtensionRootViewController *)self contentViewController];
    v50[0] = v48;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    [(GKExtensionRootViewController *)self setViewControllers:v49 animated:0];
  }
}

- (void)addDoneButtonToViewController:(id)a3
{
  v9 = a3;
  if (([v9 _gkExtensionWantsCustomRightBarButtonItemInViewService] & 1) == 0)
  {
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    v5 = GKGameCenterUIFrameworkBundle();
    v6 = GKGetLocalizedStringFromTableInBundle();
    v7 = [v4 initWithTitle:v6 style:2 target:self action:sel_donePressed_];
    v8 = [v9 navigationItem];
    [v8 setRightBarButtonItem:v7];
  }
}

- (UIEdgeInsets)_gkAdditionalSafeAreaInset
{
  v2 = 5.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        if ([(GKExtensionRootViewController *)self alwaysShowDoneButton])
        {
          [(GKExtensionRootViewController *)self addDoneButtonToViewController:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v8);
  }

  if ([(GKExtensionRootViewController *)self requiresNavigationController])
  {
    v12 = [(GKExtensionRootViewController *)self navigationController];
    [v12 setViewControllers:v6 animated:v4];
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v35 + 1) + 8 * j);
          [v17 beginAppearanceTransition:1 animated:{v4, v35}];
          if ([(GKExtensionRootViewController *)self shouldAddScrollToTopView])
          {
            [(GKExtensionRootViewController *)self _gkAdditionalSafeAreaInset];
            [v17 setAdditionalSafeAreaInsets:?];
          }

          [(GKExtensionRootViewController *)self addChildViewController:v17];
          v18 = [(GKExtensionRootViewController *)self view];
          v19 = [v17 view];
          [v18 addSubview:v19];

          v20 = [(GKExtensionRootViewController *)self view];
          [v20 bounds];
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v29 = [v17 view];
          [v29 setFrame:{v22, v24, v26, v28}];

          [v17 endAppearanceTransition];
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v14);
    }
  }

  if ([(GKExtensionRootViewController *)self shouldAddScrollToTopView])
  {
    v30 = [(GKExtensionRootViewController *)self view];
    v31 = [v30 viewWithTag:8400];

    if (!v31)
    {
      v32 = objc_opt_new();
      [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v32 setTag:8400];
      v33 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_scrollToTopPressed_];
      [v33 setNumberOfTapsRequired:1];
      [v32 addGestureRecognizer:v33];
      v34 = [(GKExtensionRootViewController *)self view];
      [v34 addSubview:v32];

      [(GKExtensionRootViewController *)self updateScrollToTopViewConstraints];
    }
  }
}

- (void)scrollToTopPressed:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(GKExtensionRootViewController *)self requiresNavigationController])
  {
    v4 = [(GKExtensionRootViewController *)self navigationController];
    v5 = [v4 topViewController];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v5 view];
    v7 = [v6 subviews];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            if ([v13 scrollsToTop])
            {
              [v13 adjustedContentInset];
              [v13 setContentOffset:1 animated:{0.0, -v14}];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)updateScrollToTopViewConstraints
{
  v27[4] = *MEMORY[0x277D85DE8];
  v3 = [(GKExtensionRootViewController *)self view];
  v4 = [v3 viewWithTag:8400];

  if (v4)
  {
    [v4 _gkRemoveAllConstraints];
    v5 = [(GKExtensionRootViewController *)self view];
    v6 = [v5 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7)
    {
      v8 = 100;
    }

    else
    {
      v9 = [(GKExtensionRootViewController *)self view];
      v10 = [v9 traitCollection];
      if ([v10 verticalSizeClass] == 1)
      {
        v8 = 150;
      }

      else
      {
        v8 = 50;
      }
    }

    v25 = [v4 leadingAnchor];
    v26 = [(GKExtensionRootViewController *)self view];
    v24 = [v26 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24 constant:v8];
    v27[0] = v23;
    v21 = [v4 trailingAnchor];
    v22 = [(GKExtensionRootViewController *)self view];
    v11 = [v22 trailingAnchor];
    v12 = [v21 constraintEqualToAnchor:v11 constant:-v8];
    v27[1] = v12;
    v13 = [v4 topAnchor];
    v14 = [(GKExtensionRootViewController *)self view];
    v15 = [v14 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v27[2] = v16;
    v17 = [v4 heightAnchor];
    v18 = [v17 constraintEqualToConstant:20.0];
    v27[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
    [v20 activateConstraints:v19];

    [v4 setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKExtensionRootViewController;
  [(GKExtensionRootViewController *)&v4 traitCollectionDidChange:a3];
  [(GKExtensionRootViewController *)self updateScrollToTopViewConstraints];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a4;
  if ([(GKExtensionRootViewController *)self alwaysShowDoneButton])
  {
    [(GKExtensionRootViewController *)self addDoneButtonToViewController:v6];
  }
}

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v4 = *&a3;
  v7 = a4;
  if ([(GKExtensionRootViewController *)self _gkShouldRefreshContentsForDataType:v4 userInfo:?])
  {
    [(GKExtensionRootViewController *)self _gkRefreshContentsForDataType:v4 userInfo:v7];
  }

  if (v4 == 16)
  {
    v6 = [MEMORY[0x277D0C138] local];
    [v6 clearInMemoryCachedAvatars];
  }
}

- (void)setInitialState:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GKExtensionRootViewController *)self setRequiresNavigationController:1];
  v8 = [v7 objectForKeyedSubscript:@"StatusBarHeightKey"];
  [v8 floatValue];
  [(GKExtensionRootViewController *)self setStatusBarHeight:v9];

  v10 = [v7 objectForKeyedSubscript:@"HostPIDKey"];
  -[GKExtensionRootViewController setHostPID:](self, "setHostPID:", [v10 integerValue]);

  v11 = [v7 objectForKeyedSubscript:@"currentGame"];
  v12 = MEMORY[0x277D0C048];
  v13 = [v11 internal];
  [v12 setCurrentGameFromInternal:v13 serverEnvironment:{objc_msgSend(v11, "environment")}];

  v14 = [MEMORY[0x277D0C138] localPlayer];
  v15 = [v7 objectForKeyedSubscript:@"localPlayer"];
  [v14 updateFromLocalPlayer:v15];

  v16 = [v7 objectForKeyedSubscript:@"RTLKey"];
  v17 = [v16 BOOLValue];
  *MEMORY[0x277D0C8E8] = v17;

  v18 = [v7 objectForKeyedSubscript:@"HostUserInterfaceIdiom"];

  -[GKExtensionRootViewController setHostUserInterfaceIdiom:](self, "setHostUserInterfaceIdiom:", [v18 integerValue]);
  [(GKExtensionRootViewController *)self hostUserInterfaceIdiom];
  GKSetHostUserInterfaceIdiom();
  v19 = [(GKExtensionRootViewController *)self daemonProxy];
  [v19 setHostPID:{-[GKExtensionRootViewController hostPID](self, "hostPID")}];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__GKExtensionRootViewController_setInitialState_withReply___block_invoke;
  v21[3] = &unk_27966A958;
  v21[4] = self;
  v22 = v6;
  v20 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v21);
}

uint64_t __59__GKExtensionRootViewController_setInitialState_withReply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasInitialData:1];
  v2 = [*(a1 + 32) contentViewController];
  if (v2)
  {
  }

  else if ([*(a1 + 32) isViewLoaded])
  {
    [*(a1 + 32) constructContentViewController];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)messageFromClient:(id)a3
{
  v4 = MEMORY[0x277CCAAC8];
  v5 = a3;
  v6 = GKExtensionProtocolSecureCodedClasses();
  v13 = 0;
  v7 = [v4 unarchivedObjectOfClasses:v6 fromData:v5 error:&v13];

  v8 = v13;
  if (v8)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
    }

    v10 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [(GKExtensionRootViewController *)v8 messageFromClient:v10];
    }
  }

  v11 = [v7 objectForKeyedSubscript:@"MessageCommandKey"];
  v12 = [v11 integerValue];

  switch(v12)
  {
    case 47:
      [(GKExtensionRootViewController *)self clientWillTerminate];
      break;
    case 4:
      [(GKExtensionRootViewController *)self clientDidCancel];
      break;
    case 3:
      [(GKExtensionRootViewController *)self clientDidFinish];
      break;
  }
}

- (id)hostObjectProxy
{
  v4 = [(GKExtensionRootViewController *)self extensionContext];
  v5 = [v4 _auxiliaryConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_41];

  if (!v6)
  {
    [(GKExtensionRootViewController *)a2 hostObjectProxy];
  }

  return v6;
}

void __48__GKExtensionRootViewController_hostObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = *MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    __48__GKExtensionRootViewController_hostObjectProxy__block_invoke_cold_1(v4, v2);
  }
}

- (void)sendMessageToClient:(id)a3
{
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  v4 = [(GKExtensionRootViewController *)self hostObjectProxy];
  [v4 messageFromExtension:v5];
}

- (void)messageFromExtension:(id)a3
{
  v4 = a3;
  v5 = [(GKExtensionRootViewController *)self hostObjectProxy];
  [v5 messageFromExtension:v4];
}

- (void)extensionIsCanceling
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"MessageCommandKey";
  v5[0] = &unk_286188DD8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(GKExtensionRootViewController *)self sendMessageToClient:v3];
}

- (void)extensionIsFinishing
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"MessageCommandKey";
  v5[0] = &unk_286188DF0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(GKExtensionRootViewController *)self sendMessageToClient:v3];
}

- (void)logOnceGameControllerUsedInGameLayer
{
  if (logOnceGameControllerUsedInGameLayer_onceToken != -1)
  {
    [GKExtensionRootViewController logOnceGameControllerUsedInGameLayer];
  }
}

void __69__GKExtensionRootViewController_logOnceGameControllerUsedInGameLayer__block_invoke()
{
  v4 = [MEMORY[0x277D0C1F8] reporter];
  v0 = *MEMORY[0x277D0BE68];
  v1 = *MEMORY[0x277D0BED0];
  v2 = [MEMORY[0x277D0C048] currentGame];
  v3 = [v2 bundleIdentifier];
  [v4 reportEvent:v0 type:v1 bundleID:v3];
}

- (void)setToLightBackground
{
  v3 = [MEMORY[0x277D75210] effectWithStyle:0];
  [(UIVisualEffectView *)self->_effectView setEffect:v3];
}

- (void)setToDarkBackground
{
  v3 = [MEMORY[0x277D75210] effectWithStyle:2];
  [(UIVisualEffectView *)self->_effectView setEffect:v3];
}

void __63__GKExtensionRootViewController_constructContentViewController__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24DE53000, a2, OS_LOG_TYPE_DEBUG, "Starting cache updates from extension. error: %@", &v2, 0xCu);
}

- (void)messageFromClient:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "error while decoding messageFromClient archive in GKExtensionRootViewController:%@", &v2, 0xCu);
}

- (void)hostObjectProxy
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GKExtensionRootViewController.m" lineNumber:552 description:@"GKExtensionContext remote object proxy is nil!"];
}

void __48__GKExtensionRootViewController_hostObjectProxy__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_24DE53000, v3, OS_LOG_TYPE_DEBUG, "error calling host - %@", &v5, 0xCu);
}

@end