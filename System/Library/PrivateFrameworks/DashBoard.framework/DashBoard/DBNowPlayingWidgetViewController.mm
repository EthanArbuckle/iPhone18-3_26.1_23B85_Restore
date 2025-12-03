@interface DBNowPlayingWidgetViewController
- (CALayer)placeholderLayer;
- (DBNowPlayingWidgetViewController)initWithEnvironment:(id)environment animationManager:(id)manager widgetSizeManager:(id)sizeManager;
- (id)getIconPlaceholderLayerView;
- (void)_updatePlaceholderForTraitChange;
- (void)_updatePlaceholderImageIfNeeded;
@end

@implementation DBNowPlayingWidgetViewController

- (DBNowPlayingWidgetViewController)initWithEnvironment:(id)environment animationManager:(id)manager widgetSizeManager:(id)sizeManager
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = DBNowPlayingWidgetViewController;
  v5 = [(DBSceneWidgetViewController *)&v11 initWithEnvironment:environment animationManager:manager widgetSizeManager:sizeManager];
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
    placeholderLayer = [(DBNowPlayingWidgetViewController *)self placeholderLayer];
    [(DBIconLayerView *)v4 setIconLayer:placeholderLayer animated:1];

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
    environment = [(DBWidgetViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    [environmentConfiguration pointScale];

    v6 = DBLogForCategory(0xCuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Current placeholderLayer isn't valid, fetching a new layer", v15, 2u);
    }

    v7 = MEMORY[0x277D75C80];
    traitCollection = [(DBNowPlayingWidgetViewController *)self traitCollection];
    v9 = [v7 sbh_iconImageAppearanceFromTraitCollection:traitCollection];
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
  nowPlayingPlaceholderLayerView = [(DBNowPlayingWidgetViewController *)self nowPlayingPlaceholderLayerView];
  v4 = nowPlayingPlaceholderLayerView;
  if (nowPlayingPlaceholderLayerView)
  {
    v9 = nowPlayingPlaceholderLayerView;
    nowPlayingPlaceholderLayerView = [(DBNowPlayingWidgetViewController *)self needsNewPlaceholderLayer];
    v4 = v9;
    if (nowPlayingPlaceholderLayerView)
    {
      [(DBNowPlayingWidgetViewController *)self updateTraitsIfNeeded];
      placeholderLayer = [(DBNowPlayingWidgetViewController *)self placeholderLayer];
      [v9 setIconLayer:placeholderLayer animated:1];
      traitOverrides = [v9 traitOverrides];
      v7 = MEMORY[0x277D75C80];
      traitCollection = [(DBNowPlayingWidgetViewController *)self traitCollection];
      [traitOverrides setUserInterfaceStyle:{objc_msgSend(v7, "sbh_iconGlassUserInterfaceStyleFromTraitCollection:", traitCollection)}];

      v4 = v9;
    }
  }

  MEMORY[0x2821F96F8](nowPlayingPlaceholderLayerView, v4);
}

@end