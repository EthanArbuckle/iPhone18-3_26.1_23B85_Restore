@interface SFUnifiedBarTheme
+ (SFUnifiedBarTheme)defaultTheme;
- (SFUnifiedBarTheme)initWithBarTintStyle:(int64_t)a3 preferredBarTintColor:(id)a4 controlsTintColor:(id)a5;
@end

@implementation SFUnifiedBarTheme

+ (SFUnifiedBarTheme)defaultTheme
{
  if (defaultTheme_onceToken != -1)
  {
    +[SFUnifiedBarTheme defaultTheme];
  }

  v3 = defaultTheme_defaultTheme;

  return v3;
}

void __33__SFUnifiedBarTheme_defaultTheme__block_invoke()
{
  v0 = [(_SFBarTheme *)SFUnifiedBarTheme themeWithBarTintStyle:1];
  v1 = defaultTheme_defaultTheme;
  defaultTheme_defaultTheme = v0;
}

- (SFUnifiedBarTheme)initWithBarTintStyle:(int64_t)a3 preferredBarTintColor:(id)a4 controlsTintColor:(id)a5
{
  v43.receiver = self;
  v43.super_class = SFUnifiedBarTheme;
  v6 = [(SFThemeColorBarTheme *)&v43 initWithBarTintStyle:a3 preferredBarTintColor:a4 controlsTintColor:a5];
  if (!v6)
  {
    goto LABEL_19;
  }

  v6->_isPrivate = _SFIsPrivateTintStyle(a3);
  v7 = [(_SFBarTheme *)v6 controlsTintColor];
  objc_storeStrong(&v6->_progressBarTintColor, v7);
  objc_storeStrong(&v6->_selectedMenuButtonTintColor, v7);
  v8 = [(SFThemeColorBarTheme *)v6 themeColor];
  v9 = [MEMORY[0x1E69C9890] overrideTabColorForThemeColor:v8];
  overridePlatterColor = v6->_overridePlatterColor;
  v6->_overridePlatterColor = v9;

  v41 = [(SFThemeColorBarTheme *)v6 userInterfaceStyle];
  v11 = [MEMORY[0x1E69DC888] sf_transparentBarHairlineColor];
  separatorColor = v6->_separatorColor;
  v6->_separatorColor = v11;

  if (_SFIsDarkTintStyle(a3))
  {
    v42 = [MEMORY[0x1E69DC888] colorWithWhite:0.3 alpha:1.0];
  }

  else
  {
    v42 = 0;
  }

  v13 = [(SFThemeColorBarTheme *)v6 overrideTintColor];
  v14 = v13;
  v15 = v42;
  if (v8)
  {
    v15 = v8;
  }

  if (v6->_overridePlatterColor)
  {
    v16 = v6->_overridePlatterColor;
  }

  else
  {
    v16 = v15;
  }

  v17 = makeTitleTheme(v13, v16);
  titleTheme = v6->_titleTheme;
  v6->_titleTheme = v17;

  isPrivate = v6->_isPrivate;
  objc_storeStrong(&v6->_tabTitleTheme, v6->_titleTheme);
  if (isPrivate)
  {
    v20 = [MEMORY[0x1E69DC888] blackColor];
    v21 = makeTitleTheme(0, v20);
    activeTabTitleTheme = v6->_activeTabTitleTheme;
    v6->_activeTabTitleTheme = v21;

    v23 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)v6->_activeTabTitleTheme secondaryTextColor];
    objc_storeStrong(&v6->_tabProgressBarTintColor, v23);
    objc_storeStrong(&v6->_tabControlsTintColor, v23);
    objc_storeStrong(&v6->_activeTabProgressBarTintColor, v23);
    objc_storeStrong(&v6->_activeTabControlsTintColor, v23);
    inputFieldSecondaryAccessoryButtonTintColor = v6->_inputFieldSecondaryAccessoryButtonTintColor;
    v6->_inputFieldSecondaryAccessoryButtonTintColor = v23;
    v25 = v23;

    v26 = [MEMORY[0x1E69DC888] whiteColor];
    selectedMenuButtonTintColor = v6->_selectedMenuButtonTintColor;
    v6->_selectedMenuButtonTintColor = v26;
LABEL_14:

    goto LABEL_15;
  }

  v28 = makeTitleTheme(0, 0);
  v29 = v6->_activeTabTitleTheme;
  v6->_activeTabTitleTheme = v28;

  objc_storeStrong(&v6->_tabProgressBarTintColor, v6->_progressBarTintColor);
  objc_storeStrong(&v6->_tabControlsTintColor, v7);
  v25 = [MEMORY[0x1E69DC888] sf_safariAccentColor];
  objc_storeStrong(&v6->_activeTabProgressBarTintColor, v25);
  objc_storeStrong(&v6->_activeTabControlsTintColor, v25);
  v30 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)v6->_tabTitleTheme secondaryTextColor];
  v31 = v6->_inputFieldSecondaryAccessoryButtonTintColor;
  v6->_inputFieldSecondaryAccessoryButtonTintColor = v30;

  if (v41 == 2)
  {
    v32 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)v6->_tabTitleTheme primaryTextColor];
    selectedMenuButtonTintColor = v6->_activeTabFieldTintColor;
    v6->_activeTabFieldTintColor = v32;
    goto LABEL_14;
  }

LABEL_15:

  v33 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)v6->_tabTitleTheme secondaryTextColor];
  tabAccessoryButtonTintColor = v6->_tabAccessoryButtonTintColor;
  v6->_tabAccessoryButtonTintColor = v33;

  v35 = v6->_activeTabTitleTheme;
  if (a3 == 2)
  {
    [(SFUnifiedTabBarItemTitleContainerViewTheme *)v35 primaryTextColor];
  }

  else
  {
    [(SFUnifiedTabBarItemTitleContainerViewTheme *)v35 secondaryTextColor];
  }
  v36 = ;
  objc_storeStrong(&v6->_activeTabAccessoryButtonTintColor, v36);

  v37 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)v6->_activeTabTitleTheme primaryTextColor];
  inputFieldAccessoryButtonTintColor = v6->_inputFieldAccessoryButtonTintColor;
  v6->_inputFieldAccessoryButtonTintColor = v37;

  v39 = v6;
LABEL_19:

  return v6;
}

@end