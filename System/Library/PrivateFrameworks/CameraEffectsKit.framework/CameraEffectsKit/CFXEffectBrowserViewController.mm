@interface CFXEffectBrowserViewController
+ (CGSize)CFX_droppedSizeForSticker:(id)sticker dropTarget:(id)target;
+ (CGSize)CFX_sizeOfImageAtURL:(id)l;
- (BOOL)expandedAppShouldDismissOnDragSuccess;
- (BOOL)shouldRotateCellsForDeviceOrientation;
- (BOOL)showAppIconBorders;
- (CFXEffectBrowserContentPresenterDelegate)contentPresenterDelegate;
- (CFXEffectBrowserViewController)initWithDelegate:(id)delegate contentPresenter:(id)presenter;
- (CFXEffectBrowserViewControllerDelegate)delegate;
- (CGSize)expandedAppViewControllerSize;
- (UIViewController)contentPresenter;
- (UIViewController)dockPresentationViewController;
- (id)localizedPromptForHidingAnimojiForEffectBrowserViewController:(id)controller;
- (id)selectedAnimojiIdentifierForEffectBrowserViewController:(id)controller;
- (id)selectedFilterIdentifierForEffectPickerViewController:(id)controller;
- (void)CFX_addSticker:(id)sticker atDropTarget:(id)target;
- (void)CFX_updateAVTAvatarPickerforViewController:(id)controller;
- (void)avatarPicker:(id)picker didSelectAvatarRecord:(id)record;
- (void)avatarPickerDidEndCameraSession:(id)session;
- (void)avatarPickerWillStartCameraSession:(id)session;
- (void)commitAnimatedLayoutChanges;
- (void)compactCurrentMessagesApp;
- (void)configureUIForOrientation;
- (void)dealloc;
- (void)didDismissMemojiPicker;
- (void)didSelectAppWithBundleIdentifier:(id)identifier;
- (void)dismissExpandedAppViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)displayPickerForEffectTypeIdentifier:(id)identifier messagesAppViewController:(id)controller embedInMessageAppViewController:(BOOL)viewController;
- (void)dockDidMagnify:(BOOL)magnify;
- (void)effectPickerViewController:(id)controller didPickEffect:(id)effect;
- (void)hideBrowserAnimated:(BOOL)animated completion:(id)completion;
- (void)initMessagesAppsDockViewController;
- (void)loadView;
- (void)presentExpandedAppViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)refreshEffectBrowserForCameraFlip;
- (void)removeEffectPickerViewController;
- (void)setShowAppIconBorders:(BOOL)borders;
- (void)showMemojiPicker:(id)picker;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CFXEffectBrowserViewController

- (CFXEffectBrowserViewController)initWithDelegate:(id)delegate contentPresenter:(id)presenter
{
  delegateCopy = delegate;
  presenterCopy = presenter;
  v14.receiver = self;
  v14.super_class = CFXEffectBrowserViewController;
  v8 = [(CFXEffectBrowserViewController *)&v14 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeWeak(&v9->_contentPresenter, presenterCopy);
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("AnimojiLoadingQueue", v10);
    animojiLoadingQueue = v9->_animojiLoadingQueue;
    v9->_animojiLoadingQueue = v11;
  }

  return v9;
}

- (void)dealloc
{
  messagesAppsDockViewController = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
  [messagesAppsDockViewController cleanupRunningApps];

  v4.receiver = self;
  v4.super_class = CFXEffectBrowserViewController;
  [(CFXEffectBrowserViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(CFXEffectBrowserView);
  [(CFXEffectBrowserViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CFXEffectBrowserViewController;
  [(CFXEffectBrowserViewController *)&v3 viewDidLoad];
  [(CFXEffectBrowserViewController *)self initMessagesAppsDockViewController];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CFXEffectBrowserViewController;
  [(CFXEffectBrowserViewController *)&v3 viewDidLayoutSubviews];
  [(CFXEffectBrowserViewController *)self configureUIForOrientation];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v14.receiver = self;
  v14.super_class = CFXEffectBrowserViewController;
  [(CFXEffectBrowserViewController *)&v14 viewWillTransitionToSize:coordinator withTransitionCoordinator:?];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    if (v9 == 667)
    {
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      v12 = v11;

      if (v12 != 667)
      {
        return;
      }
    }

    if (height <= width)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = -3.0;
    }

    currentDevice = [(CFXEffectBrowserViewController *)self madTopConstraint];
    [currentDevice setConstant:v13];
  }
}

- (void)configureUIForOrientation
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {
    delegate = [(CFXEffectBrowserViewController *)self delegate];
    v4 = [delegate allowLandscapeForEffectBrowserViewController:self];

    if (!v4)
    {
      return;
    }

    v5 = +[JFXOrientationMonitor interfaceOrientation];
    if ((v5 - 3) > 1)
    {
      madWidthConstraint = [(CFXEffectBrowserViewController *)self madWidthConstraint];
      v7 = 1132068864;
      LODWORD(v21) = 1132068864;
      [madWidthConstraint setPriority:v21];

      madHeightConstraint = [(CFXEffectBrowserViewController *)self madHeightConstraint];
      LODWORD(v23) = 1144750080;
      [madHeightConstraint setPriority:v23];

      madLeadingConstraint = [(CFXEffectBrowserViewController *)self madLeadingConstraint];
      LODWORD(v25) = 1144750080;
      [madLeadingConstraint setPriority:v25];

      madTrailingConstraint = [(CFXEffectBrowserViewController *)self madTrailingConstraint];
      LODWORD(v27) = 1144750080;
      [madTrailingConstraint setPriority:v27];

      madTopConstraint = [(CFXEffectBrowserViewController *)self madTopConstraint];
      LODWORD(v29) = 1144750080;
      [madTopConstraint setPriority:v29];

      madBottomConstraint = [(CFXEffectBrowserViewController *)self madBottomConstraint];
    }

    else
    {
      madWidthConstraint2 = [(CFXEffectBrowserViewController *)self madWidthConstraint];
      v7 = 1144750080;
      LODWORD(v8) = 1144750080;
      [madWidthConstraint2 setPriority:v8];

      madHeightConstraint2 = [(CFXEffectBrowserViewController *)self madHeightConstraint];
      LODWORD(v10) = 1132068864;
      [madHeightConstraint2 setPriority:v10];

      madTopConstraint2 = [(CFXEffectBrowserViewController *)self madTopConstraint];
      LODWORD(v12) = 1144750080;
      [madTopConstraint2 setPriority:v12];

      madBottomConstraint2 = [(CFXEffectBrowserViewController *)self madBottomConstraint];
      LODWORD(v14) = 1144750080;
      [madBottomConstraint2 setPriority:v14];

      madLeadingConstraint2 = [(CFXEffectBrowserViewController *)self madLeadingConstraint];
      v17 = madLeadingConstraint2;
      if (v5 != 4)
      {
        LODWORD(v16) = 1144750080;
        [madLeadingConstraint2 setPriority:v16];

        madBottomConstraint = [(CFXEffectBrowserViewController *)self madTrailingConstraint];
        v30 = madBottomConstraint;
        LODWORD(v19) = 1132068864;
LABEL_12:
        [madBottomConstraint setPriority:v19];

        v31 = +[JFXOrientationMonitor keyWindow];
        [v31 bounds];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        [MEMORY[0x277D3D080] cameraBottomBarGeometryForReferenceBounds:v5 withOrientation:{v33, v35, v37, v39}];
        [MEMORY[0x277D3D080] cameraBottomBarFrameForReferenceBounds:{v33, v35, v37, v39}];
        Width = CGRectGetWidth(v72);
        messagesAppsDockViewController = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        [messagesAppsDockViewController minimizedDockHeight];
        v43 = v42;

        v62 = v68;
        v63 = v69;
        v64 = v70;
        messagesAppsDockViewController2 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        view = [messagesAppsDockViewController2 view];
        v61[0] = v62;
        v61[1] = v63;
        v61[2] = v64;
        [view setTransform:v61];

        messagesAppsDockViewController3 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        view2 = [messagesAppsDockViewController3 view];
        [view2 setBounds:{0.0, 0.0, Width, v43}];

        if ((v5 - 3) > 1)
        {
          v52 = Width * 0.5;
          Width = v43;
LABEL_24:
          messagesAppsDockViewController4 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
          view3 = [messagesAppsDockViewController4 view];
          [view3 setCenter:{v52, Width * 0.5}];

          return;
        }

        v48 = v43 * 0.5;
        currentDevice2 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice2 userInterfaceIdiom])
        {

LABEL_15:
          v50 = 0;
          v51 = 0.0;
LABEL_21:
          if (((v5 == 3) & v50) != 0)
          {
            v51 = -v51;
          }

          v52 = v48 + v51;
          goto LABEL_24;
        }

        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        if (v54 == 667)
        {
        }

        else
        {
          mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen2 bounds];
          v57 = v56;

          if (v57 != 667)
          {
            goto LABEL_15;
          }
        }

        v51 = 3.0;
        v50 = 1;
        goto LABEL_21;
      }

      LODWORD(v16) = 1132068864;
      [madLeadingConstraint2 setPriority:v16];

      madBottomConstraint = [(CFXEffectBrowserViewController *)self madTrailingConstraint];
    }

    v30 = madBottomConstraint;
    LODWORD(v19) = v7;
    goto LABEL_12;
  }
}

