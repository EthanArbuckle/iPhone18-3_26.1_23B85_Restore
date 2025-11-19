@interface ICDocCamImageQuadEditViewController
- (CGRect)imageFrameInOverlayCoordinates;
- (CGRect)rectAvailableForDefaultRect;
- (CGRect)unitImageRectForOverlayRect:(CGRect)a3;
- (ICDocCamImageQuadEditViewController)initWithImage:(id)a3 quad:(id)a4 scanDataDelegate:(id)a5 orientation:(int64_t)a6 completionHandler:(id)a7;
- (NSLayoutConstraint)placardTopConstraint;
- (UILabel)userPromptLabel;
- (UIView)placard;
- (double)currentZoomFactorForOverlay;
- (id)adjustedQuad;
- (id)finalQuad;
- (id)finalQuadFromOverlay;
- (id)quadForOverlay;
- (id)quadForOverlay:(id)a3;
- (id)uiInitialQuadForOverlay:(id)a3;
- (id)uiQuadForOverlay:(id)a3;
- (id)viewForZoomingInScrollView:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)callCompletionHandler:(BOOL)a3 withImage:(id)a4 quad:(id)a5 preparingForDismissal:(BOOL)a6;
- (void)cancelButtonPressed:(id)a3;
- (void)centerAndScaleImageInScrollView;
- (void)dealloc;
- (void)overlayDidLayout:(id)a3;
- (void)prepareForDismissal;
- (void)refreshNavigationBar;
- (void)saveButtonPressed:(id)a3;
- (void)scanWasDeleted:(id)a3;
- (void)selectedKnobDidChange:(id)a3;
- (void)selectedKnobDidPanToRect:(CGRect)a3;
- (void)setUpImageView;
- (void)setupAccessibility;
- (void)updateFonts;
- (void)updateOverlayScrimMask;
- (void)updateToAspectFitIfNecessary;
- (void)updateTopConstraintForPlacard;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ICDocCamImageQuadEditViewController

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICDocCamImageQuadEditViewController;
  [(ICDocCamImageQuadEditViewController *)&v4 dealloc];
}

- (ICDocCamImageQuadEditViewController)initWithImage:(id)a3 quad:(id)a4 scanDataDelegate:(id)a5 orientation:(int64_t)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v54.receiver = self;
  v54.super_class = ICDocCamImageQuadEditViewController;
  v18 = [(ICDocCamImageQuadEditViewController *)&v54 initWithNibName:0 bundle:v17];

  if (!v18)
  {
    goto LABEL_16;
  }

  if (!v13)
  {
    v19 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamImageQuadEditViewController *)v19 initWithImage:v20 quad:v21 scanDataDelegate:v22 orientation:v23 completionHandler:v24, v25, v26];
    }

    if (v16)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!v16)
  {
LABEL_8:
    v27 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamImageQuadEditViewController *)v27 initWithImage:v28 quad:v29 scanDataDelegate:v30 orientation:v31 completionHandler:v32, v33, v34];
    }
  }

LABEL_11:
  v35 = [v14 copy];
  quad = v18->_quad;
  v18->_quad = v35;

  v37 = v18->_quad;
  if (!v37)
  {
    v38 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamImageQuadEditViewController initWithImage:v38 quad:? scanDataDelegate:? orientation:? completionHandler:?];
    }

    v39 = [ICDocCamImageQuad quadFromCGRect:0.05, 0.05, 0.9, 0.9];
    [(ICDocCamImageQuad *)v39 flipPointsWithSourceFrame:0.0, 0.0, 1.0, 1.0];
    v40 = v18->_quad;
    v18->_quad = v39;

    v37 = v18->_quad;
  }

  [(ICDocCamImageQuad *)v37 clampQuadToRect:0.0, 0.0, 1.0, 1.0];
  v18->_orientation = a6;
  [(ICDocCamImageQuad *)v18->_quad applyOrientation:a6 boundingBox:0.0, 0.0, 1.0, 1.0];
  v41 = [v14 copy];
  initialQuad = v18->_initialQuad;
  v18->_initialQuad = v41;

  [(ICDocCamImageQuad *)v18->_initialQuad clampQuadToRect:0.0, 0.0, 1.0, 1.0];
  [(ICDocCamImageQuad *)v18->_initialQuad applyOrientation:v18->_orientation boundingBox:0.0, 0.0, 1.0, 1.0];
  objc_storeStrong(&v18->_image, a3);
  v43 = [v16 copy];
  completionHandler = v18->_completionHandler;
  v18->_completionHandler = v43;

  v45 = objc_alloc_init(MEMORY[0x277CD9F90]);
  overlayMask = v18->_overlayMask;
  v18->_overlayMask = v45;

  v47 = [MEMORY[0x277D75348] whiteColor];
  -[CAShapeLayer setFillColor:](v18->_overlayMask, "setFillColor:", [v47 CGColor]);

  v48 = objc_alloc_init(MEMORY[0x277D75208]);
  overlayMaskPath = v18->_overlayMaskPath;
  v18->_overlayMaskPath = v48;

  objc_storeStrong(&v18->_scanDataDelegate, a5);
  v18->_shouldAdjustForApectFitIfNecessary = 1;
  [(ICDocCamImageQuadEditOverlay *)v18->_overlay knobHeight];
  v18->_knobHeight = v50;
  v51 = [(ICDocCamImageQuadEditOverlay *)v18->_overlay knobColor];
  knobColor = v18->_knobColor;
  v18->_knobColor = v51;

  v18->_didPressSave = 0;
  v18->_didCallCompletion = 0;
  [(ICDocCamImageQuadEditViewController *)v18 setModalPresentationStyle:0];
