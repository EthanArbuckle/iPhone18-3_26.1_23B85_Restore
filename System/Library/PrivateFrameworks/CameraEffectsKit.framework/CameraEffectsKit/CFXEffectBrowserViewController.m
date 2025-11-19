@interface CFXEffectBrowserViewController
+ (CGSize)CFX_droppedSizeForSticker:(id)a3 dropTarget:(id)a4;
+ (CGSize)CFX_sizeOfImageAtURL:(id)a3;
- (BOOL)expandedAppShouldDismissOnDragSuccess;
- (BOOL)shouldRotateCellsForDeviceOrientation;
- (BOOL)showAppIconBorders;
- (CFXEffectBrowserContentPresenterDelegate)contentPresenterDelegate;
- (CFXEffectBrowserViewController)initWithDelegate:(id)a3 contentPresenter:(id)a4;
- (CFXEffectBrowserViewControllerDelegate)delegate;
- (CGSize)expandedAppViewControllerSize;
- (UIViewController)contentPresenter;
- (UIViewController)dockPresentationViewController;
- (id)localizedPromptForHidingAnimojiForEffectBrowserViewController:(id)a3;
- (id)selectedAnimojiIdentifierForEffectBrowserViewController:(id)a3;
- (id)selectedFilterIdentifierForEffectPickerViewController:(id)a3;
- (void)CFX_addSticker:(id)a3 atDropTarget:(id)a4;
- (void)CFX_updateAVTAvatarPickerforViewController:(id)a3;
- (void)avatarPicker:(id)a3 didSelectAvatarRecord:(id)a4;
- (void)avatarPickerDidEndCameraSession:(id)a3;
- (void)avatarPickerWillStartCameraSession:(id)a3;
- (void)commitAnimatedLayoutChanges;
- (void)compactCurrentMessagesApp;
- (void)configureUIForOrientation;
- (void)dealloc;
- (void)didDismissMemojiPicker;
- (void)didSelectAppWithBundleIdentifier:(id)a3;
- (void)dismissExpandedAppViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)displayPickerForEffectTypeIdentifier:(id)a3 messagesAppViewController:(id)a4 embedInMessageAppViewController:(BOOL)a5;
- (void)dockDidMagnify:(BOOL)a3;
- (void)effectPickerViewController:(id)a3 didPickEffect:(id)a4;
- (void)hideBrowserAnimated:(BOOL)a3 completion:(id)a4;
- (void)initMessagesAppsDockViewController;
- (void)loadView;
- (void)presentExpandedAppViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)refreshEffectBrowserForCameraFlip;
- (void)removeEffectPickerViewController;
- (void)setShowAppIconBorders:(BOOL)a3;
- (void)showMemojiPicker:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CFXEffectBrowserViewController

- (CFXEffectBrowserViewController)initWithDelegate:(id)a3 contentPresenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CFXEffectBrowserViewController;
  v8 = [(CFXEffectBrowserViewController *)&v14 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeWeak(&v9->_contentPresenter, v7);
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("AnimojiLoadingQueue", v10);
    animojiLoadingQueue = v9->_animojiLoadingQueue;
    v9->_animojiLoadingQueue = v11;
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
  [v3 cleanupRunningApps];

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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v14.receiver = self;
  v14.super_class = CFXEffectBrowserViewController;
  [(CFXEffectBrowserViewController *)&v14 viewWillTransitionToSize:a4 withTransitionCoordinator:?];
  v7 = [MEMORY[0x277D75418] currentDevice];
  if (![v7 userInterfaceIdiom])
  {
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 bounds];
    if (v9 == 667)
    {
    }

    else
    {
      v10 = [MEMORY[0x277D759A0] mainScreen];
      [v10 bounds];
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

    v7 = [(CFXEffectBrowserViewController *)self madTopConstraint];
    [v7 setConstant:v13];
  }
}

