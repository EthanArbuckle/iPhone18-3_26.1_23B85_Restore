@interface CRSUIClusterThemeColor
- (CRSUIClusterThemeColor)initWithBSXPCCoder:(id)a3;
- (UIColor)color;
- (id)_initWithLightModeColor:(id)a3 darkModeColor:(id)a4;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CRSUIClusterThemeColor

- (id)_initWithLightModeColor:(id)a3 darkModeColor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRSUIClusterThemeColor;
  v9 = [(CRSUIClusterThemeColor *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_lightModeColor, a3);
    objc_storeStrong(p_isa + 2, a4);
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

- (void)encodeWithBSXPCCoder:(id)a3
{
  lightModeColor = self->_lightModeColor;
  v5 = a3;
  [v5 encodeObject:lightModeColor forKey:@"lightModeColor"];
  [v5 encodeObject:self->_darkModeColor forKey:@"darkModeColor"];
}

- (CRSUIClusterThemeColor)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lightModeColor"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"darkModeColor"];

  if (v5)
  {
    self = [(CRSUIClusterThemeColor *)self initWithLightModeColor:v5 darkModeColor:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end