LABEL_16:

  return v18;
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = ICDocCamImageQuadEditViewController;
  [(ICDocCamImageQuadEditViewController *)&v30 viewDidLoad];
  if (_UISolariumEnabled())
  {
    +[_TtC14DocumentCamera22DCLiquidGlassConstants backgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] dc_editBackgroundColor];
  }
  v3 = ;
  v4 = [(ICDocCamImageQuadEditViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(ICDocCamImageQuadEditViewController *)self refreshNavigationBar];
  [(ICDocCamImageQuadEditViewController *)self setUpImageView];
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  v6 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [v6 frame];
  v7 = [v5 initWithFrame:?];

  v8 = [(ICDocCamImageQuadEditViewController *)self backgroundImageView];
  [v7 addSubview:v8];

  v9 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [v7 addSubview:v9];

  v10 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v10 setMinimumZoomScale:0.01];

  v11 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v11 setMaximumZoomScale:20.0];

  v12 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v17 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v17 setContentSize:{v14, v16}];

  v18 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v18 addSubview:v7];

  v19 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v19 setDelegate:self];

  v20 = [(ICDocCamImageQuadEditViewController *)self quad];
  v21 = [(ICDocCamImageQuadEditViewController *)self overlay];
  [v21 setQuad:v20];

  v22 = [(ICDocCamImageQuadEditViewController *)self overlay];
  [v22 setDelegate:self];

  v23 = [(ICDocCamImageQuadEditViewController *)self overlay];
  v24 = [(ICDocCamImageQuadEditViewController *)self image];
  [v23 setImage:v24 orientation:{-[ICDocCamImageQuadEditViewController orientation](self, "orientation")}];

  v25 = [(ICDocCamImageQuadEditViewController *)self placard];
  v26 = [v25 layer];
  [v26 setCornerRadius:16.0];

  v27 = [MEMORY[0x277CCAB98] defaultCenter];
  [v27 addObserver:self selector:sel_scanWasDeleted_ name:@"DCScanWasDeletedNotification" object:0];

  v28 = [MEMORY[0x277CCAB98] defaultCenter];
  [v28 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  v29 = [MEMORY[0x277CCAB98] defaultCenter];
  [v29 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  [(ICDocCamImageQuadEditViewController *)self setupAccessibility];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = ICDocCamImageQuadEditViewController;
  [(ICDocCamImageQuadEditViewController *)&v6 viewWillAppear:?];
  v5 = [(ICDocCamImageQuadEditViewController *)self navigationController];
  [v5 setNavigationBarHidden:1 animated:v3];

  [(ICDocCamImageQuadEditViewController *)self updateFonts];
  [(ICDocCamImageQuadEditViewController *)self updateTopConstraintForPlacard];
  [(ICDocCamImageQuadEditViewController *)self setDidCallCompletion:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v18.receiver = self;
  v18.super_class = ICDocCamImageQuadEditViewController;
  [(ICDocCamImageQuadEditViewController *)&v18 viewDidAppear:a3];
  v4 = [(ICDocCamImageQuadEditViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 interfaceOrientation];

  v7 = [(ICDocCamImageQuadEditViewController *)self startOrientationIsPortrait];
  LOBYTE(v5) = [v7 BOOLValue];

  if ((v5 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:(v6 - 1) < 2];
    [(ICDocCamImageQuadEditViewController *)self setStartOrientationIsPortrait:v8];
  }

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__ICDocCamImageQuadEditViewController_viewDidAppear___block_invoke;
  v15[3] = &unk_278F92ED8;
  objc_copyWeak(&v16, &location);
  dc_dispatchMainAfterDelay(v15, 5.0);
  v9 = [(ICDocCamImageQuadEditViewController *)self overlay];
  v10 = [v9 accessibilityElements];
  v11 = [v10 firstObject];
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], v11);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__ICDocCamImageQuadEditViewController_viewDidAppear___block_invoke_4;
  v14[3] = &unk_278F92C70;
  v14[4] = self;
  dc_dispatchMainAfterDelay(v14, 1.0);
  v12 = [(ICDocCamImageQuadEditViewController *)self view];
  v13 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
  [v12 bringSubviewToFront:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __53__ICDocCamImageQuadEditViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained placard];
  [v2 alpha];
  if (v3 == 0.0)
  {
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 placard];
    v6 = [v5 isHidden];

    if ((v6 & 1) == 0)
    {
      v7 = MEMORY[0x277D75D18];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __53__ICDocCamImageQuadEditViewController_viewDidAppear___block_invoke_2;
      v11[3] = &unk_278F92ED8;
      objc_copyWeak(&v12, (a1 + 32));
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __53__ICDocCamImageQuadEditViewController_viewDidAppear___block_invoke_3;
      v9[3] = &unk_278F937A8;
      objc_copyWeak(&v10, (a1 + 32));
      [v7 animateWithDuration:v11 animations:v9 completion:0.5];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&v12);
    }
  }
}

