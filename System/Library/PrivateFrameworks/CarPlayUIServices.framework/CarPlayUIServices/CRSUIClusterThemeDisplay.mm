@interface CRSUIClusterThemeDisplay
- (CGSize)size;
- (CRSUIClusterThemeDisplay)initWithBSXPCCoder:(id)coder;
- (CRSUIClusterThemeDisplay)initWithIdentifier:(id)identifier displayType:(unint64_t)type size:(CGSize)size requiresDarkAppearance:(BOOL)appearance layouts:(id)layouts;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CRSUIClusterThemeDisplay

- (CRSUIClusterThemeDisplay)initWithIdentifier:(id)identifier displayType:(unint64_t)type size:(CGSize)size requiresDarkAppearance:(BOOL)appearance layouts:(id)layouts
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  layoutsCopy = layouts;
  v19.receiver = self;
  v19.super_class = CRSUIClusterThemeDisplay;
  v16 = [(CRSUIClusterThemeDisplay *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, identifier);
    v17->_displayType = type;
    v17->_size.width = width;
    v17->_size.height = height;
    v17->_requiresDarkAppearance = appearance;
    objc_storeStrong(&v17->_layouts, layouts);
  }

  return v17;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CRSUIClusterThemeDisplay *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeUInt64:-[CRSUIClusterThemeDisplay displayType](self forKey:{"displayType"), @"displayType"}];
  [(CRSUIClusterThemeDisplay *)self size];
  [coderCopy encodeCGSize:@"size" forKey:?];
  [coderCopy encodeBool:-[CRSUIClusterThemeDisplay requiresDarkAppearance](self forKey:{"requiresDarkAppearance"), @"requiresDarkAppearance"}];
  layouts = [(CRSUIClusterThemeDisplay *)self layouts];
  [coderCopy encodeCollection:layouts forKey:@"layouts"];
}

- (CRSUIClusterThemeDisplay)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeUInt64ForKey:@"displayType"];
  [coderCopy decodeCGSizeForKey:@"size"];
  v8 = v7;
  v10 = v9;
  v11 = [coderCopy decodeBoolForKey:@"requiresDarkAppearance"];
  v12 = objc_opt_class();
  v13 = [coderCopy decodeCollectionOfClass:v12 containingClass:objc_opt_class() forKey:@"layouts"];

  if (v5)
  {
    v14 = v6 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || v13 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CRSUIClusterThemeDisplay *)self initWithIdentifier:v5 displayType:v6 size:v11 requiresDarkAppearance:v13 layouts:v8, v10];
    selfCopy = self;
  }

  return selfCopy;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end