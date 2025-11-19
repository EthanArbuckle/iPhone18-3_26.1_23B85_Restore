@interface DBWidgetView
- (BOOL)_canFade;
- (BOOL)canBecomeFocused;
- (DBWidgetView)initWithFrame:(CGRect)a3 focusEnabledProvider:(id)a4 environmentConfiguration:(id)a5 cornerRadius:(double)a6;
- (DBWidgetViewFocusEnabledProviding)focusEnabledProvider;
- (UIView)contentView;
- (UIView)focusView;
- (UIView)platterView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_evaluateFocusFade;
- (void)_fadeFocusRing;
- (void)_startFadeTimerIfNecessary;
- (void)_unfadeFocusRing;
- (void)_wheelChangedWithEvent:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)session:(id)a3 didUpdateNightMode:(BOOL)a4;
- (void)setHitTestPassThrough:(BOOL)a3;
- (void)setPlatterView:(id)a3;
- (void)setPressed:(BOOL)a3;
- (void)setShowPlatter:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
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
  v3 = [(DBWidgetView *)self _canFade];
  v4 = DBLogForCategory(2uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
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

    v6 = [(DBWidgetView *)self focusFadeTimer];
    [v6 invalidate];

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
  v3 = [(DBWidgetView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = [(DBWidgetView *)self environmentConfiguration];
  v6 = [v5 session];
  v7 = [v6 nightMode];
  v8 = [v7 BOOLValue];

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

  v12 = v4 == 2;

  v13 = [(DBWidgetView *)self focusView];
  v14 = [v13 isHidden];

  return v12 & ~v14 & v8;
}

- (void)updateAppearanceForWallpaper
{
  v3 = [(DBWidgetView *)self environmentConfiguration];
  v4 = [v3 wallpaperPreferences];
  v5 = [v4 currentWallpaper];
  v11 = [v5 traits];

  if ([v11 supportsDashboardPlatterMaterials])
  {
    v6 = [MEMORY[0x277D75348] _carSystemPrimaryColor];
    v7 = [(DBWidgetView *)self highContrastBackgroundColorView];
    [v7 setHidden:1];

    v8 = 2;
  }

  else
  {
    v6 = [MEMORY[0x277D75348] _carSystemFocusColor];
    v8 = 0;
  }

  v9 = [(DBWidgetView *)self focusRingView];
  [v9 setRingColor:v6];

  v10 = [(DBWidgetView *)self focusRingView];
  [v10 setOverrideUserInterfaceStyle:v8];
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
  v3 = [(DBWidgetView *)self shadowView];
  v4 = [(DBWidgetView *)self platterView];
  [v4 frame];
  [v3 frameWithContentWithFrame:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(DBWidgetView *)self shadowView];
  [v13 setFrame:{v6, v8, v10, v12}];
}

- (DBWidgetView)initWithFrame:(CGRect)a3 focusEnabledProvider:(id)a4 environmentConfiguration:(id)a5 cornerRadius:(double)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v69[8] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v68.receiver = self;
  v68.super_class = DBWidgetView;
  v15 = [(DBWidgetView *)&v68 initWithFrame:x, y, width, height];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_environmentConfiguration, a5);
    objc_storeWeak(&v16->_focusEnabledProvider, v13);
    v16->_showPlatter = 1;
    v16->_hitTestPassThrough = 0;
    v17 = [v14 session];
    [v17 addObserver:v16];

    v65 = 1065353216;
    v66 = xmmword_24839BBE0;
    v67 = 0x4010000000000000;
    v18 = [objc_alloc(MEMORY[0x277D26728]) initWithShadowAttributes:&v65 maskCornerRadius:a6];
    shadowView = v16->_shadowView;
    v16->_shadowView = v18;

    [(DBWidgetView *)v16 addSubview:v16->_shadowView];
    v20 = objc_alloc_init(_TtC9DashBoard20DBDashboardGlassView);
    glassPlatterView = v16->_glassPlatterView;
    v16->_glassPlatterView = v20;

    v22 = [(DBDashboardGlassView *)v16->_glassPlatterView layer];
    [v22 setCornerRadius:a6];

    v23 = [(DBDashboardGlassView *)v16->_glassPlatterView layer];
    [v23 setCornerCurve:*MEMORY[0x277CDA138]];

    [(DBDashboardGlassView *)v16->_glassPlatterView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBWidgetView *)v16 addSubview:v16->_glassPlatterView];
    v24 = [objc_alloc(MEMORY[0x277CF90E8]) initWithCornerRadius:a6 + 3.0 strokeWidth:3.0];
    focusEffectView = v16->_focusEffectView;
    v16->_focusEffectView = v24;

    [(CPUIFocusEffectView *)v16->_focusEffectView setHidden:1];
    [(CPUIFocusEffectView *)v16->_focusEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBWidgetView *)v16 addSubview:v16->_focusEffectView];
    +[DBWidgetView focusRingSpacing];
    v27 = v26;
    v48 = MEMORY[0x277CCAAD0];
    v61 = [(DBWidgetView *)v16 topAnchor];
    v62 = [(DBWidgetView *)v16 platterView];
    v60 = [v62 topAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v69[0] = v59;
    v57 = [(DBWidgetView *)v16 bottomAnchor];
    v58 = [(DBWidgetView *)v16 platterView];
    v56 = [v58 bottomAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v69[1] = v55;
    v53 = [(DBWidgetView *)v16 leftAnchor];
    v54 = [(DBWidgetView *)v16 platterView];
    v52 = [v54 leftAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v69[2] = v51;
    v49 = [(DBWidgetView *)v16 rightAnchor];
    v50 = [(DBWidgetView *)v16 platterView];
    v47 = [v50 rightAnchor];
    v46 = [v49 constraintEqualToAnchor:v47];
    v69[3] = v46;
    v44 = [(DBWidgetView *)v16 topAnchor];
    v45 = [(DBWidgetView *)v16 focusView];
    v43 = [v45 topAnchor];
    v42 = [v44 constraintEqualToAnchor:v43 constant:v27];
    v69[4] = v42;
    v40 = [(DBWidgetView *)v16 bottomAnchor];
    v41 = [(DBWidgetView *)v16 focusView];
    v39 = [v41 bottomAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:-v27];
    v69[5] = v38;
    v28 = [(DBWidgetView *)v16 leftAnchor];
    v29 = [(DBWidgetView *)v16 focusView];
    v30 = [v29 leftAnchor];
    [v28 constraintEqualToAnchor:v30 constant:v27];
    v31 = v64 = v13;
    v69[6] = v31;
    [(DBWidgetView *)v16 rightAnchor];
    v32 = v63 = v14;
    v33 = [(DBWidgetView *)v16 focusView];
    v34 = [v33 rightAnchor];
    v35 = [v32 constraintEqualToAnchor:v34 constant:-v27];
    v69[7] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:8];
    [v48 activateConstraints:v36];

    v14 = v63;
    v13 = v64;

    [(DBWidgetView *)v16 updateAppearanceForWallpaper];
  }

  return v16;
}

