@interface DBDockBackgroundView
- (BOOL)isDualStatusBar;
- (DBDockBackgroundView)initWithEnvironment:(id)a3 layout:(unint64_t)a4;
- (DBEnvironment)environment;
- (id)_backgroundColorForStyle:(int64_t)a3;
- (void)setupMaterialBackground;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateMaterialForStyle:(int64_t)a3;
@end

@implementation DBDockBackgroundView

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (BOOL)isDualStatusBar
{
  v3 = [(DBDockBackgroundView *)self layout];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(DBDockBackgroundView *)self layout]== 2;
  }

  return v3;
}

- (DBDockBackgroundView)initWithEnvironment:(id)a3 layout:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = DBDockBackgroundView;
  v7 = [(DBDockBackgroundView *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    [(DBDockBackgroundView *)v7 setEnvironment:v6];
    [(DBDockBackgroundView *)v8 setLayout:a4];
    v8->_colorVariantOverride = -1;
    [(DBDockBackgroundView *)v8 setupMaterialBackground];
    v9 = [(DBDockBackgroundView *)v8 layer];
    [v9 setAllowsHitTesting:0];
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
    v7 = [(DBDockBackgroundView *)self lightMaterial];
    [v7 setBackgroundEffects:v6];
  }

  v8 = [(DBDockBackgroundView *)self lightMaterial];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(DBDockBackgroundView *)self lightMaterial];
  v10 = [v9 layer];
  [v10 setAllowsHitTesting:0];

  v11 = [(DBDockBackgroundView *)self lightMaterial];
  [(DBDockBackgroundView *)self addSubview:v11];

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
    v15 = [MEMORY[0x277D75348] systemBlackColor];
    v16 = [v14 effectCompositingColor:v15 withMode:7 alpha:0.6];

    v17 = objc_alloc_init(MEMORY[0x277D75D68]);
    [(DBDockBackgroundView *)self setDarkMaterial:v17];

    v117[0] = v12;
    v117[1] = v13;
    v117[2] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:3];
    v19 = [(DBDockBackgroundView *)self darkMaterial];
    [v19 setBackgroundEffects:v18];
  }

  v20 = [(DBDockBackgroundView *)self darkMaterial];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [(DBDockBackgroundView *)self darkMaterial];
  v22 = [v21 layer];
  [v22 setAllowsHitTesting:0];

  v23 = [(DBDockBackgroundView *)self darkMaterial];
  [(DBDockBackgroundView *)self addSubview:v23];

  v85 = MEMORY[0x277CCAAD0];
  v111 = [(DBDockBackgroundView *)self lightMaterial];
  v109 = [v111 leadingAnchor];
  v107 = [(DBDockBackgroundView *)self leadingAnchor];
  v105 = [v109 constraintEqualToAnchor:v107];
  v116[0] = v105;
  v103 = [(DBDockBackgroundView *)self lightMaterial];
  v101 = [v103 topAnchor];
  v99 = [(DBDockBackgroundView *)self topAnchor];
  v97 = [v101 constraintEqualToAnchor:v99];
  v116[1] = v97;
  v95 = [(DBDockBackgroundView *)self lightMaterial];
  v93 = [v95 bottomAnchor];
  v91 = [(DBDockBackgroundView *)self bottomAnchor];
  v89 = [v93 constraintEqualToAnchor:v91];
  v116[2] = v89;
  v87 = [(DBDockBackgroundView *)self lightMaterial];
  v83 = [v87 trailingAnchor];
  v81 = [(DBDockBackgroundView *)self trailingAnchor];
  v79 = [v83 constraintEqualToAnchor:v81];
  v116[3] = v79;
  v77 = [(DBDockBackgroundView *)self darkMaterial];
  v75 = [v77 leadingAnchor];
  v73 = [(DBDockBackgroundView *)self leadingAnchor];
  v71 = [v75 constraintEqualToAnchor:v73];
  v116[4] = v71;
  v69 = [(DBDockBackgroundView *)self darkMaterial];
  v67 = [v69 topAnchor];
  v65 = [(DBDockBackgroundView *)self topAnchor];
  v63 = [v67 constraintEqualToAnchor:v65];
  v116[5] = v63;
  v24 = [(DBDockBackgroundView *)self darkMaterial];
  v25 = [v24 bottomAnchor];
  v26 = [(DBDockBackgroundView *)self bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v116[6] = v27;
  v28 = [(DBDockBackgroundView *)self darkMaterial];
  v29 = [v28 trailingAnchor];
  v30 = [(DBDockBackgroundView *)self trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v116[7] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:8];
  [v85 activateConstraints:v32];

  v33 = MEMORY[0x277D75D58];
  v34 = [MEMORY[0x277D75348] systemBlackColor];
  v112 = [v33 effectCompositingColor:v34 withMode:1006 alpha:0.07];

  v35 = objc_alloc_init(MEMORY[0x277D75D68]);
  [(DBDockBackgroundView *)self setLightSiriMaterial:v35];

  v115 = v112;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
  v37 = [(DBDockBackgroundView *)self lightSiriMaterial];
  [v37 setBackgroundEffects:v36];

  v38 = [(DBDockBackgroundView *)self lightSiriMaterial];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

  v39 = [(DBDockBackgroundView *)self lightSiriMaterial];
  v40 = [v39 layer];
  [v40 setAllowsHitTesting:0];

  v41 = [(DBDockBackgroundView *)self lightSiriMaterial];
  [(DBDockBackgroundView *)self addSubview:v41];

  v42 = MEMORY[0x277D75D58];
  v43 = [MEMORY[0x277D75348] systemWhiteColor];
  v110 = [v42 effectCompositingColor:v43 withMode:1007 alpha:0.15];

  v44 = objc_alloc_init(MEMORY[0x277D75D68]);
  [(DBDockBackgroundView *)self setDarkSiriMaterial:v44];

  v114 = v110;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
  v46 = [(DBDockBackgroundView *)self darkSiriMaterial];
  [v46 setBackgroundEffects:v45];

  v47 = [(DBDockBackgroundView *)self darkSiriMaterial];
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

  v48 = [(DBDockBackgroundView *)self darkSiriMaterial];
  v49 = [v48 layer];
  [v49 setAllowsHitTesting:0];

  v50 = [(DBDockBackgroundView *)self darkSiriMaterial];
  [(DBDockBackgroundView *)self addSubview:v50];

  v82 = MEMORY[0x277CCAAD0];
  v108 = [(DBDockBackgroundView *)self lightSiriMaterial];
  v106 = [v108 leadingAnchor];
  v104 = [(DBDockBackgroundView *)self leadingAnchor];
  v102 = [v106 constraintEqualToAnchor:v104];
  v113[0] = v102;
  v100 = [(DBDockBackgroundView *)self lightSiriMaterial];
  v98 = [v100 topAnchor];
  v96 = [(DBDockBackgroundView *)self topAnchor];
  v94 = [v98 constraintEqualToAnchor:v96];
  v113[1] = v94;
  v92 = [(DBDockBackgroundView *)self lightSiriMaterial];
  v90 = [v92 bottomAnchor];
  v88 = [(DBDockBackgroundView *)self bottomAnchor];
  v86 = [v90 constraintEqualToAnchor:v88];
  v113[2] = v86;
  v84 = [(DBDockBackgroundView *)self lightSiriMaterial];
  v80 = [v84 trailingAnchor];
  v78 = [(DBDockBackgroundView *)self trailingAnchor];
  v76 = [v80 constraintEqualToAnchor:v78];
  v113[3] = v76;
  v74 = [(DBDockBackgroundView *)self darkSiriMaterial];
  v72 = [v74 leadingAnchor];
  v70 = [(DBDockBackgroundView *)self leadingAnchor];
  v68 = [v72 constraintEqualToAnchor:v70];
  v113[4] = v68;
  v66 = [(DBDockBackgroundView *)self darkSiriMaterial];
  v64 = [v66 topAnchor];
  v62 = [(DBDockBackgroundView *)self topAnchor];
  v61 = [v64 constraintEqualToAnchor:v62];
  v113[5] = v61;
  v51 = [(DBDockBackgroundView *)self darkSiriMaterial];
  v52 = [v51 bottomAnchor];
  v53 = [(DBDockBackgroundView *)self bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  v113[6] = v54;
  v55 = [(DBDockBackgroundView *)self darkSiriMaterial];
  v56 = [v55 trailingAnchor];
  v57 = [(DBDockBackgroundView *)self trailingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];
  v113[7] = v58;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:8];
  [v82 activateConstraints:v59];

  v60 = [(DBDockBackgroundView *)self traitCollection];
  -[DBDockBackgroundView updateMaterialForStyle:](self, "updateMaterialForStyle:", [v60 userInterfaceStyle]);
}