- (void)compactCurrentMessagesApp
{
  messagesAppsDockViewController = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
  currentAppViewController = [messagesAppsDockViewController currentAppViewController];

  if (!currentAppViewController)
  {
    memojiPicker = [(CFXEffectBrowserViewController *)self memojiPicker];
    sheetPresentationController = [memojiPicker sheetPresentationController];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__CFXEffectBrowserViewController_compactCurrentMessagesApp__block_invoke;
    v8[3] = &unk_278D79C88;
    v9 = sheetPresentationController;
    selfCopy = self;
    v5 = sheetPresentationController;
    [v5 animateChanges:v8];

LABEL_6:
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = currentAppViewController;
    if ([v5 presentationStyle] == 1)
    {
      [v5 requestPresentationStyle:0];
    }

    goto LABEL_6;
  }

LABEL_7:
}

void __59__CFXEffectBrowserViewController_compactCurrentMessagesApp__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) compactDetentIdentifier];
  [*(a1 + 32) setSelectedDetentIdentifier:v2];
}

- (void)displayPickerForEffectTypeIdentifier:(id)identifier messagesAppViewController:(id)controller embedInMessageAppViewController:(BOOL)viewController
{
  viewControllerCopy = viewController;
  v44[4] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  controllerCopy = controller;
  effectPickerViewController = [(CFXEffectBrowserViewController *)self effectPickerViewController];
  effectType = [effectPickerViewController effectType];
  identifier = [effectType identifier];
  if ([identifier isEqualToString:identifierCopy])
  {
    effectPickerViewController2 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
    parentViewController = [effectPickerViewController2 parentViewController];

    if (parentViewController == controllerCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  effectPickerViewController3 = [(CFXEffectBrowserViewController *)self effectPickerViewController];

  if (effectPickerViewController3)
  {
    [(CFXEffectBrowserViewController *)self removeEffectPickerViewController];
  }

  v16 = +[CFXEffectPickerViewController effectPickerViewController];
  [(CFXEffectBrowserViewController *)self setEffectPickerViewController:v16];

  effectPickerViewController4 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
  [effectPickerViewController4 setDelegate:self];

  v18 = [CFXEffectType effectTypeWithIdentifier:identifierCopy];
  effectPickerViewController5 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
  [effectPickerViewController5 setEffectType:v18];

  delegate = [(CFXEffectBrowserViewController *)self delegate];
  LOBYTE(effectPickerViewController5) = objc_opt_respondsToSelector();

  if (effectPickerViewController5)
  {
    delegate2 = [(CFXEffectBrowserViewController *)self delegate];
    effectPickerViewController6 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
    effectType2 = [effectPickerViewController6 effectType];
    [delegate2 effectBrowserViewController:self didPresentPickerForEffectType:effectType2];
  }

  delegate3 = [(CFXEffectBrowserViewController *)self delegate];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __129__CFXEffectBrowserViewController_displayPickerForEffectTypeIdentifier_messagesAppViewController_embedInMessageAppViewController___block_invoke;
  v43[3] = &unk_278D7BE78;
  v43[4] = self;
  [delegate3 effectBrowserViewController:self filterPickerPreviewBackgroundImageAtSizeInPixels:v43 completion:{200.0, 200.0}];

  effectPickerViewController7 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
  if (viewControllerCopy)
  {
    [controllerCopy jfxAddChildViewController:effectPickerViewController7 constrainRelativeToSafeAreas:0];
  }

  else
  {
    [(UIViewController *)self jfxAddChildViewController:effectPickerViewController7];

    effectPickerViewController8 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
    effectPickerViewController7 = [effectPickerViewController8 view];

    messagesAppsDockContainerView = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
    [effectPickerViewController7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = MEMORY[0x277CCAAD0];
    leftAnchor = [effectPickerViewController7 leftAnchor];
    leftAnchor2 = [messagesAppsDockContainerView leftAnchor];
    v40 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v44[0] = v40;
    rightAnchor = [effectPickerViewController7 rightAnchor];
    rightAnchor2 = [messagesAppsDockContainerView rightAnchor];
    v36 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v44[1] = v36;
    heightAnchor = [effectPickerViewController7 heightAnchor];
    v29 = [heightAnchor constraintEqualToConstant:300.0];
    v44[2] = v29;
    topAnchor = [effectPickerViewController7 topAnchor];
    topAnchor2 = [messagesAppsDockContainerView topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v44[3] = v32;
    [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
    v33 = controllerCopy;
    v35 = v34 = identifierCopy;
    [v37 activateConstraints:v35];

    identifierCopy = v34;
    controllerCopy = v33;
  }

LABEL_13:
}

void __129__CFXEffectBrowserViewController_displayPickerForEffectTypeIdentifier_messagesAppViewController_embedInMessageAppViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 effectPickerViewController];
  [v5 setPreviewBackgroundImage:v4];

  v6 = [*(a1 + 32) effectPickerViewController];
  [v6 startPreviewing];
}

- (void)initMessagesAppsDockViewController
{
  v149[6] = *MEMORY[0x277D85DE8];
  if (!_os_feature_enabled_impl())
  {
    v4 = objc_alloc_init(MEMORY[0x277D7F8B8]);
    [(CFXEffectBrowserViewController *)self setMessagesAppsDockViewController:v4];

    messagesAppsDockViewController = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
    [messagesAppsDockViewController setDelegate:self];

    v6 = objc_alloc(MEMORY[0x277D75D18]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(CFXEffectBrowserViewController *)self setMessagesAppsDockContainerView:v7];

    view = [(CFXEffectBrowserViewController *)self view];
    messagesAppsDockContainerView = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
    [view addSubview:messagesAppsDockContainerView];

    messagesAppsDockContainerView2 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
    [messagesAppsDockContainerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentPresenterDelegate = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      contentPresenterDelegate2 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
      v14 = [contentPresenterDelegate2 shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:self];
    }

    else
    {
      delegate = [(CFXEffectBrowserViewController *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        delegate2 = [(CFXEffectBrowserViewController *)self delegate];
        v18 = [delegate2 shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:self];

        messagesAppsDockViewController2 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        [messagesAppsDockViewController2 setAlwaysPresentAppsExpanded:v18];

        if (v18)
        {
          messagesAppsDockContainerView3 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          widthAnchor = [messagesAppsDockContainerView3 widthAnchor];
          v22 = [widthAnchor constraintEqualToConstant:375.0];
          [(CFXEffectBrowserViewController *)self setMadWidthConstraint:v22];

          madWidthConstraint = [(CFXEffectBrowserViewController *)self madWidthConstraint];
          LODWORD(v24) = 1144750080;
          [madWidthConstraint setPriority:v24];

          messagesAppsDockContainerView4 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          heightAnchor = [messagesAppsDockContainerView4 heightAnchor];
          v27 = [heightAnchor constraintEqualToConstant:81.0];
          [(CFXEffectBrowserViewController *)self setMadHeightConstraint:v27];

          madHeightConstraint = [(CFXEffectBrowserViewController *)self madHeightConstraint];
          LODWORD(v29) = 1144750080;
          [madHeightConstraint setPriority:v29];

          messagesAppsDockContainerView5 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          leadingAnchor = [messagesAppsDockContainerView5 leadingAnchor];
          view2 = [(CFXEffectBrowserViewController *)self view];
          leadingAnchor2 = [view2 leadingAnchor];
          v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:36.0];
          [(CFXEffectBrowserViewController *)self setMadLeadingConstraint:v34];

          madLeadingConstraint = [(CFXEffectBrowserViewController *)self madLeadingConstraint];
          LODWORD(v36) = 1144750080;
          [madLeadingConstraint setPriority:v36];

          messagesAppsDockContainerView6 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          bottomAnchor = [messagesAppsDockContainerView6 bottomAnchor];
          view3 = [(CFXEffectBrowserViewController *)self view];
          bottomAnchor2 = [view3 bottomAnchor];
          v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-36.0];
          [(CFXEffectBrowserViewController *)self setMadBottomConstraint:v41];

          madBottomConstraint = [(CFXEffectBrowserViewController *)self madBottomConstraint];
          LODWORD(v43) = 1144750080;
          [madBottomConstraint setPriority:v43];

          v44 = MEMORY[0x277CCAAD0];
          madWidthConstraint2 = [(CFXEffectBrowserViewController *)self madWidthConstraint];
          v148[0] = madWidthConstraint2;
          madHeightConstraint2 = [(CFXEffectBrowserViewController *)self madHeightConstraint];
          v148[1] = madHeightConstraint2;
          madLeadingConstraint2 = [(CFXEffectBrowserViewController *)self madLeadingConstraint];
          v148[2] = madLeadingConstraint2;
          madBottomConstraint2 = [(CFXEffectBrowserViewController *)self madBottomConstraint];
          v148[3] = madBottomConstraint2;
          v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:4];
          [v44 activateConstraints:v49];

          messagesAppsDockViewController3 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
          messagesAppsDockContainerView7 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          [(UIViewController *)self jfxAddChildViewController:messagesAppsDockViewController3 containerView:messagesAppsDockContainerView7];

          messagesAppsDockViewController4 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
          view4 = [messagesAppsDockViewController4 view];

          [view4 setTranslatesAutoresizingMaskIntoConstraints:0];
          heightAnchor2 = [view4 heightAnchor];
          messagesAppsDockViewController5 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
          [messagesAppsDockViewController5 minimizedDockHeight];
          v56 = [heightAnchor2 constraintEqualToConstant:?];
          [(CFXEffectBrowserViewController *)self setMadExpandedAppButtonsHeightConstraint:v56];

          v139 = MEMORY[0x277CCAAD0];
          leftAnchor = [view4 leftAnchor];
          messagesAppsDockContainerView8 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          leftAnchor2 = [messagesAppsDockContainerView8 leftAnchor];
          v141 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
          v146 = view4;
          v147[0] = v141;
          rightAnchor = [view4 rightAnchor];
          messagesAppsDockContainerView9 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          rightAnchor2 = [messagesAppsDockContainerView9 rightAnchor];
          v59 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
          v147[1] = v59;
          madExpandedAppButtonsHeightConstraint = [(CFXEffectBrowserViewController *)self madExpandedAppButtonsHeightConstraint];
          v147[2] = madExpandedAppButtonsHeightConstraint;
          centerYAnchor = [view4 centerYAnchor];
          messagesAppsDockContainerView10 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          centerYAnchor2 = [messagesAppsDockContainerView10 centerYAnchor];
          v64 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
          v147[3] = v64;
          v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:4];
          [v139 activateConstraints:v65];

          messagesAppsDockContainerView11 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          layer = [messagesAppsDockContainerView11 layer];
          [layer setCornerRadius:12.0];

          v68 = MEMORY[0x277D75348];
          jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
          v70 = [v68 colorNamed:@"appDockBackground" inBundle:jfxBundle compatibleWithTraitCollection:0];
          messagesAppsDockContainerView12 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          [messagesAppsDockContainerView12 setBackgroundColor:v70];

          return;
        }

LABEL_12:
        messagesAppsDockContainerView13 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        widthAnchor2 = [messagesAppsDockContainerView13 widthAnchor];
        messagesAppsDockViewController6 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        [messagesAppsDockViewController6 minimizedDockHeight];
        v76 = [widthAnchor2 constraintEqualToConstant:?];
        [(CFXEffectBrowserViewController *)self setMadWidthConstraint:v76];

        madWidthConstraint3 = [(CFXEffectBrowserViewController *)self madWidthConstraint];
        LODWORD(v78) = 1132068864;
        [madWidthConstraint3 setPriority:v78];

        messagesAppsDockContainerView14 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        heightAnchor3 = [messagesAppsDockContainerView14 heightAnchor];
        messagesAppsDockViewController7 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        [messagesAppsDockViewController7 minimizedDockHeight];
        v82 = [heightAnchor3 constraintEqualToConstant:?];
        [(CFXEffectBrowserViewController *)self setMadHeightConstraint:v82];

        madHeightConstraint3 = [(CFXEffectBrowserViewController *)self madHeightConstraint];
        LODWORD(v84) = 1144750080;
        [madHeightConstraint3 setPriority:v84];

        messagesAppsDockContainerView15 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        leadingAnchor3 = [messagesAppsDockContainerView15 leadingAnchor];
        view5 = [(CFXEffectBrowserViewController *)self view];
        leadingAnchor4 = [view5 leadingAnchor];
        v89 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        [(CFXEffectBrowserViewController *)self setMadLeadingConstraint:v89];

        madLeadingConstraint3 = [(CFXEffectBrowserViewController *)self madLeadingConstraint];
        LODWORD(v91) = 1144750080;
        [madLeadingConstraint3 setPriority:v91];

        messagesAppsDockContainerView16 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        trailingAnchor = [messagesAppsDockContainerView16 trailingAnchor];
        view6 = [(CFXEffectBrowserViewController *)self view];
        trailingAnchor2 = [view6 trailingAnchor];
        v96 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        [(CFXEffectBrowserViewController *)self setMadTrailingConstraint:v96];

        madTrailingConstraint = [(CFXEffectBrowserViewController *)self madTrailingConstraint];
        LODWORD(v98) = 1144750080;
        [madTrailingConstraint setPriority:v98];

        messagesAppsDockContainerView17 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        topAnchor = [messagesAppsDockContainerView17 topAnchor];
        view7 = [(CFXEffectBrowserViewController *)self view];
        topAnchor2 = [view7 topAnchor];
        v103 = [topAnchor constraintEqualToAnchor:topAnchor2];
        [(CFXEffectBrowserViewController *)self setMadTopConstraint:v103];

        madTopConstraint = [(CFXEffectBrowserViewController *)self madTopConstraint];
        LODWORD(v105) = 1144750080;
        [madTopConstraint setPriority:v105];

        messagesAppsDockContainerView18 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        bottomAnchor3 = [messagesAppsDockContainerView18 bottomAnchor];
        view8 = [(CFXEffectBrowserViewController *)self view];
        bottomAnchor4 = [view8 bottomAnchor];
        v110 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
        [(CFXEffectBrowserViewController *)self setMadBottomConstraint:v110];

        madBottomConstraint3 = [(CFXEffectBrowserViewController *)self madBottomConstraint];
        LODWORD(v112) = 1132068864;
        [madBottomConstraint3 setPriority:v112];

        v113 = MEMORY[0x277CCAAD0];
        madWidthConstraint4 = [(CFXEffectBrowserViewController *)self madWidthConstraint];
        v149[0] = madWidthConstraint4;
        madHeightConstraint4 = [(CFXEffectBrowserViewController *)self madHeightConstraint];
        v149[1] = madHeightConstraint4;
        madLeadingConstraint4 = [(CFXEffectBrowserViewController *)self madLeadingConstraint];
        v149[2] = madLeadingConstraint4;
        madTrailingConstraint2 = [(CFXEffectBrowserViewController *)self madTrailingConstraint];
        v149[3] = madTrailingConstraint2;
        madTopConstraint2 = [(CFXEffectBrowserViewController *)self madTopConstraint];
        v149[4] = madTopConstraint2;
        madBottomConstraint4 = [(CFXEffectBrowserViewController *)self madBottomConstraint];
        v149[5] = madBottomConstraint4;
        v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:6];
        [v113 activateConstraints:v120];

        messagesAppsDockViewController8 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        messagesAppsDockContainerView19 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        delegate3 = [(CFXEffectBrowserViewController *)self delegate];
        -[UIViewController jfxAddChildViewController:containerView:constrainToContainer:relativeToSafeArea:](self, "jfxAddChildViewController:containerView:constrainToContainer:relativeToSafeArea:", messagesAppsDockViewController8, messagesAppsDockContainerView19, [delegate3 allowLandscapeForEffectBrowserViewController:self] ^ 1, 0);

        delegate4 = [(CFXEffectBrowserViewController *)self delegate];
        LODWORD(messagesAppsDockContainerView19) = [delegate4 allowLandscapeForEffectBrowserViewController:self];

        if (messagesAppsDockContainerView19)
        {
          messagesAppsDockContainerView20 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          [messagesAppsDockContainerView20 frame];
          Width = CGRectGetWidth(v151);
          messagesAppsDockContainerView21 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          [messagesAppsDockContainerView21 frame];
          Height = CGRectGetHeight(v152);
          messagesAppsDockViewController9 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
          view9 = [messagesAppsDockViewController9 view];
          [view9 setFrame:{0.0, 0.0, Width, Height}];
        }

        currentDevice = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice userInterfaceIdiom])
        {
          goto LABEL_15;
        }

        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        if (v133 == 667)
        {
          v134 = +[JFXOrientationMonitor interfaceOrientation];

          if (v134 != 1)
          {
            return;
          }
        }

        else
        {
          mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen2 bounds];
          if (v136 != 667)
          {

LABEL_15:
            return;
          }

          v137 = +[JFXOrientationMonitor interfaceOrientation];

          if (v137 != 1)
          {
            return;
          }
        }

        madTopConstraint3 = [(CFXEffectBrowserViewController *)self madTopConstraint];
        [madTopConstraint3 setConstant:-3.0];

        return;
      }

      v14 = 0;
    }

    messagesAppsDockViewController10 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
    [messagesAppsDockViewController10 setAlwaysPresentAppsExpanded:v14];

    goto LABEL_12;
  }

  v3 = objc_alloc_init(CFXMemojiPickerViewController);
  [(CFXEffectBrowserViewController *)self setMemojiPicker:v3];

  memojiPicker = [(CFXEffectBrowserViewController *)self memojiPicker];
  [memojiPicker setDelegate:self];
}

