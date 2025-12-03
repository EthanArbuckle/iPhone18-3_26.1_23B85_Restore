@interface FUFlightView
- (BOOL)landscapeMode;
- (BOOL)mapOnly;
- (BOOL)setFlights:(id)flights selectedFlight:(int64_t)flight selectedLeg:(int64_t)leg;
- (FUFlightViewDelegate)delegate;
- (MKMapView)mapView;
- (NSLayoutConstraint)lanscapeConstraint1;
- (NSLayoutConstraint)lanscapeConstraint2;
- (NSLayoutConstraint)lanscapeConstraint3;
- (NSLayoutConstraint)pageContainerHeightConstraint;
- (NSLayoutConstraint)portraitConstraint1;
- (TLKProminenceView)borderLineViewLandscape;
- (TLKProminenceView)borderLineViewPortrait;
- (UIEdgeInsets)mapInsets;
- (UIPageControl)pageControl;
- (UIVisualEffectView)backBlurView;
- (id)arrivalCamera;
- (id)currentFlight;
- (id)currentLeg;
- (id)departureCamera;
- (id)flightCamera;
- (id)flightForLeg:(id)leg;
- (id)infoViewControllerCreate;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (unint64_t)absoluteLegIndex;
- (void)addTrack:(id)track;
- (void)awakeFromNib;
- (void)changeCurrentPage:(id)page;
- (void)cleanupView;
- (void)didMoveToWindow;
- (void)flightInfoView:(id)view didUpdateFocus:(int64_t)focus;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)removeMapBackground;
- (void)setAbsoluteIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setDisplayStyle:(unint64_t)style;
- (void)setSelectedLeg:(int64_t)leg;
- (void)setShowInfoPanel:(BOOL)panel;
- (void)showError;
- (void)showInfo;
- (void)showLoading;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBorderLines;
- (void)updateConstraints;
- (void)updateMapAppearance;
- (void)updateMapArcs;
- (void)updateMapCamera;
- (void)updateOrientationConstraints;
- (void)updatePageControllerScrolling;
@end

@implementation FUFlightView

- (BOOL)mapOnly
{
  borderLineViewPortrait = [(FUFlightView *)self borderLineViewPortrait];
  v3 = borderLineViewPortrait == 0;

  return v3;
}

- (void)awakeFromNib
{
  v49.receiver = self;
  v49.super_class = FUFlightView;
  [(FUFlightView *)&v49 awakeFromNib];
  self->_selectedFlight = 0x7FFFFFFFFFFFFFFFLL;
  self->_selectedLeg = 0x7FFFFFFFFFFFFFFFLL;
  mapView = [(FUFlightView *)self mapView];
  [mapView setPitchEnabled:0];

  mapView2 = [(FUFlightView *)self mapView];
  [mapView2 setShowsAttribution:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_updateMapAppearance name:*MEMORY[0x277D77548] object:0];

  [(FUFlightView *)self updateMapAppearance];
  mapView3 = [(FUFlightView *)self mapView];
  [mapView3 setAlpha:0.0];

  if ([(FUFlightView *)self mapOnly])
  {
    backBlurView = [(FUFlightView *)self backBlurView];
    [backBlurView setAlpha:1.0];
  }

  pageControl = [(FUFlightView *)self pageControl];
  [pageControl setAlpha:0.0];

  mapView4 = [(FUFlightView *)self mapView];
  [mapView4 _setShowsAppleLogo:0];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v12 = [bundleIdentifier isEqualToString:@"com.apple.datadetectors.DDActionsService"];

  if (v12)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:*MEMORY[0x277CD4B40] object:0];
  }

  [(FUFlightView *)self setupStyles];
  self->_landscapeMode = [(FUFlightView *)self landscapeMode];
  if (![(FUFlightView *)self mapOnly])
  {
    v14 = [[FULockSafePageViewController alloc] initWithTransitionStyle:1 navigationOrientation:0 options:0];
    pageViewController = self->_pageViewController;
    self->_pageViewController = &v14->super;

    [(UIPageViewController *)self->_pageViewController setDelegate:self];
    [(UIPageViewController *)self->_pageViewController setDataSource:self];
    view = [(UIPageViewController *)self->_pageViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = objc_alloc_init(MEMORY[0x277D759D8]);
    objc_storeStrong(&self->_pageViewContainer, v17);
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 setScrollEnabled:0];
    [v17 setShowsVerticalScrollIndicator:0];
    [v17 setShowsHorizontalScrollIndicator:0];
    WeakRetained = objc_loadWeakRetained(&self->_backBlurView);
    if (_UISolariumEnabled())
    {
      [WeakRetained setEffect:0];
      v19 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:0];
      [WeakRetained _setBackground:v19];
      [v17 setContentInsetAdjustmentBehavior:2];
      topEdgeEffect = [v17 topEdgeEffect];
      [topEdgeEffect setHidden:1];
    }

    else
    {
      v19 = [MEMORY[0x277D75210] effectWithStyle:10];
      [WeakRetained setEffect:v19];
    }

    contentView = [WeakRetained contentView];
    safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
    [contentView addSubview:v17];
    leadingAnchor = [v17 leadingAnchor];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v25 setActive:1];

    trailingAnchor = [v17 trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v28 setActive:1];

    topAnchor = [v17 topAnchor];
    if (_UISolariumEnabled())
    {
      v30 = contentView;
    }

    else
    {
      v30 = safeAreaLayoutGuide;
    }

    topAnchor2 = [v30 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v32 setActive:1];

    bottomAnchor = [v17 bottomAnchor];
    bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
    v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v35 setActive:1];

    view2 = [(UIPageViewController *)self->_pageViewController view];
    [v17 addSubview:view2];
    leadingAnchor3 = [view2 leadingAnchor];
    safeAreaLayoutGuide2 = [v17 safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
    v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v40 setActive:1];

    widthAnchor = [view2 widthAnchor];
    widthAnchor2 = [v17 widthAnchor];
    v43 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v43 setActive:1];

    topAnchor3 = [view2 topAnchor];
    topAnchor4 = [v17 topAnchor];
    v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v46 setActive:1];

    borderLineViewLandscape = [(FUFlightView *)self borderLineViewLandscape];
    [borderLineViewLandscape setProminence:3];

    borderLineViewPortrait = [(FUFlightView *)self borderLineViewPortrait];
    [borderLineViewPortrait setProminence:3];
  }
}

