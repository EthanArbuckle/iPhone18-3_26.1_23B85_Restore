@interface DBDockBackgroundView
- (BOOL)isDualStatusBar;
- (DBDockBackgroundView)initWithEnvironment:(id)environment layout:(unint64_t)layout;
- (DBEnvironment)environment;
- (id)_backgroundColorForStyle:(int64_t)style;
- (void)setupMaterialBackground;
- (void)traitCollectionDidChange:(id)change;
- (void)updateMaterialForStyle:(int64_t)style;
@end

@implementation DBDockBackgroundView

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (BOOL)isDualStatusBar
{
  layout = [(DBDockBackgroundView *)self layout];
  if (layout != 1)
  {
    LOBYTE(layout) = [(DBDockBackgroundView *)self layout]== 2;
  }

  return layout;
}

- (DBDockBackgroundView)initWithEnvironment:(id)environment layout:(unint64_t)layout
{
  environmentCopy = environment;
  v11.receiver = self;
  v11.super_class = DBDockBackgroundView;
  v7 = [(DBDockBackgroundView *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    [(DBDockBackgroundView *)v7 setEnvironment:environmentCopy];
    [(DBDockBackgroundView *)v8 setLayout:layout];
    v8->_colorVariantOverride = -1;
    [(DBDockBackgroundView *)v8 setupMaterialBackground];
    layer = [(DBDockBackgroundView *)v8 layer];
    [layer setAllowsHitTesting:0];
  }

  return v8;
}

- (void)setupMaterialBackground
{
  v118[2] = *MEMORY[0x277D85DE8];
  if ([(DBDockBackgroundView *)self isDualStatusBar])
  {
    v3 = [MEMORY[0x277D75210] effectWithStyle:1102];
    v4 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v3];
    [(DBDockBackgroundView *)self setLightMaterial:v4];
  }

  else
  {
    v3 = [MEMORY[0x277D75358] colorEffectSaturate:2.0];
    v4 = [MEMORY[0x277D75210] effectWithBlurRadius:20.0];
    v5 = objc_alloc_init(MEMORY[0x277D75D68]);
    [(DBDockBackgroundView *)self setLightMaterial:v5];

    v118[0] = v3;
    v118[1] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:2];
    lightMaterial = [(DBDockBackgroundView *)self lightMaterial];
    [lightMaterial setBackgroundEffects:v6];
  }

  lightMaterial2 = [(DBDockBackgroundView *)self lightMaterial];
  [lightMaterial2 setTranslatesAutoresizingMaskIntoConstraints:0];

  lightMaterial3 = [(DBDockBackgroundView *)self lightMaterial];
  layer = [lightMaterial3 layer];
  [layer setAllowsHitTesting:0];

  lightMaterial4 = [(DBDockBackgroundView *)self lightMaterial];
  [(DBDockBackgroundView *)self addSubview:lightMaterial4];

  if ([(DBDockBackgroundView *)self isDualStatusBar])
  {
    v12 = [MEMORY[0x277D75210] effectWithStyle:1102];
    v13 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v12];
    [(DBDockBackgroundView *)self setDarkMaterial:v13];
  }

  else
  {
    v12 = [MEMORY[0x277D75358] colorEffectSaturate:3.0];
    v13 = [MEMORY[0x277D75210] effectWithBlurRadius:20.0];
    v14 = MEMORY[0x277D75D58];
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    v16 = [v14 effectCompositingColor:systemBlackColor withMode:7 alpha:0.6];

    v17 = objc_alloc_init(MEMORY[0x277D75D68]);
    [(DBDockBackgroundView *)self setDarkMaterial:v17];

    v117[0] = v12;
    v117[1] = v13;
    v117[2] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:3];
    darkMaterial = [(DBDockBackgroundView *)self darkMaterial];
    [darkMaterial setBackgroundEffects:v18];
  }

  darkMaterial2 = [(DBDockBackgroundView *)self darkMaterial];
  [darkMaterial2 setTranslatesAutoresizingMaskIntoConstraints:0];

  darkMaterial3 = [(DBDockBackgroundView *)self darkMaterial];
  layer2 = [darkMaterial3 layer];
  [layer2 setAllowsHitTesting:0];

  darkMaterial4 = [(DBDockBackgroundView *)self darkMaterial];
  [(DBDockBackgroundView *)self addSubview:darkMaterial4];

  v85 = MEMORY[0x277CCAAD0];
  lightMaterial5 = [(DBDockBackgroundView *)self lightMaterial];
  leadingAnchor = [lightMaterial5 leadingAnchor];
  leadingAnchor2 = [(DBDockBackgroundView *)self leadingAnchor];
  v105 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v116[0] = v105;
  lightMaterial6 = [(DBDockBackgroundView *)self lightMaterial];
  topAnchor = [lightMaterial6 topAnchor];
  topAnchor2 = [(DBDockBackgroundView *)self topAnchor];
  v97 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v116[1] = v97;
  lightMaterial7 = [(DBDockBackgroundView *)self lightMaterial];
  bottomAnchor = [lightMaterial7 bottomAnchor];
  bottomAnchor2 = [(DBDockBackgroundView *)self bottomAnchor];
  v89 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v116[2] = v89;
  lightMaterial8 = [(DBDockBackgroundView *)self lightMaterial];
  trailingAnchor = [lightMaterial8 trailingAnchor];
  trailingAnchor2 = [(DBDockBackgroundView *)self trailingAnchor];
  v79 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v116[3] = v79;
  darkMaterial5 = [(DBDockBackgroundView *)self darkMaterial];
  leadingAnchor3 = [darkMaterial5 leadingAnchor];
  leadingAnchor4 = [(DBDockBackgroundView *)self leadingAnchor];
  v71 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v116[4] = v71;
  darkMaterial6 = [(DBDockBackgroundView *)self darkMaterial];
  topAnchor3 = [darkMaterial6 topAnchor];
  topAnchor4 = [(DBDockBackgroundView *)self topAnchor];
  v63 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v116[5] = v63;
  darkMaterial7 = [(DBDockBackgroundView *)self darkMaterial];
  bottomAnchor3 = [darkMaterial7 bottomAnchor];
  bottomAnchor4 = [(DBDockBackgroundView *)self bottomAnchor];
  v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v116[6] = v27;
  darkMaterial8 = [(DBDockBackgroundView *)self darkMaterial];
  trailingAnchor3 = [darkMaterial8 trailingAnchor];
  trailingAnchor4 = [(DBDockBackgroundView *)self trailingAnchor];
  v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v116[7] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:8];
  [v85 activateConstraints:v32];

  v33 = MEMORY[0x277D75D58];
  systemBlackColor2 = [MEMORY[0x277D75348] systemBlackColor];
  v112 = [v33 effectCompositingColor:systemBlackColor2 withMode:1006 alpha:0.07];

  v35 = objc_alloc_init(MEMORY[0x277D75D68]);
  [(DBDockBackgroundView *)self setLightSiriMaterial:v35];

  v115 = v112;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
  lightSiriMaterial = [(DBDockBackgroundView *)self lightSiriMaterial];
  [lightSiriMaterial setBackgroundEffects:v36];

  lightSiriMaterial2 = [(DBDockBackgroundView *)self lightSiriMaterial];
  [lightSiriMaterial2 setTranslatesAutoresizingMaskIntoConstraints:0];

  lightSiriMaterial3 = [(DBDockBackgroundView *)self lightSiriMaterial];
  layer3 = [lightSiriMaterial3 layer];
  [layer3 setAllowsHitTesting:0];

  lightSiriMaterial4 = [(DBDockBackgroundView *)self lightSiriMaterial];
  [(DBDockBackgroundView *)self addSubview:lightSiriMaterial4];

  v42 = MEMORY[0x277D75D58];
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  v110 = [v42 effectCompositingColor:systemWhiteColor withMode:1007 alpha:0.15];

  v44 = objc_alloc_init(MEMORY[0x277D75D68]);
  [(DBDockBackgroundView *)self setDarkSiriMaterial:v44];

  v114 = v110;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
  darkSiriMaterial = [(DBDockBackgroundView *)self darkSiriMaterial];
  [darkSiriMaterial setBackgroundEffects:v45];

  darkSiriMaterial2 = [(DBDockBackgroundView *)self darkSiriMaterial];
  [darkSiriMaterial2 setTranslatesAutoresizingMaskIntoConstraints:0];

  darkSiriMaterial3 = [(DBDockBackgroundView *)self darkSiriMaterial];
  layer4 = [darkSiriMaterial3 layer];
  [layer4 setAllowsHitTesting:0];

  darkSiriMaterial4 = [(DBDockBackgroundView *)self darkSiriMaterial];
  [(DBDockBackgroundView *)self addSubview:darkSiriMaterial4];

  v82 = MEMORY[0x277CCAAD0];
  lightSiriMaterial5 = [(DBDockBackgroundView *)self lightSiriMaterial];
  leadingAnchor5 = [lightSiriMaterial5 leadingAnchor];
  leadingAnchor6 = [(DBDockBackgroundView *)self leadingAnchor];
  v102 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v113[0] = v102;
  lightSiriMaterial6 = [(DBDockBackgroundView *)self lightSiriMaterial];
  topAnchor5 = [lightSiriMaterial6 topAnchor];
  topAnchor6 = [(DBDockBackgroundView *)self topAnchor];
  v94 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v113[1] = v94;
  lightSiriMaterial7 = [(DBDockBackgroundView *)self lightSiriMaterial];
  bottomAnchor5 = [lightSiriMaterial7 bottomAnchor];
  bottomAnchor6 = [(DBDockBackgroundView *)self bottomAnchor];
  v86 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v113[2] = v86;
  lightSiriMaterial8 = [(DBDockBackgroundView *)self lightSiriMaterial];
  trailingAnchor5 = [lightSiriMaterial8 trailingAnchor];
  trailingAnchor6 = [(DBDockBackgroundView *)self trailingAnchor];
  v76 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v113[3] = v76;
  darkSiriMaterial5 = [(DBDockBackgroundView *)self darkSiriMaterial];
  leadingAnchor7 = [darkSiriMaterial5 leadingAnchor];
  leadingAnchor8 = [(DBDockBackgroundView *)self leadingAnchor];
  v68 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v113[4] = v68;
  darkSiriMaterial6 = [(DBDockBackgroundView *)self darkSiriMaterial];
  topAnchor7 = [darkSiriMaterial6 topAnchor];
  topAnchor8 = [(DBDockBackgroundView *)self topAnchor];
  v61 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v113[5] = v61;
  darkSiriMaterial7 = [(DBDockBackgroundView *)self darkSiriMaterial];
  bottomAnchor7 = [darkSiriMaterial7 bottomAnchor];
  bottomAnchor8 = [(DBDockBackgroundView *)self bottomAnchor];
  v54 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v113[6] = v54;
  darkSiriMaterial8 = [(DBDockBackgroundView *)self darkSiriMaterial];
  trailingAnchor7 = [darkSiriMaterial8 trailingAnchor];
  trailingAnchor8 = [(DBDockBackgroundView *)self trailingAnchor];
  v58 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v113[7] = v58;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:8];
  [v82 activateConstraints:v59];

  traitCollection = [(DBDockBackgroundView *)self traitCollection];
  -[DBDockBackgroundView updateMaterialForStyle:](self, "updateMaterialForStyle:", [traitCollection userInterfaceStyle]);
}

