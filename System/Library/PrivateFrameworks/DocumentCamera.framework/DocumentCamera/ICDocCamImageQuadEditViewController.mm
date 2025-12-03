@interface ICDocCamImageQuadEditViewController
- (CGRect)imageFrameInOverlayCoordinates;
- (CGRect)rectAvailableForDefaultRect;
- (CGRect)unitImageRectForOverlayRect:(CGRect)rect;
- (ICDocCamImageQuadEditViewController)initWithImage:(id)image quad:(id)quad scanDataDelegate:(id)delegate orientation:(int64_t)orientation completionHandler:(id)handler;
- (NSLayoutConstraint)placardTopConstraint;
- (UILabel)userPromptLabel;
- (UIView)placard;
- (double)currentZoomFactorForOverlay;
- (id)adjustedQuad;
- (id)finalQuad;
- (id)finalQuadFromOverlay;
- (id)quadForOverlay;
- (id)quadForOverlay:(id)overlay;
- (id)uiInitialQuadForOverlay:(id)overlay;
- (id)uiQuadForOverlay:(id)overlay;
- (id)viewForZoomingInScrollView:(id)view;
- (void)applicationWillResignActive:(id)active;
- (void)callCompletionHandler:(BOOL)handler withImage:(id)image quad:(id)quad preparingForDismissal:(BOOL)dismissal;
- (void)cancelButtonPressed:(id)pressed;
- (void)centerAndScaleImageInScrollView;
- (void)dealloc;
- (void)overlayDidLayout:(id)layout;
- (void)prepareForDismissal;
- (void)refreshNavigationBar;
- (void)saveButtonPressed:(id)pressed;
- (void)scanWasDeleted:(id)deleted;
- (void)selectedKnobDidChange:(id)change;
- (void)selectedKnobDidPanToRect:(CGRect)rect;
- (void)setUpImageView;
- (void)setupAccessibility;
- (void)updateFonts;
- (void)updateOverlayScrimMask;
- (void)updateToAspectFitIfNecessary;
- (void)updateTopConstraintForPlacard;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ICDocCamImageQuadEditViewController

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICDocCamImageQuadEditViewController;
  [(ICDocCamImageQuadEditViewController *)&v4 dealloc];
}

- (ICDocCamImageQuadEditViewController)initWithImage:(id)image quad:(id)quad scanDataDelegate:(id)delegate orientation:(int64_t)orientation completionHandler:(id)handler
{
  imageCopy = image;
  quadCopy = quad;
  delegateCopy = delegate;
  handlerCopy = handler;
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v54.receiver = self;
  v54.super_class = ICDocCamImageQuadEditViewController;
  v18 = [(ICDocCamImageQuadEditViewController *)&v54 initWithNibName:0 bundle:v17];

  if (!v18)
  {
    goto LABEL_16;
  }

  if (!imageCopy)
  {
    v19 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamImageQuadEditViewController *)v19 initWithImage:v20 quad:v21 scanDataDelegate:v22 orientation:v23 completionHandler:v24, v25, v26];
    }

    if (handlerCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!handlerCopy)
  {
LABEL_8:
    v27 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamImageQuadEditViewController *)v27 initWithImage:v28 quad:v29 scanDataDelegate:v30 orientation:v31 completionHandler:v32, v33, v34];
    }
  }