void __53__ICDocCamImageQuadEditViewController_viewDidAppear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained placard];
  [v1 setAlpha:0.0];
}

void __53__ICDocCamImageQuadEditViewController_viewDidAppear___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained placard];
  [v1 setHidden:1];
}

void __53__ICDocCamImageQuadEditViewController_viewDidAppear___block_invoke_4(uint64_t a1)
{
  v1 = *MEMORY[0x277D76438];
  v3 = [*(a1 + 32) userPromptLabel];
  v2 = [v3 text];
  UIAccessibilityPostNotification(v1, v2);
}

- (void)setUpImageView
{
  v15 = [(ICDocCamImageQuadEditViewController *)self image];
  v3 = [ICDocCamImageQuadEditImageView alloc];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(ICDocCamImageQuadEditImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], v5, v6, v7];
  v9 = [[ICDocCamImageQuadEditImageView alloc] initWithFrame:v4, v5, v6, v7];
  [(ICDocCamImageQuadEditImageView *)v8 setImage:v15 orientation:[(ICDocCamImageQuadEditViewController *)self orientation]];
  [(ICDocCamImageQuadEditImageView *)v9 setImage:v15 orientation:[(ICDocCamImageQuadEditViewController *)self orientation]];
  matched = dc_clockwiseRotationsFromUpToMatchOrientation([(ICDocCamImageQuadEditViewController *)self orientation]);
  [v15 size];
  v12 = v11;
  [v15 size];
  if (matched)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if (matched)
  {
    v12 = v13;
  }

  [(ICDocCamImageQuadEditImageView *)v8 setFrame:0.0, 0.0, v12, v14];
  [(ICDocCamImageQuadEditImageView *)v9 setFrame:0.0, 0.0, v12, v14];
  [(ICDocCamImageQuadEditViewController *)self setImageView:v8];
  [(ICDocCamImageQuadEditViewController *)self setBackgroundImageView:v9];
  [(ICDocCamImageQuadEditImageView *)v9 setImageOpacity:0.7];
}

