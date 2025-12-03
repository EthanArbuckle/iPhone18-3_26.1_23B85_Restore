@interface SUUIContextActionsViewController
- (CGPoint)gestureRecognizerInitialLocation;
- (SUUIContextActionsViewController)initWithCoder:(id)coder;
- (SUUIContextActionsViewController)initWithConfiguration:(id)configuration;
- (id)_transitionPresentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (id)animationControllerForDismissedController:(id)controller;
- (void)_applySystemRecognizer;
- (void)_reloadViewsConfiguration;
- (void)animateTransition:(id)transition;
- (void)interfaceAction:(id)action invokeActionHandler:(id)handler completion:(id)completion;
- (void)systemProvidedGestureRecognzierTriggered:(id)triggered;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUUIContextActionsViewController

- (SUUIContextActionsViewController)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 raise:@"SKUnsupportedPresentationException" format:{@"%@ must be used with configuration", v6}];

  return 0;
}

- (SUUIContextActionsViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = SUUIContextActionsViewController;
  v6 = [(SUUIContextActionsViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v7->_orbPresentation = 0;
    v7->_appliedSystemRecognizer = 0;
    [(SUUIContextActionsViewController *)v7 setTransitioningDelegate:v7];
    [(SUUIContextActionsViewController *)v7 setModalPresentationStyle:4];
  }

  return v7;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = SUUIContextActionsViewController;
  [(SUUIContextActionsViewController *)&v16 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_viewTapped_];
  view = [(SUUIContextActionsViewController *)self view];
  [view addGestureRecognizer:v3];

  v5 = objc_alloc(MEMORY[0x277D75D68]);
  v6 = [MEMORY[0x277D75210] effectWithStyle:0];
  v7 = [v5 initWithEffect:v6];

  [(UIVisualEffectView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIVisualEffectView *)v7 _setContinuousCornerRadius:16.0];
  [(UIVisualEffectView *)v7 setClipsToBounds:1];
  [(UIVisualEffectView *)v7 setHidden:1];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v7;
  v9 = v7;

  view2 = [(SUUIContextActionsViewController *)self view];
  [view2 addSubview:v9];

  v11 = objc_alloc(MEMORY[0x277D75A68]);
  v12 = [v11 initWithArrangedSubviews:MEMORY[0x277CBEBF8]];
  [(UIStackView *)v12 setAxis:1];
  [(UIStackView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView = self->_stackView;
  self->_stackView = v12;
  v14 = v12;

  view3 = [(SUUIContextActionsViewController *)self view];
  [view3 addSubview:v14];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SUUIContextActionsViewController;
  [(SUUIContextActionsViewController *)&v4 viewWillAppear:appear];
  [(SUUIContextActionsViewController *)self _reloadViewsConfiguration];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SUUIContextActionsViewController;
  [(SUUIContextActionsViewController *)&v7 viewDidAppear:appear];
  systemProvidedGestureRecognzier = [(SUUIContextActionsViewController *)self systemProvidedGestureRecognzier];
  if (systemProvidedGestureRecognzier)
  {
    view = [(SUUIContextActionsViewController *)self view];
    window = [view window];
    [systemProvidedGestureRecognzier locationInView:window];
    [(SUUIContextActionsViewController *)self setGestureRecognizerInitialLocation:?];

    [systemProvidedGestureRecognzier addTarget:self action:sel_systemProvidedGestureRecognzierTriggered_];
  }
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SUUIContextActionsViewController;
  [(SUUIContextActionsViewController *)&v13 viewDidLayoutSubviews];
  scrollableActionGroupView = [(SUUIContextActionsViewController *)self scrollableActionGroupView];
  view = [(SUUIContextActionsViewController *)self view];
  [view bounds];
  [scrollableActionGroupView systemLayoutSizeFittingSize:{v5, v6}];
  v8 = v7;
  scrollableActionGroupView2 = [(SUUIContextActionsViewController *)self scrollableActionGroupView];
  [scrollableActionGroupView2 bounds];
  Height = CGRectGetHeight(v14);

  if (v8 > Height)
  {
    [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0399999991];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v11 = ;
  scrollableActionGroupView3 = [(SUUIContextActionsViewController *)self scrollableActionGroupView];
  [scrollableActionGroupView3 setBackgroundColor:v11];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SUUIContextActionsViewController;
  [(SUUIContextActionsViewController *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    horizontalSizeClass = [changeCopy horizontalSizeClass];
    traitCollection = [(SUUIContextActionsViewController *)self traitCollection];
    horizontalSizeClass2 = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass != horizontalSizeClass2)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __61__SUUIContextActionsViewController_traitCollectionDidChange___block_invoke;
      v8[3] = &unk_2798F5BE8;
      v8[4] = self;
      [(SUUIContextActionsViewController *)self dismissViewControllerAnimated:0 completion:v8];
    }
  }
}

void __61__SUUIContextActionsViewController_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v29 = [MEMORY[0x277D75418] currentDevice];
  if ([v29 userInterfaceIdiom] == 1)
  {
    v2 = [*(a1 + 32) traitCollection];
    v3 = [v2 horizontalSizeClass];

    if (v3 != 2)
    {
      return;
    }

    [*(a1 + 32) setModalPresentationStyle:7];
    v4 = [*(a1 + 32) configuration];
    v29 = [v4 presentationSource];

    v5 = [v29 viewController];
    [v5 presentViewController:*(a1 + 32) animated:0 completion:0];

    v6 = *(a1 + 32);
    v7 = [v6 presentationController];
    [v7 setDelegate:v6];

    v8 = [*(a1 + 32) configuration];
    v9 = [v8 presentationSource];
    v10 = [v9 barButtonItem];

    v11 = [*(a1 + 32) configuration];
    v12 = [v11 presentationSource];
    v13 = v12;
    if (v10)
    {
      v14 = [v12 barButtonItem];
      v15 = [*(a1 + 32) popoverPresentationController];
      [v15 setBarButtonItem:v14];

LABEL_8:
      goto LABEL_9;
    }

    v16 = [v12 sourceView];

    if (v16)
    {
      v17 = [*(a1 + 32) configuration];
      v18 = [v17 presentationSource];
      v19 = [v18 sourceView];
      v20 = [*(a1 + 32) popoverPresentationController];
      [v20 setSourceView:v19];

      v11 = [*(a1 + 32) configuration];
      v13 = [v11 presentationSource];
      [v13 sourceRect];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v14 = [*(a1 + 32) popoverPresentationController];
      [v14 setSourceRect:{v22, v24, v26, v28}];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)systemProvidedGestureRecognzierTriggered:(id)triggered
{
  triggeredCopy = triggered;
  [(SUUIContextActionsViewController *)self gestureRecognizerInitialLocation];
  v6 = v5;
  v7 = v4;
  v8 = v5 == *MEMORY[0x277CBF348] && v4 == *(MEMORY[0x277CBF348] + 8);
  if (!v8 && [triggeredCopy state] == 2)
  {
    view = [(SUUIContextActionsViewController *)self view];
    window = [view window];
    [triggeredCopy locationInView:window];
    v12 = v11;
    v14 = v13;

    v15 = v12 - v6;
    if (v12 - v6 < 0.0)
    {
      v15 = -(v12 - v6);
    }

    if (v15 > 40.0)
    {
      goto LABEL_12;
    }

    v16 = v14 - v7;
    if (v14 - v7 < 0.0)
    {
      v16 = -(v14 - v7);
    }

    if (v16 > 25.0)
    {
LABEL_12:
      [(SUUIContextActionsViewController *)self _applySystemRecognizer];
    }
  }
}

- (void)_applySystemRecognizer
{
  contextActionView = [(SUUIContextActionsViewController *)self contextActionView];
  systemProvidedGestureRecognzier = [(SUUIContextActionsViewController *)self systemProvidedGestureRecognzier];
  [contextActionView beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:systemProvidedGestureRecognzier];

  systemProvidedGestureRecognzier2 = [(SUUIContextActionsViewController *)self systemProvidedGestureRecognzier];

  if (systemProvidedGestureRecognzier2)
  {
    systemProvidedGestureRecognzier3 = [(SUUIContextActionsViewController *)self systemProvidedGestureRecognzier];
    [systemProvidedGestureRecognzier3 removeTarget:self action:sel_systemProvidedGestureRecognzierTriggered_];
  }

  [(SUUIContextActionsViewController *)self setAppliedSystemRecognizer:1];
}

- (void)_reloadViewsConfiguration
{
  v165 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAD0];
  constraints = [(SUUIContextActionsViewController *)self constraints];
  [v3 deactivateConstraints:constraints];

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  stackView = [(SUUIContextActionsViewController *)self stackView];
  arrangedSubviews = [stackView arrangedSubviews];

  v7 = [arrangedSubviews countByEnumeratingWithState:&v154 objects:v164 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v155;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v155 != v9)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v11 = *(*(&v154 + 1) + 8 * i);
        stackView2 = [(SUUIContextActionsViewController *)self stackView];
        [stackView2 setSpacing:0.0];

        stackView3 = [(SUUIContextActionsViewController *)self stackView];
        [stackView3 removeArrangedSubview:v11];

        [v11 removeFromSuperview];
      }

      v8 = [arrangedSubviews countByEnumeratingWithState:&v154 objects:v164 count:16];
    }

    while (v8);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(SUUIContextActionsViewController *)self setConstraints:v14];

  v15 = *MEMORY[0x277D76A28];
  v17 = __61__SUUIContextActionsViewController__reloadViewsConfiguration__block_invoke(v16, *MEMORY[0x277D76A28], 0, 0x8000);
  v162 = *MEMORY[0x277D74378];
  v163 = *MEMORY[0x277CC4880];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
  v19 = __61__SUUIContextActionsViewController__reloadViewsConfiguration__block_invoke(v18, v15, v18, 0);

  configuration = [(SUUIContextActionsViewController *)self configuration];
  contextActions = [configuration contextActions];

  v22 = objc_alloc(MEMORY[0x277D75628]);
  v145 = contextActions;
  v23 = [MEMORY[0x277D75620] actionGroupWithActions:contextActions];
  v24 = [v22 initWithActionGroup:v23 actionHandlerInvocationDelegate:self];

  v147 = v17;
  [v24 _setVisualStyleOverrideTitleLabelFont:v17];
  LODWORD(v25) = 1132068864;
  [v24 setContentCompressionResistancePriority:1 forAxis:v25];
  [(SUUIContextActionsViewController *)self setContextActionView:v24];
  v144 = v24;
  if ([(SUUIContextActionsViewController *)self isOrbPresentation]|| ([(SUUIContextActionsViewController *)self _isInPopoverPresentation]& 1) != 0)
  {
    v26 = 0;
  }

  else
  {
    v27 = MEMORY[0x277D75618];
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"CANCEL" value:&stru_286AECDE0 table:0];
    v30 = [v27 actionWithTitle:v29 type:1 handler:&__block_literal_global_44];

    v31 = MEMORY[0x277D755B8];
    clearColor = [MEMORY[0x277D75348] clearColor];
    v33 = [v31 singlePointImageWithColor:clearColor];
    v34 = [v33 imageWithAlignmentRectInsets:{-55.0, 0.0, 0.0, 0.0}];
    [v30 setTrailingImage:v34];

    v35 = objc_alloc(MEMORY[0x277D75628]);
    v36 = MEMORY[0x277D75620];
    v161 = v30;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v161 count:1];
    v38 = [v36 actionGroupWithActions:v37];
    v26 = [v35 initWithActionGroup:v38 actionHandlerInvocationDelegate:self];

    v39 = MEMORY[0x277CCAAD0];
    heightAnchor = [v26 heightAnchor];
    v41 = [heightAnchor constraintEqualToConstant:56.0];
    v160 = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:1];
    [v39 activateConstraints:v42];

    [v26 _setVisualStyleOverrideTitleLabelFont:v19];
  }

  v43 = objc_alloc(MEMORY[0x277D75A68]);
  v44 = [v43 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v44 setAxis:1];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView4 = [(SUUIContextActionsViewController *)self stackView];
  [stackView4 addArrangedSubview:v44];

  _isInPopoverPresentation = [(SUUIContextActionsViewController *)self _isInPopoverPresentation];
  if ((_isInPopoverPresentation & 1) == 0)
  {
    contextActionView = [(SUUIContextActionsViewController *)self contextActionView];
    [contextActionView _setContinuousCornerRadius:16.0];

    contextActionView2 = [(SUUIContextActionsViewController *)self contextActionView];
    [contextActionView2 setClipsToBounds:1];

    contextActionView3 = [(SUUIContextActionsViewController *)self contextActionView];
    layer = [contextActionView3 layer];
    [layer setMaskedCorners:15];
  }

  contextActionView4 = [(SUUIContextActionsViewController *)self contextActionView];
  [contextActionView4 _setDrawsBackground:0];

  contextActionView5 = [(SUUIContextActionsViewController *)self contextActionView];
  [v44 addArrangedSubview:contextActionView5];

  if ([(SUUIContextActionsViewController *)self hasAppliedSystemRecognizer])
  {
    contextActionView6 = [(SUUIContextActionsViewController *)self contextActionView];
    systemProvidedGestureRecognzier = [(SUUIContextActionsViewController *)self systemProvidedGestureRecognzier];
    [contextActionView6 beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:systemProvidedGestureRecognzier];
  }

  if (v26)
  {
    stackView5 = [(SUUIContextActionsViewController *)self stackView];
    [stackView5 setSpacing:8.0];

    stackView6 = [(SUUIContextActionsViewController *)self stackView];
    [stackView6 addArrangedSubview:v26];
  }

  if ((_isInPopoverPresentation | [(SUUIContextActionsViewController *)self isOrbPresentation]) == 1)
  {
    stackView7 = [(SUUIContextActionsViewController *)self stackView];
    centerYAnchor = [stackView7 centerYAnchor];
    view = [(SUUIContextActionsViewController *)self view];
    centerYAnchor2 = [view centerYAnchor];
    v153 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  }

  else
  {
    view2 = [(SUUIContextActionsViewController *)self view];
    layoutMarginsGuide = [view2 layoutMarginsGuide];
    stackView7 = [layoutMarginsGuide bottomAnchor];

    centerYAnchor = [(SUUIContextActionsViewController *)self stackView];
    view = [centerYAnchor bottomAnchor];
    v153 = [view constraintEqualToAnchor:stackView7 constant:-10.0];
  }

  view3 = [(SUUIContextActionsViewController *)self view];
  v64 = view3;
  if (_isInPopoverPresentation)
  {
    leadingAnchor = [view3 leadingAnchor];

    view4 = [(SUUIContextActionsViewController *)self view];
    trailingAnchor = [view4 trailingAnchor];
  }

  else
  {
    layoutMarginsGuide2 = [view3 layoutMarginsGuide];
    leadingAnchor = [layoutMarginsGuide2 leadingAnchor];

    view4 = [(SUUIContextActionsViewController *)self view];
    layoutMarginsGuide3 = [view4 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide3 trailingAnchor];
  }

  v143 = v26;
  v146 = v19;

  stackView8 = [(SUUIContextActionsViewController *)self stackView];
  leadingAnchor2 = [stackView8 leadingAnchor];
  v141 = leadingAnchor;
  v72 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor];

  stackView9 = [(SUUIContextActionsViewController *)self stackView];
  trailingAnchor2 = [stackView9 trailingAnchor];
  v140 = trailingAnchor;
  v75 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor];

  v142 = _isInPopoverPresentation;
  v148 = v75;
  v149 = v72;
  v150 = v44;
  if ((_isInPopoverPresentation & 1) == 0)
  {
    view5 = [(SUUIContextActionsViewController *)self view];
    [view5 layoutMargins];
    v78 = v77;
    view6 = [(SUUIContextActionsViewController *)self view];
    [view6 layoutMargins];
    v81 = -(v78 + v80);

    stackView10 = [(SUUIContextActionsViewController *)self stackView];
    widthAnchor = [stackView10 widthAnchor];
    view7 = [(SUUIContextActionsViewController *)self view];
    heightAnchor2 = [view7 heightAnchor];
    v86 = [widthAnchor constraintEqualToAnchor:heightAnchor2 constant:v81];

    LODWORD(v87) = 1132068864;
    v88 = v86;
    v151 = v86;
    [v86 setPriority:v87];
    stackView11 = [(SUUIContextActionsViewController *)self stackView];
    topAnchor = [stackView11 topAnchor];
    view8 = [(SUUIContextActionsViewController *)self view];
    topAnchor2 = [view8 topAnchor];
    v93 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:70.0];

    LODWORD(v94) = 1148829696;
    [v93 setPriority:v94];
    constraints2 = [(SUUIContextActionsViewController *)self constraints];
    v159[0] = v93;
    v159[1] = v88;
    stackView12 = [(SUUIContextActionsViewController *)self stackView];
    widthAnchor2 = [stackView12 widthAnchor];
    view9 = [(SUUIContextActionsViewController *)self view];
    heightAnchor3 = [view9 heightAnchor];
    v96 = [widthAnchor2 constraintLessThanOrEqualToAnchor:heightAnchor3 constant:v81];
    v159[2] = v96;
    stackView13 = [(SUUIContextActionsViewController *)self stackView];
    centerXAnchor = [stackView13 centerXAnchor];
    view10 = [(SUUIContextActionsViewController *)self view];
    centerXAnchor2 = [view10 centerXAnchor];
    v101 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v159[3] = v101;
    v102 = [MEMORY[0x277CBEA60] arrayWithObjects:v159 count:4];
    [constraints2 addObjectsFromArray:v102];

    v75 = v148;
    v72 = v149;

    v44 = v150;
    LODWORD(v103) = 1144750080;
    [v149 setPriority:v103];
    LODWORD(v104) = 1144750080;
    [v148 setPriority:v104];
    backgroundView = [(SUUIContextActionsViewController *)self backgroundView];
    [backgroundView setHidden:0];
  }

  constraints3 = [(SUUIContextActionsViewController *)self constraints];
  v158[0] = v153;
  v158[1] = v72;
  v158[2] = v75;
  stackView14 = [(SUUIContextActionsViewController *)self stackView];
  bottomAnchor = [stackView14 bottomAnchor];
  view11 = [(SUUIContextActionsViewController *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v132 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v158[3] = v132;
  backgroundView2 = [(SUUIContextActionsViewController *)self backgroundView];
  centerYAnchor3 = [backgroundView2 centerYAnchor];
  centerYAnchor4 = [v44 centerYAnchor];
  v127 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v158[4] = v127;
  backgroundView3 = [(SUUIContextActionsViewController *)self backgroundView];
  centerXAnchor3 = [backgroundView3 centerXAnchor];
  centerXAnchor4 = [v44 centerXAnchor];
  v123 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v158[5] = v123;
  backgroundView4 = [(SUUIContextActionsViewController *)self backgroundView];
  widthAnchor3 = [backgroundView4 widthAnchor];
  widthAnchor4 = [v44 widthAnchor];
  v109 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v158[6] = v109;
  backgroundView5 = [(SUUIContextActionsViewController *)self backgroundView];
  heightAnchor4 = [backgroundView5 heightAnchor];
  heightAnchor5 = [v44 heightAnchor];
  v113 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  v158[7] = v113;
  v114 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:8];
  [constraints3 addObjectsFromArray:v114];

  v115 = MEMORY[0x277CCAAD0];
  constraints4 = [(SUUIContextActionsViewController *)self constraints];
  [v115 activateConstraints:constraints4];

  if (v142)
  {
    stackView15 = [(SUUIContextActionsViewController *)self stackView];
    view12 = [(SUUIContextActionsViewController *)self view];
    [view12 bounds];
    [stackView15 systemLayoutSizeFittingSize:{v119, v120}];
    v122 = v121;

    [(SUUIContextActionsViewController *)self setPreferredContentSize:347.0, v122];
  }
}

