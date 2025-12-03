@interface DBWidgetViewController
- (DBEnvironment)environment;
- (DBWidgetViewController)initWithEnvironment:(id)environment;
- (NSArray)linearFocusItems;
- (id)snapshotViewAfterScreenUpdates:(BOOL)updates;
- (void)loadView;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setHidden:(BOOL)hidden;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)updateAppearanceForWallpaper;
@end

@implementation DBWidgetViewController

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (DBWidgetViewController)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v8.receiver = self;
  v8.super_class = DBWidgetViewController;
  v5 = [(DBWidgetViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
  }

  return v6;
}

- (void)loadView
{
  v51[8] = *MEMORY[0x277D85DE8];
  v3 = [DBWidgetView alloc];
  environment = [(DBWidgetViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(DBWidgetView *)v3 initWithFrame:self focusEnabledProvider:environmentConfiguration environmentConfiguration:*MEMORY[0x277CBF3A0], v7, v8, v9];

  contentView = [(DBWidgetView *)v10 contentView];
  v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setClipsToBounds:1];
  layer = [v12 layer];
  [layer setCornerRadius:18.0];
  v13 = *MEMORY[0x277CDA138];
  [layer setCornerCurve:*MEMORY[0x277CDA138]];
  selfCopy = self;
  [(DBWidgetViewController *)self setContentView:v12];
  [contentView addSubview:v12];
  v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v14 setBackgroundColor:blackColor];

  [v14 setAlpha:0.0];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer2 = [v14 layer];
  [layer2 setCornerRadius:18.0];
  v49 = layer2;
  [layer2 setCornerCurve:v13];
  v17 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
  [layer2 setCompositingFilter:v17];

  [(DBWidgetViewController *)self setDimmingView:v14];
  [contentView addSubview:v14];
  v35 = MEMORY[0x277CCAAD0];
  topAnchor = [v12 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v51[0] = v43;
  bottomAnchor = [v12 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v51[1] = v40;
  v47 = v12;
  leftAnchor = [v12 leftAnchor];
  v46 = contentView;
  leftAnchor2 = [contentView leftAnchor];
  v37 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v51[2] = v37;
  rightAnchor = [v12 rightAnchor];
  rightAnchor2 = [contentView rightAnchor];
  v33 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v51[3] = v33;
  topAnchor3 = [v14 topAnchor];
  topAnchor4 = [(DBWidgetView *)v10 topAnchor];
  v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v51[4] = v29;
  bottomAnchor3 = [v14 bottomAnchor];
  bottomAnchor4 = [(DBWidgetView *)v10 bottomAnchor];
  v19 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v51[5] = v19;
  leftAnchor3 = [v14 leftAnchor];
  v32 = v10;
  leftAnchor4 = [(DBWidgetView *)v10 leftAnchor];
  v22 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v51[6] = v22;
  rightAnchor3 = [v14 rightAnchor];
  rightAnchor4 = [(DBWidgetView *)v10 rightAnchor];
  v25 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v51[7] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:8];
  [v35 activateConstraints:v26];

  [(DBWidgetViewController *)selfCopy setView:v32];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel__wallpaperChanged_ name:*MEMORY[0x277CF91E8] object:0];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_hidden = hidden;
  view = [(DBWidgetViewController *)self view];
  shadowView = [view shadowView];
  [shadowView setHidden:hiddenCopy];

  view2 = [(DBWidgetViewController *)self view];
  [view2 setUserInteractionEnabled:hiddenCopy ^ 1];

  [(DBWidgetViewController *)self setNeedsFocusUpdate];
}

- (id)snapshotViewAfterScreenUpdates:(BOOL)updates
{
  updatesCopy = updates;
  contentView = [(DBWidgetViewController *)self contentView];
  v6 = [contentView snapshotViewAfterScreenUpdates:updatesCopy];

  environment = [(DBWidgetViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];

  traits = [currentWallpaper traits];
  LODWORD(environmentConfiguration) = [traits supportsDashboardPlatterMaterials];

  if (environmentConfiguration)
  {
    v12 = objc_alloc_init(_TtC9DashBoard20DBDashboardGlassView);
    layer = [(DBDashboardGlassView *)v12 layer];
    [layer setCornerRadius:18.0];

    layer2 = [(DBDashboardGlassView *)v12 layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];

    view = [(DBWidgetViewController *)self view];
    [view bounds];
    [(DBDashboardGlassView *)v12 setFrame:?];

    [(DBDashboardGlassView *)v12 addSubview:v6];
  }

  else
  {
    v12 = v6;
  }

  return v12;
}

- (void)updateAppearanceForWallpaper
{
  view = [(DBWidgetViewController *)self view];
  [view updateAppearanceForWallpaper];
}

- (NSArray)linearFocusItems
{
  v5[1] = *MEMORY[0x277D85DE8];
  view = [(DBWidgetViewController *)self view];
  v5[0] = view;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v10.receiver = self;
  v10.super_class = DBWidgetViewController;
  [(DBWidgetViewController *)&v10 pressesBegan:beganCopy withEvent:event];
  if ([(DBWidgetViewController *)self entireWidgetFocusable])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___DBPressesContainsPressType_block_invoke_1;
    v11[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
    v11[4] = 4;
    v7 = [beganCopy objectsPassingTest:v11];
    v8 = [v7 count];

    if (v8)
    {
      view = [(DBWidgetViewController *)self view];
      [view setPressed:1];
    }
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  v10.receiver = self;
  v10.super_class = DBWidgetViewController;
  [(DBWidgetViewController *)&v10 pressesEnded:endedCopy withEvent:event];
  view = [(DBWidgetViewController *)self view];
  [view setPressed:0];

  if ([(DBWidgetViewController *)self entireWidgetFocusable])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___DBPressesContainsPressType_block_invoke_1;
    v11[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
    v11[4] = 4;
    v8 = [endedCopy objectsPassingTest:v11];
    v9 = [v8 count];

    if (v9)
    {
      [(DBWidgetViewController *)self widgetViewTapped];
    }
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = DBWidgetViewController;
  [(DBWidgetViewController *)&v6 pressesCancelled:cancelled withEvent:event];
  view = [(DBWidgetViewController *)self view];
  [view setPressed:0];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = DBWidgetViewController;
  [(DBWidgetViewController *)&v7 touchesBegan:began withEvent:event];
  if ([(DBWidgetViewController *)self entireWidgetFocusable])
  {
    dimmingView = [(DBWidgetViewController *)self dimmingView];
    [dimmingView setAlpha:0.15];

    view = [(DBWidgetViewController *)self view];
    [view setPressed:1];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  v10.receiver = self;
  v10.super_class = DBWidgetViewController;
  [(DBWidgetViewController *)&v10 touchesEnded:endedCopy withEvent:event];
  if ([(DBWidgetViewController *)self entireWidgetFocusable])
  {
    dimmingView = [(DBWidgetViewController *)self dimmingView];
    [dimmingView setAlpha:0.0];

    view = [(DBWidgetViewController *)self view];
    [view setPressed:0];
  }

  anyObject = [endedCopy anyObject];
  if (![anyObject type])
  {
    [(DBWidgetViewController *)self widgetViewTapped];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = DBWidgetViewController;
  [(DBWidgetViewController *)&v7 touchesEnded:cancelled withEvent:event];
  if ([(DBWidgetViewController *)self entireWidgetFocusable])
  {
    dimmingView = [(DBWidgetViewController *)self dimmingView];
    [dimmingView setAlpha:0.0];

    view = [(DBWidgetViewController *)self view];
    [view setPressed:0];
  }
}

@end