- (void)refreshNavigationBar
{
  v56[3] = *MEMORY[0x277D85DE8];
  v3 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75780]);
    [(ICDocCamImageQuadEditViewController *)self setQuadEditNavigationBar:v4];

    v5 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(ICDocCamImageQuadEditViewController *)self view];
    v7 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    [v6 addSubview:v7];

    v8 = [(ICDocCamImageQuadEditViewController *)self view];
    v9 = [v8 window];
    v10 = [v9 interfaceOrientation] - 1;

    if (v10 > 1)
    {
      +[_TtC14DocumentCamera22DCLiquidGlassConstants navigationBarConstantLandscape];
    }

    else
    {
      +[_TtC14DocumentCamera22DCLiquidGlassConstants navigationBarConstantPortrait];
    }

    v12 = v11;
    v47 = MEMORY[0x277CCAAD0];
    v54 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    v52 = [v54 topAnchor];
    v53 = [(ICDocCamImageQuadEditViewController *)self view];
    v51 = [v53 safeAreaLayoutGuide];
    v50 = [v51 topAnchor];
    v49 = [v52 constraintEqualToAnchor:v50 constant:v12];
    v56[0] = v49;
    v48 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    v45 = [v48 leadingAnchor];
    v46 = [(ICDocCamImageQuadEditViewController *)self view];
    v44 = [v46 safeAreaLayoutGuide];
    v43 = [v44 leadingAnchor];
    v13 = [v45 constraintEqualToAnchor:v43];
    v56[1] = v13;
    v14 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    v15 = [v14 trailingAnchor];
    v16 = [(ICDocCamImageQuadEditViewController *)self view];
    v17 = [v16 safeAreaLayoutGuide];
    v18 = [v17 trailingAnchor];
    v19 = [v15 constraintEqualToAnchor:v18];
    v56[2] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
    [v47 activateConstraints:v20];

    v21 = [(ICDocCamImageQuadEditViewController *)self navigationItem];

    if (!v21)
    {
      v22 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(ICDocCamImageQuadEditViewController *)v22 refreshNavigationBar:v23];
      }
    }

    v30 = [(ICDocCamImageQuadEditViewController *)self navigationItem];
    v55 = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    v32 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    [v32 setItems:v31];

    v33 = [objc_alloc(MEMORY[0x277D76220]) initWithScrollView:self->_scrollView edge:1 style:2];
    v34 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    [v34 addInteraction:v33];
  }

  if ([(ICDocCamImageQuadEditViewController *)self inCaptureMode])
  {
    v35 = [DCLocalization localizedStringForKey:@"Retake" value:@"Retake" table:@"Localizable"];
    v36 = [DCLocalization localizedStringForKey:@"Keep" value:@"Keep" table:@"Localizable"];
    v37 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v35 style:0 target:self action:sel_cancelButtonPressed_];
    v38 = [(ICDocCamImageQuadEditViewController *)self navigationItem];
    [v38 setLeftBarButtonItem:v37];

    v39 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v36 style:0 target:self action:sel_saveButtonPressed_];
    v40 = [(ICDocCamImageQuadEditViewController *)self navigationItem];
    [v40 setRightBarButtonItem:v39];
  }

  else
  {
    v41 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
    v42 = [(ICDocCamImageQuadEditViewController *)self navigationItem];
    [v42 setLeftBarButtonItem:v41];

    v35 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_saveButtonPressed_];
    v36 = [(ICDocCamImageQuadEditViewController *)self navigationItem];
    [v36 setRightBarButtonItem:v35];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(ICDocCamImageQuadEditViewController *)self adjustedQuad];
  [(ICDocCamImageQuadEditViewController *)self setQuad:v8];

  if ([v7 isAnimated])
  {
    v9 = [(ICDocCamImageQuadEditViewController *)self overlay];
    [v9 unselectAllKnobs];

    v10 = [(ICDocCamImageQuadEditViewController *)self overlay];
    [v10 setHidden:1];

    v11 = [(ICDocCamImageQuadEditViewController *)self imageView];
    v12 = [(ICDocCamImageQuadEditViewController *)self imageView];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(ICDocCamImageQuadEditViewController *)self imageView];
    v22 = [v21 superview];
    [v11 convertRect:v22 toView:{v14, v16, v18, v20}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = [[ICDocCamImageQuadEditOverlay alloc] initWithFrame:v24, v26, v28, v30];
    [(ICDocCamImageQuadEditOverlay *)v31 setAutoresizingMask:18];
    [(ICDocCamImageQuadEditOverlay *)v31 setIsTempOverlay:1];
    v32 = [(ICDocCamImageQuadEditViewController *)self overlay];
    -[ICDocCamImageQuadEditOverlay setTempOverlayQuadIsValid:](v31, "setTempOverlayQuadIsValid:", [v32 isQuadValid]);

    v33 = [(ICDocCamImageQuadEditViewController *)self adjustedQuad];
    [(ICDocCamImageQuadEditOverlay *)v31 setQuad:v33];

    [(ICDocCamImageQuadEditOverlay *)v31 setDelegate:self];
    [(ICDocCamImageQuadEditOverlay *)v31 setImage:0 orientation:[(ICDocCamImageQuadEditViewController *)self orientation]];
    v34 = [(ICDocCamImageQuadEditViewController *)self imageView];
    v35 = [v34 superview];
    [v35 addSubview:v31];

    v36 = [(ICDocCamImageQuadEditViewController *)self scrollView];
    [v36 zoomScale];
    [ICDocCamImageQuadEditOverlay setTempOverlayMagnification:v31 animationDuration:"setTempOverlayMagnification:animationDuration:"];

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __90__ICDocCamImageQuadEditViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v41[3] = &unk_278F937D0;
    v41[4] = self;
    v42 = v31;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __90__ICDocCamImageQuadEditViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v39[3] = &unk_278F937D0;
    v39[4] = self;
    v40 = v42;
    v37 = v42;
    [v7 animateAlongsideTransition:v41 completion:v39];
  }

  [(ICDocCamImageQuadEditViewController *)self updateTopConstraintForPlacard];
  v38.receiver = self;
  v38.super_class = ICDocCamImageQuadEditViewController;
  [(ICDocCamImageQuadEditViewController *)&v38 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

void __90__ICDocCamImageQuadEditViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (([v3 showImageAsAspectFit] & 1) == 0)
  {
    [*(a1 + 32) setShouldAdjustForApectFitIfNecessary:1];
    [*(a1 + 32) updateToAspectFitIfNecessary];
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) scrollView];
  [v6 zoomScale];
  v8 = v7;
  [v4 transitionDuration];
  v10 = v9;

  [v5 setTempOverlayMagnification:v8 animationDuration:v10];
  v11 = [*(a1 + 32) view];
  [v11 setNeedsUpdateConstraints];
}

uint64_t __90__ICDocCamImageQuadEditViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) overlay];
  [v2 setHidden:0];

  v3 = *(a1 + 40);

  return [v3 removeFromSuperview];
}

- (void)updateTopConstraintForPlacard
{
  v3 = [(ICDocCamImageQuadEditViewController *)self view];
  v4 = [v3 window];
  v5 = ([v4 interfaceOrientation] - 1) < 2;

  v6 = [(ICDocCamImageQuadEditViewController *)self view];
  [_TtC14DocumentCamera22DCLiquidGlassConstants topPlacardSpacingFor:v6 isPortrait:v5];
  v8 = v7;

  v9 = [(ICDocCamImageQuadEditViewController *)self placardTopConstraint];
  [v9 setConstant:v8];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICDocCamImageQuadEditViewController;
  [(ICDocCamImageQuadEditViewController *)&v3 viewDidLayoutSubviews];
  [(ICDocCamImageQuadEditViewController *)self centerAndScaleImageInScrollView];
}

- (void)applicationWillResignActive:(id)a3
{
  v3 = [(ICDocCamImageQuadEditViewController *)self overlay];
  [v3 unselectAllKnobs];
}

- (CGRect)unitImageRectForOverlayRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(ICDocCamImageQuadEditViewController *)self overlay];
  v9 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v8 convertRect:v9 toView:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(ICDocCamImageQuadEditViewController *)self imageView];
  v19 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v18 convertRect:v19 fromView:{v11, v13, v15, v17}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [v28 frame];
  DCTSDNormalizedSubrectInRect(v21, v23, v25, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = v30;
  v38 = v32;
  v39 = v34;
  v40 = v36;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGRect)imageFrameInOverlayCoordinates
{
  v3 = [(ICDocCamImageQuadEditViewController *)self imageView];
  v4 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v3 convertRect:v13 toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(ICDocCamImageQuadEditViewController *)self overlay];
  v23 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v22 convertRect:v23 fromView:{v15, v17, v19, v21}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (double)currentZoomFactorForOverlay
{
  v2 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v2 zoomScale];
  v4 = v3;

  return v4;
}

- (id)quadForOverlay:(id)a3
{
  v4 = a3;
  [(ICDocCamImageQuadEditViewController *)self refreshNavigationBar];
  v5 = [(ICDocCamImageQuadEditViewController *)self quad];

  if (v5)
  {
    v6 = [(ICDocCamImageQuadEditViewController *)self uiQuadForOverlay:v4];
  }

  else
  {
    v7 = [(ICDocCamImageQuadEditViewController *)self overlay];
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    [v16 frame];
    v21 = DCTSDRectSubtractingRect(v9, v11, v13, v15, v17, v18, v19, v20);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = DCTSDCenterOfRect(v21, v23, v25, v27);
    if (v25 >= v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = v25;
    }

    v6 = [ICDocCamImageQuad quadFromCGRect:DCTSDRectWithCenterAndSize(v28, v29, v30 * 0.8)];
  }

  v31 = v6;

  return v31;
}