id __61__SUUIContextActionsViewController__reloadViewsConfiguration__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:a2];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 fontDescriptorByAddingAttributes:v6];

    v8 = v9;
  }

  if (a4)
  {
    v10 = [v8 fontDescriptorWithSymbolicTraits:a4];

    v8 = v10;
  }

  v11 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];

  return v11;
}

- (void)interfaceAction:(id)action invokeActionHandler:(id)handler completion:(id)completion
{
  completionCopy = completion;
  if (handler)
  {
    v11 = 0;
    (*(handler + 2))(handler, action, &v11);
    if (v11 == 1)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __83__SUUIContextActionsViewController_interfaceAction_invokeActionHandler_completion___block_invoke;
      v9[3] = &unk_2798F8B98;
      v10 = completionCopy;
      [(SUUIContextActionsViewController *)self dismissViewControllerAnimated:1 completion:v9];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    [(SUUIContextActionsViewController *)self dismissViewControllerAnimated:1 completion:completionCopy];
  }
}

uint64_t __83__SUUIContextActionsViewController_interfaceAction_invokeActionHandler_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_transitionPresentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  transitionPresentationController = [(SUUIContextActionsViewController *)self transitionPresentationController];

  if (!transitionPresentationController)
  {
    v9 = [[SUUIContextActionsPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];
    [(SUUIContextActionsViewController *)self setTransitionPresentationController:v9];
  }

  transitionPresentationController2 = [(SUUIContextActionsViewController *)self transitionPresentationController];

  return transitionPresentationController2;
}

- (id)animationControllerForDismissedController:(id)controller
{
  if ([(SUUIContextActionsViewController *)self isOrbPresentation])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = MEMORY[0x277D75D18];
  [(SUUIContextActionsViewController *)self transitionDuration:transitionCopy];
  v7 = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SUUIContextActionsViewController_animateTransition___block_invoke;
  v11[3] = &unk_2798F5BE8;
  v11[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__SUUIContextActionsViewController_animateTransition___block_invoke_2;
  v9[3] = &unk_2798F5D30;
  v10 = transitionCopy;
  v8 = transitionCopy;
  [v5 animateWithDuration:0 delay:v11 usingSpringWithDamping:v9 initialSpringVelocity:v7 options:0.0 animations:1.0 completion:0.0];
}

void __54__SUUIContextActionsViewController_animateTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionPresentationController];
  v1 = [v2 dismissalAnimations];
}

uint64_t __54__SUUIContextActionsViewController_animateTransition___block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = [*(a1 + 32) transitionWasCancelled] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return [v2 completeTransition:v3];
}

- (CGPoint)gestureRecognizerInitialLocation
{
  x = self->_gestureRecognizerInitialLocation.x;
  y = self->_gestureRecognizerInitialLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end