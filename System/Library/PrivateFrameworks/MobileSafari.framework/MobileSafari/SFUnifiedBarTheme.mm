@interface SFUnifiedBarTheme
+ (SFUnifiedBarTheme)defaultTheme;
- (SFUnifiedBarTheme)initWithBarTintStyle:(int64_t)style preferredBarTintColor:(id)color controlsTintColor:(id)tintColor;
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

- (SFUnifiedBarTheme)initWithBarTintStyle:(int64_t)style preferredBarTintColor:(id)color controlsTintColor:(id)tintColor
{
  v43.receiver = self;
  v43.super_class = SFUnifiedBarTheme;
  v6 = [(SFThemeColorBarTheme *)&v43 initWithBarTintStyle:style preferredBarTintColor:color controlsTintColor:tintColor];
  if (!v6)
  {
    goto LABEL_19;
  }

  v6->_isPrivate = _SFIsPrivateTintStyle(style);
  controlsTintColor = [(_SFBarTheme *)v6 controlsTintColor];
  objc_storeStrong(&v6->_progressBarTintColor, controlsTintColor);
  objc_storeStrong(&v6->_selectedMenuButtonTintColor, controlsTintColor);
  themeColor = [(SFThemeColorBarTheme *)v6 themeColor];
  v9 = [MEMORY[0x1E69C9890] overrideTabColorForThemeColor:themeColor];
  overridePlatterColor = v6->_overridePlatterColor;
  v6->_overridePlatterColor = v9;

  userInterfaceStyle = [(SFThemeColorBarTheme *)v6 userInterfaceStyle];
  sf_transparentBarHairlineColor = [MEMORY[0x1E69DC888] sf_transparentBarHairlineColor];
  separatorColor = v6->_separatorColor;
  v6->_separatorColor = sf_transparentBarHairlineColor;

  if (_SFIsDarkTintStyle(style))
  {
    v42 = [MEMORY[0x1E69DC888] colorWithWhite:0.3 alpha:1.0];
  }

  else
  {
    v42 = 0;
  }

  overrideTintColor = [(SFThemeColorBarTheme *)v6 overrideTintColor];
  v14 = overrideTintColor;
  v15 = v42;
  if (themeColor)
  {
    v15 = themeColor;
  }

  if (v6->_overridePlatterColor)
  {
    v16 = v6->_overridePlatterColor;
  }

  else
  {
    v16 = v15;
  }

  v17 = makeTitleTheme(overrideTintColor, v16);
  titleTheme = v6->_titleTheme;
  v6->_titleTheme = v17;

  isPrivate = v6->_isPrivate;
  objc_storeStrong(&v6->_tabTitleTheme, v6->_titleTheme);
  if (isPrivate)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v21 = makeTitleTheme(0, blackColor);
    activeTabTitleTheme = v6->_activeTabTitleTheme;
    v6->_activeTabTitleTheme = v21;

    secondaryTextColor = [(SFUnifiedTabBarItemTitleContainerViewTheme *)v6->_activeTabTitleTheme secondaryTextColor];
    objc_storeStrong(&v6->_tabProgressBarTintColor, secondaryTextColor);
    objc_storeStrong(&v6->_tabControlsTintColor, secondaryTextColor);
    objc_storeStrong(&v6->_activeTabProgressBarTintColor, secondaryTextColor);
    objc_storeStrong(&v6->_activeTabControlsTintColor, secondaryTextColor);
    inputFieldSecondaryAccessoryButtonTintColor = v6->_inputFieldSecondaryAccessoryButtonTintColor;
    v6->_inputFieldSecondaryAccessoryButtonTintColor = secondaryTextColor;
    sf_safariAccentColor = secondaryTextColor;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    selectedMenuButtonTintColor = v6->_selectedMenuButtonTintColor;
    v6->_selectedMenuButtonTintColor = whiteColor;
LABEL_14:

    goto LABEL_15;
  }

  v28 = makeTitleTheme(0, 0);
  v29 = v6->_activeTabTitleTheme;
  v6->_activeTabTitleTheme = v28;

  objc_storeStrong(&v6->_tabProgressBarTintColor, v6->_progressBarTintColor);
  objc_storeStrong(&v6->_tabControlsTintColor, controlsTintColor);
  sf_safariAccentColor = [MEMORY[0x1E69DC888] sf_safariAccentColor];
  objc_storeStrong(&v6->_activeTabProgressBarTintColor, sf_safariAccentColor);
  objc_storeStrong(&v6->_activeTabControlsTintColor, sf_safariAccentColor);
  secondaryTextColor2 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)v6->_tabTitleTheme secondaryTextColor];
  v31 = v6->_inputFieldSecondaryAccessoryButtonTintColor;
  v6->_inputFieldSecondaryAccessoryButtonTintColor = secondaryTextColor2;

  if (userInterfaceStyle == 2)
  {
    primaryTextColor = [(SFUnifiedTabBarItemTitleContainerViewTheme *)v6->_tabTitleTheme primaryTextColor];
    selectedMenuButtonTintColor = v6->_activeTabFieldTintColor;
    v6->_activeTabFieldTintColor = primaryTextColor;
    goto LABEL_14;
  }

LABEL_15:

  secondaryTextColor3 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)v6->_tabTitleTheme secondaryTextColor];
  tabAccessoryButtonTintColor = v6->_tabAccessoryButtonTintColor;
  v6->_tabAccessoryButtonTintColor = secondaryTextColor3;

  v35 = v6->_activeTabTitleTheme;
  if (style == 2)
  {
    [(SFUnifiedTabBarItemTitleContainerViewTheme *)v35 primaryTextColor];
  }

  else
  {
    [(SFUnifiedTabBarItemTitleContainerViewTheme *)v35 secondaryTextColor];
  }
  v36 = ;
  objc_storeStrong(&v6->_activeTabAccessoryButtonTintColor, v36);

  primaryTextColor2 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)v6->_activeTabTitleTheme primaryTextColor];
  inputFieldAccessoryButtonTintColor = v6->_inputFieldAccessoryButtonTintColor;
  v6->_inputFieldAccessoryButtonTintColor = primaryTextColor2;

  v39 = v6;
LABEL_19:

  return v6;
}

@end