- (void)removeEffectPickerViewController
{
  effectPickerViewController = [(CFXEffectBrowserViewController *)self effectPickerViewController];

  if (effectPickerViewController)
  {
    effectPickerViewController2 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
    effectType = [effectPickerViewController2 effectType];

    effectPickerViewController3 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
    [effectPickerViewController3 jfxRemoveFromParentViewController];

    [(CFXEffectBrowserViewController *)self setEffectPickerViewController:0];
    delegate = [(CFXEffectBrowserViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(CFXEffectBrowserViewController *)self delegate];
      [delegate2 effectBrowserViewController:self didDismissPickerForEffectType:effectType];
    }
  }
}

- (void)hideBrowserAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  messagesAppsDockViewController = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];

  if (messagesAppsDockViewController)
  {
    messagesAppsDockViewController2 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
    [messagesAppsDockViewController2 hideAppViewControllerAnimated:animatedCopy completion:completionCopy];
  }

  else
  {
    memojiPicker = [(CFXEffectBrowserViewController *)self memojiPicker];

    if (memojiPicker)
    {
      messagesAppsDockViewController2 = [(CFXEffectBrowserViewController *)self memojiPicker];
      [messagesAppsDockViewController2 dismissViewControllerAnimated:1 completion:&__block_literal_global_44];
    }

    else
    {
      messagesAppsDockViewController2 = JFXLog_pickerUI();
      if (os_log_type_enabled(messagesAppsDockViewController2, OS_LOG_TYPE_ERROR))
      {
        [CFXEffectBrowserViewController hideBrowserAnimated:completion:];
      }
    }
  }
}

