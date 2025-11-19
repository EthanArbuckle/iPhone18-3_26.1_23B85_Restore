@interface DBNowPlayingWidgetViewController
- (CALayer)placeholderLayer;
- (DBNowPlayingWidgetViewController)initWithEnvironment:(id)a3 animationManager:(id)a4 widgetSizeManager:(id)a5;
- (id)getIconPlaceholderLayerView;
- (void)_updatePlaceholderForTraitChange;
- (void)_updatePlaceholderImageIfNeeded;
@end

@implementation DBNowPlayingWidgetViewController

- (DBNowPlayingWidgetViewController)initWithEnvironment:(id)a3 animationManager:(id)a4 widgetSizeManager:(id)a5
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = DBNowPlayingWidgetViewController;
  v5 = [(DBSceneWidgetViewController *)&v11 initWithEnvironment:a3 animationManager:a4 widgetSizeManager:a5];
  if (v5)
  {
    v6 = objc_opt_self();
    v12[0] = v6;
    v7 = objc_opt_self();
    v12[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v9 = [(DBNowPlayingWidgetViewController *)v5 registerForTraitChanges:v8 withTarget:v5 action:sel__updatePlaceholderForTraitChange];
  }

  return v5;
}

- (id)getIconPlaceholderLayerView
{
  nowPlayingPlaceholderLayerView = self->_nowPlayingPlaceholderLayerView;
  if (!nowPlayingPlaceholderLayerView)
  {
    v4 = objc_alloc_init(_TtC9DashBoard15DBIconLayerView);
    v5 = [(DBNowPlayingWidgetViewController *)self placeholderLayer];
    [(DBIconLayerView *)v4 setIconLayer:v5 animated:1];

    [(DBIconLayerView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = self->_nowPlayingPlaceholderLayerView;
    self->_nowPlayingPlaceholderLayerView = v4;

    nowPlayingPlaceholderLayerView = self->_nowPlayingPlaceholderLayerView;
  }

  return nowPlayingPlaceholderLayerView;
}

- (void)_updatePlaceholderForTraitChange
{
  [(DBNowPlayingWidgetViewController *)self setNeedsNewPlaceholderLayer:1];

  [(DBNowPlayingWidgetViewController *)self _updatePlaceholderImageIfNeeded];
}

- (CALayer)placeholderLayer
{
  v3 = DBLogForCategory(0xCuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Fetching Now Playing placeholder layer", buf, 2u);
  }

  if (self->_placeholderLayer && ![(DBNowPlayingWidgetViewController *)self needsNewPlaceholderLayer])
  {
    v13 = self->_placeholderLayer;
  }

  else
  {
    v4 = [(DBWidgetViewController *)self environment];
    v5 = [v4 environmentConfiguration];
    [v5 pointScale];

    v6 = DBLogForCategory(0xCuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Current placeholderLayer isn't valid, fetching a new layer", v15, 2u);
    }

    v7 = MEMORY[0x277D75C80];
    v8 = [(DBNowPlayingWidgetViewController *)self traitCollection];
    v9 = [v7 sbh_iconImageAppearanceFromTraitCollection:v8];
    v10 = SBHGetGraphicIconLayerWithImageAppearance();

    placeholderLayer = self->_placeholderLayer;
    self->_placeholderLayer = v10;
    v12 = v10;

    [(DBNowPlayingWidgetViewController *)self setNeedsNewPlaceholderLayer:0];
    v13 = self->_placeholderLayer;
  }

  return v13;
}

- (void)_updatePlaceholderImageIfNeeded
{
  v3 = [(DBNowPlayingWidgetViewController *)self nowPlayingPlaceholderLayerView];
  v4 = v3;
  if (v3)
  {
    v9 = v3;
    v3 = [(DBNowPlayingWidgetViewController *)self needsNewPlaceholderLayer];
    v4 = v9;
    if (v3)
    {
      [(DBNowPlayingWidgetViewController *)self updateTraitsIfNeeded];
      v5 = [(DBNowPlayingWidgetViewController *)self placeholderLayer];
      [v9 setIconLayer:v5 animated:1];
      v6 = [v9 traitOverrides];
      v7 = MEMORY[0x277D75C80];
      v8 = [(DBNowPlayingWidgetViewController *)self traitCollection];
      [v6 setUserInterfaceStyle:{objc_msgSend(v7, "sbh_iconGlassUserInterfaceStyleFromTraitCollection:", v8)}];

      v4 = v9;
    }
  }

  MEMORY[0x2821F96F8](v3, v4);
}

@end