- (void)configureUIForOrientation
{
  v60 = [MEMORY[0x277D75418] currentDevice];
  if (![v60 userInterfaceIdiom])
  {
    v3 = [(CFXEffectBrowserViewController *)self delegate];
    v4 = [v3 allowLandscapeForEffectBrowserViewController:self];

    if (!v4)
    {
      return;
    }

    v5 = +[JFXOrientationMonitor interfaceOrientation];
    if ((v5 - 3) > 1)
    {
      v20 = [(CFXEffectBrowserViewController *)self madWidthConstraint];
      v7 = 1132068864;
      LODWORD(v21) = 1132068864;
      [v20 setPriority:v21];

      v22 = [(CFXEffectBrowserViewController *)self madHeightConstraint];
      LODWORD(v23) = 1144750080;
      [v22 setPriority:v23];

      v24 = [(CFXEffectBrowserViewController *)self madLeadingConstraint];
      LODWORD(v25) = 1144750080;
      [v24 setPriority:v25];

      v26 = [(CFXEffectBrowserViewController *)self madTrailingConstraint];
      LODWORD(v27) = 1144750080;
      [v26 setPriority:v27];

      v28 = [(CFXEffectBrowserViewController *)self madTopConstraint];
      LODWORD(v29) = 1144750080;
      [v28 setPriority:v29];

      v18 = [(CFXEffectBrowserViewController *)self madBottomConstraint];
    }

    else
    {
      v6 = [(CFXEffectBrowserViewController *)self madWidthConstraint];
      v7 = 1144750080;
      LODWORD(v8) = 1144750080;
      [v6 setPriority:v8];

      v9 = [(CFXEffectBrowserViewController *)self madHeightConstraint];
      LODWORD(v10) = 1132068864;
      [v9 setPriority:v10];

      v11 = [(CFXEffectBrowserViewController *)self madTopConstraint];
      LODWORD(v12) = 1144750080;
      [v11 setPriority:v12];

      v13 = [(CFXEffectBrowserViewController *)self madBottomConstraint];
      LODWORD(v14) = 1144750080;
      [v13 setPriority:v14];

      v15 = [(CFXEffectBrowserViewController *)self madLeadingConstraint];
      v17 = v15;
      if (v5 != 4)
      {
        LODWORD(v16) = 1144750080;
        [v15 setPriority:v16];

        v18 = [(CFXEffectBrowserViewController *)self madTrailingConstraint];
        v30 = v18;
        LODWORD(v19) = 1132068864;
LABEL_12:
        [v18 setPriority:v19];

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
        v41 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        [v41 minimizedDockHeight];
        v43 = v42;

        v62 = v68;
        v63 = v69;
        v64 = v70;
        v44 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        v45 = [v44 view];
        v61[0] = v62;
        v61[1] = v63;
        v61[2] = v64;
        [v45 setTransform:v61];

        v46 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        v47 = [v46 view];
        [v47 setBounds:{0.0, 0.0, Width, v43}];

        if ((v5 - 3) > 1)
        {
          v52 = Width * 0.5;
          Width = v43;
LABEL_24:
          v58 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
          v59 = [v58 view];
          [v59 setCenter:{v52, Width * 0.5}];

          return;
        }

        v48 = v43 * 0.5;
        v49 = [MEMORY[0x277D75418] currentDevice];
        if ([v49 userInterfaceIdiom])
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

        v53 = [MEMORY[0x277D759A0] mainScreen];
        [v53 bounds];
        if (v54 == 667)
        {
        }

        else
        {
          v55 = [MEMORY[0x277D759A0] mainScreen];
          [v55 bounds];
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
      [v15 setPriority:v16];

      v18 = [(CFXEffectBrowserViewController *)self madTrailingConstraint];
    }

    v30 = v18;
    LODWORD(v19) = v7;
    goto LABEL_12;
  }
}

- (void)compactCurrentMessagesApp
{
  v3 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
  v4 = [v3 currentAppViewController];

  if (!v4)
  {
    v6 = [(CFXEffectBrowserViewController *)self memojiPicker];
    v7 = [v6 sheetPresentationController];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__CFXEffectBrowserViewController_compactCurrentMessagesApp__block_invoke;
    v8[3] = &unk_278D79C88;
    v9 = v7;
    v10 = self;
    v5 = v7;
    [v5 animateChanges:v8];

LABEL_6:
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (void)displayPickerForEffectTypeIdentifier:(id)a3 messagesAppViewController:(id)a4 embedInMessageAppViewController:(BOOL)a5
{
  v5 = a5;
  v44[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
  v11 = [v10 effectType];
  v12 = [v11 identifier];
  if ([v12 isEqualToString:v8])
  {
    v13 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
    v14 = [v13 parentViewController];

    if (v14 == v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v15 = [(CFXEffectBrowserViewController *)self effectPickerViewController];

  if (v15)
  {
    [(CFXEffectBrowserViewController *)self removeEffectPickerViewController];
  }

  v16 = +[CFXEffectPickerViewController effectPickerViewController];
  [(CFXEffectBrowserViewController *)self setEffectPickerViewController:v16];

  v17 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
  [v17 setDelegate:self];

  v18 = [CFXEffectType effectTypeWithIdentifier:v8];
  v19 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
  [v19 setEffectType:v18];

  v20 = [(CFXEffectBrowserViewController *)self delegate];
  LOBYTE(v19) = objc_opt_respondsToSelector();

  if (v19)
  {
    v21 = [(CFXEffectBrowserViewController *)self delegate];
    v22 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
    v23 = [v22 effectType];
    [v21 effectBrowserViewController:self didPresentPickerForEffectType:v23];
  }

  v24 = [(CFXEffectBrowserViewController *)self delegate];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __129__CFXEffectBrowserViewController_displayPickerForEffectTypeIdentifier_messagesAppViewController_embedInMessageAppViewController___block_invoke;
  v43[3] = &unk_278D7BE78;
  v43[4] = self;
  [v24 effectBrowserViewController:self filterPickerPreviewBackgroundImageAtSizeInPixels:v43 completion:{200.0, 200.0}];

  v25 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
  if (v5)
  {
    [v9 jfxAddChildViewController:v25 constrainRelativeToSafeAreas:0];
  }

  else
  {
    [(UIViewController *)self jfxAddChildViewController:v25];

    v26 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
    v25 = [v26 view];

    v27 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = MEMORY[0x277CCAAD0];
    v42 = [v25 leftAnchor];
    v41 = [v27 leftAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v44[0] = v40;
    v39 = [v25 rightAnchor];
    v38 = [v27 rightAnchor];
    v36 = [v39 constraintEqualToAnchor:v38];
    v44[1] = v36;
    v28 = [v25 heightAnchor];
    v29 = [v28 constraintEqualToConstant:300.0];
    v44[2] = v29;
    v30 = [v25 topAnchor];
    v31 = [v27 topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v44[3] = v32;
    [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
    v33 = v9;
    v35 = v34 = v8;
    [v37 activateConstraints:v35];

    v8 = v34;
    v9 = v33;
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

    v5 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
    [v5 setDelegate:self];

    v6 = objc_alloc(MEMORY[0x277D75D18]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(CFXEffectBrowserViewController *)self setMessagesAppsDockContainerView:v7];

    v8 = [(CFXEffectBrowserViewController *)self view];
    v9 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
    [v8 addSubview:v9];

    v10 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
      v14 = [v13 shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:self];
    }

    else
    {
      v15 = [(CFXEffectBrowserViewController *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [(CFXEffectBrowserViewController *)self delegate];
        v18 = [v17 shouldAlwaysPresentExpandedAppsForEffectBrowserViewController:self];

        v19 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        [v19 setAlwaysPresentAppsExpanded:v18];

        if (v18)
        {
          v20 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          v21 = [v20 widthAnchor];
          v22 = [v21 constraintEqualToConstant:375.0];
          [(CFXEffectBrowserViewController *)self setMadWidthConstraint:v22];

          v23 = [(CFXEffectBrowserViewController *)self madWidthConstraint];
          LODWORD(v24) = 1144750080;
          [v23 setPriority:v24];

          v25 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          v26 = [v25 heightAnchor];
          v27 = [v26 constraintEqualToConstant:81.0];
          [(CFXEffectBrowserViewController *)self setMadHeightConstraint:v27];

          v28 = [(CFXEffectBrowserViewController *)self madHeightConstraint];
          LODWORD(v29) = 1144750080;
          [v28 setPriority:v29];

          v30 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          v31 = [v30 leadingAnchor];
          v32 = [(CFXEffectBrowserViewController *)self view];
          v33 = [v32 leadingAnchor];
          v34 = [v31 constraintEqualToAnchor:v33 constant:36.0];
          [(CFXEffectBrowserViewController *)self setMadLeadingConstraint:v34];

          v35 = [(CFXEffectBrowserViewController *)self madLeadingConstraint];
          LODWORD(v36) = 1144750080;
          [v35 setPriority:v36];

          v37 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          v38 = [v37 bottomAnchor];
          v39 = [(CFXEffectBrowserViewController *)self view];
          v40 = [v39 bottomAnchor];
          v41 = [v38 constraintEqualToAnchor:v40 constant:-36.0];
          [(CFXEffectBrowserViewController *)self setMadBottomConstraint:v41];

          v42 = [(CFXEffectBrowserViewController *)self madBottomConstraint];
          LODWORD(v43) = 1144750080;
          [v42 setPriority:v43];

          v44 = MEMORY[0x277CCAAD0];
          v45 = [(CFXEffectBrowserViewController *)self madWidthConstraint];
          v148[0] = v45;
          v46 = [(CFXEffectBrowserViewController *)self madHeightConstraint];
          v148[1] = v46;
          v47 = [(CFXEffectBrowserViewController *)self madLeadingConstraint];
          v148[2] = v47;
          v48 = [(CFXEffectBrowserViewController *)self madBottomConstraint];
          v148[3] = v48;
          v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:4];
          [v44 activateConstraints:v49];

          v50 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
          v51 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          [(UIViewController *)self jfxAddChildViewController:v50 containerView:v51];

          v52 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
          v53 = [v52 view];

          [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
          v54 = [v53 heightAnchor];
          v55 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
          [v55 minimizedDockHeight];
          v56 = [v54 constraintEqualToConstant:?];
          [(CFXEffectBrowserViewController *)self setMadExpandedAppButtonsHeightConstraint:v56];

          v139 = MEMORY[0x277CCAAD0];
          v143 = [v53 leftAnchor];
          v144 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          v142 = [v144 leftAnchor];
          v141 = [v143 constraintEqualToAnchor:v142];
          v146 = v53;
          v147[0] = v141;
          v140 = [v53 rightAnchor];
          v57 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          v58 = [v57 rightAnchor];
          v59 = [v140 constraintEqualToAnchor:v58];
          v147[1] = v59;
          v60 = [(CFXEffectBrowserViewController *)self madExpandedAppButtonsHeightConstraint];
          v147[2] = v60;
          v61 = [v53 centerYAnchor];
          v62 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          v63 = [v62 centerYAnchor];
          v64 = [v61 constraintEqualToAnchor:v63];
          v147[3] = v64;
          v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:4];
          [v139 activateConstraints:v65];

          v66 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          v67 = [v66 layer];
          [v67 setCornerRadius:12.0];

          v68 = MEMORY[0x277D75348];
          v69 = [MEMORY[0x277CCA8D8] jfxBundle];
          v70 = [v68 colorNamed:@"appDockBackground" inBundle:v69 compatibleWithTraitCollection:0];
          v71 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          [v71 setBackgroundColor:v70];

          return;
        }

LABEL_12:
        v73 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        v74 = [v73 widthAnchor];
        v75 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        [v75 minimizedDockHeight];
        v76 = [v74 constraintEqualToConstant:?];
        [(CFXEffectBrowserViewController *)self setMadWidthConstraint:v76];

        v77 = [(CFXEffectBrowserViewController *)self madWidthConstraint];
        LODWORD(v78) = 1132068864;
        [v77 setPriority:v78];

        v79 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        v80 = [v79 heightAnchor];
        v81 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        [v81 minimizedDockHeight];
        v82 = [v80 constraintEqualToConstant:?];
        [(CFXEffectBrowserViewController *)self setMadHeightConstraint:v82];

        v83 = [(CFXEffectBrowserViewController *)self madHeightConstraint];
        LODWORD(v84) = 1144750080;
        [v83 setPriority:v84];

        v85 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        v86 = [v85 leadingAnchor];
        v87 = [(CFXEffectBrowserViewController *)self view];
        v88 = [v87 leadingAnchor];
        v89 = [v86 constraintEqualToAnchor:v88];
        [(CFXEffectBrowserViewController *)self setMadLeadingConstraint:v89];

        v90 = [(CFXEffectBrowserViewController *)self madLeadingConstraint];
        LODWORD(v91) = 1144750080;
        [v90 setPriority:v91];

        v92 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        v93 = [v92 trailingAnchor];
        v94 = [(CFXEffectBrowserViewController *)self view];
        v95 = [v94 trailingAnchor];
        v96 = [v93 constraintEqualToAnchor:v95];
        [(CFXEffectBrowserViewController *)self setMadTrailingConstraint:v96];

        v97 = [(CFXEffectBrowserViewController *)self madTrailingConstraint];
        LODWORD(v98) = 1144750080;
        [v97 setPriority:v98];

        v99 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        v100 = [v99 topAnchor];
        v101 = [(CFXEffectBrowserViewController *)self view];
        v102 = [v101 topAnchor];
        v103 = [v100 constraintEqualToAnchor:v102];
        [(CFXEffectBrowserViewController *)self setMadTopConstraint:v103];

        v104 = [(CFXEffectBrowserViewController *)self madTopConstraint];
        LODWORD(v105) = 1144750080;
        [v104 setPriority:v105];

        v106 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        v107 = [v106 bottomAnchor];
        v108 = [(CFXEffectBrowserViewController *)self view];
        v109 = [v108 bottomAnchor];
        v110 = [v107 constraintEqualToAnchor:v109];
        [(CFXEffectBrowserViewController *)self setMadBottomConstraint:v110];

        v111 = [(CFXEffectBrowserViewController *)self madBottomConstraint];
        LODWORD(v112) = 1132068864;
        [v111 setPriority:v112];

        v113 = MEMORY[0x277CCAAD0];
        v114 = [(CFXEffectBrowserViewController *)self madWidthConstraint];
        v149[0] = v114;
        v115 = [(CFXEffectBrowserViewController *)self madHeightConstraint];
        v149[1] = v115;
        v116 = [(CFXEffectBrowserViewController *)self madLeadingConstraint];
        v149[2] = v116;
        v117 = [(CFXEffectBrowserViewController *)self madTrailingConstraint];
        v149[3] = v117;
        v118 = [(CFXEffectBrowserViewController *)self madTopConstraint];
        v149[4] = v118;
        v119 = [(CFXEffectBrowserViewController *)self madBottomConstraint];
        v149[5] = v119;
        v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:6];
        [v113 activateConstraints:v120];

        v121 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
        v122 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
        v123 = [(CFXEffectBrowserViewController *)self delegate];
        -[UIViewController jfxAddChildViewController:containerView:constrainToContainer:relativeToSafeArea:](self, "jfxAddChildViewController:containerView:constrainToContainer:relativeToSafeArea:", v121, v122, [v123 allowLandscapeForEffectBrowserViewController:self] ^ 1, 0);

        v124 = [(CFXEffectBrowserViewController *)self delegate];
        LODWORD(v122) = [v124 allowLandscapeForEffectBrowserViewController:self];

        if (v122)
        {
          v125 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          [v125 frame];
          Width = CGRectGetWidth(v151);
          v127 = [(CFXEffectBrowserViewController *)self messagesAppsDockContainerView];
          [v127 frame];
          Height = CGRectGetHeight(v152);
          v129 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
          v130 = [v129 view];
          [v130 setFrame:{0.0, 0.0, Width, Height}];
        }

        v131 = [MEMORY[0x277D75418] currentDevice];
        if ([v131 userInterfaceIdiom])
        {
          goto LABEL_15;
        }

        v132 = [MEMORY[0x277D759A0] mainScreen];
        [v132 bounds];
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
          v135 = [MEMORY[0x277D759A0] mainScreen];
          [v135 bounds];
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

        v138 = [(CFXEffectBrowserViewController *)self madTopConstraint];
        [v138 setConstant:-3.0];

        return;
      }

      v14 = 0;
    }

    v72 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
    [v72 setAlwaysPresentAppsExpanded:v14];

    goto LABEL_12;
  }

  v3 = objc_alloc_init(CFXMemojiPickerViewController);
  [(CFXEffectBrowserViewController *)self setMemojiPicker:v3];

  v145 = [(CFXEffectBrowserViewController *)self memojiPicker];
  [v145 setDelegate:self];
}

- (void)removeEffectPickerViewController
{
  v3 = [(CFXEffectBrowserViewController *)self effectPickerViewController];

  if (v3)
  {
    v4 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
    v9 = [v4 effectType];

    v5 = [(CFXEffectBrowserViewController *)self effectPickerViewController];
    [v5 jfxRemoveFromParentViewController];

    [(CFXEffectBrowserViewController *)self setEffectPickerViewController:0];
    v6 = [(CFXEffectBrowserViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CFXEffectBrowserViewController *)self delegate];
      [v8 effectBrowserViewController:self didDismissPickerForEffectType:v9];
    }
  }
}

- (void)hideBrowserAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];

  if (v7)
  {
    v8 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
    [v8 hideAppViewControllerAnimated:v4 completion:v6];
  }

  else
  {
    v9 = [(CFXEffectBrowserViewController *)self memojiPicker];

    if (v9)
    {
      v8 = [(CFXEffectBrowserViewController *)self memojiPicker];
      [v8 dismissViewControllerAnimated:1 completion:&__block_literal_global_44];
    }

    else
    {
      v8 = JFXLog_pickerUI();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CFXEffectBrowserViewController hideBrowserAnimated:completion:];
      }
    }
  }
}

- (void)refreshEffectBrowserForCameraFlip
{
  v3 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];

  if (v3)
  {
    v4 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
    v9 = [v4 currentAppViewController];

    v5 = self;
    v6 = v9;
LABEL_5:
    [(CFXEffectBrowserViewController *)v5 CFX_updateAVTAvatarPickerforViewController:v6];

    return;
  }

  v7 = [(CFXEffectBrowserViewController *)self memojiPicker];

  if (v7)
  {
    v6 = [(CFXEffectBrowserViewController *)self memojiPicker];
    v9 = v6;
    v5 = self;
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
  v3 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
  v4 = [v3 showIconBorders];

  return v4;
}

- (void)setShowAppIconBorders:(BOOL)a3
{
  v3 = a3;
  [(CFXEffectBrowserViewController *)self loadViewIfNeeded];
  v5 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
  [v5 setShowIconBorders:v3];
}

- (void)showMemojiPicker:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CFXEffectBrowserViewController *)self memojiPicker];

  if (v5)
  {
    v6 = [(CFXEffectBrowserViewController *)self memojiPicker];
    [(CFXEffectBrowserViewController *)self CFX_updateAVTAvatarPickerforViewController:v6];

    v7 = [(CFXEffectBrowserViewController *)self memojiPicker];
    v8 = v7;
    if (v4)
    {
      [v7 setModalPresentationStyle:7];

      v9 = [(CFXEffectBrowserViewController *)self memojiPicker];
      v10 = [v9 popoverPresentationController];

      [v10 setSourceView:v4];
      [v10 setPermittedArrowDirections:15];
    }

    else
    {
      v12 = [v7 sheetPresentationController];

      v13 = [MEMORY[0x277D75A28] customDetentWithIdentifier:0 resolver:&__block_literal_global_50];
      v20[0] = v13;
      v14 = [MEMORY[0x277D75A28] largeDetent];
      v20[1] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
      [v12 setDetents:v15];

      v16 = [v13 identifier];
      [(CFXEffectBrowserViewController *)self setCompactDetentIdentifier:v16];

      [v12 setPrefersScrollingExpandsWhenScrolledToEdge:0];
      [v12 setPrefersGrabberVisible:1];
      v17 = [(CFXEffectBrowserViewController *)self compactDetentIdentifier];
      [v12 setLargestUndimmedDetentIdentifier:v17];
    }

    v18 = [(CFXEffectBrowserViewController *)self memojiPicker];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__CFXEffectBrowserViewController_showMemojiPicker___block_invoke_2;
    v19[3] = &unk_278D79D20;
    v19[4] = self;
    [(CFXEffectBrowserViewController *)self presentViewController:v18 animated:1 completion:v19];
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

- (void)avatarPicker:(id)a3 didSelectAvatarRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = JFXLog_pickerUI();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      [CFXEffectBrowserViewController avatarPicker:v7 didSelectAvatarRecord:v8];
    }

    v10 = [(CFXEffectBrowserViewController *)self animojiLoadingQueue];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __69__CFXEffectBrowserViewController_avatarPicker_didSelectAvatarRecord___block_invoke;
    v20 = &unk_278D79C88;
    v21 = v7;
    v22 = self;
    dispatch_async(v10, &v17);

    v11 = v21;
    goto LABEL_9;
  }

  if (v9)
  {
    [CFXEffectBrowserViewController avatarPicker:didSelectAvatarRecord:];
  }

  v12 = [(CFXEffectBrowserViewController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v11 = [(CFXEffectBrowserViewController *)self delegate];
    v14 = [CFXEffectType effectTypeWithIdentifier:@"Animoji"];
    [v11 effectBrowserViewController:self didRemoveAllEffectsOfType:v14];

LABEL_9:
  }

  v15 = [MEMORY[0x277D75418] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (!v16)
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

- (void)avatarPickerDidEndCameraSession:(id)a3
{
  v4 = JFXLog_pickerUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CFXEffectBrowserViewController avatarPickerDidEndCameraSession:];
  }

  v5 = [(CFXEffectBrowserViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CFXEffectBrowserViewController *)self delegate];
    [v7 effectBrowserViewControllerDidStartCaptureSession:self];
  }
}

