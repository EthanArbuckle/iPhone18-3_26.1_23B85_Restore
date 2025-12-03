@interface CRSUIClusterThemePalette
- (CRSUIClusterThemePalette)initWithBSXPCCoder:(id)coder;
- (CRSUIClusterThemePalette)initWithIdentifier:(id)identifier displayName:(id)name colorScheme:(id)scheme sortIndex:(int64_t)index accentColor:(id)color isDefault:(BOOL)default isProminent:(BOOL)prominent;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CRSUIClusterThemePalette

- (CRSUIClusterThemePalette)initWithIdentifier:(id)identifier displayName:(id)name colorScheme:(id)scheme sortIndex:(int64_t)index accentColor:(id)color isDefault:(BOOL)default isProminent:(BOOL)prominent
{
  identifierCopy = identifier;
  nameCopy = name;
  schemeCopy = scheme;
  colorCopy = color;
  v25.receiver = self;
  v25.super_class = CRSUIClusterThemePalette;
  v19 = [(CRSUIClusterThemePalette *)&v25 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v20;

    v22 = [nameCopy copy];
    displayName = v19->_displayName;
    v19->_displayName = v22;

    objc_storeStrong(&v19->_colorScheme, scheme);
    v19->_sortIndex = index;
    objc_storeStrong(&v19->_themeAccentColor, color);
    v19->_isDefault = default;
    v19->_prominent = prominent;
  }

  return v19;
}

- (CRSUIClusterThemePalette)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"identifier"];
  v6 = [coderCopy decodeStringForKey:@"displayName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sortIndex"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accentColor"];
  v11 = [coderCopy decodeBoolForKey:@"isDefault"];
  v12 = [coderCopy decodeBoolForKey:@"isProminent"];

  selfCopy = 0;
  if (v5 && v6 && v9)
  {
    LOBYTE(v15) = v12;
    self = [(CRSUIClusterThemePalette *)self initWithIdentifier:v5 displayName:v6 colorScheme:v9 sortIndex:unsignedIntegerValue accentColor:v10 isDefault:v11 isProminent:v15];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CRSUIClusterThemePalette *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  displayName = [(CRSUIClusterThemePalette *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  colorScheme = [(CRSUIClusterThemePalette *)self colorScheme];
  [coderCopy encodeObject:colorScheme forKey:@"colorScheme"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRSUIClusterThemePalette sortIndex](self, "sortIndex")}];
  [coderCopy encodeObject:v7 forKey:@"sortIndex"];

  [coderCopy encodeObject:self->_themeAccentColor forKey:@"accentColor"];
  [coderCopy encodeBool:-[CRSUIClusterThemePalette isDefault](self forKey:{"isDefault"), @"isDefault"}];
  [coderCopy encodeBool:-[CRSUIClusterThemePalette isProminent](self forKey:{"isProminent"), @"isProminent"}];
}

@end