- (void)refreshEffectBrowserForCameraFlip
{
  messagesAppsDockViewController = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];

  if (messagesAppsDockViewController)
  {
    messagesAppsDockViewController2 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
    currentAppViewController = [messagesAppsDockViewController2 currentAppViewController];

    selfCopy2 = self;
    memojiPicker2 = currentAppViewController;
LABEL_5:
    [(CFXEffectBrowserViewController *)selfCopy2 CFX_updateAVTAvatarPickerforViewController:memojiPicker2];

    return;
  }

  memojiPicker = [(CFXEffectBrowserViewController *)self memojiPicker];

  if (memojiPicker)
  {
    memojiPicker2 = [(CFXEffectBrowserViewController *)self memojiPicker];
    currentAppViewController = memojiPicker2;
    selfCopy2 = self;
    goto LABEL_5;
  }

  v8 = JFXLog_pickerUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CFXEffectBrowserViewController refreshEffectBrowserForCameraFlip];
  }
}

- (BOOL)showAppIconBorders
{
  [(CFXEffectBrowserViewController *)self loadViewIfNeeded];
  messagesAppsDockViewController = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
  showIconBorders = [messagesAppsDockViewController showIconBorders];

  return showIconBorders;
}

- (void)setShowAppIconBorders:(BOOL)borders
{
  bordersCopy = borders;
  [(CFXEffectBrowserViewController *)self loadViewIfNeeded];
  messagesAppsDockViewController = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
  [messagesAppsDockViewController setShowIconBorders:bordersCopy];
}