- (CGRect)rectAvailableForDefaultRect
{
  [(ICDocCamImageQuadEditViewController *)self refreshNavigationBar];
  v3 = [(ICDocCamImageQuadEditViewController *)self overlay];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
  [v12 frame];
  v17 = DCTSDRectSubtractingRect(v5, v7, v9, v11, v13, v14, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)selectedKnobDidChange:(id)a3
{
  if (a3)
  {
    v4 = [(ICDocCamImageQuadEditViewController *)self view];
    v5 = [(ICDocCamImageQuadEditViewController *)self overlay];
    [v4 bringSubviewToFront:v5];

    v6 = [(ICDocCamImageQuadEditViewController *)self view];
    v7 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    [v6 bringSubviewToFront:v7];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__ICDocCamImageQuadEditViewController_selectedKnobDidChange___block_invoke;
  v9[3] = &unk_278F92C70;
  v9[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__ICDocCamImageQuadEditViewController_selectedKnobDidChange___block_invoke_2;
  v8[3] = &unk_278F92D20;
  v8[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v9 animations:v8 completion:0.15];
}

void __61__ICDocCamImageQuadEditViewController_selectedKnobDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) placard];
  [v1 setAlpha:0.0];
}

void __61__ICDocCamImageQuadEditViewController_selectedKnobDidChange___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) placard];
  [v1 setHidden:1];
}

- (void)selectedKnobDidPanToRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(ICDocCamImageQuadEditViewController *)self overlay];
  v9 = [(ICDocCamImageQuadEditViewController *)self view];
  [v8 convertRect:v9 toView:{x, y, width, height}];

  [(ICDocCamImageQuadEditViewController *)self setDidAdjustQuad:1];

  [(ICDocCamImageQuadEditViewController *)self updateOverlayScrimMask];
}

- (void)overlayDidLayout:(id)a3
{
  [a3 unselectAllKnobs];
  [(ICDocCamImageQuadEditViewController *)self updateOverlayScrimMask];
  v5 = [(ICDocCamImageQuadEditViewController *)self view];
  v4 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
  [v5 bringSubviewToFront:v4];
}

- (void)updateOverlayScrimMask
{
  v3 = [(ICDocCamImageQuadEditViewController *)self overlay];
  v4 = [v3 adjustedQuad];
  v5 = [(ICDocCamImageQuadEditViewController *)self overlay];
  v6 = [(ICDocCamImageQuadEditViewController *)self imageView];
  v24 = [v4 quadByConvertingFromView:v5 toView:v6 isNormalized:0];

  v7 = [(ICDocCamImageQuadEditViewController *)self overlayMaskPath];
  [v7 removeAllPoints];
  [v24 topLeft];
  [v7 moveToPoint:?];
  [v24 topRight];
  [v7 addLineToPoint:?];
  [v24 bottomRight];
  [v7 addLineToPoint:?];
  [v24 bottomLeft];
  [v7 addLineToPoint:?];
  [v7 closePath];
  v8 = [(ICDocCamImageQuadEditViewController *)self imageView];
  v9 = [v8 layer];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(ICDocCamImageQuadEditViewController *)self overlayMask];
  [v18 setFrame:{v11, v13, v15, v17}];

  v19 = [v7 CGPath];
  v20 = [(ICDocCamImageQuadEditViewController *)self overlayMask];
  [v20 setPath:v19];

  v21 = [(ICDocCamImageQuadEditViewController *)self overlayMask];
  v22 = [(ICDocCamImageQuadEditViewController *)self imageView];
  v23 = [v22 layer];
  [v23 setMask:v21];
}