- (void)setDisplayStyle:(unint64_t)style
{
  if (self->_displayStyle != style)
  {
    self->_displayStyle = style;
    [(FUFlightView *)self setupStyles];
  }
}

- (void)updateMapAppearance
{
  bestAppearanceForSystem = [MEMORY[0x277D6F1A0] bestAppearanceForSystem];
  mapView = [(FUFlightView *)self mapView];
  [bestAppearanceForSystem overrideAppearanceForView:mapView];
}

- (void)removeMapBackground
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_spotlightMode)
  {
    self->_spotlightMode = 1;
    [(FUFlightView *)self updatePageControllerScrolling];
    backBlurView = [(FUFlightView *)self backBlurView];
    [backBlurView setEffect:0];

    backBlurView2 = [(FUFlightView *)self backBlurView];
    [backBlurView2 _setBackground:0];

    mapView = [(FUFlightView *)self mapView];
    [mapView setScrollEnabled:0];

    mapView2 = [(FUFlightView *)self mapView];
    [mapView2 setRotateEnabled:0];

    mapView3 = [(FUFlightView *)self mapView];
    [mapView3 setPitchEnabled:0];

    mapView4 = [(FUFlightView *)self mapView];
    [mapView4 setZoomEnabled:0];

    [(FUFlightView *)self setNeedsUpdateConstraints];
    [(FUFlightView *)self setNeedsLayout];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = self->_controllers;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          flightInfoView = [*(*(&v16 + 1) + 8 * v13) flightInfoView];
          [flightInfoView updateForFollowupContent:self->_spotlightMode];

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  v11.receiver = self;
  v11.super_class = FUFlightView;
  appearanceCopy = appearance;
  [(FUFlightView *)&v11 tlk_updateForAppearance:appearanceCopy];
  secondaryColor = [appearanceCopy secondaryColor];
  pageControl = [(FUFlightView *)self pageControl];
  [pageControl setPageIndicatorTintColor:secondaryColor];

  primaryColor = [appearanceCopy primaryColor];
  pageControl2 = [(FUFlightView *)self pageControl];
  [pageControl2 setCurrentPageIndicatorTintColor:primaryColor];

  pageControl3 = [(FUFlightView *)self pageControl];
  [appearanceCopy enableAppearanceForView:pageControl3];

  [(FUFlightView *)self updateOrientationConstraints];
  landscapeMode = [(FUFlightView *)self landscapeMode];
  if (self->_landscapeMode != landscapeMode)
  {
    self->_landscapeMode = landscapeMode;
    [(FUFlightView *)self setNeedsUpdateConstraints];
    [(FUFlightView *)self setNeedsLayout];
  }
}

- (BOOL)landscapeMode
{
  selfCopy = self;
  traitCollection = [(FUFlightView *)self traitCollection];
  LOBYTE(selfCopy) = [(FUFlightView *)selfCopy landscapeModeForTraits:traitCollection];

  return selfCopy;
}

- (void)updateBorderLines
{
  if (self->_spotlightMode)
  {
    v3 = 1;
    landscapeMode = 1;
  }

  else
  {
    landscapeMode = [(FUFlightView *)self landscapeMode];
    v3 = landscapeMode ^ 1;
  }

  borderLineViewLandscape = [(FUFlightView *)self borderLineViewLandscape];
  [borderLineViewLandscape setHidden:v3];

  borderLineViewPortrait = [(FUFlightView *)self borderLineViewPortrait];
  [borderLineViewPortrait setHidden:landscapeMode];
}

- (void)showLoading
{
  loadingView = [(FUFlightView *)self loadingView];

  if (!loadingView)
  {
    v4 = objc_opt_new();
    [(FUFlightView *)self setLoadingView:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    WeakRetained = objc_loadWeakRetained(&self->_backBlurView);
    contentView = [WeakRetained contentView];
    [contentView addSubview:v4];

    leftAnchor = [v4 leftAnchor];
    leftAnchor2 = [WeakRetained leftAnchor];
    v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v9 setActive:1];

    rightAnchor = [v4 rightAnchor];
    rightAnchor2 = [WeakRetained rightAnchor];
    v12 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v12 setActive:1];

    topAnchor = [v4 topAnchor];
    topAnchor2 = [WeakRetained topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v15 setActive:1];

    bottomAnchor = [v4 bottomAnchor];
    bottomAnchor2 = [WeakRetained bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v18 setActive:1];

    [v4 setAlpha:0.0];
    [(FUFlightView *)self setNeedsUpdateConstraints];
  }

  objc_initWeak(&location, self);
  v19 = MEMORY[0x277D75D18];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __27__FUFlightView_showLoading__block_invoke;
  v20[3] = &unk_2790115C0;
  objc_copyWeak(&v21, &location);
  [v19 animateWithDuration:v20 animations:0.2];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