- (void)showMemojiPicker:(id)picker
{
  v20[2] = *MEMORY[0x277D85DE8];
  pickerCopy = picker;
  memojiPicker = [(CFXEffectBrowserViewController *)self memojiPicker];

  if (memojiPicker)
  {
    memojiPicker2 = [(CFXEffectBrowserViewController *)self memojiPicker];
    [(CFXEffectBrowserViewController *)self CFX_updateAVTAvatarPickerforViewController:memojiPicker2];

    memojiPicker3 = [(CFXEffectBrowserViewController *)self memojiPicker];
    v8 = memojiPicker3;
    if (pickerCopy)
    {
      [memojiPicker3 setModalPresentationStyle:7];

      memojiPicker4 = [(CFXEffectBrowserViewController *)self memojiPicker];
      popoverPresentationController = [memojiPicker4 popoverPresentationController];

      [popoverPresentationController setSourceView:pickerCopy];
      [popoverPresentationController setPermittedArrowDirections:15];
    }

    else
    {
      sheetPresentationController = [memojiPicker3 sheetPresentationController];

      v13 = [MEMORY[0x277D75A28] customDetentWithIdentifier:0 resolver:&__block_literal_global_50];
      v20[0] = v13;
      largeDetent = [MEMORY[0x277D75A28] largeDetent];
      v20[1] = largeDetent;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
      [sheetPresentationController setDetents:v15];

      identifier = [v13 identifier];
      [(CFXEffectBrowserViewController *)self setCompactDetentIdentifier:identifier];

      [sheetPresentationController setPrefersScrollingExpandsWhenScrolledToEdge:0];
      [sheetPresentationController setPrefersGrabberVisible:1];
      compactDetentIdentifier = [(CFXEffectBrowserViewController *)self compactDetentIdentifier];
      [sheetPresentationController setLargestUndimmedDetentIdentifier:compactDetentIdentifier];
    }

    memojiPicker5 = [(CFXEffectBrowserViewController *)self memojiPicker];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__CFXEffectBrowserViewController_showMemojiPicker___block_invoke_2;
    v19[3] = &unk_278D79D20;
    v19[4] = self;
    [(CFXEffectBrowserViewController *)self presentViewController:memojiPicker5 animated:1 completion:v19];
  }

  else
  {
    v11 = JFXLog_pickerUI();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CFXEffectBrowserViewController showMemojiPicker:];
    }
  }
}

void __51__CFXEffectBrowserViewController_showMemojiPicker___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 effectBrowserViewController:*(a1 + 32) didSelectAppWithIdentifier:@"com.apple.FunCamera.Animoji"];
  }
}