- (void)updateMaterialForStyle:(int64_t)a3
{
  *&v30[5] = *MEMORY[0x277D85DE8];
  v5 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 67240448;
    v30[0] = a3;
    LOWORD(v30[1]) = 1026;
    *(&v30[1] + 2) = [(DBDockBackgroundView *)self layout];
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Updating status bar background view with style: %{public}d, layout: %{public}d", &v29, 0xEu);
  }

  v6 = [(DBDockBackgroundView *)self environment];
  v7 = [v6 environmentConfiguration];

  v8 = [v7 wallpaperPreferences];
  v9 = [v8 currentWallpaper];

  v10 = [(DBDockBackgroundView *)self colorVariantOverride];
  v11 = [(DBDockBackgroundView *)self colorVariantOverride];
  v12 = [(DBDockBackgroundView *)self environment];
  v13 = [v12 environmentConfiguration];
  v14 = [v13 currentViewAreaSupportsUIOutsideSafeArea];

  if (v11 && (!v9 || (([v9 traits], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isBlack"), a3 == 2) ? (v17 = v16) : (v17 = 0), (v15, (v17 & 1) != 0) || v10 == 1)))
  {
    v18 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138543362;
      *v30 = v9;
      _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_DEFAULT, "Hiding materials for dock with wallpaper: %{public}@", &v29, 0xCu);
    }

    if (v14)
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
      [(DBDockBackgroundView *)self _backgroundColorForStyle:a3];
    }
    v19 = ;
    [(DBDockBackgroundView *)self setBackgroundColor:v19];

    v20 = DBLogForCategory(6uLL);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (a3 == 1)
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

  v25 = [(DBDockBackgroundView *)self darkMaterial];
  [v25 setAlpha:v23];

  v26 = [(DBDockBackgroundView *)self lightMaterial];
  [v26 setAlpha:v22];

  v27 = [(DBDockBackgroundView *)self darkSiriMaterial];
  [v27 setAlpha:0.0];

  v28 = [(DBDockBackgroundView *)self lightSiriMaterial];
  [v28 setAlpha:0.0];
}

- (id)_backgroundColorForStyle:(int64_t)a3
{
  if (-[DBDockBackgroundView layout](self, "layout") == 3 && ([MEMORY[0x277CBEBD0] standardUserDefaults], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLForKey:", @"LowAlphaStatusBar"), v4, v5))
  {
    v6 = DBLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "[SplitStatusBar] Adjusting color for LowAlphaStatusBar", v14, 2u);
    }

    v7 = [MEMORY[0x277D75348] systemBlueColor];
    v8 = [v7 colorWithAlphaComponent:0.1];
  }

  else
  {
    if (a3 == 1)
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(DBDockBackgroundView *)self traitCollection];
  -[DBDockBackgroundView updateMaterialForStyle:](self, "updateMaterialForStyle:", [v4 userInterfaceStyle]);
}

@end