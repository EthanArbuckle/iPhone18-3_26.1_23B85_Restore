@interface CSDiscoveryItemExplorePostersPlatterView
- (CSDiscoveryItemExplorePostersPlatterView)init;
- (CSDiscoveryItemExplorePostersPlatterViewDelegate)delegate;
- (void)_configureGraphicViewIfNecessary;
- (void)_pauseLayer:(id)layer;
- (void)_reconfigureGraphicView;
- (void)_resumeLayer:(id)layer;
- (void)layoutSubviews;
- (void)pauseAnimations;
- (void)resumeAnimations;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CSDiscoveryItemExplorePostersPlatterView

- (CSDiscoveryItemExplorePostersPlatterView)init
{
  v20.receiver = self;
  v20.super_class = CSDiscoveryItemExplorePostersPlatterView;
  v2 = [(PLPlatterDiscoveryView *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"DISCOVERY_LIST_ITEM_PLATTER_EXPLORE_POSTERS_TITLE" value:&stru_28302FDA0 table:@"CoverSheet"];
    v5 = [v3 localizedStringForKey:@"DISCOVERY_LIST_ITEM_PLATTER_EXPLORE_POSTERS_BODY" value:&stru_28302FDA0 table:@"CoverSheet"];
    [(PLPlatterDiscoveryView *)v2 setTitleText:v4];
    [(PLPlatterDiscoveryView *)v2 setBodyText:v5];
    v6 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Wallpaper"];
    objc_initWeak(&location, v2);
    v7 = MEMORY[0x277D750C8];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __48__CSDiscoveryItemExplorePostersPlatterView_init__block_invoke;
    v15 = &unk_27838CC90;
    objc_copyWeak(&v18, &location);
    v8 = v6;
    v16 = v8;
    v9 = v2;
    v17 = v9;
    v10 = [v7 actionWithHandler:&v12];
    [(PLPlatterDiscoveryView *)v9 setDefaultAction:v10, v12, v13, v14, v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __48__CSDiscoveryItemExplorePostersPlatterView_init__block_invoke(id *a1)
{
  v2 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CSDiscoveryItemExplorePostersPlatterView_init__block_invoke_2;
  block[3] = &unk_27838C438;
  objc_copyWeak(&v6, a1 + 6);
  v4 = a1[4];
  v5 = a1[5];
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void __48__CSDiscoveryItemExplorePostersPlatterView_init__block_invoke_2(uint64_t a1)
{
  v15[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277D0AC70];
  v14[0] = *MEMORY[0x277D0AC58];
  v14[1] = v5;
  v15[0] = MEMORY[0x277CBEC38];
  v15[1] = MEMORY[0x277CBEC38];
  v14[2] = *MEMORY[0x277D0AC28];
  v15[2] = @"CSDiscoveryItemAppLaunchOriginExplorePostersPlatterView";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v13 = 0;
  v7 = [v3 openSensitiveURL:v4 withOptions:v6 error:&v13];
  v8 = v13;

  v9 = SBLogDashBoard();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "ExplorePosters Launched URL", v12, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __48__CSDiscoveryItemExplorePostersPlatterView_init__block_invoke_2_cold_1(v8, v10);
  }

  v11 = [*(a1 + 40) delegate];
  [v11 explorePostersPlatterViewWasTapped:WeakRetained];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CSDiscoveryItemExplorePostersPlatterView;
  [(PLPlatterDiscoveryView *)&v5 layoutSubviews];
  [(CSDiscoveryItemExplorePostersPlatterView *)self _configureGraphicViewIfNecessary];
  rootAnimationLayer = [(CSDiscoveryItemExplorePostersPlatterView *)self rootAnimationLayer];
  graphicView = [(PLPlatterDiscoveryView *)self graphicView];
  [graphicView center];
  [rootAnimationLayer setPosition:?];
}

- (void)traitCollectionDidChange:(id)change
{
  userInterfaceStyle = [change userInterfaceStyle];
  traitCollection = [(CSDiscoveryItemExplorePostersPlatterView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(CSDiscoveryItemExplorePostersPlatterView *)self _reconfigureGraphicView];
  }
}

- (void)_reconfigureGraphicView
{
  [(PLPlatterDiscoveryView *)self setGraphicView:0];
  graphicStateController = self->_graphicStateController;
  self->_graphicStateController = 0;

  rootAnimationLayer = self->_rootAnimationLayer;
  self->_rootAnimationLayer = 0;

  [(CSDiscoveryItemExplorePostersPlatterView *)self _configureGraphicViewIfNecessary];
}

- (void)_configureGraphicViewIfNecessary
{
  graphicView = [(PLPlatterDiscoveryView *)self graphicView];

  if (graphicView)
  {
    v4 = SBLogDashBoard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CSDiscoveryItemExplorePostersPlatterView _configureGraphicViewIfNecessary];
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 URLForResource:@"Explore-Posters-Tutorial-Dark" withExtension:@"ca"];
    if (v5)
    {
      v6 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:v5 type:*MEMORY[0x277CDA7F8] options:0 error:0];
      v7 = v6;
      if (v6)
      {
        rootLayer = [v6 rootLayer];
        if ([v7 isGeometryFlipped])
        {
          [rootLayer setGeometryFlipped:1];
        }

        objc_storeStrong(&self->_rootAnimationLayer, rootLayer);
        if (!self->_graphicStateController)
        {
          v9 = [objc_alloc(MEMORY[0x277CD9FB8]) initWithLayer:rootLayer];
          graphicStateController = self->_graphicStateController;
          self->_graphicStateController = v9;
        }

        v11 = objc_alloc(MEMORY[0x277D75D18]);
        v12 = [v11 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        CATransform3DMakeScale(&v14, 0.35, 0.35, 1.0);
        [rootLayer setTransform:&v14];
        layer = [v12 layer];
        [layer addSublayer:rootLayer];

        [(PLPlatterDiscoveryView *)self setGraphicView:v12];
      }

      else
      {
        rootLayer = SBLogDashBoard();
        if (os_log_type_enabled(rootLayer, OS_LOG_TYPE_ERROR))
        {
          [CSDiscoveryItemExplorePostersPlatterView _configureGraphicViewIfNecessary];
        }
      }
    }

    else
    {
      v7 = SBLogDashBoard();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CSDiscoveryItemExplorePostersPlatterView _configureGraphicViewIfNecessary];
      }
    }
  }
}

