@interface DBWidgetView
- (BOOL)_canFade;
- (BOOL)canBecomeFocused;
- (DBWidgetView)initWithFrame:(CGRect)frame focusEnabledProvider:(id)provider environmentConfiguration:(id)configuration cornerRadius:(double)radius;
- (DBWidgetViewFocusEnabledProviding)focusEnabledProvider;
- (UIView)contentView;
- (UIView)focusView;
- (UIView)platterView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_evaluateFocusFade;
- (void)_fadeFocusRing;
- (void)_startFadeTimerIfNecessary;
- (void)_unfadeFocusRing;
- (void)_wheelChangedWithEvent:(id)event;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)session:(id)session didUpdateNightMode:(BOOL)mode;
- (void)setHitTestPassThrough:(BOOL)through;
- (void)setPlatterView:(id)view;
- (void)setPressed:(BOOL)pressed;
- (void)setShowPlatter:(BOOL)platter;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAppearanceForWallpaper;
@end

@implementation DBWidgetView

- (UIView)focusView
{
  focusEffectView = self->_focusEffectView;
  if (!focusEffectView)
  {
    focusEffectView = self->_focusRingView;
  }

  return focusEffectView;
}

- (void)_evaluateFocusFade
{
  _canFade = [(DBWidgetView *)self _canFade];
  v4 = DBLogForCategory(2uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (_canFade)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Starting focus ring fade timer", buf, 2u);
    }

    [(DBWidgetView *)self _startFadeTimerIfNecessary];
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Not eligible for focus ring fade", v7, 2u);
    }

    focusFadeTimer = [(DBWidgetView *)self focusFadeTimer];
    [focusFadeTimer invalidate];

    [(DBWidgetView *)self setFocusFadeTimer:0];
    if ([(DBWidgetView *)self focusFaded])
    {
      [(DBWidgetView *)self _unfadeFocusRing];
    }
  }
}