uint64_t __27__FUFlightView_showLoading__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [WeakRetained[55] view];
    [v2 setAlpha:0.0];

    v3 = [v8 pageControl];
    [v3 setAlpha:0.0];

    v4 = [v8 errorView];
    [v4 setAlpha:0.0];

    v5 = [v8 loadingView];
    [v5 setAlpha:1.0];

    if ([v8 mapOnly])
    {
      v6 = [v8 backBlurView];
      [v6 setAlpha:1.0];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)showError
{
  errorView = [(FUFlightView *)self errorView];

  if (!errorView)
  {
    v4 = objc_opt_new();
    [(FUFlightView *)self setErrorView:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    WeakRetained = objc_loadWeakRetained(&self->_backBlurView);
    contentView = [WeakRetained contentView];
    [contentView addSubview:v4];

    leftAnchor = [v4 leftAnchor];
    leftAnchor2 = [WeakRetained leftAnchor];
    v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v9 setActive:1];

    rightAnchor = [v4 rightAnchor];
    rightAnchor2 = [WeakRetained rightAnchor];
    v12 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v12 setActive:1];

    topAnchor = [v4 topAnchor];
    topAnchor2 = [WeakRetained topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v15 setActive:1];

    bottomAnchor = [v4 bottomAnchor];
    bottomAnchor2 = [WeakRetained bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v18 setActive:1];

    [v4 setAlpha:0.0];
    [(FUFlightView *)self setNeedsUpdateConstraints];
  }

  objc_initWeak(&location, self);
  v19 = MEMORY[0x277D75D18];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __25__FUFlightView_showError__block_invoke;
  v20[3] = &unk_2790115C0;
  objc_copyWeak(&v21, &location);
  [v19 animateWithDuration:v20 animations:0.2];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

uint64_t __25__FUFlightView_showError__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [WeakRetained[55] view];
    [v2 setAlpha:0.0];

    v3 = [v8 pageControl];
    [v3 setAlpha:0.0];

    v4 = [v8 errorView];
    [v4 setAlpha:1.0];

    v5 = [v8 loadingView];
    [v5 setAlpha:0.0];

    if ([v8 mapOnly])
    {
      v6 = [v8 backBlurView];
      [v6 setAlpha:1.0];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)showInfo
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __24__FUFlightView_showInfo__block_invoke;
  v3[3] = &unk_2790115C0;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:v3 animations:0.2];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __24__FUFlightView_showInfo__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [WeakRetained[55] view];
    [v2 setAlpha:1.0];

    v3 = [v8 errorView];
    [v3 setAlpha:0.0];

    v4 = [v8 loadingView];
    [v4 setAlpha:0.0];

    if ([v8 mapOnly])
    {
      v5 = [v8 backBlurView];
      v6 = v5;
      v7 = 0.0;
    }

    else
    {
      v5 = [v8 pageControl];
      v6 = v5;
      v7 = 1.0;
    }

    [v5 setAlpha:v7];

    WeakRetained = v8;
  }
}