- (void)avatarPicker:(id)picker didSelectAvatarRecord:(id)record
{
  pickerCopy = picker;
  recordCopy = record;
  v8 = JFXLog_pickerUI();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (recordCopy)
  {
    if (v9)
    {
      [CFXEffectBrowserViewController avatarPicker:recordCopy didSelectAvatarRecord:v8];
    }

    animojiLoadingQueue = [(CFXEffectBrowserViewController *)self animojiLoadingQueue];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __69__CFXEffectBrowserViewController_avatarPicker_didSelectAvatarRecord___block_invoke;
    v20 = &unk_278D79C88;
    v21 = recordCopy;
    selfCopy = self;
    dispatch_async(animojiLoadingQueue, &v17);

    delegate2 = v21;
    goto LABEL_9;
  }

  if (v9)
  {
    [CFXEffectBrowserViewController avatarPicker:didSelectAvatarRecord:];
  }

  delegate = [(CFXEffectBrowserViewController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(CFXEffectBrowserViewController *)self delegate];
    v14 = [CFXEffectType effectTypeWithIdentifier:@"Animoji"];
    [delegate2 effectBrowserViewController:self didRemoveAllEffectsOfType:v14];

LABEL_9:
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    [(CFXEffectBrowserViewController *)self compactCurrentMessagesApp];
  }
}

void __69__CFXEffectBrowserViewController_avatarPicker_didSelectAvatarRecord___block_invoke(uint64_t a1)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = AVTAvatarKitVersionNumber();
  v3 = [MEMORY[0x277CF0508] avatarForRecord:*(a1 + 32)];
  v4 = [v3 dataRepresentation];

  if (v4)
  {
    v15[0] = @"JFXAnimojiEffectDataRepresentationKey";
    v15[1] = @"JFXAnimojiEffectAvatarVersionNumberKey";
    v16[0] = v4;
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
    v16[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  }

  else
  {
    v6 = 0;
  }

  v7 = +[JFXEffectFactory sharedInstance];
  v8 = [*(a1 + 32) identifier];
  v9 = [v7 createEffectForType:7 fromID:v8 withProperties:v6];

  v10 = [CFXEffect effectWithJTEffect:v9];
  v11 = [*(a1 + 40) delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__CFXEffectBrowserViewController_avatarPicker_didSelectAvatarRecord___block_invoke_2;
    block[3] = &unk_278D79C88;
    block[4] = *(a1 + 40);
    v14 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __69__CFXEffectBrowserViewController_avatarPicker_didSelectAvatarRecord___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 effectBrowserViewController:*(a1 + 32) didSelectEffect:*(a1 + 40)];
}

- (void)avatarPickerDidEndCameraSession:(id)session
{
  v4 = JFXLog_pickerUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CFXEffectBrowserViewController avatarPickerDidEndCameraSession:];
  }

  delegate = [(CFXEffectBrowserViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CFXEffectBrowserViewController *)self delegate];
    [delegate2 effectBrowserViewControllerDidStartCaptureSession:self];
  }
}

- (void)avatarPickerWillStartCameraSession:(id)session
{
  v4 = JFXLog_pickerUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CFXEffectBrowserViewController avatarPickerWillStartCameraSession:];
  }

  delegate = [(CFXEffectBrowserViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CFXEffectBrowserViewController *)self delegate];
    [delegate2 effectBrowserViewControllerDidStopCaptureSession:self];
  }
}

- (void)effectPickerViewController:(id)controller didPickEffect:(id)effect
{
  effectCopy = effect;
  delegate = [(CFXEffectBrowserViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CFXEffectBrowserViewController *)self delegate];
    [delegate2 effectBrowserViewController:self didSelectEffect:effectCopy];
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    [(CFXEffectBrowserViewController *)self compactCurrentMessagesApp];
  }
}

