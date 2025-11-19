@interface CRSUIClusterThemeRepresentedColorScheme
- (CRSUIClusterThemeRepresentedColorScheme)initWithBSXPCCoder:(id)a3;
- (CRSUIClusterThemeRepresentedColorScheme)initWithColorScheme:(unint64_t)a3 color:(id)a4 linearGradient:(id)a5;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CRSUIClusterThemeRepresentedColorScheme

- (CRSUIClusterThemeRepresentedColorScheme)initWithColorScheme:(unint64_t)a3 color:(id)a4 linearGradient:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CRSUIClusterThemeRepresentedColorScheme;
  v11 = [(CRSUIClusterThemeRepresentedColorScheme *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_colorScheme = a3;
    objc_storeStrong(&v11->_themeColor, a4);
    objc_storeStrong(&v12->_linearGradient, a5);
  }

  return v12;
}

- (CRSUIClusterThemeRepresentedColorScheme)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeUInt64ForKey:@"colorScheme"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linearGradient"];

  if ((v5 - 4) >= 0xFFFFFFFFFFFFFFFDLL && (v5 != 1 || v6) && (v5 != 2 || v7))
  {
    self = [(CRSUIClusterThemeRepresentedColorScheme *)self initWithColorScheme:v5 color:v6 linearGradient:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  colorScheme = self->_colorScheme;
  v5 = a3;
  [v5 encodeUInt64:colorScheme forKey:@"colorScheme"];
  [v5 encodeObject:self->_themeColor forKey:@"color"];
  [v5 encodeObject:self->_linearGradient forKey:@"linearGradient"];
}

@end