- (void)layoutMarginsDidChange
{
  if (!self->_spotlightMode)
  {
    [(FUFlightView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = FUFlightView;
  [(FUFlightView *)&v21 layoutSubviews];
  if (self->_spotlightMode)
  {
    v3 = 20.0;
    v4 = 20.0;
    v5 = 20.0;
    v6 = 20.0;
  }

  else
  {
    [(FUFlightView *)self layoutMargins];
    v3 = v7;
    v4 = v8;
    v5 = v9;
    v6 = v10;
  }

  mapView = [(FUFlightView *)self mapView];
  [mapView _setAttributionInsets:{0.0, -v4, -v5, 0.0}];

  landscapeMode = [(FUFlightView *)self landscapeMode];
  spotlightMode = self->_spotlightMode;
  if (landscapeMode)
  {
    if (!self->_spotlightMode && ![(FUFlightView *)self mapOnly])
    {
      backBlurView = [(FUFlightView *)self backBlurView];
      [backBlurView frame];
      v16 = v15;

      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        v6 = v6 + v16;
      }

      else
      {
        v4 = v4 + v16;
      }
    }
  }

  else if (!self->_spotlightMode && ![(FUFlightView *)self mapOnly])
  {
    backBlurView2 = [(FUFlightView *)self backBlurView];
    [backBlurView2 frame];
    v19 = v18;

    v5 = v5 + v19;
  }

  mapView2 = [(FUFlightView *)self mapView];
  [mapView2 _setEdgeInsets:{v3, v4, v5, v6}];

  [(FUFlightView *)self fitMap:0];
  [(FUFlightView *)self updateBorderLines];
}

- (void)updateConstraints
{
  v18.receiver = self;
  v18.super_class = FUFlightView;
  [(FUFlightView *)&v18 updateConstraints];
  [(FUFlightView *)self updateOrientationConstraints];
  v3 = ![(FUFlightView *)self landscapeMode];
  spotlightMode = self->_spotlightMode;
  v5 = v3 & spotlightMode;
  leadingMapConstraint = [(FUFlightView *)self leadingMapConstraint];
  [leadingMapConstraint setActive:0];

  v7 = MEMORY[0x277CCAAD0];
  if ((v3 & 1) != 0 || !spotlightMode)
  {
    mapView = [(FUFlightView *)self mapView];
    mapView2 = [v7 constraintWithItem:self attribute:5 relatedBy:0 toItem:mapView attribute:5 multiplier:1.0 constant:0.0];
    [(FUFlightView *)self setLeadingMapConstraint:mapView2];
  }

  else
  {
    mapView = [(FUFlightView *)self backBlurView];
    mapView2 = [(FUFlightView *)self mapView];
    v10 = [v7 constraintWithItem:mapView attribute:6 relatedBy:0 toItem:mapView2 attribute:5 multiplier:1.0 constant:0.0];
    [(FUFlightView *)self setLeadingMapConstraint:v10];
  }

  leadingMapConstraint2 = [(FUFlightView *)self leadingMapConstraint];
  [leadingMapConstraint2 setActive:1];

  bottomMapConstraint = [(FUFlightView *)self bottomMapConstraint];
  [bottomMapConstraint setActive:0];

  v13 = MEMORY[0x277CCAAD0];
  if (v5)
  {
    backBlurView = [(FUFlightView *)self backBlurView];
    mapView3 = [(FUFlightView *)self mapView];
    v16 = [v13 constraintWithItem:backBlurView attribute:3 relatedBy:0 toItem:mapView3 attribute:4 multiplier:1.0 constant:0.0];
    [(FUFlightView *)self setBottomMapConstraint:v16];
  }

  else
  {
    backBlurView = [(FUFlightView *)self mapView];
    mapView3 = [v13 constraintWithItem:self attribute:4 relatedBy:0 toItem:backBlurView attribute:4 multiplier:1.0 constant:0.0];
    [(FUFlightView *)self setBottomMapConstraint:mapView3];
  }

  bottomMapConstraint2 = [(FUFlightView *)self bottomMapConstraint];
  [bottomMapConstraint2 setActive:1];
}

- (void)updateOrientationConstraints
{
  landscapeMode = [(FUFlightView *)self landscapeMode];
  lanscapeConstraint1 = [(FUFlightView *)self lanscapeConstraint1];
  [lanscapeConstraint1 setActive:landscapeMode];

  lanscapeConstraint2 = [(FUFlightView *)self lanscapeConstraint2];
  [lanscapeConstraint2 setActive:landscapeMode];

  lanscapeConstraint3 = [(FUFlightView *)self lanscapeConstraint3];
  [lanscapeConstraint3 setActive:landscapeMode];

  portraitConstraint1 = [(FUFlightView *)self portraitConstraint1];
  [portraitConstraint1 setActive:landscapeMode ^ 1];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = FUFlightView;
  [(FUFlightView *)&v3 didMoveToWindow];
  [(FUFlightView *)self tlk_updateWithCurrentAppearance];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = FUFlightView;
  [(FUFlightView *)&v10 traitCollectionDidChange:changeCopy];
  [(FUFlightView *)self updateOrientationConstraints];
  [(FUFlightView *)self updateBorderLines];
  landscapeMode = [(FUFlightView *)self landscapeMode];
  if (landscapeMode != [(FUFlightView *)self landscapeModeForTraits:changeCopy])
  {
    [(FUFlightView *)self setNeedsUpdateConstraints];
    [(FUFlightView *)self setNeedsLayout];
  }

  traitCollection = [(FUFlightView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_6:
    [(FUFlightView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_7;
  }

  traitCollection2 = [(FUFlightView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (id)currentFlight
{
  selectedFlight = self->_selectedFlight;
  if (selectedFlight == 0x7FFFFFFFFFFFFFFFLL || (-[FUFlightView flights](self, "flights"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, selectedFlight >= v5))
  {
    v7 = 0;
  }

  else
  {
    flights = [(FUFlightView *)self flights];
    v7 = [flights objectAtIndexedSubscript:self->_selectedFlight];
  }

  return v7;
}

- (id)currentLeg
{
  currentFlight = [(FUFlightView *)self currentFlight];
  v4 = currentFlight;
  selectedLeg = self->_selectedLeg;
  if (selectedLeg == 0x7FFFFFFFFFFFFFFFLL || ([currentFlight legs], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, selectedLeg >= v7))
  {
    v9 = 0;
  }

  else
  {
    legs = [v4 legs];
    v9 = [legs objectAtIndexedSubscript:self->_selectedLeg];
  }

  return v9;
}

- (void)setShowInfoPanel:(BOOL)panel
{
  panelCopy = panel;
  self->_showInfoPanel = panel;
  backBlurView = [(FUFlightView *)self backBlurView];
  [backBlurView setHidden:!panelCopy];

  [(FUFlightView *)self updateBorderLines];

  [(FUFlightView *)self setNeedsLayout];
}

- (id)flightForLeg:(id)leg
{
  v29 = *MEMORY[0x277D85DE8];
  legCopy = leg;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_flights;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        legs = [v10 legs];
        v12 = [legs countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(legs);
              }

              if (*(*(&v19 + 1) + 8 * j) == legCopy)
              {
                v16 = v10;

                goto LABEL_19;
              }
            }

            v13 = [legs countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v16 = 0;
    }

    while (v7);
  }

  else
  {
    v16 = 0;
  }

LABEL_19:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (unint64_t)absoluteLegIndex
{
  v30 = *MEMORY[0x277D85DE8];
  currentLeg = [(FUFlightView *)self currentLeg];
  if (currentLeg)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = self->_flights;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v25;
      v19 = *v25;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          legs = [v10 legs];
          v12 = [legs countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            while (2)
            {
              v15 = 0;
              v16 = v7;
              v7 += v13;
              do
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(legs);
                }

                if (currentLeg == *(*(&v20 + 1) + 8 * v15))
                {

                  goto LABEL_21;
                }

                ++v16;
                ++v15;
              }

              while (v13 != v15);
              v13 = [legs countByEnumeratingWithState:&v20 objects:v28 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v8 = v19;
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      while (v6);
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_21:
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)setFlights:(id)flights selectedFlight:(int64_t)flight selectedLeg:(int64_t)leg
{
  v96 = *MEMORY[0x277D85DE8];
  flightsCopy = flights;
  v10 = flightsCopy;
  if (*&self->_flights != __PAIR128__(flight, flightsCopy) || self->_selectedLeg != leg)
  {
    legCopy = leg;
    flightCopy = flight;
    v79 = flightsCopy;
    objc_storeStrong(&self->_flights, flights);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    controllers = self->_controllers;
    self->_controllers = v12;

    v81 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = self->_flights;
    v83 = [(NSArray *)obj countByEnumeratingWithState:&v89 objects:v95 count:16];
    if (v83)
    {
      v82 = *v90;
      do
      {
        for (i = 0; i != v83; ++i)
        {
          if (*v90 != v82)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v89 + 1) + 8 * i);
          legs = [v15 legs];
          v16 = [legs count];
          if (v16)
          {
            v17 = v16;
            [v81 addObjectsFromArray:legs];
            if (v17 >= 1)
            {
              for (j = 0; j != v17; ++j)
              {
                infoViewControllerCreate = [(FUFlightView *)self infoViewControllerCreate];
                flightInfoView = [infoViewControllerCreate flightInfoView];
                [flightInfoView setFlight:v15 legIndex:j multiFlights:-[NSArray count](self->_flights spotlightMode:{"count") > 1, self->_spotlightMode}];

                flightInfoView2 = [infoViewControllerCreate flightInfoView];
                [flightInfoView2 setDelegate:self];

                [(NSMutableArray *)self->_controllers addObject:infoViewControllerCreate];
              }
            }
          }
        }

        v83 = [(NSArray *)obj countByEnumeratingWithState:&v89 objects:v95 count:16];
      }

      while (v83);
    }

    objc_storeStrong(&self->_allLegs, v81);
    v22 = [(NSArray *)self->_allLegs count];
    v23 = 0.0;
    if (v22 >= 2)
    {
      if ([(FUFlightView *)self mapOnly])
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }
    }

    pageControl = [(FUFlightView *)self pageControl];
    [pageControl setAlpha:v23];

    v10 = v79;
    if (!v79 || ![v79 count] || (objc_msgSend(v79, "firstObject"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "legs"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "count"), v26, v25, !v27))
    {
      [(FUFlightView *)self cleanupView];
LABEL_61:

      v11 = 1;
      goto LABEL_62;
    }

    self->_highlightCurrentFlightLeg = 1;
    if (flightCopy == 0x7FFFFFFFFFFFFFFFLL || [v79 count] <= flightCopy)
    {
      if ([v79 count] == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = 0;
        while (1)
        {
          v32 = [v79 objectAtIndexedSubscript:v31];
          v33 = v31 + 1;
          v34 = [v79 objectAtIndexedSubscript:v31 + 1];
          arrival = [v32 arrival];
          time = [arrival time];
          [time timeIntervalSinceNow];
          v38 = v37;

          departure = [v34 departure];
          time2 = [departure time];
          [time2 timeIntervalSinceNow];
          v42 = v41;

          if (v38 > 0.0)
          {
            break;
          }

          if (v38 < 0.0)
          {
            v38 = -v38;
          }

          if (v42 < 0.0)
          {
            v42 = -v42;
          }

          if (v38 >= v42)
          {
            ++v31;
            if (v33 < [v79 count] - 1)
            {
              continue;
            }
          }

          goto LABEL_40;
        }
      }

LABEL_40:
      self->_selectedFlight = v31;
    }

    else
    {
      self->_selectedFlight = flightCopy;
      if (legCopy != 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = [v79 objectAtIndexedSubscript:flightCopy];
        legs2 = [v28 legs];
        v30 = [legs2 count];

        if (v30 <= legCopy)
        {
          v75 = [v79 objectAtIndexedSubscript:flightCopy];
          legs3 = [v75 legs];
          self->_selectedLeg = [legs3 count] - 1;
        }

        else
        {
          self->_selectedLeg = legCopy;
          self->_highlightCurrentFlightLeg = 0;
        }

        goto LABEL_42;
      }
    }

    self->_selectedLeg = 0;
LABEL_42:
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v43 = self->_controllers;
    v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v85 objects:v94 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v86;
      v47 = *MEMORY[0x277D76C78];
      v48 = *(MEMORY[0x277D76C78] + 8);
      v49 = 0.0;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v86 != v46)
          {
            objc_enumerationMutation(v43);
          }

          view = [*(*(&v85 + 1) + 8 * k) view];
          LODWORD(v52) = 1144750080;
          LODWORD(v53) = 1132068864;
          [view systemLayoutSizeFittingSize:v47 withHorizontalFittingPriority:v48 verticalFittingPriority:{v52, v53}];
          v55 = v54;

          if (v49 < v55)
          {
            v49 = v55;
          }
        }

        v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v85 objects:v94 count:16];
      }

      while (v45);
    }

    else
    {
      v49 = 0.0;
    }

    absoluteLegIndex = [(FUFlightView *)self absoluteLegIndex];
    pageViewController = self->_pageViewController;
    v58 = [(NSMutableArray *)self->_controllers objectAtIndexedSubscript:absoluteLegIndex];
    v93 = v58;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
    [(UIPageViewController *)pageViewController setViewControllers:v59 direction:0 animated:0 completion:0];

    pageControl2 = [(FUFlightView *)self pageControl];
    [pageControl2 setNumberOfPages:v22];

    [(FUFlightView *)self updatePageControllerScrolling];
    pageControllerHeightConstraint = self->_pageControllerHeightConstraint;
    if (pageControllerHeightConstraint || !self->_pageViewController)
    {
      [(NSLayoutConstraint *)pageControllerHeightConstraint constant];
      if (v62 != v49)
      {
        [(NSLayoutConstraint *)self->_pageControllerHeightConstraint setConstant:v49];
      }
    }

    else
    {
      v63 = MEMORY[0x277CCAAD0];
      view2 = [(UIPageViewController *)self->_pageViewController view];
      v65 = [v63 constraintWithItem:view2 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v49];
      v66 = self->_pageControllerHeightConstraint;
      self->_pageControllerHeightConstraint = v65;

      view3 = [(UIPageViewController *)self->_pageViewController view];
      superview = [view3 superview];
      [superview addConstraint:self->_pageControllerHeightConstraint];
    }

    WeakRetained = objc_loadWeakRetained(&self->_pageContainerHeightConstraint);
    v70 = objc_loadWeakRetained(&self->_backBlurView);
    [v70 safeAreaInsets];
    [WeakRetained setConstant:ceil(v49 + v71)];

    LODWORD(v72) = 1148829696;
    if (self->_spotlightMode)
    {
      *&v72 = 1000.0;
    }

    [WeakRetained setPriority:v72];
    [(UIScrollView *)self->_pageViewContainer setContentSize:-1.0, v49];
    [(UIScrollView *)self->_pageViewContainer scrollRectToVisible:0 animated:0.0, 0.0, 1.0, 1.0];
    [(FUFlightView *)self setAbsoluteIndex:absoluteLegIndex animated:0];

    goto LABEL_61;
  }

  v11 = 0;
LABEL_62:

  v73 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)updatePageControllerScrolling
{
  pageControl = [(FUFlightView *)self pageControl];
  numberOfPages = [pageControl numberOfPages];

  view = [(UIPageViewController *)self->_pageViewController view];
  subviews = [view subviews];
  firstObject = [subviews firstObject];
  [firstObject setScrollEnabled:numberOfPages > 1];

  [(UIScrollView *)self->_pageViewContainer setScrollEnabled:!self->_spotlightMode];
  pageViewContainer = self->_pageViewContainer;
  v9 = !self->_spotlightMode;

  [(UIScrollView *)pageViewContainer setShowsVerticalScrollIndicator:v9];
}

- (void)setSelectedLeg:(int64_t)leg
{
  selectedFlight = self->_selectedFlight;
  if (selectedFlight != 0x7FFFFFFFFFFFFFFFLL && selectedFlight < [(NSArray *)self->_flights count])
  {
    v6 = [(NSArray *)self->_flights objectAtIndexedSubscript:self->_selectedFlight];
    legs = [v6 legs];

    if (leg != 0x7FFFFFFFFFFFFFFFLL && [legs count] > leg)
    {
      allLegs = self->_allLegs;
      v8 = [legs objectAtIndexedSubscript:leg];
      [(FUFlightView *)self setAbsoluteIndex:[(NSArray *)allLegs indexOfObject:v8] animated:1];
    }
  }
}

- (void)updateMapArcs
{
  v44 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = self->_tracks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        mapView = [(FUFlightView *)self mapView];
        polyline = [v8 polyline];
        [mapView removeOverlay:polyline];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v5);
  }

  tracks = self->_tracks;
  self->_tracks = 0;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = self->_allLegs;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v33 + 1) + 8 * j);
        departure = [v17 departure];
        airport = [departure airport];

        arrival = [v17 arrival];
        airport2 = [arrival airport];

        if (airport)
        {
          v22 = airport2 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          [airport location];
          v24 = v23;
          [airport location];
          v45 = CLLocationCoordinate2DMake(v24, v25);
          v41[0] = MKMapPointForCoordinate(v45);
          [airport2 location];
          v27 = v26;
          [airport2 location];
          v46 = CLLocationCoordinate2DMake(v27, v28);
          v41[1] = MKMapPointForCoordinate(v46);
          v29 = objc_opt_new();
          v30 = [MEMORY[0x277CD4DF0] polylineWithPoints:v41 count:2];
          [v29 setPolyline:v30];

          [v29 setLeg:v17];
          currentLeg = [(FUFlightView *)self currentLeg];

          if (v17 == currentLeg)
          {
            objc_storeStrong(&self->_currentTrack, v29);
          }

          [(FUFlightView *)self addTrack:v29];
        }
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v14);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)setAbsoluteIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(NSArray *)self->_allLegs count]> index)
  {
    self->_selectedFlight = 0x7FFFFFFFFFFFFFFFLL;
    self->_selectedLeg = 0x7FFFFFFFFFFFFFFFLL;
    if ([(NSArray *)self->_flights count])
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = [(NSArray *)self->_flights objectAtIndexedSubscript:v6];
        legs = [v8 legs];
        v10 = [legs count];

        if (v10)
        {
          break;
        }

        v12 = v7;
LABEL_10:

        ++v6;
        v7 = v12;
        if (v6 >= [(NSArray *)self->_flights count])
        {
          return;
        }
      }

      v11 = 0;
      v12 = v7;
      while (index != v12)
      {
        ++v12;
        ++v11;
        legs2 = [v8 legs];
        v14 = [legs2 count];

        if (v11 >= v14)
        {
          goto LABEL_10;
        }
      }

      self->_selectedFlight = v6;
      self->_selectedLeg = index - v7;

      if (!self->_planeTracker)
      {
        v15 = +[FUPlaneTrackerAnnotationView defaultAnotation];
        planeTracker = self->_planeTracker;
        self->_planeTracker = v15;

        mapView = [(FUFlightView *)self mapView];
        [mapView addAnnotation:self->_planeTracker];
      }

      currentLeg = [(FUFlightView *)self currentLeg];
      [currentLeg currentProgress];
      v19 = v18;
      departure = [currentLeg departure];
      airport = [departure airport];

      arrival = [currentLeg arrival];
      airport2 = [arrival airport];

      if (airport)
      {
        v24 = airport2 == 0;
      }

      else
      {
        v24 = 1;
      }

      v25 = !v24;
      if (v19 >= 0.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      [(FUPlaneTrackerAnnotationView *)self->_planeTracker setShowsPlane:v26];
      if (v26)
      {
        v27 = self->_planeTracker;
        [airport location];
        v29 = v28;
        [airport location];
        v31 = v30;
        [airport2 location];
        v33 = v32;
        [airport2 location];
        [(FUPlaneTrackerAnnotationView *)v27 setStartLatitude:v29 startLongitude:v31 endLatitude:v33 endLongitude:v34];
        [(FUPlaneTrackerAnnotationView *)self->_planeTracker setCurrentProgress:v19];
      }

      [(FUFlightView *)self updateMapArcs];
      [(FUFlightView *)self fitMap:animatedCopy];
      viewControllers = [(UIPageViewController *)self->_pageViewController viewControllers];
      firstObject = [viewControllers firstObject];
      flightInfoView = [firstObject flightInfoView];
      [flightInfoView setCurrentFocus:2];

      pageControl = [(FUFlightView *)self pageControl];
      [pageControl setCurrentPage:index];

      delegate = [(FUFlightView *)self delegate];
      if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [delegate flightView:self didSelectLeg:self->_selectedLeg ofFlight:self->_selectedFlight];
      }
    }
  }
}