- (BOOL)_canFade
{
  v20 = *MEMORY[0x277D85DE8];
  traitCollection = [(DBWidgetView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  environmentConfiguration = [(DBWidgetView *)self environmentConfiguration];
  session = [environmentConfiguration session];
  nightMode = [session nightMode];
  bOOLValue = [nightMode BOOLValue];

  v9 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromBOOL();
    v11 = NSStringFromBOOL();
    v16 = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Focus ring fade has correct interface style: %@, correct night setting: %@", &v16, 0x16u);
  }

  v12 = userInterfaceStyle == 2;

  focusView = [(DBWidgetView *)self focusView];
  isHidden = [focusView isHidden];

  return v12 & ~isHidden & bOOLValue;
}

- (void)updateAppearanceForWallpaper
{
  environmentConfiguration = [(DBWidgetView *)self environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];
  traits = [currentWallpaper traits];

  if ([traits supportsDashboardPlatterMaterials])
  {
    _carSystemPrimaryColor = [MEMORY[0x277D75348] _carSystemPrimaryColor];
    highContrastBackgroundColorView = [(DBWidgetView *)self highContrastBackgroundColorView];
    [highContrastBackgroundColorView setHidden:1];

    v8 = 2;
  }

  else
  {
    _carSystemPrimaryColor = [MEMORY[0x277D75348] _carSystemFocusColor];
    v8 = 0;
  }

  focusRingView = [(DBWidgetView *)self focusRingView];
  [focusRingView setRingColor:_carSystemPrimaryColor];

  focusRingView2 = [(DBWidgetView *)self focusRingView];
  [focusRingView2 setOverrideUserInterfaceStyle:v8];
}

- (UIView)platterView
{
  glassPlatterView = self->_glassPlatterView;
  if (!glassPlatterView)
  {
    glassPlatterView = self->__platterView;
  }

  return glassPlatterView;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = DBWidgetView;
  [(DBWidgetView *)&v14 layoutSubviews];
  shadowView = [(DBWidgetView *)self shadowView];
  platterView = [(DBWidgetView *)self platterView];
  [platterView frame];
  [shadowView frameWithContentWithFrame:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  shadowView2 = [(DBWidgetView *)self shadowView];
  [shadowView2 setFrame:{v6, v8, v10, v12}];
}

- (DBWidgetView)initWithFrame:(CGRect)frame focusEnabledProvider:(id)provider environmentConfiguration:(id)configuration cornerRadius:(double)radius
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v69[8] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  configurationCopy = configuration;
  v68.receiver = self;
  v68.super_class = DBWidgetView;
  height = [(DBWidgetView *)&v68 initWithFrame:x, y, width, height];
  v16 = height;
  if (height)
  {
    objc_storeStrong(&height->_environmentConfiguration, configuration);
    objc_storeWeak(&v16->_focusEnabledProvider, providerCopy);
    v16->_showPlatter = 1;
    v16->_hitTestPassThrough = 0;
    session = [configurationCopy session];
    [session addObserver:v16];

    v65 = 1065353216;
    v66 = xmmword_24839BBE0;
    v67 = 0x4010000000000000;
    v18 = [objc_alloc(MEMORY[0x277D26728]) initWithShadowAttributes:&v65 maskCornerRadius:radius];
    shadowView = v16->_shadowView;
    v16->_shadowView = v18;

    [(DBWidgetView *)v16 addSubview:v16->_shadowView];
    v20 = objc_alloc_init(_TtC9DashBoard20DBDashboardGlassView);
    glassPlatterView = v16->_glassPlatterView;
    v16->_glassPlatterView = v20;

    layer = [(DBDashboardGlassView *)v16->_glassPlatterView layer];
    [layer setCornerRadius:radius];

    layer2 = [(DBDashboardGlassView *)v16->_glassPlatterView layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];

    [(DBDashboardGlassView *)v16->_glassPlatterView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBWidgetView *)v16 addSubview:v16->_glassPlatterView];
    v24 = [objc_alloc(MEMORY[0x277CF90E8]) initWithCornerRadius:radius + 3.0 strokeWidth:3.0];
    focusEffectView = v16->_focusEffectView;
    v16->_focusEffectView = v24;

    [(CPUIFocusEffectView *)v16->_focusEffectView setHidden:1];
    [(CPUIFocusEffectView *)v16->_focusEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBWidgetView *)v16 addSubview:v16->_focusEffectView];
    +[DBWidgetView focusRingSpacing];
    v27 = v26;
    v48 = MEMORY[0x277CCAAD0];
    topAnchor = [(DBWidgetView *)v16 topAnchor];
    platterView = [(DBWidgetView *)v16 platterView];
    topAnchor2 = [platterView topAnchor];
    v59 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v69[0] = v59;
    bottomAnchor = [(DBWidgetView *)v16 bottomAnchor];
    platterView2 = [(DBWidgetView *)v16 platterView];
    bottomAnchor2 = [platterView2 bottomAnchor];
    v55 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v69[1] = v55;
    leftAnchor = [(DBWidgetView *)v16 leftAnchor];
    platterView3 = [(DBWidgetView *)v16 platterView];
    leftAnchor2 = [platterView3 leftAnchor];
    v51 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v69[2] = v51;
    rightAnchor = [(DBWidgetView *)v16 rightAnchor];
    platterView4 = [(DBWidgetView *)v16 platterView];
    rightAnchor2 = [platterView4 rightAnchor];
    v46 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v69[3] = v46;
    topAnchor3 = [(DBWidgetView *)v16 topAnchor];
    focusView = [(DBWidgetView *)v16 focusView];
    topAnchor4 = [focusView topAnchor];
    v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v27];
    v69[4] = v42;
    bottomAnchor3 = [(DBWidgetView *)v16 bottomAnchor];
    focusView2 = [(DBWidgetView *)v16 focusView];
    bottomAnchor4 = [focusView2 bottomAnchor];
    v38 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v27];
    v69[5] = v38;
    leftAnchor3 = [(DBWidgetView *)v16 leftAnchor];
    focusView3 = [(DBWidgetView *)v16 focusView];
    leftAnchor4 = [focusView3 leftAnchor];
    [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:v27];
    v31 = v64 = providerCopy;
    v69[6] = v31;
    [(DBWidgetView *)v16 rightAnchor];
    v32 = v63 = configurationCopy;
    focusView4 = [(DBWidgetView *)v16 focusView];
    rightAnchor3 = [focusView4 rightAnchor];
    v35 = [v32 constraintEqualToAnchor:rightAnchor3 constant:-v27];
    v69[7] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:8];
    [v48 activateConstraints:v36];

    configurationCopy = v63;
    providerCopy = v64;

    [(DBWidgetView *)v16 updateAppearanceForWallpaper];
  }

  return v16;
}

- (void)setShowPlatter:(BOOL)platter
{
  if (self->_showPlatter != platter)
  {
    platterCopy = platter;
    self->_showPlatter = platter;
    glassPlatterView = [(DBWidgetView *)self glassPlatterView];
    [glassPlatterView setIsTranslucent:platterCopy];

    LOBYTE(platterCopy) = self->_showPlatter;
    shadowView = [(DBWidgetView *)self shadowView];
    [shadowView setHidden:!platterCopy];
  }
}

- (void)setHitTestPassThrough:(BOOL)through
{
  if (self->_hitTestPassThrough != through)
  {
    self->_hitTestPassThrough = through;
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(DBWidgetView *)self hitTestPassThrough])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = DBWidgetView;
    v8 = [(DBWidgetView *)&v10 hitTest:eventCopy withEvent:x, y];
  }

  return v8;
}

