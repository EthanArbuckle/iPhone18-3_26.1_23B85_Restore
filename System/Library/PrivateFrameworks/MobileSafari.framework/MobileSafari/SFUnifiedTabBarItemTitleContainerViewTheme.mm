@interface SFUnifiedTabBarItemTitleContainerViewTheme
- (SFUnifiedTabBarItemTitleContainerViewTheme)init;
- (SFUnifiedTabBarItemTitleContainerViewTheme)initWithPrimaryTextColor:(id)color secondaryTextColor:(id)textColor placeholderTextColor:(id)placeholderTextColor overrideTintColor:(id)tintColor themeColor:(id)themeColor;
@end

@implementation SFUnifiedTabBarItemTitleContainerViewTheme

- (SFUnifiedTabBarItemTitleContainerViewTheme)init
{
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v6 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)self initWithPrimaryTextColor:labelColor secondaryTextColor:secondaryLabelColor placeholderTextColor:secondaryLabelColor2];

  return v6;
}

- (SFUnifiedTabBarItemTitleContainerViewTheme)initWithPrimaryTextColor:(id)color secondaryTextColor:(id)textColor placeholderTextColor:(id)placeholderTextColor overrideTintColor:(id)tintColor themeColor:(id)themeColor
{
  colorCopy = color;
  textColorCopy = textColor;
  placeholderTextColorCopy = placeholderTextColor;
  tintColorCopy = tintColor;
  themeColorCopy = themeColor;
  v22.receiver = self;
  v22.super_class = SFUnifiedTabBarItemTitleContainerViewTheme;
  v17 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_primaryTextColor, color);
    objc_storeStrong(&v18->_secondaryTextColor, textColor);
    objc_storeStrong(&v18->_placeholderTextColor, placeholderTextColor);
    objc_storeStrong(&v18->_overrideTintColor, tintColor);
    objc_storeStrong(&v18->_themeColor, themeColor);
    v19 = v18;
  }

  return v18;
}

@end