- (void)addTrack:(id)track
{
  trackCopy = track;
  v9 = trackCopy;
  if (!self->_tracks)
  {
    v5 = objc_opt_new();
    tracks = self->_tracks;
    self->_tracks = v5;

    trackCopy = v9;
  }

  if (trackCopy)
  {
    mapView = [(FUFlightView *)self mapView];
    polyline = [v9 polyline];
    [mapView addOverlay:polyline];

    [(NSMutableArray *)self->_tracks addObject:v9];
    trackCopy = v9;
  }
}

- (void)cleanupView
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_planeTracker)
  {
    mapView = [(FUFlightView *)self mapView];
    [mapView removeAnnotation:self->_planeTracker];

    planeTracker = self->_planeTracker;
    self->_planeTracker = 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_tracks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        mapView2 = [(FUFlightView *)self mapView];
        polyline = [v10 polyline];
        [mapView2 removeOverlay:polyline];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_tracks removeAllObjects];
  currentTrack = self->_currentTrack;
  self->_currentTrack = 0;

  v14 = *MEMORY[0x277D85DE8];
}

- (id)arrivalCamera
{
  v3 = MEMORY[0x277CD4E58];
  currentLeg = [(FUFlightView *)self currentLeg];
  arrival = [currentLeg arrival];
  airport = [arrival airport];
  [airport location];
  v8 = v7;
  v10 = v9;
  currentLeg2 = [(FUFlightView *)self currentLeg];
  arrival2 = [currentLeg2 arrival];
  airport2 = [arrival2 airport];
  [airport2 location];
  v16 = [v3 cameraLookingAtCenterCoordinate:v8 fromEyeCoordinate:v10 eyeAltitude:{v14, v15, 300000.0}];

  [v16 setPitch:0.0];

  return v16;
}

