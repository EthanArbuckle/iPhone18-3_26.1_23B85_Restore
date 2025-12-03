@interface CRSUIClusterThemeColor
- (CRSUIClusterThemeColor)initWithBSXPCCoder:(id)coder;
- (UIColor)color;
- (id)_initWithLightModeColor:(id)color darkModeColor:(id)modeColor;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CRSUIClusterThemeColor

- (id)_initWithLightModeColor:(id)color darkModeColor:(id)modeColor
{
  colorCopy = color;
  modeColorCopy = modeColor;
  v12.receiver = self;
  v12.super_class = CRSUIClusterThemeColor;
  v9 = [(CRSUIClusterThemeColor *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_lightModeColor, color);
    objc_storeStrong(p_isa + 2, modeColor);
  }

  return p_isa;
}

- (UIColor)color
{
  darkModeColor = self->_darkModeColor;
  v4 = self->_lightModeColor;
  if (darkModeColor)
  {
    v5 = self->_darkModeColor;
    v6 = MEMORY[0x277D75348];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__CRSUIClusterThemeColor_color__block_invoke;
    v10[3] = &unk_278DA1078;
    v11 = v5;
    v12 = v4;
    v7 = v4;
    v8 = v5;
    v4 = [v6 colorWithDynamicProvider:v10];
  }

  return v4;
}

id __31__CRSUIClusterThemeColor_color__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == 2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  lightModeColor = self->_lightModeColor;
  coderCopy = coder;
  [coderCopy encodeObject:lightModeColor forKey:@"lightModeColor"];
  [coderCopy encodeObject:self->_darkModeColor forKey:@"darkModeColor"];
}

- (CRSUIClusterThemeColor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lightModeColor"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"darkModeColor"];

  if (v5)
  {
    self = [(CRSUIClusterThemeColor *)self initWithLightModeColor:v5 darkModeColor:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end