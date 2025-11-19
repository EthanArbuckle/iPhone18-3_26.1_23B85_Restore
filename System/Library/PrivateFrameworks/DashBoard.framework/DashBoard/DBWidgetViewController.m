@interface DBWidgetViewController
- (DBEnvironment)environment;
- (DBWidgetViewController)initWithEnvironment:(id)a3;
- (NSArray)linearFocusItems;
- (id)snapshotViewAfterScreenUpdates:(BOOL)a3;
- (void)loadView;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setHidden:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)updateAppearanceForWallpaper;
@end

@implementation DBWidgetViewController

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (DBWidgetViewController)initWithEnvironment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DBWidgetViewController;
  v5 = [(DBWidgetViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
  }

  return v6;
}

- (void)loadView
{
  v51[8] = *MEMORY[0x277D85DE8];
  v3 = [DBWidgetView alloc];
  v4 = [(DBWidgetViewController *)self environment];
  v5 = [v4 environmentConfiguration];
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(DBWidgetView *)v3 initWithFrame:self focusEnabledProvider:v5 environmentConfiguration:*MEMORY[0x277CBF3A0], v7, v8, v9];

  v11 = [(DBWidgetView *)v10 contentView];
  v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setClipsToBounds:1];
  v50 = [v12 layer];
  [v50 setCornerRadius:18.0];
  v13 = *MEMORY[0x277CDA138];
  [v50 setCornerCurve:*MEMORY[0x277CDA138]];
  v48 = self;
  [(DBWidgetViewController *)self setContentView:v12];
  [v11 addSubview:v12];
  v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
  v15 = [MEMORY[0x277D75348] blackColor];
  [v14 setBackgroundColor:v15];

  [v14 setAlpha:0.0];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [v14 layer];
  [v16 setCornerRadius:18.0];
  v49 = v16;
  [v16 setCornerCurve:v13];
  v17 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
  [v16 setCompositingFilter:v17];

  [(DBWidgetViewController *)self setDimmingView:v14];
  [v11 addSubview:v14];
  v35 = MEMORY[0x277CCAAD0];
  v45 = [v12 topAnchor];
  v44 = [v11 topAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v51[0] = v43;
  v42 = [v12 bottomAnchor];
  v41 = [v11 bottomAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v51[1] = v40;
  v47 = v12;
  v39 = [v12 leftAnchor];
  v46 = v11;
  v38 = [v11 leftAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v51[2] = v37;
  v36 = [v12 rightAnchor];
  v34 = [v11 rightAnchor];
  v33 = [v36 constraintEqualToAnchor:v34];
  v51[3] = v33;
  v31 = [v14 topAnchor];
  v30 = [(DBWidgetView *)v10 topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v51[4] = v29;
  v28 = [v14 bottomAnchor];
  v18 = [(DBWidgetView *)v10 bottomAnchor];
  v19 = [v28 constraintEqualToAnchor:v18];
  v51[5] = v19;
  v20 = [v14 leftAnchor];
  v32 = v10;
  v21 = [(DBWidgetView *)v10 leftAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v51[6] = v22;
  v23 = [v14 rightAnchor];
  v24 = [(DBWidgetView *)v10 rightAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v51[7] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:8];
  [v35 activateConstraints:v26];

  [(DBWidgetViewController *)v48 setView:v32];
  v27 = [MEMORY[0x277CCAB98] defaultCenter];
  [v27 addObserver:v48 selector:sel__wallpaperChanged_ name:*MEMORY[0x277CF91E8] object:0];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  self->_hidden = a3;
  v5 = [(DBWidgetViewController *)self view];
  v6 = [v5 shadowView];
  [v6 setHidden:v3];

  v7 = [(DBWidgetViewController *)self view];
  [v7 setUserInteractionEnabled:v3 ^ 1];

  [(DBWidgetViewController *)self setNeedsFocusUpdate];
}

- (id)snapshotViewAfterScreenUpdates:(BOOL)a3
{
  v3 = a3;
  v5 = [(DBWidgetViewController *)self contentView];
  v6 = [v5 snapshotViewAfterScreenUpdates:v3];

  v7 = [(DBWidgetViewController *)self environment];
  v8 = [v7 environmentConfiguration];
  v9 = [v8 wallpaperPreferences];
  v10 = [v9 currentWallpaper];

  v11 = [v10 traits];
  LODWORD(v8) = [v11 supportsDashboardPlatterMaterials];

  if (v8)
  {
    v12 = objc_alloc_init(_TtC9DashBoard20DBDashboardGlassView);
    v13 = [(DBDashboardGlassView *)v12 layer];
    [v13 setCornerRadius:18.0];

    v14 = [(DBDashboardGlassView *)v12 layer];
    [v14 setCornerCurve:*MEMORY[0x277CDA138]];

    v15 = [(DBWidgetViewController *)self view];
    [v15 bounds];
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
  v2 = [(DBWidgetViewController *)self view];
  [v2 updateAppearanceForWallpaper];
}

- (NSArray)linearFocusItems
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(DBWidgetViewController *)self view];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = DBWidgetViewController;
  [(DBWidgetViewController *)&v10 pressesBegan:v6 withEvent:a4];
  if ([(DBWidgetViewController *)self entireWidgetFocusable])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___DBPressesContainsPressType_block_invoke_1;
    v11[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
    v11[4] = 4;
    v7 = [v6 objectsPassingTest:v11];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [(DBWidgetViewController *)self view];
      [v9 setPressed:1];
    }
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = DBWidgetViewController;
  [(DBWidgetViewController *)&v10 pressesEnded:v6 withEvent:a4];
  v7 = [(DBWidgetViewController *)self view];
  [v7 setPressed:0];

  if ([(DBWidgetViewController *)self entireWidgetFocusable])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___DBPressesContainsPressType_block_invoke_1;
    v11[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
    v11[4] = 4;
    v8 = [v6 objectsPassingTest:v11];
    v9 = [v8 count];

    if (v9)
    {
      [(DBWidgetViewController *)self widgetViewTapped];
    }
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = DBWidgetViewController;
  [(DBWidgetViewController *)&v6 pressesCancelled:a3 withEvent:a4];
  v5 = [(DBWidgetViewController *)self view];
  [v5 setPressed:0];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = DBWidgetViewController;
  [(DBWidgetViewController *)&v7 touchesBegan:a3 withEvent:a4];
  if ([(DBWidgetViewController *)self entireWidgetFocusable])
  {
    v5 = [(DBWidgetViewController *)self dimmingView];
    [v5 setAlpha:0.15];

    v6 = [(DBWidgetViewController *)self view];
    [v6 setPressed:1];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = DBWidgetViewController;
  [(DBWidgetViewController *)&v10 touchesEnded:v6 withEvent:a4];
  if ([(DBWidgetViewController *)self entireWidgetFocusable])
  {
    v7 = [(DBWidgetViewController *)self dimmingView];
    [v7 setAlpha:0.0];

    v8 = [(DBWidgetViewController *)self view];
    [v8 setPressed:0];
  }

  v9 = [v6 anyObject];
  if (![v9 type])
  {
    [(DBWidgetViewController *)self widgetViewTapped];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = DBWidgetViewController;
  [(DBWidgetViewController *)&v7 touchesEnded:a3 withEvent:a4];
  if ([(DBWidgetViewController *)self entireWidgetFocusable])
  {
    v5 = [(DBWidgetViewController *)self dimmingView];
    [v5 setAlpha:0.0];

    v6 = [(DBWidgetViewController *)self view];
    [v6 setPressed:0];
  }
}

@end