- (void)avatarPickerWillStartCameraSession:(id)a3
{
  v4 = JFXLog_pickerUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CFXEffectBrowserViewController avatarPickerWillStartCameraSession:];
  }

  v5 = [(CFXEffectBrowserViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CFXEffectBrowserViewController *)self delegate];
    [v7 effectBrowserViewControllerDidStopCaptureSession:self];
  }
}

- (void)effectPickerViewController:(id)a3 didPickEffect:(id)a4
{
  v10 = a4;
  v5 = [(CFXEffectBrowserViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CFXEffectBrowserViewController *)self delegate];
    [v7 effectBrowserViewController:self didSelectEffect:v10];
  }

  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (!v9)
  {
    [(CFXEffectBrowserViewController *)self compactCurrentMessagesApp];
  }
}

- (id)selectedFilterIdentifierForEffectPickerViewController:(id)a3
{
  v4 = [(CFXEffectBrowserViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CFXEffectBrowserViewController *)self delegate];
    v7 = [v6 selectedFilterIdentifierForEffectBrowserViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldRotateCellsForDeviceOrientation
{
  v3 = [(CFXEffectBrowserViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CFXEffectBrowserViewController *)self delegate];
  v6 = [v5 shouldRotateCellsForDeviceOrientation];

  return v6;
}

- (id)selectedAnimojiIdentifierForEffectBrowserViewController:(id)a3
{
  v4 = [(CFXEffectBrowserViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CFXEffectBrowserViewController *)self delegate];
    v7 = [v6 selectedAnimojiIdentifierForEffectBrowserViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedPromptForHidingAnimojiForEffectBrowserViewController:(id)a3
{
  v4 = [(CFXEffectBrowserViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CFXEffectBrowserViewController *)self delegate];
    v7 = [v6 localizedPromptForHidingAnimojiForEffectBrowserViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (CGSize)CFX_sizeOfImageAtURL:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  v5 = CGImageSourceCreateWithURL(a3, 0);
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

+ (CGSize)CFX_droppedSizeForSticker:(id)a3 dropTarget:(id)a4
{
  v6 = a4;
  v7 = [a3 fileURL];
  [a1 CFX_sizeOfImageAtURL:v7];
  v9 = v8;
  v11 = v10;

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  if (v9 != *MEMORY[0x277CBF3A8] || v11 != v13)
  {
    [v6 scale];
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

- (void)CFX_addSticker:(id)a3 atDropTarget:(id)a4
{
  v49[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 stickerName];
  v9 = [CFXEffectMessagesStickerUtilities overlayIDFromAnimatedPreviewFileName:v8];

  if (v9)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v11 = [v6 fileURL];

  if (v11)
  {
    v12 = [v6 fileURL];
    v13 = [v12 lastPathComponent];
    v10 = [@"CFX" stringByAppendingString:v13];

    v14 = NSTemporaryDirectory();
    v15 = [v14 stringByAppendingPathComponent:v10];

    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [v16 fileExistsAtPath:v15];

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

      v27 = [v6 accessibilityLabel];
      [v26 setAccessibilityOverlayEffectLabel:v27];

      v28 = [CFXEffect effectWithJTEffect:v26];
      if (v7)
      {
        [objc_opt_class() CFX_droppedSizeForSticker:v6 dropTarget:v7];
        v31 = v30;
        v32 = v29;
        if (v30 == *MEMORY[0x277CBF3A8] && v29 == *(MEMORY[0x277CBF3A8] + 8))
        {
          v33 = JFXLog_pickerUI();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
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

          [v7 screenCoordinate];
          v39 = v38;
          v41 = v40;
          [v7 rotation];
          v43 = v42;
          v33 = [(CFXEffectBrowserViewController *)self delegate];
          [v33 effectBrowserViewController:self didDropOverlayEffect:v28 atScreenLocation:v39 atScreenSize:v41 rotationAngle:v31, v32, v43];
        }
      }

      else
      {
        v34 = [(CFXEffectBrowserViewController *)self delegate];
        v35 = objc_opt_respondsToSelector();

        if ((v35 & 1) == 0)
        {
LABEL_21:
          v44 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
          v45 = [v44 alwaysPresentAppsExpanded];

          if (v45)
          {
            [(CFXEffectBrowserViewController *)self hideBrowserAnimated:1 completion:0];
          }

          goto LABEL_24;
        }

        v33 = [(CFXEffectBrowserViewController *)self delegate];
        [v33 effectBrowserViewController:self didSelectEffect:v28];
      }

      goto LABEL_21;
    }

    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [v6 fileURL];
    v20 = [v19 path];
    v47 = 0;
    v21 = [v18 copyItemAtPath:v20 toPath:v15 error:&v47];
    v22 = v47;

    if (v21)
    {

      goto LABEL_7;
    }

    v46 = JFXLog_pickerUI();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [(CFXEffectBrowserViewController *)v6 CFX_addSticker:v22 atDropTarget:v46];
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

- (void)didSelectAppWithBundleIdentifier:(id)a3
{
  v11 = a3;
  [(CFXEffectBrowserViewController *)self setSelectedAppIdentifier:?];
  v4 = [(CFXEffectBrowserViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CFXEffectBrowserViewController *)self delegate];
    [v6 effectBrowserViewController:self didSelectAppWithIdentifier:v11];
  }

  if (v11)
  {
    v7 = [v11 isEqualToString:@"com.apple.FunCamera.Filters"];
    if (v7)
    {
      v8 = @"Filter";
    }

    else
    {
      v8 = 0;
    }

    v9 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
    v10 = [v9 currentAppViewController];

    if (v8)
    {
      [(CFXEffectBrowserViewController *)self displayPickerForEffectTypeIdentifier:v8 messagesAppViewController:v10 embedInMessageAppViewController:v7];
    }

    else
    {
      [(CFXEffectBrowserViewController *)self removeEffectPickerViewController];
      [(CFXEffectBrowserViewController *)self CFX_updateAVTAvatarPickerforViewController:v10];
    }
  }

  else
  {
    [(CFXEffectBrowserViewController *)self removeEffectPickerViewController];
    v8 = [(CFXEffectBrowserViewController *)self messagesAppsDockViewController];
    [(__CFString *)v8 cleanupRunningApps];
  }
}

- (void)dockDidMagnify:(BOOL)a3
{
  v4 = a3;
  if (a3)
  {
    v6 = 75.0;
  }

  else
  {
    v6 = 44.0;
  }

  v7 = [(CFXEffectBrowserViewController *)self madExpandedAppButtonsHeightConstraint];

  if (v7)
  {
    v8 = [(CFXEffectBrowserViewController *)self madExpandedAppButtonsHeightConstraint];
LABEL_8:
    v11 = v8;
    v12 = v6;
    goto LABEL_9;
  }

  v9 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v8 = [(CFXEffectBrowserViewController *)self madHeightConstraint];
    goto LABEL_8;
  }

  v18 = [MEMORY[0x277D75418] currentDevice];
  v19 = 0.0;
  if (![v18 userInterfaceIdiom])
  {
    v20 = [MEMORY[0x277D759A0] mainScreen];
    [v20 bounds];
    v22 = v21;
    if (v21 != 667 && ([MEMORY[0x277D759A0] mainScreen], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "bounds"), v23 != 667) || (+[JFXOrientationMonitor interfaceOrientation](JFXOrientationMonitor, "interfaceOrientation") != 1 ? (v19 = 0.0) : (v19 = -3.0), v22 != 667))
    {
    }
  }

  if (v4)
  {
    v19 = 31.0;
  }

  v8 = [(CFXEffectBrowserViewController *)self madTopConstraint];
  v11 = v8;
  v12 = v19;
LABEL_9:
  [v8 setConstant:v12];

  v13 = [(CFXEffectBrowserViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(CFXEffectBrowserViewController *)self delegate];
    [v15 effectBrowserViewController:self willChangeDockHeight:v6];
  }

  v16 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v24 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
    [v24 effectBrowserViewController:self willChangeDockHeight:v6];
  }
}

- (UIViewController)dockPresentationViewController
{
  v3 = [(CFXEffectBrowserViewController *)self contentPresenter];
  if (v3)
  {
    v4 = [(CFXEffectBrowserViewController *)self contentPresenter];
  }

  else
  {
    v4 = self;
  }

  v5 = v4;

  return v5;
}

- (BOOL)expandedAppShouldDismissOnDragSuccess
{
  v2 = [(CFXEffectBrowserViewController *)self selectedAppIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.FunCamera.TextPicker.MessagesExtension"];

  return v3;
}

- (void)CFX_updateAVTAvatarPickerforViewController:(id)a3
{
  v4 = a3;
  v5 = [(CFXEffectBrowserViewController *)self localizedPromptForHidingAnimojiForEffectBrowserViewController:self];
  if (![v4 conformsToProtocol:&unk_285582A18])
  {
    goto LABEL_10;
  }

  v6 = v4;
  [v6 setAvatarPickerDelegate:self];
  if (!v5)
  {
    v10 = dispatch_time(0, 100000000);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__CFXEffectBrowserViewController_CFX_updateAVTAvatarPickerforViewController___block_invoke;
    v16[3] = &unk_278D7A600;
    v17 = v6;
    v18 = self;
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
  v3 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  }

  else
  {
    v6 = [(CFXEffectBrowserViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      v10 = *MEMORY[0x277CBF3A8];
      v12 = *(MEMORY[0x277CBF3A8] + 8);
      goto LABEL_7;
    }

    v5 = [(CFXEffectBrowserViewController *)self delegate];
  }

  v8 = v5;
  [v5 expandedAppViewControllerSizeForEffectBrowserViewController:self];
  v10 = v9;
  v12 = v11;

LABEL_7:
  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)presentExpandedAppViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v15 = a3;
  v8 = a5;
  v9 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  }

  else
  {
    v12 = [(CFXEffectBrowserViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }

    v11 = [(CFXEffectBrowserViewController *)self delegate];
  }

  v14 = v11;
  [v11 effectBrowserViewController:self presentExpandedAppViewController:v15 animated:v6 completion:v8];

LABEL_6:
}

- (void)dismissExpandedAppViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v15 = a3;
  v8 = a5;
  v9 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CFXEffectBrowserViewController *)self contentPresenterDelegate];
  }

  else
  {
    v12 = [(CFXEffectBrowserViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }

    v11 = [(CFXEffectBrowserViewController *)self delegate];
  }

  v14 = v11;
  [v11 effectBrowserViewController:self dismissExpandedAppViewController:v15 animated:v6 completion:v8];

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
  v3 = [(CFXEffectBrowserViewController *)self memojiPicker];

  if (v3)
  {
    [(CFXEffectBrowserViewController *)self didSelectAppWithBundleIdentifier:0];
    v4 = [(CFXEffectBrowserViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v8 = [(CFXEffectBrowserViewController *)self delegate];
      v6 = [CFXEffectType effectTypeWithIdentifier:@"Animoji"];
      [v8 effectBrowserViewController:self didDismissPickerForEffectType:v6];
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