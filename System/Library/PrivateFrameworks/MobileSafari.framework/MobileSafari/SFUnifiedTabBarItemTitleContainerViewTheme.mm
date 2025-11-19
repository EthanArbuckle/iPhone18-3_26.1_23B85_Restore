@interface SFUnifiedTabBarItemTitleContainerViewTheme
- (SFUnifiedTabBarItemTitleContainerViewTheme)init;
- (SFUnifiedTabBarItemTitleContainerViewTheme)initWithPrimaryTextColor:(id)a3 secondaryTextColor:(id)a4 placeholderTextColor:(id)a5 overrideTintColor:(id)a6 themeColor:(id)a7;
@end

@implementation SFUnifiedTabBarItemTitleContainerViewTheme

- (SFUnifiedTabBarItemTitleContainerViewTheme)init
{
  v3 = [MEMORY[0x1E69DC888] labelColor];
  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v6 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)self initWithPrimaryTextColor:v3 secondaryTextColor:v4 placeholderTextColor:v5];

  return v6;
}

- (SFUnifiedTabBarItemTitleContainerViewTheme)initWithPrimaryTextColor:(id)a3 secondaryTextColor:(id)a4 placeholderTextColor:(id)a5 overrideTintColor:(id)a6 themeColor:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = SFUnifiedTabBarItemTitleContainerViewTheme;
  v17 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_primaryTextColor, a3);
    objc_storeStrong(&v18->_secondaryTextColor, a4);
    objc_storeStrong(&v18->_placeholderTextColor, a5);
    objc_storeStrong(&v18->_overrideTintColor, a6);
    objc_storeStrong(&v18->_themeColor, a7);
    v19 = v18;
  }

  return v18;
}

@end