- (void)updateMaterialForStyle:(int64_t)style
{
  *&v30[5] = *MEMORY[0x277D85DE8];
  v5 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 67240448;
    v30[0] = style;
    LOWORD(v30[1]) = 1026;
    *(&v30[1] + 2) = [(DBDockBackgroundView *)self layout];
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Updating status bar background view with style: %{public}d, layout: %{public}d", &v29, 0xEu);
  }

  environment = [(DBDockBackgroundView *)self environment];
  environmentConfiguration = [environment environmentConfiguration];

  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];

  colorVariantOverride = [(DBDockBackgroundView *)self colorVariantOverride];
  colorVariantOverride2 = [(DBDockBackgroundView *)self colorVariantOverride];
  environment2 = [(DBDockBackgroundView *)self environment];
  environmentConfiguration2 = [environment2 environmentConfiguration];
  currentViewAreaSupportsUIOutsideSafeArea = [environmentConfiguration2 currentViewAreaSupportsUIOutsideSafeArea];

  if (colorVariantOverride2 && (!currentWallpaper || (([currentWallpaper traits], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isBlack"), style == 2) ? (v17 = v16) : (v17 = 0), (v15, (v17 & 1) != 0) || colorVariantOverride == 1)))
  {
    v18 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138543362;
      *v30 = currentWallpaper;
      _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_DEFAULT, "Hiding materials for dock with wallpaper: %{public}@", &v29, 0xCu);
    }

    if (currentViewAreaSupportsUIOutsideSafeArea)
    {
      [MEMORY[0x277D75348] crsui_dashboardWidgetBackgroundColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v20 = ;
    [(DBDockBackgroundView *)self setBackgroundColor:v20];
    v23 = 0.0;
    v22 = 0.0;
  }

  else
  {
    if ([(DBDockBackgroundView *)self isDualStatusBar])
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [(DBDockBackgroundView *)self _backgroundColorForStyle:style];
    }
    v19 = ;
    [(DBDockBackgroundView *)self setBackgroundColor:v19];

    v20 = DBLogForCategory(6uLL);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (style == 1)
    {
      v22 = 1.0;
      v23 = 0.0;
      if (v21)
      {
        LOWORD(v29) = 0;
        v24 = "Showing light material for dock";
LABEL_22:
        _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, v24, &v29, 2u);
      }
    }

    else
    {
      v22 = 0.0;
      v23 = 1.0;
      if (v21)
      {
        LOWORD(v29) = 0;
        v24 = "Showing dark material for dock";
        goto LABEL_22;
      }
    }
  }

  darkMaterial = [(DBDockBackgroundView *)self darkMaterial];
  [darkMaterial setAlpha:v23];

  lightMaterial = [(DBDockBackgroundView *)self lightMaterial];
  [lightMaterial setAlpha:v22];

  darkSiriMaterial = [(DBDockBackgroundView *)self darkSiriMaterial];
  [darkSiriMaterial setAlpha:0.0];

  lightSiriMaterial = [(DBDockBackgroundView *)self lightSiriMaterial];
  [lightSiriMaterial setAlpha:0.0];
}

- (id)_backgroundColorForStyle:(int64_t)style
{
  if (-[DBDockBackgroundView layout](self, "layout") == 3 && ([MEMORY[0x277CBEBD0] standardUserDefaults], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLForKey:", @"LowAlphaStatusBar"), v4, v5))
  {
    v6 = DBLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "[SplitStatusBar] Adjusting color for LowAlphaStatusBar", v14, 2u);
    }

    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v8 = [systemBlueColor colorWithAlphaComponent:0.1];
  }

  else
  {
    if (style == 1)
    {
      v9 = 0.847058824;
      v10 = 0.862745098;
      v11 = 0.7;
      v12 = 0.847058824;
    }

    else
    {
      v9 = 0.93;
      v11 = 0.6;
      v12 = 0.93;
      v10 = 0.93;
    }

    v8 = [MEMORY[0x277D75348] colorWithRed:v9 green:v12 blue:v10 alpha:v11];
  }

  return v8;
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(DBDockBackgroundView *)self traitCollection];
  -[DBDockBackgroundView updateMaterialForStyle:](self, "updateMaterialForStyle:", [traitCollection userInterfaceStyle]);
}

@end