LABEL_11:
  v35 = [quadCopy copy];
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
  v18->_orientation = orientation;
  [(ICDocCamImageQuad *)v18->_quad applyOrientation:orientation boundingBox:0.0, 0.0, 1.0, 1.0];
  v41 = [quadCopy copy];
  initialQuad = v18->_initialQuad;
  v18->_initialQuad = v41;

  [(ICDocCamImageQuad *)v18->_initialQuad clampQuadToRect:0.0, 0.0, 1.0, 1.0];
  [(ICDocCamImageQuad *)v18->_initialQuad applyOrientation:v18->_orientation boundingBox:0.0, 0.0, 1.0, 1.0];
  objc_storeStrong(&v18->_image, image);
  v43 = [handlerCopy copy];
  completionHandler = v18->_completionHandler;
  v18->_completionHandler = v43;

  v45 = objc_alloc_init(MEMORY[0x277CD9F90]);
  overlayMask = v18->_overlayMask;
  v18->_overlayMask = v45;

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  -[CAShapeLayer setFillColor:](v18->_overlayMask, "setFillColor:", [whiteColor CGColor]);

  v48 = objc_alloc_init(MEMORY[0x277D75208]);
  overlayMaskPath = v18->_overlayMaskPath;
  v18->_overlayMaskPath = v48;

  objc_storeStrong(&v18->_scanDataDelegate, delegate);
  v18->_shouldAdjustForApectFitIfNecessary = 1;
  [(ICDocCamImageQuadEditOverlay *)v18->_overlay knobHeight];
  v18->_knobHeight = v50;
  knobColor = [(ICDocCamImageQuadEditOverlay *)v18->_overlay knobColor];
  knobColor = v18->_knobColor;
  v18->_knobColor = knobColor;

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
  view = [(ICDocCamImageQuadEditViewController *)self view];
  [view setBackgroundColor:v3];

  [(ICDocCamImageQuadEditViewController *)self refreshNavigationBar];
  [(ICDocCamImageQuadEditViewController *)self setUpImageView];
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  imageView = [(ICDocCamImageQuadEditViewController *)self imageView];
  [imageView frame];
  v7 = [v5 initWithFrame:?];

  backgroundImageView = [(ICDocCamImageQuadEditViewController *)self backgroundImageView];
  [v7 addSubview:backgroundImageView];

  imageView2 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [v7 addSubview:imageView2];

  scrollView = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView setMinimumZoomScale:0.01];

  scrollView2 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView2 setMaximumZoomScale:20.0];

  imageView3 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [imageView3 bounds];
  v14 = v13;
  v16 = v15;
  scrollView3 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView3 setContentSize:{v14, v16}];

  scrollView4 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView4 addSubview:v7];

  scrollView5 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView5 setDelegate:self];

  quad = [(ICDocCamImageQuadEditViewController *)self quad];
  overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
  [overlay setQuad:quad];

  overlay2 = [(ICDocCamImageQuadEditViewController *)self overlay];
  [overlay2 setDelegate:self];

  overlay3 = [(ICDocCamImageQuadEditViewController *)self overlay];
  image = [(ICDocCamImageQuadEditViewController *)self image];
  [overlay3 setImage:image orientation:{-[ICDocCamImageQuadEditViewController orientation](self, "orientation")}];

  placard = [(ICDocCamImageQuadEditViewController *)self placard];
  layer = [placard layer];
  [layer setCornerRadius:16.0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_scanWasDeleted_ name:@"DCScanWasDeletedNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  [(ICDocCamImageQuadEditViewController *)self setupAccessibility];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = ICDocCamImageQuadEditViewController;
  [(ICDocCamImageQuadEditViewController *)&v6 viewWillAppear:?];
  navigationController = [(ICDocCamImageQuadEditViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:appearCopy];

  [(ICDocCamImageQuadEditViewController *)self updateFonts];
  [(ICDocCamImageQuadEditViewController *)self updateTopConstraintForPlacard];
  [(ICDocCamImageQuadEditViewController *)self setDidCallCompletion:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v18.receiver = self;
  v18.super_class = ICDocCamImageQuadEditViewController;
  [(ICDocCamImageQuadEditViewController *)&v18 viewDidAppear:appear];
  view = [(ICDocCamImageQuadEditViewController *)self view];
  window = [view window];
  interfaceOrientation = [window interfaceOrientation];

  startOrientationIsPortrait = [(ICDocCamImageQuadEditViewController *)self startOrientationIsPortrait];
  LOBYTE(window) = [startOrientationIsPortrait BOOLValue];

  if ((window & 1) == 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:(interfaceOrientation - 1) < 2];
    [(ICDocCamImageQuadEditViewController *)self setStartOrientationIsPortrait:v8];
  }

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__ICDocCamImageQuadEditViewController_viewDidAppear___block_invoke;
  v15[3] = &unk_278F92ED8;
  objc_copyWeak(&v16, &location);
  dc_dispatchMainAfterDelay(v15, 5.0);
  overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
  accessibilityElements = [overlay accessibilityElements];
  firstObject = [accessibilityElements firstObject];
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], firstObject);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__ICDocCamImageQuadEditViewController_viewDidAppear___block_invoke_4;
  v14[3] = &unk_278F92C70;
  v14[4] = self;
  dc_dispatchMainAfterDelay(v14, 1.0);
  view2 = [(ICDocCamImageQuadEditViewController *)self view];
  quadEditNavigationBar = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
  [view2 bringSubviewToFront:quadEditNavigationBar];

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
  image = [(ICDocCamImageQuadEditViewController *)self image];
  v3 = [ICDocCamImageQuadEditImageView alloc];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(ICDocCamImageQuadEditImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], v5, v6, v7];
  v9 = [[ICDocCamImageQuadEditImageView alloc] initWithFrame:v4, v5, v6, v7];
  [(ICDocCamImageQuadEditImageView *)v8 setImage:image orientation:[(ICDocCamImageQuadEditViewController *)self orientation]];
  [(ICDocCamImageQuadEditImageView *)v9 setImage:image orientation:[(ICDocCamImageQuadEditViewController *)self orientation]];
  matched = dc_clockwiseRotationsFromUpToMatchOrientation([(ICDocCamImageQuadEditViewController *)self orientation]);
  [image size];
  v12 = v11;
  [image size];
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
  quadEditNavigationBar = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];

  if (!quadEditNavigationBar)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75780]);
    [(ICDocCamImageQuadEditViewController *)self setQuadEditNavigationBar:v4];

    quadEditNavigationBar2 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    [quadEditNavigationBar2 setTranslatesAutoresizingMaskIntoConstraints:0];

    view = [(ICDocCamImageQuadEditViewController *)self view];
    quadEditNavigationBar3 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    [view addSubview:quadEditNavigationBar3];

    view2 = [(ICDocCamImageQuadEditViewController *)self view];
    window = [view2 window];
    v10 = [window interfaceOrientation] - 1;

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
    quadEditNavigationBar4 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    topAnchor = [quadEditNavigationBar4 topAnchor];
    view3 = [(ICDocCamImageQuadEditViewController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v49 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v12];
    v56[0] = v49;
    quadEditNavigationBar5 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    leadingAnchor = [quadEditNavigationBar5 leadingAnchor];
    view4 = [(ICDocCamImageQuadEditViewController *)self view];
    safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v56[1] = v13;
    quadEditNavigationBar6 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    trailingAnchor = [quadEditNavigationBar6 trailingAnchor];
    view5 = [(ICDocCamImageQuadEditViewController *)self view];
    safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v56[2] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
    [v47 activateConstraints:v20];

    navigationItem = [(ICDocCamImageQuadEditViewController *)self navigationItem];

    if (!navigationItem)
    {
      v22 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(ICDocCamImageQuadEditViewController *)v22 refreshNavigationBar:v23];
      }
    }

    navigationItem2 = [(ICDocCamImageQuadEditViewController *)self navigationItem];
    v55 = navigationItem2;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    quadEditNavigationBar7 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    [quadEditNavigationBar7 setItems:v31];

    v33 = [objc_alloc(MEMORY[0x277D76220]) initWithScrollView:self->_scrollView edge:1 style:2];
    quadEditNavigationBar8 = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    [quadEditNavigationBar8 addInteraction:v33];
  }

  if ([(ICDocCamImageQuadEditViewController *)self inCaptureMode])
  {
    v35 = [DCLocalization localizedStringForKey:@"Retake" value:@"Retake" table:@"Localizable"];
    navigationItem6 = [DCLocalization localizedStringForKey:@"Keep" value:@"Keep" table:@"Localizable"];
    v37 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v35 style:0 target:self action:sel_cancelButtonPressed_];
    navigationItem3 = [(ICDocCamImageQuadEditViewController *)self navigationItem];
    [navigationItem3 setLeftBarButtonItem:v37];

    v39 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:navigationItem6 style:0 target:self action:sel_saveButtonPressed_];
    navigationItem4 = [(ICDocCamImageQuadEditViewController *)self navigationItem];
    [navigationItem4 setRightBarButtonItem:v39];
  }

  else
  {
    v41 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
    navigationItem5 = [(ICDocCamImageQuadEditViewController *)self navigationItem];
    [navigationItem5 setLeftBarButtonItem:v41];

    v35 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_saveButtonPressed_];
    navigationItem6 = [(ICDocCamImageQuadEditViewController *)self navigationItem];
    [navigationItem6 setRightBarButtonItem:v35];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  adjustedQuad = [(ICDocCamImageQuadEditViewController *)self adjustedQuad];
  [(ICDocCamImageQuadEditViewController *)self setQuad:adjustedQuad];

  if ([coordinatorCopy isAnimated])
  {
    overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
    [overlay unselectAllKnobs];

    overlay2 = [(ICDocCamImageQuadEditViewController *)self overlay];
    [overlay2 setHidden:1];

    imageView = [(ICDocCamImageQuadEditViewController *)self imageView];
    imageView2 = [(ICDocCamImageQuadEditViewController *)self imageView];
    [imageView2 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    imageView3 = [(ICDocCamImageQuadEditViewController *)self imageView];
    superview = [imageView3 superview];
    [imageView convertRect:superview toView:{v14, v16, v18, v20}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = [[ICDocCamImageQuadEditOverlay alloc] initWithFrame:v24, v26, v28, v30];
    [(ICDocCamImageQuadEditOverlay *)v31 setAutoresizingMask:18];
    [(ICDocCamImageQuadEditOverlay *)v31 setIsTempOverlay:1];
    overlay3 = [(ICDocCamImageQuadEditViewController *)self overlay];
    -[ICDocCamImageQuadEditOverlay setTempOverlayQuadIsValid:](v31, "setTempOverlayQuadIsValid:", [overlay3 isQuadValid]);

    adjustedQuad2 = [(ICDocCamImageQuadEditViewController *)self adjustedQuad];
    [(ICDocCamImageQuadEditOverlay *)v31 setQuad:adjustedQuad2];

    [(ICDocCamImageQuadEditOverlay *)v31 setDelegate:self];
    [(ICDocCamImageQuadEditOverlay *)v31 setImage:0 orientation:[(ICDocCamImageQuadEditViewController *)self orientation]];
    imageView4 = [(ICDocCamImageQuadEditViewController *)self imageView];
    superview2 = [imageView4 superview];
    [superview2 addSubview:v31];

    scrollView = [(ICDocCamImageQuadEditViewController *)self scrollView];
    [scrollView zoomScale];
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
    [coordinatorCopy animateAlongsideTransition:v41 completion:v39];
  }

  [(ICDocCamImageQuadEditViewController *)self updateTopConstraintForPlacard];
  v38.receiver = self;
  v38.super_class = ICDocCamImageQuadEditViewController;
  [(ICDocCamImageQuadEditViewController *)&v38 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
  view = [(ICDocCamImageQuadEditViewController *)self view];
  window = [view window];
  v5 = ([window interfaceOrientation] - 1) < 2;

  view2 = [(ICDocCamImageQuadEditViewController *)self view];
  [_TtC14DocumentCamera22DCLiquidGlassConstants topPlacardSpacingFor:view2 isPortrait:v5];
  v8 = v7;

  placardTopConstraint = [(ICDocCamImageQuadEditViewController *)self placardTopConstraint];
  [placardTopConstraint setConstant:v8];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICDocCamImageQuadEditViewController;
  [(ICDocCamImageQuadEditViewController *)&v3 viewDidLayoutSubviews];
  [(ICDocCamImageQuadEditViewController *)self centerAndScaleImageInScrollView];
}

- (void)applicationWillResignActive:(id)active
{
  overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
  [overlay unselectAllKnobs];
}

- (CGRect)unitImageRectForOverlayRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
  scrollView = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [overlay convertRect:scrollView toView:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  imageView = [(ICDocCamImageQuadEditViewController *)self imageView];
  scrollView2 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [imageView convertRect:scrollView2 fromView:{v11, v13, v15, v17}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  imageView2 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [imageView2 frame];
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
  imageView = [(ICDocCamImageQuadEditViewController *)self imageView];
  imageView2 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [imageView2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  scrollView = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [imageView convertRect:scrollView toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
  scrollView2 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [overlay convertRect:scrollView2 fromView:{v15, v17, v19, v21}];
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
  scrollView = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView zoomScale];
  v4 = v3;

  return v4;
}

- (id)quadForOverlay:(id)overlay
{
  overlayCopy = overlay;
  [(ICDocCamImageQuadEditViewController *)self refreshNavigationBar];
  quad = [(ICDocCamImageQuadEditViewController *)self quad];

  if (quad)
  {
    v6 = [(ICDocCamImageQuadEditViewController *)self uiQuadForOverlay:overlayCopy];
  }

  else
  {
    overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
    [overlay frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    quadEditNavigationBar = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    [quadEditNavigationBar frame];
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
  overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
  [overlay frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  quadEditNavigationBar = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
  [quadEditNavigationBar frame];
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

- (void)selectedKnobDidChange:(id)change
{
  if (change)
  {
    view = [(ICDocCamImageQuadEditViewController *)self view];
    overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
    [view bringSubviewToFront:overlay];

    view2 = [(ICDocCamImageQuadEditViewController *)self view];
    quadEditNavigationBar = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
    [view2 bringSubviewToFront:quadEditNavigationBar];
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

- (void)selectedKnobDidPanToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
  view = [(ICDocCamImageQuadEditViewController *)self view];
  [overlay convertRect:view toView:{x, y, width, height}];

  [(ICDocCamImageQuadEditViewController *)self setDidAdjustQuad:1];

  [(ICDocCamImageQuadEditViewController *)self updateOverlayScrimMask];
}

- (void)overlayDidLayout:(id)layout
{
  [layout unselectAllKnobs];
  [(ICDocCamImageQuadEditViewController *)self updateOverlayScrimMask];
  view = [(ICDocCamImageQuadEditViewController *)self view];
  quadEditNavigationBar = [(ICDocCamImageQuadEditViewController *)self quadEditNavigationBar];
  [view bringSubviewToFront:quadEditNavigationBar];
}

- (void)updateOverlayScrimMask
{
  overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
  adjustedQuad = [overlay adjustedQuad];
  overlay2 = [(ICDocCamImageQuadEditViewController *)self overlay];
  imageView = [(ICDocCamImageQuadEditViewController *)self imageView];
  v24 = [adjustedQuad quadByConvertingFromView:overlay2 toView:imageView isNormalized:0];

  overlayMaskPath = [(ICDocCamImageQuadEditViewController *)self overlayMaskPath];
  [overlayMaskPath removeAllPoints];
  [v24 topLeft];
  [overlayMaskPath moveToPoint:?];
  [v24 topRight];
  [overlayMaskPath addLineToPoint:?];
  [v24 bottomRight];
  [overlayMaskPath addLineToPoint:?];
  [v24 bottomLeft];
  [overlayMaskPath addLineToPoint:?];
  [overlayMaskPath closePath];
  imageView2 = [(ICDocCamImageQuadEditViewController *)self imageView];
  layer = [imageView2 layer];
  [layer bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  overlayMask = [(ICDocCamImageQuadEditViewController *)self overlayMask];
  [overlayMask setFrame:{v11, v13, v15, v17}];

  cGPath = [overlayMaskPath CGPath];
  overlayMask2 = [(ICDocCamImageQuadEditViewController *)self overlayMask];
  [overlayMask2 setPath:cGPath];

  overlayMask3 = [(ICDocCamImageQuadEditViewController *)self overlayMask];
  imageView3 = [(ICDocCamImageQuadEditViewController *)self imageView];
  layer2 = [imageView3 layer];
  [layer2 setMask:overlayMask3];
}

- (void)centerAndScaleImageInScrollView
{
  view = [(ICDocCamImageQuadEditViewController *)self view];
  window = [view window];
  v5 = [window interfaceOrientation] - 1;

  startOrientationIsPortrait = [(ICDocCamImageQuadEditViewController *)self startOrientationIsPortrait];
  bOOLValue = [startOrientationIsPortrait BOOLValue];

  scrollView = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView bounds];
  v10 = v9;
  imageView = [(ICDocCamImageQuadEditViewController *)self imageView];
  [imageView frame];
  v13 = v10 / v12;

  scrollView2 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView2 bounds];
  v16 = v15;
  imageView2 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [imageView2 frame];
  v19 = v16 / v18;

  showImageAsAspectFit = [(ICDocCamImageQuadEditViewController *)self showImageAsAspectFit];
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

  if ((showImageAsAspectFit | ((v5 < 2) ^ bOOLValue)))
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  scrollView3 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView3 setZoomScale:v23];

  scrollView4 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  imageView3 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [imageView3 center];
  v28 = v27;
  v30 = v29;
  imageView4 = [(ICDocCamImageQuadEditViewController *)self imageView];
  superview = [imageView4 superview];
  [scrollView4 convertPoint:superview fromView:{v28, v30}];
  v34 = v33;
  v36 = v35;

  scrollView5 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView5 contentOffset];

  scrollView6 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView6 center];
  v40 = -(v39 - v34);

  scrollView7 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView7 center];
  v43 = -(v42 - v36);

  scrollView8 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView8 setContentOffset:{v40, v43}];

  scrollView9 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  [scrollView9 layoutIfNeeded];

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
      overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
      [overlay setNeedsLayout];

      overlay2 = [(ICDocCamImageQuadEditViewController *)self overlay];
      [overlay2 layoutIfNeeded];

      overlay3 = [(ICDocCamImageQuadEditViewController *)self overlay];
      containsPointOutsideOfOverlayBounds = [overlay3 containsPointOutsideOfOverlayBounds];

      if ((containsPointOutsideOfOverlayBounds & 1) == 0)
      {
        [(ICDocCamImageQuadEditViewController *)self setShowImageAsAspectFit:1];
        [(ICDocCamImageQuadEditViewController *)self centerAndScaleImageInScrollView];
        overlay4 = [(ICDocCamImageQuadEditViewController *)self overlay];
        [overlay4 setNeedsLayout];

        overlay5 = [(ICDocCamImageQuadEditViewController *)self overlay];
        [overlay5 layoutIfNeeded];
      }
    }
  }
}

- (id)uiInitialQuadForOverlay:(id)overlay
{
  overlayCopy = overlay;
  initialQuad = [(ICDocCamImageQuadEditViewController *)self initialQuad];
  imageView = [(ICDocCamImageQuadEditViewController *)self imageView];
  scrollView = [(ICDocCamImageQuadEditViewController *)self scrollView];
  v8 = [initialQuad quadByConvertingFromView:imageView toView:scrollView isNormalized:1];

  scrollView2 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  v10 = [v8 quadByConvertingFromView:scrollView2 toView:overlayCopy isNormalized:0];

  [overlayCopy bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v10 flipPointsWithSourceFrame:{v12, v14, v16, v18}];

  return v10;
}

- (id)uiQuadForOverlay:(id)overlay
{
  overlayCopy = overlay;
  quad = [(ICDocCamImageQuadEditViewController *)self quad];
  imageView = [(ICDocCamImageQuadEditViewController *)self imageView];
  scrollView = [(ICDocCamImageQuadEditViewController *)self scrollView];
  v8 = [quad quadByConvertingFromView:imageView toView:scrollView isNormalized:1];

  scrollView2 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  v10 = [v8 quadByConvertingFromView:scrollView2 toView:overlayCopy isNormalized:0];

  [overlayCopy bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v10 flipPointsWithSourceFrame:{v12, v14, v16, v18}];

  return v10;
}

- (id)adjustedQuad
{
  overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
  adjustedQuad = [overlay adjustedQuad];

  overlay2 = [(ICDocCamImageQuadEditViewController *)self overlay];
  scrollView = [(ICDocCamImageQuadEditViewController *)self scrollView];
  v7 = [adjustedQuad quadByConvertingFromView:overlay2 toView:scrollView isNormalized:0];

  scrollView2 = [(ICDocCamImageQuadEditViewController *)self scrollView];
  imageView = [(ICDocCamImageQuadEditViewController *)self imageView];
  imageView2 = [(ICDocCamImageQuadEditViewController *)self imageView];
  [imageView2 frame];
  v13 = [v7 normalizedQuadByConvertingFromView:scrollView2 toView:imageView toViewSize:{v11, v12}];

  [v13 flipPointsWithSourceFrame:{0.0, 0.0, 1.0, 1.0}];
  image = [(ICDocCamImageQuadEditViewController *)self image];
  [image size];
  v16 = v15;
  image2 = [(ICDocCamImageQuadEditViewController *)self image];
  [image2 size];
  [v13 setBoundingBox:{0.0, 0.0, v16, v18}];

  return v13;
}

- (id)finalQuad
{
  if ([(ICDocCamImageQuadEditViewController *)self didAdjustQuad]|| ([(ICDocCamImageQuadEditViewController *)self quad], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    adjustedQuad = [(ICDocCamImageQuadEditViewController *)self adjustedQuad];
  }

  else
  {
    v4 = v3;
    adjustedQuad = [(ICDocCamImageQuadEditViewController *)self quad];
  }

  [adjustedQuad removeOrientation:-[ICDocCamImageQuadEditViewController orientation](self boundingBox:{"orientation"), 0.0, 0.0, 1.0, 1.0}];
  [adjustedQuad orientIfNecessary];

  return adjustedQuad;
}

- (void)saveButtonPressed:(id)pressed
{
  overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
  isDraggingKnob = [overlay isDraggingKnob];

  if ((isDraggingKnob & 1) == 0)
  {
    [(ICDocCamImageQuadEditViewController *)self setDidPressSave:1];
    image = [(ICDocCamImageQuadEditViewController *)self image];
    finalQuad = [(ICDocCamImageQuadEditViewController *)self finalQuad];
    [(ICDocCamImageQuadEditViewController *)self callCompletionHandler:1 withImage:image quad:finalQuad preparingForDismissal:0];
  }
}

- (void)cancelButtonPressed:(id)pressed
{
  overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
  isDraggingKnob = [overlay isDraggingKnob];

  if ((isDraggingKnob & 1) == 0)
  {

    [(ICDocCamImageQuadEditViewController *)self callCompletionHandler:0 withImage:0 quad:0 preparingForDismissal:0];
  }
}

- (id)viewForZoomingInScrollView:(id)view
{
  imageView = [(ICDocCamImageQuadEditViewController *)self imageView];
  superview = [imageView superview];

  return superview;
}

- (void)scanWasDeleted:(id)deleted
{
  object = [deleted object];
  identifier = [object identifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ICDocCamImageQuadEditViewController_scanWasDeleted___block_invoke;
  v7[3] = &unk_278F92DE8;
  v7[4] = self;
  v8 = identifier;
  v6 = identifier;
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
  userPromptLabel = [(ICDocCamImageQuadEditViewController *)self userPromptLabel];
  [userPromptLabel setIsAccessibilityElement:0];
}

- (void)updateFonts
{
  v4 = [MEMORY[0x277D74300] dc_preferredFontForTextStyle:*MEMORY[0x277D76918] adjustedForDefaultSize:16.0];
  userPromptLabel = [(ICDocCamImageQuadEditViewController *)self userPromptLabel];
  [userPromptLabel setFont:v4];
}

- (id)quadForOverlay
{
  overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
  v4 = [(ICDocCamImageQuadEditViewController *)self quadForOverlay:overlay];

  return v4;
}

- (id)finalQuadFromOverlay
{
  if ([(ICDocCamImageQuadEditViewController *)self didPressSave]&& [(ICDocCamImageQuadEditViewController *)self didAdjustQuad])
  {
    overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
    adjustedQuad = [overlay adjustedQuad];
  }

  else
  {
    overlay = [(ICDocCamImageQuadEditViewController *)self overlay];
    adjustedQuad = [(ICDocCamImageQuadEditViewController *)self uiInitialQuadForOverlay:overlay];
  }

  v5 = adjustedQuad;

  return v5;
}

- (void)callCompletionHandler:(BOOL)handler withImage:(id)image quad:(id)quad preparingForDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  handlerCopy = handler;
  imageCopy = image;
  quadCopy = quad;
  if (![(ICDocCamImageQuadEditViewController *)self didCallCompletion])
  {
    [(ICDocCamImageQuadEditViewController *)self setDidCallCompletion:1];
    completionHandler = [(ICDocCamImageQuadEditViewController *)self completionHandler];
    (completionHandler)[2](completionHandler, handlerCopy, imageCopy, quadCopy, dismissalCopy);
  }
}

- (void)prepareForDismissal
{
  [(ICDocCamImageQuadEditViewController *)self setDidPressSave:1];
  image = [(ICDocCamImageQuadEditViewController *)self image];
  finalQuad = [(ICDocCamImageQuadEditViewController *)self finalQuad];
  [(ICDocCamImageQuadEditViewController *)self callCompletionHandler:1 withImage:image quad:finalQuad preparingForDismissal:1];
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