- (void)centerAndScaleImageInScrollView
{
  v3 = [(ICDocCamImageQuadEditViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 interfaceOrientation] - 1;

  v6 = [(ICDocCamImageQuadEditViewController *)self startOrientationIsPortrait];
  v7 = [v6 BOOLValue];

  v8 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v8 bounds];
  v10 = v9;
  v11 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [v11 frame];
  v13 = v10 / v12;

  v14 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v14 bounds];
  v16 = v15;
  v17 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [v17 frame];
  v19 = v16 / v18;

  v20 = [(ICDocCamImageQuadEditViewController *)self showImageAsAspectFit];
  if (v19 >= v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = v19;
  }

  if (v5 >= 2)
  {
    v22 = v19;
  }

  else
  {
    v22 = v13;
  }

  if ((v20 | ((v5 < 2) ^ v7)))
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v24 setZoomScale:v23];

  v25 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  v26 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [v26 center];
  v28 = v27;
  v30 = v29;
  v31 = [(ICDocCamImageQuadEditViewController *)self imageView];
  v32 = [v31 superview];
  [v25 convertPoint:v32 fromView:{v28, v30}];
  v34 = v33;
  v36 = v35;

  v37 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v37 contentOffset];

  v38 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v38 center];
  v40 = -(v39 - v34);

  v41 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v41 center];
  v43 = -(v42 - v36);

  v44 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v44 setContentOffset:{v40, v43}];

  v45 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [v45 layoutIfNeeded];

  [(ICDocCamImageQuadEditViewController *)self updateOverlayScrimMask];

  [(ICDocCamImageQuadEditViewController *)self updateToAspectFitIfNecessary];
}

- (void)updateToAspectFitIfNecessary
{
  if ([(ICDocCamImageQuadEditViewController *)self shouldAdjustForApectFitIfNecessary])
  {
    [(ICDocCamImageQuadEditViewController *)self setShouldAdjustForApectFitIfNecessary:0];
    if (![(ICDocCamImageQuadEditViewController *)self showImageAsAspectFit])
    {
      v3 = [(ICDocCamImageQuadEditViewController *)self overlay];
      [v3 setNeedsLayout];

      v4 = [(ICDocCamImageQuadEditViewController *)self overlay];
      [v4 layoutIfNeeded];

      v5 = [(ICDocCamImageQuadEditViewController *)self overlay];
      v6 = [v5 containsPointOutsideOfOverlayBounds];

      if ((v6 & 1) == 0)
      {
        [(ICDocCamImageQuadEditViewController *)self setShowImageAsAspectFit:1];
        [(ICDocCamImageQuadEditViewController *)self centerAndScaleImageInScrollView];
        v7 = [(ICDocCamImageQuadEditViewController *)self overlay];
        [v7 setNeedsLayout];

        v8 = [(ICDocCamImageQuadEditViewController *)self overlay];
        [v8 layoutIfNeeded];
      }
    }
  }
}

- (id)uiInitialQuadForOverlay:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamImageQuadEditViewController *)self initialQuad];
  v6 = [(ICDocCamImageQuadEditViewController *)self imageView];
  v7 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  v8 = [v5 quadByConvertingFromView:v6 toView:v7 isNormalized:1];

  v9 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  v10 = [v8 quadByConvertingFromView:v9 toView:v4 isNormalized:0];

  [v4 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v10 flipPointsWithSourceFrame:{v12, v14, v16, v18}];

  return v10;
}

- (id)uiQuadForOverlay:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamImageQuadEditViewController *)self quad];
  v6 = [(ICDocCamImageQuadEditViewController *)self imageView];
  v7 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  v8 = [v5 quadByConvertingFromView:v6 toView:v7 isNormalized:1];

  v9 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  v10 = [v8 quadByConvertingFromView:v9 toView:v4 isNormalized:0];

  [v4 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v10 flipPointsWithSourceFrame:{v12, v14, v16, v18}];

  return v10;
}

- (id)adjustedQuad
{
  v3 = [(ICDocCamImageQuadEditViewController *)self overlay];
  v4 = [v3 adjustedQuad];

  v5 = [(ICDocCamImageQuadEditViewController *)self overlay];
  v6 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  v7 = [v4 quadByConvertingFromView:v5 toView:v6 isNormalized:0];

  v8 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  v9 = [(ICDocCamImageQuadEditViewController *)self imageView];
  v10 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [v10 frame];
  v13 = [v7 normalizedQuadByConvertingFromView:v8 toView:v9 toViewSize:{v11, v12}];

  [v13 flipPointsWithSourceFrame:{0.0, 0.0, 1.0, 1.0}];
  v14 = [(ICDocCamImageQuadEditViewController *)self image];
  [v14 size];
  v16 = v15;
  v17 = [(ICDocCamImageQuadEditViewController *)self image];
  [v17 size];
  [v13 setBoundingBox:{0.0, 0.0, v16, v18}];

  return v13;
}