- (void)setShowPlatter:(BOOL)a3
{
  if (self->_showPlatter != a3)
  {
    v3 = a3;
    self->_showPlatter = a3;
    v5 = [(DBWidgetView *)self glassPlatterView];
    [v5 setIsTranslucent:v3];

    LOBYTE(v3) = self->_showPlatter;
    v6 = [(DBWidgetView *)self shadowView];
    [v6 setHidden:!v3];
  }
}

- (void)setHitTestPassThrough:(BOOL)a3
{
  if (self->_hitTestPassThrough != a3)
  {
    self->_hitTestPassThrough = a3;
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(DBWidgetView *)self hitTestPassThrough])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = DBWidgetView;
    v8 = [(DBWidgetView *)&v10 hitTest:v7 withEvent:x, y];
  }

  return v8;
}

- (BOOL)canBecomeFocused
{
  v3 = [(DBWidgetView *)self focusEnabledProvider];
  if (v3)
  {
    v4 = [(DBWidgetView *)self focusEnabledProvider];
    v5 = [v4 entireWidgetFocusable];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];

  if (v5 == self)
  {
    v8 = [(DBWidgetView *)self focusView];
    [v8 setHidden:0];

    v9 = [(DBWidgetView *)self focusView];
    [v9 setAlpha:1.0];

    [(DBWidgetView *)self _evaluateFocusFade];
  }

  else
  {
    v6 = [(DBWidgetView *)self focusFadeTimer];
    [v6 invalidate];

    [(DBWidgetView *)self setFocusFadeTimer:0];
    v7 = [(DBWidgetView *)self focusView];
    [v7 setHidden:1];
  }

  [(DBWidgetView *)self setNeedsDisplay];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = DBWidgetView;
  [(DBWidgetView *)&v4 traitCollectionDidChange:a3];
  [(DBWidgetView *)self _evaluateFocusFade];
  [(DBWidgetView *)self updateAppearanceForWallpaper];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = DBWidgetView;
  v6 = a3;
  [(DBWidgetView *)&v9 touchesBegan:v6 withEvent:a4];
  v7 = [v6 anyObject];

  if ([v7 type] == 1)
  {
    v8 = [(DBWidgetView *)self focusFaded];

    if (v8)
    {
      [(DBWidgetView *)self _unfadeFocusRing];
      [(DBWidgetView *)self _evaluateFocusFade];
    }
  }

  else
  {
  }
}

- (void)setPressed:(BOOL)a3
{
  if (self->_pressed != a3)
  {
    v4 = a3;
    self->_pressed = a3;
    v5 = [(DBWidgetView *)self focusEffectView];
    [v5 setPressed:v4];
  }
}

- (void)setPlatterView:(id)a3
{
  v9 = a3;
  v5 = [(DBWidgetView *)self platterView];

  if (v5 != v9)
  {
    v6 = [(DBWidgetView *)self platterView];
    [(DBWidgetView *)self insertSubview:v9 belowSubview:v6];

    v7 = [(DBWidgetView *)self platterView];
    [v7 removeFromSuperview];

    glassPlatterView = self->_glassPlatterView;
    self->_glassPlatterView = 0;

    objc_storeStrong(&self->__platterView, a3);
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
      v3 = [(DBWidgetView *)self focusFadeTimer];
      [v3 invalidate];

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

- (void)_wheelChangedWithEvent:(id)a3
{
  v4 = a3;
  if ([(DBWidgetView *)self focusFaded])
  {
    [(DBWidgetView *)self _unfadeFocusRing];
    [(DBWidgetView *)self _evaluateFocusFade];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DBWidgetView;
    [(DBWidgetView *)&v5 _wheelChangedWithEvent:v4];
  }
}

- (void)session:(id)a3 didUpdateNightMode:(BOOL)a4
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