- (void)pauseAnimations
{
  if (![(CSDiscoveryItemExplorePostersPlatterView *)self isAnimationPaused])
  {
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [CSDiscoveryItemExplorePostersPlatterView pauseAnimations];
    }

    rootAnimationLayer = [(CSDiscoveryItemExplorePostersPlatterView *)self rootAnimationLayer];
    [(CSDiscoveryItemExplorePostersPlatterView *)self _pauseLayer:rootAnimationLayer];
    [(CSDiscoveryItemExplorePostersPlatterView *)self setAnimationPaused:1];
  }
}

- (void)resumeAnimations
{
  if ([(CSDiscoveryItemExplorePostersPlatterView *)self isAnimationPaused])
  {
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [CSDiscoveryItemExplorePostersPlatterView resumeAnimations];
    }

    rootAnimationLayer = [(CSDiscoveryItemExplorePostersPlatterView *)self rootAnimationLayer];
    [(CSDiscoveryItemExplorePostersPlatterView *)self _resumeLayer:rootAnimationLayer];
    [(CSDiscoveryItemExplorePostersPlatterView *)self setAnimationPaused:0];
  }
}

- (void)_pauseLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;
  [layerCopy setSpeed:0.0];
  [layerCopy setTimeOffset:v4];
}

- (void)_resumeLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy timeOffset];
  v4 = v3;
  LODWORD(v3) = 1.0;
  [layerCopy setSpeed:v3];
  [layerCopy setTimeOffset:0.0];
  [layerCopy setBeginTime:0.0];
  [layerCopy convertTime:0 fromLayer:CACurrentMediaTime()];
  [layerCopy setBeginTime:v5 - v4];
}

- (CSDiscoveryItemExplorePostersPlatterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __48__CSDiscoveryItemExplorePostersPlatterView_init__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21EB05000, a2, OS_LOG_TYPE_ERROR, "ExplorePosters Failed to launch URL: %{public}@", &v2, 0xCu);
}

@end