- (id)departureCamera
{
  v3 = MEMORY[0x277CD4E58];
  currentLeg = [(FUFlightView *)self currentLeg];
  departure = [currentLeg departure];
  airport = [departure airport];
  [airport location];
  v8 = v7;
  v10 = v9;
  currentLeg2 = [(FUFlightView *)self currentLeg];
  departure2 = [currentLeg2 departure];
  airport2 = [departure2 airport];
  [airport2 location];
  v16 = [v3 cameraLookingAtCenterCoordinate:v8 fromEyeCoordinate:v10 eyeAltitude:{v14, v15, 300000.0}];

  [v16 setPitch:0.0];

  return v16;
}

- (id)flightCamera
{
  v3 = MEMORY[0x277CD4E58];
  [(FUPlaneTrackerAnnotationView *)self->_planeTracker currentLocation];
  v5 = v4;
  v7 = v6;
  [(FUPlaneTrackerAnnotationView *)self->_planeTracker currentLocation];
  v10 = [v3 cameraLookingAtCenterCoordinate:v5 fromEyeCoordinate:v7 eyeAltitude:{v8, v9, 30000000.0}];
  [v10 setPitch:0.0];

  return v10;
}

- (void)updateMapCamera
{
  if (self->_currentFocus == 2)
  {
    [(FUFlightView *)self fitMap:0];
  }
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  overlayCopy = overlay;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [objc_alloc(MEMORY[0x277CD4EE8]) initWithOverlay:overlayCopy];
    goto LABEL_9;
  }

  v6 = overlayCopy;
  v7 = [objc_alloc(MEMORY[0x277CD4F30]) initWithPolyline:v6];
  orangeColor = [MEMORY[0x277D75348] orangeColor];
  [v7 setFillColor:orangeColor];
  [v7 setStrokeColor:orangeColor];
  polyline = [(FUFLightTrack *)self->_currentTrack polyline];
  v10 = polyline;
  if (polyline == v6)
  {

    goto LABEL_7;
  }

  highlightCurrentFlightLeg = [(FUFlightView *)self highlightCurrentFlightLeg];

  if (!highlightCurrentFlightLeg)
  {
LABEL_7:
    [v7 setLineWidth:2.0];
    goto LABEL_8;
  }

  [v7 setLineWidth:1.0];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_285EAB600, &unk_285EAB610, 0}];
  [v7 setLineDashPattern:v12];

