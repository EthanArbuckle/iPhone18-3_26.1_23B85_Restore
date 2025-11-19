@interface FUFlightView
- (BOOL)landscapeMode;
- (BOOL)mapOnly;
- (BOOL)setFlights:(id)a3 selectedFlight:(int64_t)a4 selectedLeg:(int64_t)a5;
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
- (id)flightForLeg:(id)a3;
- (id)infoViewControllerCreate;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (unint64_t)absoluteLegIndex;
- (void)addTrack:(id)a3;
- (void)awakeFromNib;
- (void)changeCurrentPage:(id)a3;
- (void)cleanupView;
- (void)didMoveToWindow;
- (void)flightInfoView:(id)a3 didUpdateFocus:(int64_t)a4;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)removeMapBackground;
- (void)setAbsoluteIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)setDisplayStyle:(unint64_t)a3;
- (void)setSelectedLeg:(int64_t)a3;
- (void)setShowInfoPanel:(BOOL)a3;
- (void)showError;
- (void)showInfo;
- (void)showLoading;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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
  v2 = [(FUFlightView *)self borderLineViewPortrait];
  v3 = v2 == 0;

  return v3;
}

- (void)awakeFromNib
{
  v49.receiver = self;
  v49.super_class = FUFlightView;
  [(FUFlightView *)&v49 awakeFromNib];
  self->_selectedFlight = 0x7FFFFFFFFFFFFFFFLL;
  self->_selectedLeg = 0x7FFFFFFFFFFFFFFFLL;
  v3 = [(FUFlightView *)self mapView];
  [v3 setPitchEnabled:0];

  v4 = [(FUFlightView *)self mapView];
  [v4 setShowsAttribution:1];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_updateMapAppearance name:*MEMORY[0x277D77548] object:0];

  [(FUFlightView *)self updateMapAppearance];
  v6 = [(FUFlightView *)self mapView];
  [v6 setAlpha:0.0];

  if ([(FUFlightView *)self mapOnly])
  {
    v7 = [(FUFlightView *)self backBlurView];
    [v7 setAlpha:1.0];
  }

  v8 = [(FUFlightView *)self pageControl];
  [v8 setAlpha:0.0];

  v9 = [(FUFlightView *)self mapView];
  [v9 _setShowsAppleLogo:0];

  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 bundleIdentifier];
  v12 = [v11 isEqualToString:@"com.apple.datadetectors.DDActionsService"];

  if (v12)
  {
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 postNotificationName:*MEMORY[0x277CD4B40] object:0];
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
    v16 = [(UIPageViewController *)self->_pageViewController view];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

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
      v20 = [v17 topEdgeEffect];
      [v20 setHidden:1];
    }

    else
    {
      v19 = [MEMORY[0x277D75210] effectWithStyle:10];
      [WeakRetained setEffect:v19];
    }

    v21 = [WeakRetained contentView];
    v22 = [v21 safeAreaLayoutGuide];
    [v21 addSubview:v17];
    v23 = [v17 leadingAnchor];
    v24 = [v22 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    v26 = [v17 trailingAnchor];
    v27 = [v21 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    [v28 setActive:1];

    v29 = [v17 topAnchor];
    if (_UISolariumEnabled())
    {
      v30 = v21;
    }

    else
    {
      v30 = v22;
    }

    v31 = [v30 topAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    [v32 setActive:1];

    v33 = [v17 bottomAnchor];
    v34 = [v22 bottomAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    [v35 setActive:1];

    v36 = [(UIPageViewController *)self->_pageViewController view];
    [v17 addSubview:v36];
    v37 = [v36 leadingAnchor];
    v38 = [v17 safeAreaLayoutGuide];
    v39 = [v38 leadingAnchor];
    v40 = [v37 constraintEqualToAnchor:v39];
    [v40 setActive:1];

    v41 = [v36 widthAnchor];
    v42 = [v17 widthAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    [v43 setActive:1];

    v44 = [v36 topAnchor];
    v45 = [v17 topAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    [v46 setActive:1];

    v47 = [(FUFlightView *)self borderLineViewLandscape];
    [v47 setProminence:3];

    v48 = [(FUFlightView *)self borderLineViewPortrait];
    [v48 setProminence:3];
  }
}

- (void)setDisplayStyle:(unint64_t)a3
{
  if (self->_displayStyle != a3)
  {
    self->_displayStyle = a3;
    [(FUFlightView *)self setupStyles];
  }
}

- (void)updateMapAppearance
{
  v4 = [MEMORY[0x277D6F1A0] bestAppearanceForSystem];
  v3 = [(FUFlightView *)self mapView];
  [v4 overrideAppearanceForView:v3];
}

- (void)removeMapBackground
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_spotlightMode)
  {
    self->_spotlightMode = 1;
    [(FUFlightView *)self updatePageControllerScrolling];
    v3 = [(FUFlightView *)self backBlurView];
    [v3 setEffect:0];

    v4 = [(FUFlightView *)self backBlurView];
    [v4 _setBackground:0];

    v5 = [(FUFlightView *)self mapView];
    [v5 setScrollEnabled:0];

    v6 = [(FUFlightView *)self mapView];
    [v6 setRotateEnabled:0];

    v7 = [(FUFlightView *)self mapView];
    [v7 setPitchEnabled:0];

    v8 = [(FUFlightView *)self mapView];
    [v8 setZoomEnabled:0];

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

          v14 = [*(*(&v16 + 1) + 8 * v13) flightInfoView];
          [v14 updateForFollowupContent:self->_spotlightMode];

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

- (void)tlk_updateForAppearance:(id)a3
{
  v11.receiver = self;
  v11.super_class = FUFlightView;
  v4 = a3;
  [(FUFlightView *)&v11 tlk_updateForAppearance:v4];
  v5 = [v4 secondaryColor];
  v6 = [(FUFlightView *)self pageControl];
  [v6 setPageIndicatorTintColor:v5];

  v7 = [v4 primaryColor];
  v8 = [(FUFlightView *)self pageControl];
  [v8 setCurrentPageIndicatorTintColor:v7];

  v9 = [(FUFlightView *)self pageControl];
  [v4 enableAppearanceForView:v9];

  [(FUFlightView *)self updateOrientationConstraints];
  v10 = [(FUFlightView *)self landscapeMode];
  if (self->_landscapeMode != v10)
  {
    self->_landscapeMode = v10;
    [(FUFlightView *)self setNeedsUpdateConstraints];
    [(FUFlightView *)self setNeedsLayout];
  }
}

- (BOOL)landscapeMode
{
  v2 = self;
  v3 = [(FUFlightView *)self traitCollection];
  LOBYTE(v2) = [(FUFlightView *)v2 landscapeModeForTraits:v3];

  return v2;
}

- (void)updateBorderLines
{
  if (self->_spotlightMode)
  {
    v3 = 1;
    v4 = 1;
  }

  else
  {
    v4 = [(FUFlightView *)self landscapeMode];
    v3 = v4 ^ 1;
  }

  v5 = [(FUFlightView *)self borderLineViewLandscape];
  [v5 setHidden:v3];

  v6 = [(FUFlightView *)self borderLineViewPortrait];
  [v6 setHidden:v4];
}

- (void)showLoading
{
  v3 = [(FUFlightView *)self loadingView];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(FUFlightView *)self setLoadingView:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    WeakRetained = objc_loadWeakRetained(&self->_backBlurView);
    v6 = [WeakRetained contentView];
    [v6 addSubview:v4];

    v7 = [v4 leftAnchor];
    v8 = [WeakRetained leftAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [v9 setActive:1];

    v10 = [v4 rightAnchor];
    v11 = [WeakRetained rightAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v12 setActive:1];

    v13 = [v4 topAnchor];
    v14 = [WeakRetained topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [v4 bottomAnchor];
    v17 = [WeakRetained bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
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
  v3 = [(FUFlightView *)self errorView];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(FUFlightView *)self setErrorView:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    WeakRetained = objc_loadWeakRetained(&self->_backBlurView);
    v6 = [WeakRetained contentView];
    [v6 addSubview:v4];

    v7 = [v4 leftAnchor];
    v8 = [WeakRetained leftAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [v9 setActive:1];

    v10 = [v4 rightAnchor];
    v11 = [WeakRetained rightAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v12 setActive:1];

    v13 = [v4 topAnchor];
    v14 = [WeakRetained topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [v4 bottomAnchor];
    v17 = [WeakRetained bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
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

  v11 = [(FUFlightView *)self mapView];
  [v11 _setAttributionInsets:{0.0, -v4, -v5, 0.0}];

  v12 = [(FUFlightView *)self landscapeMode];
  spotlightMode = self->_spotlightMode;
  if (v12)
  {
    if (!self->_spotlightMode && ![(FUFlightView *)self mapOnly])
    {
      v14 = [(FUFlightView *)self backBlurView];
      [v14 frame];
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
    v17 = [(FUFlightView *)self backBlurView];
    [v17 frame];
    v19 = v18;

    v5 = v5 + v19;
  }

  v20 = [(FUFlightView *)self mapView];
  [v20 _setEdgeInsets:{v3, v4, v5, v6}];

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
  v6 = [(FUFlightView *)self leadingMapConstraint];
  [v6 setActive:0];

  v7 = MEMORY[0x277CCAAD0];
  if ((v3 & 1) != 0 || !spotlightMode)
  {
    v8 = [(FUFlightView *)self mapView];
    v9 = [v7 constraintWithItem:self attribute:5 relatedBy:0 toItem:v8 attribute:5 multiplier:1.0 constant:0.0];
    [(FUFlightView *)self setLeadingMapConstraint:v9];
  }

  else
  {
    v8 = [(FUFlightView *)self backBlurView];
    v9 = [(FUFlightView *)self mapView];
    v10 = [v7 constraintWithItem:v8 attribute:6 relatedBy:0 toItem:v9 attribute:5 multiplier:1.0 constant:0.0];
    [(FUFlightView *)self setLeadingMapConstraint:v10];
  }

  v11 = [(FUFlightView *)self leadingMapConstraint];
  [v11 setActive:1];

  v12 = [(FUFlightView *)self bottomMapConstraint];
  [v12 setActive:0];

  v13 = MEMORY[0x277CCAAD0];
  if (v5)
  {
    v14 = [(FUFlightView *)self backBlurView];
    v15 = [(FUFlightView *)self mapView];
    v16 = [v13 constraintWithItem:v14 attribute:3 relatedBy:0 toItem:v15 attribute:4 multiplier:1.0 constant:0.0];
    [(FUFlightView *)self setBottomMapConstraint:v16];
  }

  else
  {
    v14 = [(FUFlightView *)self mapView];
    v15 = [v13 constraintWithItem:self attribute:4 relatedBy:0 toItem:v14 attribute:4 multiplier:1.0 constant:0.0];
    [(FUFlightView *)self setBottomMapConstraint:v15];
  }

  v17 = [(FUFlightView *)self bottomMapConstraint];
  [v17 setActive:1];
}

- (void)updateOrientationConstraints
{
  v3 = [(FUFlightView *)self landscapeMode];
  v4 = [(FUFlightView *)self lanscapeConstraint1];
  [v4 setActive:v3];

  v5 = [(FUFlightView *)self lanscapeConstraint2];
  [v5 setActive:v3];

  v6 = [(FUFlightView *)self lanscapeConstraint3];
  [v6 setActive:v3];

  v7 = [(FUFlightView *)self portraitConstraint1];
  [v7 setActive:v3 ^ 1];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = FUFlightView;
  [(FUFlightView *)&v3 didMoveToWindow];
  [(FUFlightView *)self tlk_updateWithCurrentAppearance];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FUFlightView;
  [(FUFlightView *)&v10 traitCollectionDidChange:v4];
  [(FUFlightView *)self updateOrientationConstraints];
  [(FUFlightView *)self updateBorderLines];
  v5 = [(FUFlightView *)self landscapeMode];
  if (v5 != [(FUFlightView *)self landscapeModeForTraits:v4])
  {
    [(FUFlightView *)self setNeedsUpdateConstraints];
    [(FUFlightView *)self setNeedsLayout];
  }

  v6 = [(FUFlightView *)self traitCollection];
  if ([v6 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_6:
    [(FUFlightView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_7;
  }

  v7 = [(FUFlightView *)self traitCollection];
  v8 = [v7 _vibrancy];
  v9 = [v4 _vibrancy];

  if (v8 != v9)
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
    v6 = [(FUFlightView *)self flights];
    v7 = [v6 objectAtIndexedSubscript:self->_selectedFlight];
  }

  return v7;
}

- (id)currentLeg
{
  v3 = [(FUFlightView *)self currentFlight];
  v4 = v3;
  selectedLeg = self->_selectedLeg;
  if (selectedLeg == 0x7FFFFFFFFFFFFFFFLL || ([v3 legs], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, selectedLeg >= v7))
  {
    v9 = 0;
  }

  else
  {
    v8 = [v4 legs];
    v9 = [v8 objectAtIndexedSubscript:self->_selectedLeg];
  }

  return v9;
}

- (void)setShowInfoPanel:(BOOL)a3
{
  v3 = a3;
  self->_showInfoPanel = a3;
  v5 = [(FUFlightView *)self backBlurView];
  [v5 setHidden:!v3];

  [(FUFlightView *)self updateBorderLines];

  [(FUFlightView *)self setNeedsLayout];
}

- (id)flightForLeg:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v11 = [v10 legs];
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(v11);
              }

              if (*(*(&v19 + 1) + 8 * j) == v4)
              {
                v16 = v10;

                goto LABEL_19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
  v3 = [(FUFlightView *)self currentLeg];
  if (v3)
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
          v11 = [v10 legs];
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                  objc_enumerationMutation(v11);
                }

                if (v3 == *(*(&v20 + 1) + 8 * v15))
                {

                  goto LABEL_21;
                }

                ++v16;
                ++v15;
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
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

- (BOOL)setFlights:(id)a3 selectedFlight:(int64_t)a4 selectedLeg:(int64_t)a5
{
  v96 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = v9;
  if (*&self->_flights != __PAIR128__(a4, v9) || self->_selectedLeg != a5)
  {
    v77 = a5;
    v78 = a4;
    v79 = v9;
    objc_storeStrong(&self->_flights, a3);
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
          v84 = [v15 legs];
          v16 = [v84 count];
          if (v16)
          {
            v17 = v16;
            [v81 addObjectsFromArray:v84];
            if (v17 >= 1)
            {
              for (j = 0; j != v17; ++j)
              {
                v19 = [(FUFlightView *)self infoViewControllerCreate];
                v20 = [v19 flightInfoView];
                [v20 setFlight:v15 legIndex:j multiFlights:-[NSArray count](self->_flights spotlightMode:{"count") > 1, self->_spotlightMode}];

                v21 = [v19 flightInfoView];
                [v21 setDelegate:self];

                [(NSMutableArray *)self->_controllers addObject:v19];
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

    v24 = [(FUFlightView *)self pageControl];
    [v24 setAlpha:v23];

    v10 = v79;
    if (!v79 || ![v79 count] || (objc_msgSend(v79, "firstObject"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "legs"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "count"), v26, v25, !v27))
    {
      [(FUFlightView *)self cleanupView];
LABEL_61:

      v11 = 1;
      goto LABEL_62;
    }

    self->_highlightCurrentFlightLeg = 1;
    if (v78 == 0x7FFFFFFFFFFFFFFFLL || [v79 count] <= v78)
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
          v35 = [v32 arrival];
          v36 = [v35 time];
          [v36 timeIntervalSinceNow];
          v38 = v37;

          v39 = [v34 departure];
          v40 = [v39 time];
          [v40 timeIntervalSinceNow];
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
      self->_selectedFlight = v78;
      if (v77 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = [v79 objectAtIndexedSubscript:v78];
        v29 = [v28 legs];
        v30 = [v29 count];

        if (v30 <= v77)
        {
          v75 = [v79 objectAtIndexedSubscript:v78];
          v76 = [v75 legs];
          self->_selectedLeg = [v76 count] - 1;
        }

        else
        {
          self->_selectedLeg = v77;
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

          v51 = [*(*(&v85 + 1) + 8 * k) view];
          LODWORD(v52) = 1144750080;
          LODWORD(v53) = 1132068864;
          [v51 systemLayoutSizeFittingSize:v47 withHorizontalFittingPriority:v48 verticalFittingPriority:{v52, v53}];
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

    v56 = [(FUFlightView *)self absoluteLegIndex];
    pageViewController = self->_pageViewController;
    v58 = [(NSMutableArray *)self->_controllers objectAtIndexedSubscript:v56];
    v93 = v58;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
    [(UIPageViewController *)pageViewController setViewControllers:v59 direction:0 animated:0 completion:0];

    v60 = [(FUFlightView *)self pageControl];
    [v60 setNumberOfPages:v22];

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
      v64 = [(UIPageViewController *)self->_pageViewController view];
      v65 = [v63 constraintWithItem:v64 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v49];
      v66 = self->_pageControllerHeightConstraint;
      self->_pageControllerHeightConstraint = v65;

      v67 = [(UIPageViewController *)self->_pageViewController view];
      v68 = [v67 superview];
      [v68 addConstraint:self->_pageControllerHeightConstraint];
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
    [(FUFlightView *)self setAbsoluteIndex:v56 animated:0];

    goto LABEL_61;
  }

  v11 = 0;
LABEL_62:

  v73 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)updatePageControllerScrolling
{
  v3 = [(FUFlightView *)self pageControl];
  v4 = [v3 numberOfPages];

  v5 = [(UIPageViewController *)self->_pageViewController view];
  v6 = [v5 subviews];
  v7 = [v6 firstObject];
  [v7 setScrollEnabled:v4 > 1];

  [(UIScrollView *)self->_pageViewContainer setScrollEnabled:!self->_spotlightMode];
  pageViewContainer = self->_pageViewContainer;
  v9 = !self->_spotlightMode;

  [(UIScrollView *)pageViewContainer setShowsVerticalScrollIndicator:v9];
}

- (void)setSelectedLeg:(int64_t)a3
{
  selectedFlight = self->_selectedFlight;
  if (selectedFlight != 0x7FFFFFFFFFFFFFFFLL && selectedFlight < [(NSArray *)self->_flights count])
  {
    v6 = [(NSArray *)self->_flights objectAtIndexedSubscript:self->_selectedFlight];
    v9 = [v6 legs];

    if (a3 != 0x7FFFFFFFFFFFFFFFLL && [v9 count] > a3)
    {
      allLegs = self->_allLegs;
      v8 = [v9 objectAtIndexedSubscript:a3];
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
        v9 = [(FUFlightView *)self mapView];
        v10 = [v8 polyline];
        [v9 removeOverlay:v10];
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
        v18 = [v17 departure];
        v19 = [v18 airport];

        v20 = [v17 arrival];
        v21 = [v20 airport];

        if (v19)
        {
          v22 = v21 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          [v19 location];
          v24 = v23;
          [v19 location];
          v45 = CLLocationCoordinate2DMake(v24, v25);
          v41[0] = MKMapPointForCoordinate(v45);
          [v21 location];
          v27 = v26;
          [v21 location];
          v46 = CLLocationCoordinate2DMake(v27, v28);
          v41[1] = MKMapPointForCoordinate(v46);
          v29 = objc_opt_new();
          v30 = [MEMORY[0x277CD4DF0] polylineWithPoints:v41 count:2];
          [v29 setPolyline:v30];

          [v29 setLeg:v17];
          v31 = [(FUFlightView *)self currentLeg];

          if (v17 == v31)
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

- (void)setAbsoluteIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v41 = a4;
  if ([(NSArray *)self->_allLegs count]> a3)
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
        v9 = [v8 legs];
        v10 = [v9 count];

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
      while (a3 != v12)
      {
        ++v12;
        ++v11;
        v13 = [v8 legs];
        v14 = [v13 count];

        if (v11 >= v14)
        {
          goto LABEL_10;
        }
      }

      self->_selectedFlight = v6;
      self->_selectedLeg = a3 - v7;

      if (!self->_planeTracker)
      {
        v15 = +[FUPlaneTrackerAnnotationView defaultAnotation];
        planeTracker = self->_planeTracker;
        self->_planeTracker = v15;

        v17 = [(FUFlightView *)self mapView];
        [v17 addAnnotation:self->_planeTracker];
      }

      v40 = [(FUFlightView *)self currentLeg];
      [v40 currentProgress];
      v19 = v18;
      v20 = [v40 departure];
      v21 = [v20 airport];

      v22 = [v40 arrival];
      v23 = [v22 airport];

      if (v21)
      {
        v24 = v23 == 0;
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
        [v21 location];
        v29 = v28;
        [v21 location];
        v31 = v30;
        [v23 location];
        v33 = v32;
        [v23 location];
        [(FUPlaneTrackerAnnotationView *)v27 setStartLatitude:v29 startLongitude:v31 endLatitude:v33 endLongitude:v34];
        [(FUPlaneTrackerAnnotationView *)self->_planeTracker setCurrentProgress:v19];
      }

      [(FUFlightView *)self updateMapArcs];
      [(FUFlightView *)self fitMap:v41];
      v35 = [(UIPageViewController *)self->_pageViewController viewControllers];
      v36 = [v35 firstObject];
      v37 = [v36 flightInfoView];
      [v37 setCurrentFocus:2];

      v38 = [(FUFlightView *)self pageControl];
      [v38 setCurrentPage:a3];

      v39 = [(FUFlightView *)self delegate];
      if (v39 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v39 flightView:self didSelectLeg:self->_selectedLeg ofFlight:self->_selectedFlight];
      }
    }
  }
}

- (void)addTrack:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!self->_tracks)
  {
    v5 = objc_opt_new();
    tracks = self->_tracks;
    self->_tracks = v5;

    v4 = v9;
  }

  if (v4)
  {
    v7 = [(FUFlightView *)self mapView];
    v8 = [v9 polyline];
    [v7 addOverlay:v8];

    [(NSMutableArray *)self->_tracks addObject:v9];
    v4 = v9;
  }
}

- (void)cleanupView
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_planeTracker)
  {
    v3 = [(FUFlightView *)self mapView];
    [v3 removeAnnotation:self->_planeTracker];

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
        v11 = [(FUFlightView *)self mapView];
        v12 = [v10 polyline];
        [v11 removeOverlay:v12];

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
  v4 = [(FUFlightView *)self currentLeg];
  v5 = [v4 arrival];
  v6 = [v5 airport];
  [v6 location];
  v8 = v7;
  v10 = v9;
  v11 = [(FUFlightView *)self currentLeg];
  v12 = [v11 arrival];
  v13 = [v12 airport];
  [v13 location];
  v16 = [v3 cameraLookingAtCenterCoordinate:v8 fromEyeCoordinate:v10 eyeAltitude:{v14, v15, 300000.0}];

  [v16 setPitch:0.0];

  return v16;
}

- (id)departureCamera
{
  v3 = MEMORY[0x277CD4E58];
  v4 = [(FUFlightView *)self currentLeg];
  v5 = [v4 departure];
  v6 = [v5 airport];
  [v6 location];
  v8 = v7;
  v10 = v9;
  v11 = [(FUFlightView *)self currentLeg];
  v12 = [v11 departure];
  v13 = [v12 airport];
  [v13 location];
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

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [objc_alloc(MEMORY[0x277CD4EE8]) initWithOverlay:v5];
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x277CD4F30]) initWithPolyline:v6];
  v8 = [MEMORY[0x277D75348] orangeColor];
  [v7 setFillColor:v8];
  [v7 setStrokeColor:v8];
  v9 = [(FUFLightTrack *)self->_currentTrack polyline];
  v10 = v9;
  if (v9 == v6)
  {

    goto LABEL_7;
  }

  v11 = [(FUFlightView *)self highlightCurrentFlightLeg];

  if (!v11)
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

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = v4;
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

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  if (a6)
  {
    v7 = [a3 viewControllers];
    v12 = [v7 firstObject];

    allLegs = self->_allLegs;
    v9 = [v12 flightInfoView];
    v10 = [v9 leg];
    v11 = [(NSArray *)allLegs indexOfObject:v10];

    [(FUFlightView *)self setAbsoluteIndex:v11 animated:1];
  }
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v5 = [(NSMutableArray *)self->_controllers indexOfObject:a4];
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

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v5 = [(NSMutableArray *)self->_controllers indexOfObject:a4];
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

- (void)changeCurrentPage:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = [(FUFlightView *)self pageControl];
  v5 = [v4 currentPage];

  allLegs = self->_allLegs;
  v7 = [(FUFlightView *)self currentLeg];
  v8 = [(NSArray *)allLegs indexOfObject:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v8 != v5)
  {
    pageViewController = self->_pageViewController;
    v11 = [(NSMutableArray *)self->_controllers objectAtIndexedSubscript:v5];
    v14[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [(UIPageViewController *)pageViewController setViewControllers:v12 direction:v5 <= v8 animated:1 completion:0];

    [(FUFlightView *)self setAbsoluteIndex:v5 animated:1];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)flightInfoView:(id)a3 didUpdateFocus:(int64_t)a4
{
  v6 = a3;
  if (!a4)
  {
    v10 = v6;
    v7 = [(FUFlightView *)self mapView];
    v8 = [(FUFlightView *)self departureCamera];
    goto LABEL_7;
  }

  if (a4 == 1)
  {
    v10 = v6;
    v7 = [(FUFlightView *)self mapView];
    v8 = [(FUFlightView *)self arrivalCamera];
LABEL_7:
    v9 = v8;
    [v7 setCamera:v8 animated:1];

    goto LABEL_8;
  }

  if (a4 != 2)
  {
    goto LABEL_9;
  }

  v10 = v6;
  [(FUFlightView *)self fitMap:1];
LABEL_8:
  v6 = v10;
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