- (BOOL)canBecomeFocused
{
  focusEnabledProvider = [(DBWidgetView *)self focusEnabledProvider];
  if (focusEnabledProvider)
  {
    focusEnabledProvider2 = [(DBWidgetView *)self focusEnabledProvider];
    entireWidgetFocusable = [focusEnabledProvider2 entireWidgetFocusable];
  }

  else
  {
    entireWidgetFocusable = 1;
  }

  return entireWidgetFocusable;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];

  if (nextFocusedItem == self)
  {
    focusView = [(DBWidgetView *)self focusView];
    [focusView setHidden:0];

    focusView2 = [(DBWidgetView *)self focusView];
    [focusView2 setAlpha:1.0];

    [(DBWidgetView *)self _evaluateFocusFade];
  }

  else
  {
    focusFadeTimer = [(DBWidgetView *)self focusFadeTimer];
    [focusFadeTimer invalidate];

    [(DBWidgetView *)self setFocusFadeTimer:0];
    focusView3 = [(DBWidgetView *)self focusView];
    [focusView3 setHidden:1];
  }

  [(DBWidgetView *)self setNeedsDisplay];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = DBWidgetView;
  [(DBWidgetView *)&v4 traitCollectionDidChange:change];
  [(DBWidgetView *)self _evaluateFocusFade];
  [(DBWidgetView *)self updateAppearanceForWallpaper];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = DBWidgetView;
  beganCopy = began;
  [(DBWidgetView *)&v9 touchesBegan:beganCopy withEvent:event];
  anyObject = [beganCopy anyObject];

  if ([anyObject type] == 1)
  {
    focusFaded = [(DBWidgetView *)self focusFaded];

    if (focusFaded)
    {
      [(DBWidgetView *)self _unfadeFocusRing];
      [(DBWidgetView *)self _evaluateFocusFade];
    }
  }

  else
  {
  }
}

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    pressedCopy = pressed;
    self->_pressed = pressed;
    focusEffectView = [(DBWidgetView *)self focusEffectView];
    [focusEffectView setPressed:pressedCopy];
  }
}

- (void)setPlatterView:(id)view
{
  viewCopy = view;
  platterView = [(DBWidgetView *)self platterView];

  if (platterView != viewCopy)
  {
    platterView2 = [(DBWidgetView *)self platterView];
    [(DBWidgetView *)self insertSubview:viewCopy belowSubview:platterView2];

    platterView3 = [(DBWidgetView *)self platterView];
    [platterView3 removeFromSuperview];

    glassPlatterView = self->_glassPlatterView;
    self->_glassPlatterView = 0;

    objc_storeStrong(&self->__platterView, view);
  }
}

- (UIView)contentView
{
  if (self->_glassPlatterView)
  {
    self = self->_glassPlatterView;
  }

  return self;
}

- (void)_startFadeTimerIfNecessary
{
  if ([(DBWidgetView *)self _canFade])
  {
    if (![(DBWidgetView *)self focusFaded])
    {
      objc_initWeak(&location, self);
      focusFadeTimer = [(DBWidgetView *)self focusFadeTimer];
      [focusFadeTimer invalidate];

      v4 = MEMORY[0x277CBEBB8];
      v6 = MEMORY[0x277D85DD0];
      v7 = 3221225472;
      v8 = __42__DBWidgetView__startFadeTimerIfNecessary__block_invoke;
      v9 = &unk_278F02770;
      objc_copyWeak(&v10, &location);
      v5 = [v4 scheduledTimerWithTimeInterval:0 repeats:&v6 block:30.0];
      [(DBWidgetView *)self setFocusFadeTimer:v5, v6, v7, v8, v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __42__DBWidgetView__startFadeTimerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fadeFocusRing];
}

- (void)_fadeFocusRing
{
  v3 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Fading focus ring", buf, 2u);
  }

  [(DBWidgetView *)self becomeFirstResponder];
  [(DBWidgetView *)self setFocusFaded:1];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__DBWidgetView__fadeFocusRing__block_invoke;
  v4[3] = &unk_278F01580;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v4 options:0 animations:3.0 completion:0.0];
}

void __30__DBWidgetView__fadeFocusRing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) focusView];
  [v1 setAlpha:0.3];
}

- (void)_unfadeFocusRing
{
  v3 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Unfading focus ring", buf, 2u);
  }

  [(DBWidgetView *)self setFocusFaded:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__DBWidgetView__unfadeFocusRing__block_invoke;
  v4[3] = &unk_278F01580;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v4 options:0 animations:0.2 completion:0.0];
}

void __32__DBWidgetView__unfadeFocusRing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) focusView];
  [v1 setAlpha:1.0];
}

- (void)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  if ([(DBWidgetView *)self focusFaded])
  {
    [(DBWidgetView *)self _unfadeFocusRing];
    [(DBWidgetView *)self _evaluateFocusFade];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DBWidgetView;
    [(DBWidgetView *)&v5 _wheelChangedWithEvent:eventCopy];
  }
}

- (void)session:(id)session didUpdateNightMode:(BOOL)mode
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DBWidgetView_session_didUpdateNightMode___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (DBWidgetViewFocusEnabledProviding)focusEnabledProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_focusEnabledProvider);

  return WeakRetained;
}

@end