LABEL_8:
LABEL_9:

  return v7;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = annotationCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __48__FUFlightView_mapView_regionDidChangeAnimated___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__FUFlightView_mapView_regionDidChangeAnimated___block_invoke_2;
  v2[3] = &unk_279011498;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.4];
}

void __48__FUFlightView_mapView_regionDidChangeAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  [v2 setAlpha:1.0];

  if ([*(a1 + 32) mapOnly])
  {
    v3 = [*(a1 + 32) backBlurView];
    [v3 setAlpha:0.0];
  }
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  if (completed)
  {
    viewControllers = [controller viewControllers];
    firstObject = [viewControllers firstObject];

    allLegs = self->_allLegs;
    flightInfoView = [firstObject flightInfoView];
    v10 = [flightInfoView leg];
    v11 = [(NSArray *)allLegs indexOfObject:v10];

    [(FUFlightView *)self setAbsoluteIndex:v11 animated:1];
  }
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  v5 = [(NSMutableArray *)self->_controllers indexOfObject:viewController];
  if (v5)
  {
    v6 = v5 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_controllers objectAtIndexedSubscript:v5 - 1];
  }

  return v7;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  v5 = [(NSMutableArray *)self->_controllers indexOfObject:viewController];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v5 + 1, v5 + 1 >= [(NSMutableArray *)self->_controllers count]))
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_controllers objectAtIndexedSubscript:v6];
  }

  return v7;
}

