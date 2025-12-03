@interface CRSUIClusterThemeRepresentedColorScheme
- (CRSUIClusterThemeRepresentedColorScheme)initWithBSXPCCoder:(id)coder;
- (CRSUIClusterThemeRepresentedColorScheme)initWithColorScheme:(unint64_t)scheme color:(id)color linearGradient:(id)gradient;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CRSUIClusterThemeRepresentedColorScheme

- (CRSUIClusterThemeRepresentedColorScheme)initWithColorScheme:(unint64_t)scheme color:(id)color linearGradient:(id)gradient
{
  colorCopy = color;
  gradientCopy = gradient;
  v14.receiver = self;
  v14.super_class = CRSUIClusterThemeRepresentedColorScheme;
  v11 = [(CRSUIClusterThemeRepresentedColorScheme *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_colorScheme = scheme;
    objc_storeStrong(&v11->_themeColor, color);
    objc_storeStrong(&v12->_linearGradient, gradient);
  }

  return v12;
}

- (CRSUIClusterThemeRepresentedColorScheme)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeUInt64ForKey:@"colorScheme"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linearGradient"];

  if ((v5 - 4) >= 0xFFFFFFFFFFFFFFFDLL && (v5 != 1 || v6) && (v5 != 2 || v7))
  {
    self = [(CRSUIClusterThemeRepresentedColorScheme *)self initWithColorScheme:v5 color:v6 linearGradient:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  colorScheme = self->_colorScheme;
  coderCopy = coder;
  [coderCopy encodeUInt64:colorScheme forKey:@"colorScheme"];
  [coderCopy encodeObject:self->_themeColor forKey:@"color"];
  [coderCopy encodeObject:self->_linearGradient forKey:@"linearGradient"];
}

@end