- (id)selectedFilterIdentifierForEffectPickerViewController:(id)controller
{
  delegate = [(CFXEffectBrowserViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CFXEffectBrowserViewController *)self delegate];
    v7 = [delegate2 selectedFilterIdentifierForEffectBrowserViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldRotateCellsForDeviceOrientation
{
  delegate = [(CFXEffectBrowserViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(CFXEffectBrowserViewController *)self delegate];
  shouldRotateCellsForDeviceOrientation = [delegate2 shouldRotateCellsForDeviceOrientation];

  return shouldRotateCellsForDeviceOrientation;
}

- (id)selectedAnimojiIdentifierForEffectBrowserViewController:(id)controller
{
  delegate = [(CFXEffectBrowserViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CFXEffectBrowserViewController *)self delegate];
    v7 = [delegate2 selectedAnimojiIdentifierForEffectBrowserViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedPromptForHidingAnimojiForEffectBrowserViewController:(id)controller
{
  delegate = [(CFXEffectBrowserViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CFXEffectBrowserViewController *)self delegate];
    v7 = [delegate2 localizedPromptForHidingAnimojiForEffectBrowserViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (CGSize)CFX_sizeOfImageAtURL:(id)l
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  v5 = CGImageSourceCreateWithURL(l, 0);
  if (v5)
  {
    v6 = v5;
    v16 = *MEMORY[0x277CD3618];
    v17[0] = MEMORY[0x277CBEC28];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v8 = CGImageSourceCopyPropertiesAtIndex(v6, 0, v7);
    if (v8)
    {
      v9 = v8;
      v10 = CFDictionaryGetValue(v8, *MEMORY[0x277CD3450]);
      v11 = CFDictionaryGetValue(v9, *MEMORY[0x277CD3448]);
      [v10 floatValue];
      v3 = v12;
      [v11 floatValue];
      v4 = v13;
      CFRelease(v9);
    }

    CFRelease(v6);
  }

  v14 = v3;
  v15 = v4;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (CGSize)CFX_droppedSizeForSticker:(id)sticker dropTarget:(id)target
{
  targetCopy = target;
  fileURL = [sticker fileURL];
  [self CFX_sizeOfImageAtURL:fileURL];
  v9 = v8;
  v11 = v10;

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  if (v9 != *MEMORY[0x277CBF3A8] || v11 != v13)
  {
    [targetCopy scale];
    v16 = v15;
    [MEMORY[0x277D7F8C0] screenScale];
    v18 = 1.0 / v17;
    v19 = CGSizeScale(v9, v11, v16);
    v12 = CGSizeScale(v19, v20, v18);
    v13 = v21;
  }

  v22 = v12;
  v23 = v13;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)CFX_addSticker:(id)sticker atDropTarget:(id)target
{
  v49[1] = *MEMORY[0x277D85DE8];
  stickerCopy = sticker;
  targetCopy = target;
  stickerName = [stickerCopy stickerName];
  v9 = [CFXEffectMessagesStickerUtilities overlayIDFromAnimatedPreviewFileName:stickerName];

  if (v9)
  {
    v10 = 0;
    goto LABEL_8;
  }

  fileURL = [stickerCopy fileURL];

  if (fileURL)
  {
    fileURL2 = [stickerCopy fileURL];
    lastPathComponent = [fileURL2 lastPathComponent];
    v10 = [@"CFX" stringByAppendingString:lastPathComponent];

    v14 = NSTemporaryDirectory();
    v15 = [v14 stringByAppendingPathComponent:v10];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [defaultManager fileExistsAtPath:v15];

    if (v17)
    {
LABEL_7:
      v48 = *MEMORY[0x277D41AD0];
      v49[0] = v15;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      v9 = *MEMORY[0x277D418E8];

      v10 = v23;
LABEL_8:
      v24 = JFXLog_pickerUI();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [CFXEffectBrowserViewController CFX_addSticker:v9 atDropTarget:v24];
      }

      v25 = +[JFXEffectFactory sharedInstance];
      v26 = [v25 createEffectForType:2 fromID:v9 withProperties:v10];

      accessibilityLabel = [stickerCopy accessibilityLabel];
      [v26 setAccessibilityOverlayEffectLabel:accessibilityLabel];

      v28 = [CFXEffect effectWithJTEffect:v26];
      if (targetCopy)
      {
        [objc_opt_class() CFX_droppedSizeForSticker:stickerCopy dropTarget:targetCopy];
        v31 = v30;
        v32 = v29;
        if (v30 == *MEMORY[0x277CBF3A8] && v29 == *(MEMORY[0x277CBF3A8] + 8))
        {
          delegate = JFXLog_pickerUI();
          if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
          {
            [CFXEffectBrowserViewController CFX_addSticker:atDropTarget:];
          }
        }

        else
        {
          [v26 pickerScale];
          if (v36 != 1.0)
          {
            v31 = CGSizeScale(v31, v32, v36);
            v32 = v37;
          }

          [targetCopy screenCoordinate];
          v39 = v38;
          v41 = v40;
          [targetCopy rotation];
          v43 = v42;
          delegate = [(CFXEffectBrowserViewController *)self delegate];
          [delegate effectBrowserViewController:self didDropOverlayEffect:v28 atScreenLocation:v39 atScreenSize:v41 rotationAngle:v31, v32, v43];
        }
      }

      else
      {
        delegate2 = [(CFXEffectBrowserViewController *)self delegate];
        v35 = objc_opt_respondsToSelector();

        if ((v35 & 1) == 0)
        {
LABEL_21:
          messagesAppsDockViewController = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
          alwaysPresentAppsExpanded = [messagesAppsDockViewController alwaysPresentAppsExpanded];

          if (alwaysPresentAppsExpanded)
          {
            [(CFXEffectBrowserViewController *)self hideBrowserAnimated:1 completion:0];
          }

          goto LABEL_24;
        }

        delegate = [(CFXEffectBrowserViewController *)self delegate];
        [delegate effectBrowserViewController:self didSelectEffect:v28];
      }

      goto LABEL_21;
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    fileURL3 = [stickerCopy fileURL];
    path = [fileURL3 path];
    v47 = 0;
    v21 = [defaultManager2 copyItemAtPath:path toPath:v15 error:&v47];
    v22 = v47;

    if (v21)
    {

      goto LABEL_7;
    }

    v46 = JFXLog_pickerUI();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [(CFXEffectBrowserViewController *)stickerCopy CFX_addSticker:v22 atDropTarget:v46];
    }
  }

  else
  {
    v10 = JFXLog_pickerUI();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CFXEffectBrowserViewController CFX_addSticker:atDropTarget:];
    }
  }

LABEL_24:
}

- (void)didSelectAppWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(CFXEffectBrowserViewController *)self setSelectedAppIdentifier:?];
  delegate = [(CFXEffectBrowserViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CFXEffectBrowserViewController *)self delegate];
    [delegate2 effectBrowserViewController:self didSelectAppWithIdentifier:identifierCopy];
  }

  if (identifierCopy)
  {
    v7 = [identifierCopy isEqualToString:@"com.apple.FunCamera.Filters"];
    if (v7)
    {
      messagesAppsDockViewController2 = @"Filter";
    }

    else
    {
      messagesAppsDockViewController2 = 0;
    }

    messagesAppsDockViewController = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
    currentAppViewController = [messagesAppsDockViewController currentAppViewController];

    if (messagesAppsDockViewController2)
    {
      [(CFXEffectBrowserViewController *)self displayPickerForEffectTypeIdentifier:messagesAppsDockViewController2 messagesAppViewController:currentAppViewController embedInMessageAppViewController:v7];
    }

    else
    {
      [(CFXEffectBrowserViewController *)self removeEffectPickerViewController];
      [(CFXEffectBrowserViewController *)self CFX_updateAVTAvatarPickerforViewController:currentAppViewController];
    }
  }

  else
  {
    [(CFXEffectBrowserViewController *)self removeEffectPickerViewController];
    messagesAppsDockViewController2 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
    [(__CFString *)messagesAppsDockViewController2 cleanupRunningApps];
  }
}

- (void)dockDidMagnify:(BOOL)magnify
{
  magnifyCopy = magnify;
  if (magnify)
  {
    v6 = 75.0;
  }

  else
  {
    v6 = 44.0;
  }

  madExpandedAppButtonsHeightConstraint = [(CFXEffectBrowserViewController *)self madExpandedAppButtonsHeightConstraint];

  if (madExpandedAppButtonsHeightConstraint)
  {
    madExpandedAppButtonsHeightConstraint2 = [(CFXEffectBrowserViewController *)self madExpandedAppButtonsHeightConstraint];
LABEL_8:
    v11 = madExpandedAppButtonsHeightConstraint2;
    v12 = v6;
    goto LABEL_9;
  }

  contentPresenterDelegate = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    madExpandedAppButtonsHeightConstraint2 = [(CFXEffectBrowserViewController *)self madHeightConstraint];
    goto LABEL_8;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v19 = 0.0;
  if (![currentDevice userInterfaceIdiom])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v22 = v21;
    if (v21 != 667 && ([MEMORY[0x277D759A0] mainScreen], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "bounds"), v23 != 667) || (+[JFXOrientationMonitor interfaceOrientation](JFXOrientationMonitor, "interfaceOrientation") != 1 ? (v19 = 0.0) : (v19 = -3.0), v22 != 667))
    {
    }
  }

  if (magnifyCopy)
  {
    v19 = 31.0;
  }

  madExpandedAppButtonsHeightConstraint2 = [(CFXEffectBrowserViewController *)self madTopConstraint];
  v11 = madExpandedAppButtonsHeightConstraint2;
  v12 = v19;