- (void)changeCurrentPage:(id)page
{
  v14[1] = *MEMORY[0x277D85DE8];
  pageControl = [(FUFlightView *)self pageControl];
  currentPage = [pageControl currentPage];

  allLegs = self->_allLegs;
  currentLeg = [(FUFlightView *)self currentLeg];
  v8 = [(NSArray *)allLegs indexOfObject:currentLeg];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v8 != currentPage)
  {
    pageViewController = self->_pageViewController;
    v11 = [(NSMutableArray *)self->_controllers objectAtIndexedSubscript:currentPage];
    v14[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [(UIPageViewController *)pageViewController setViewControllers:v12 direction:currentPage <= v8 animated:1 completion:0];

    [(FUFlightView *)self setAbsoluteIndex:currentPage animated:1];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)flightInfoView:(id)view didUpdateFocus:(int64_t)focus
{
  viewCopy = view;
  if (!focus)
  {
    v10 = viewCopy;
    mapView = [(FUFlightView *)self mapView];
    departureCamera = [(FUFlightView *)self departureCamera];
    goto LABEL_7;
  }

  if (focus == 1)
  {
    v10 = viewCopy;
    mapView = [(FUFlightView *)self mapView];
    departureCamera = [(FUFlightView *)self arrivalCamera];
LABEL_7:
    v9 = departureCamera;
    [mapView setCamera:departureCamera animated:1];

    goto LABEL_8;
  }

  if (focus != 2)
  {
    goto LABEL_9;
  }

  v10 = viewCopy;
  [(FUFlightView *)self fitMap:1];
LABEL_8:
  viewCopy = v10;
LABEL_9:
}

- (id)infoViewControllerCreate
{
  v2 = [[FUFlightInfoViewController alloc] initWithStyle:self->_displayStyle];

  return v2;
}

- (UIEdgeInsets)mapInsets
{
  top = self->_mapInsets.top;
  left = self->_mapInsets.left;
  bottom = self->_mapInsets.bottom;
  right = self->_mapInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (UIVisualEffectView)backBlurView
{
  WeakRetained = objc_loadWeakRetained(&self->_backBlurView);

  return WeakRetained;
}

- (TLKProminenceView)borderLineViewLandscape
{
  WeakRetained = objc_loadWeakRetained(&self->_borderLineViewLandscape);

  return WeakRetained;
}

- (TLKProminenceView)borderLineViewPortrait
{
  WeakRetained = objc_loadWeakRetained(&self->_borderLineViewPortrait);

  return WeakRetained;
}

- (UIPageControl)pageControl
{
  WeakRetained = objc_loadWeakRetained(&self->_pageControl);

  return WeakRetained;
}

- (NSLayoutConstraint)pageContainerHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_pageContainerHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)lanscapeConstraint1
{
  WeakRetained = objc_loadWeakRetained(&self->_lanscapeConstraint1);

  return WeakRetained;
}

- (NSLayoutConstraint)lanscapeConstraint2
{
  WeakRetained = objc_loadWeakRetained(&self->_lanscapeConstraint2);

  return WeakRetained;
}

- (NSLayoutConstraint)lanscapeConstraint3
{
  WeakRetained = objc_loadWeakRetained(&self->_lanscapeConstraint3);

  return WeakRetained;
}

- (NSLayoutConstraint)portraitConstraint1
{
  WeakRetained = objc_loadWeakRetained(&self->_portraitConstraint1);

  return WeakRetained;
}

- (FUFlightViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end