- (id)finalQuad
{
  if ([(ICDocCamImageQuadEditViewController *)self didAdjustQuad]|| ([(ICDocCamImageQuadEditViewController *)self quad], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [(ICDocCamImageQuadEditViewController *)self adjustedQuad];
  }

  else
  {
    v4 = v3;
    v5 = [(ICDocCamImageQuadEditViewController *)self quad];
  }

  [v5 removeOrientation:-[ICDocCamImageQuadEditViewController orientation](self boundingBox:{"orientation"), 0.0, 0.0, 1.0, 1.0}];
  [v5 orientIfNecessary];

  return v5;
}

- (void)saveButtonPressed:(id)a3
{
  v4 = [(ICDocCamImageQuadEditViewController *)self overlay];
  v5 = [v4 isDraggingKnob];

  if ((v5 & 1) == 0)
  {
    [(ICDocCamImageQuadEditViewController *)self setDidPressSave:1];
    v7 = [(ICDocCamImageQuadEditViewController *)self image];
    v6 = [(ICDocCamImageQuadEditViewController *)self finalQuad];
    [(ICDocCamImageQuadEditViewController *)self callCompletionHandler:1 withImage:v7 quad:v6 preparingForDismissal:0];
  }
}

- (void)cancelButtonPressed:(id)a3
{
  v4 = [(ICDocCamImageQuadEditViewController *)self overlay];
  v5 = [v4 isDraggingKnob];

  if ((v5 & 1) == 0)
  {

    [(ICDocCamImageQuadEditViewController *)self callCompletionHandler:0 withImage:0 quad:0 preparingForDismissal:0];
  }
}

- (id)viewForZoomingInScrollView:(id)a3
{
  v3 = [(ICDocCamImageQuadEditViewController *)self imageView];
  v4 = [v3 superview];

  return v4;
}

- (void)scanWasDeleted:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 identifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ICDocCamImageQuadEditViewController_scanWasDeleted___block_invoke;
  v7[3] = &unk_278F92DE8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dc_performBlockOnMainThread(v7);
}

void __54__ICDocCamImageQuadEditViewController_scanWasDeleted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scanDataDelegate];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 32) callCompletionHandler:0 withImage:0 quad:0 preparingForDismissal:0];
    v5 = *(a1 + 32);

    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)setupAccessibility
{
  v2 = [(ICDocCamImageQuadEditViewController *)self userPromptLabel];
  [v2 setIsAccessibilityElement:0];
}

- (void)updateFonts
{
  v4 = [MEMORY[0x277D74300] dc_preferredFontForTextStyle:*MEMORY[0x277D76918] adjustedForDefaultSize:16.0];
  v3 = [(ICDocCamImageQuadEditViewController *)self userPromptLabel];
  [v3 setFont:v4];
}

- (id)quadForOverlay
{
  v3 = [(ICDocCamImageQuadEditViewController *)self overlay];
  v4 = [(ICDocCamImageQuadEditViewController *)self quadForOverlay:v3];

  return v4;
}

- (id)finalQuadFromOverlay
{
  if ([(ICDocCamImageQuadEditViewController *)self didPressSave]&& [(ICDocCamImageQuadEditViewController *)self didAdjustQuad])
  {
    v3 = [(ICDocCamImageQuadEditViewController *)self overlay];
    v4 = [v3 adjustedQuad];
  }

  else
  {
    v3 = [(ICDocCamImageQuadEditViewController *)self overlay];
    v4 = [(ICDocCamImageQuadEditViewController *)self uiInitialQuadForOverlay:v3];
  }

  v5 = v4;

  return v5;
}

- (void)callCompletionHandler:(BOOL)a3 withImage:(id)a4 quad:(id)a5 preparingForDismissal:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v12 = a4;
  v10 = a5;
  if (![(ICDocCamImageQuadEditViewController *)self didCallCompletion])
  {
    [(ICDocCamImageQuadEditViewController *)self setDidCallCompletion:1];
    v11 = [(ICDocCamImageQuadEditViewController *)self completionHandler];
    (v11)[2](v11, v8, v12, v10, v6);
  }
}

- (void)prepareForDismissal
{
  [(ICDocCamImageQuadEditViewController *)self setDidPressSave:1];
  v4 = [(ICDocCamImageQuadEditViewController *)self image];
  v3 = [(ICDocCamImageQuadEditViewController *)self finalQuad];
  [(ICDocCamImageQuadEditViewController *)self callCompletionHandler:1 withImage:v4 quad:v3 preparingForDismissal:1];
}

- (UIView)placard
{
  WeakRetained = objc_loadWeakRetained(&self->_placard);

  return WeakRetained;
}

- (UILabel)userPromptLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_userPromptLabel);

  return WeakRetained;
}

- (NSLayoutConstraint)placardTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_placardTopConstraint);

  return WeakRetained;
}

@end