LABEL_9:
  [madExpandedAppButtonsHeightConstraint2 setConstant:v12];

  delegate = [(CFXEffectBrowserViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(CFXEffectBrowserViewController *)self delegate];
    [delegate2 effectBrowserViewController:self willChangeDockHeight:v6];
  }

  contentPresenterDelegate2 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    contentPresenterDelegate3 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
    [contentPresenterDelegate3 effectBrowserViewController:self willChangeDockHeight:v6];
  }
}

- (UIViewController)dockPresentationViewController
{
  contentPresenter = [(CFXEffectBrowserViewController *)self contentPresenter];
  if (contentPresenter)
  {
    selfCopy = [(CFXEffectBrowserViewController *)self contentPresenter];
  }

  else
  {
    selfCopy = self;
  }

  v5 = selfCopy;

  return v5;
}

- (BOOL)expandedAppShouldDismissOnDragSuccess
{
  selectedAppIdentifier = [(CFXEffectBrowserViewController *)self selectedAppIdentifier];
  v3 = [selectedAppIdentifier isEqualToString:@"com.apple.FunCamera.TextPicker.MessagesExtension"];

  return v3;
}

- (void)CFX_updateAVTAvatarPickerforViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(CFXEffectBrowserViewController *)self localizedPromptForHidingAnimojiForEffectBrowserViewController:self];
  if (![controllerCopy conformsToProtocol:&unk_285582A18])
  {
    goto LABEL_10;
  }

  v6 = controllerCopy;
  [v6 setAvatarPickerDelegate:self];
  if (!v5)
  {
    v10 = dispatch_time(0, 100000000);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__CFXEffectBrowserViewController_CFX_updateAVTAvatarPickerforViewController___block_invoke;
    v16[3] = &unk_278D7A600;
    v17 = v6;
    selfCopy = self;
    v19 = v17;
    dispatch_after(v10, MEMORY[0x277D85CD0], v16);

    v9 = v17;
    goto LABEL_6;
  }

  if ([v6 conformsToProtocol:&unk_285582868])
  {
    v7 = v6;
    v8 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__CFXEffectBrowserViewController_CFX_updateAVTAvatarPickerforViewController___block_invoke_2;
    block[3] = &unk_278D79C88;
    v14 = v7;
    v15 = v5;
    v9 = v7;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);

LABEL_6:
  }

  v11 = JFXLog_pickerUI();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_242A3B000, v11, OS_LOG_TYPE_DEFAULT, "animoji picker with avatar delegate found", v12, 2u);
  }

LABEL_10:
}

void __77__CFXEffectBrowserViewController_CFX_updateAVTAvatarPickerforViewController___block_invoke(id *a1)
{
  v2 = a1[4];
  [v2 endHidingInterface];
  v3 = [a1[5] selectedAnimojiIdentifierForEffectBrowserViewController:a1[5]];
  [a1[6] selectAvatarRecordWithIdentifier:v3 animated:0];
}

- (CGSize)expandedAppViewControllerSize
{
  contentPresenterDelegate = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    contentPresenterDelegate2 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  }

  else
  {
    delegate = [(CFXEffectBrowserViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      v10 = *MEMORY[0x277CBF3A8];
      v12 = *(MEMORY[0x277CBF3A8] + 8);
      goto LABEL_7;
    }

    contentPresenterDelegate2 = [(CFXEffectBrowserViewController *)self delegate];
  }

  v8 = contentPresenterDelegate2;
  [contentPresenterDelegate2 expandedAppViewControllerSizeForEffectBrowserViewController:self];
  v10 = v9;
  v12 = v11;

LABEL_7:
  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)presentExpandedAppViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  contentPresenterDelegate = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    contentPresenterDelegate2 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  }

  else
  {
    delegate = [(CFXEffectBrowserViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }

    contentPresenterDelegate2 = [(CFXEffectBrowserViewController *)self delegate];
  }

  v14 = contentPresenterDelegate2;
  [contentPresenterDelegate2 effectBrowserViewController:self presentExpandedAppViewController:controllerCopy animated:animatedCopy completion:completionCopy];

LABEL_6:
}

- (void)dismissExpandedAppViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  contentPresenterDelegate = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    contentPresenterDelegate2 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  }

  else
  {
    delegate = [(CFXEffectBrowserViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }

    contentPresenterDelegate2 = [(CFXEffectBrowserViewController *)self delegate];
  }

  v14 = contentPresenterDelegate2;
  [contentPresenterDelegate2 effectBrowserViewController:self dismissExpandedAppViewController:controllerCopy animated:animatedCopy completion:completionCopy];

LABEL_6:
}

- (void)commitAnimatedLayoutChanges
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__CFXEffectBrowserViewController_commitAnimatedLayoutChanges__block_invoke;
  v2[3] = &unk_278D79D20;
  v2[4] = self;
  [JTAnimation performAnimation:v2 duration:0 completion:0.4];
}

void __61__CFXEffectBrowserViewController_commitAnimatedLayoutChanges__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)didDismissMemojiPicker
{
  memojiPicker = [(CFXEffectBrowserViewController *)self memojiPicker];

  if (memojiPicker)
  {
    [(CFXEffectBrowserViewController *)self didSelectAppWithBundleIdentifier:0];
    delegate = [(CFXEffectBrowserViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(CFXEffectBrowserViewController *)self delegate];
      v6 = [CFXEffectType effectTypeWithIdentifier:@"Animoji"];
      [delegate2 effectBrowserViewController:self didDismissPickerForEffectType:v6];
    }
  }

  else
  {
    v7 = JFXLog_pickerUI();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CFXEffectBrowserViewController didDismissMemojiPicker];
    }
  }
}

- (CFXEffectBrowserContentPresenterDelegate)contentPresenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentPresenterDelegate);

  return WeakRetained;
}

- (CFXEffectBrowserViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)contentPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_contentPresenter);

  return WeakRetained;
}

- (void)avatarPicker:(void *)a1 didSelectAvatarRecord:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "selected animoji %@", &v4, 0xCu);
}

- (void)CFX_addSticker:(NSObject *)a3 atDropTarget:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 fileURL];
  v6 = [v5 path];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_242A3B000, a3, OS_LOG_TYPE_ERROR, "could not copy sticker file %@ to temporary directory. Error %@", &v7, 0x16u);
}

- (void)CFX_addSticker:(uint64_t)a1 atDropTarget:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "sticker dropped for overlay %@", &v2, 0xCu);
}

@end