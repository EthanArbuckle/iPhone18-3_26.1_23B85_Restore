@interface CCUIModuleSettings
- (BOOL)isEqual:(id)equal;
- (CCUIModuleSettings)initWithGridSizeClass:(id)class moduleContainerBundleIdentifier:(id)identifier controlExtensionIdentifier:(id)extensionIdentifier controlContainerBundleIdentifier:(id)bundleIdentifier controlKind:(id)kind controlType:(id)type;
- (id)description;
- (unint64_t)hash;
@end

@implementation CCUIModuleSettings

- (CCUIModuleSettings)initWithGridSizeClass:(id)class moduleContainerBundleIdentifier:(id)identifier controlExtensionIdentifier:(id)extensionIdentifier controlContainerBundleIdentifier:(id)bundleIdentifier controlKind:(id)kind controlType:(id)type
{
  classCopy = class;
  identifierCopy = identifier;
  extensionIdentifierCopy = extensionIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  typeCopy = type;
  v34.receiver = self;
  v34.super_class = CCUIModuleSettings;
  v20 = [(CCUIModuleSettings *)&v34 init];
  if (v20)
  {
    v21 = [classCopy copy];
    gridSizeClass = v20->_gridSizeClass;
    v20->_gridSizeClass = v21;

    v23 = [identifierCopy copy];
    moduleContainerBundleIdentifier = v20->_moduleContainerBundleIdentifier;
    v20->_moduleContainerBundleIdentifier = v23;

    v25 = [extensionIdentifierCopy copy];
    parityControlExtensionIdentifier = v20->_parityControlExtensionIdentifier;
    v20->_parityControlExtensionIdentifier = v25;

    v27 = [bundleIdentifierCopy copy];
    parityControlContainerBundleIdentifier = v20->_parityControlContainerBundleIdentifier;
    v20->_parityControlContainerBundleIdentifier = v27;

    v29 = [kindCopy copy];
    parityControlKind = v20->_parityControlKind;
    v20->_parityControlKind = v29;

    v31 = [typeCopy copy];
    parityControlType = v20->_parityControlType;
    v20->_parityControlType = v31;
  }

  return v20;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_gridSizeClass withName:@"Grid size class"];
  [v3 appendString:self->_moduleContainerBundleIdentifier withName:@"Container bundle identifier"];
  parityControlExtensionIdentifier = self->_parityControlExtensionIdentifier;
  if (parityControlExtensionIdentifier)
  {
    [v3 appendString:parityControlExtensionIdentifier withName:@"Parity control extension identifier"];
  }

  parityControlContainerBundleIdentifier = self->_parityControlContainerBundleIdentifier;
  if (parityControlContainerBundleIdentifier)
  {
    [v3 appendString:parityControlContainerBundleIdentifier withName:@"Parity control container bundle identifier"];
  }

  parityControlKind = self->_parityControlKind;
  if (parityControlKind)
  {
    [v3 appendString:parityControlKind withName:@"Parity control kind"];
  }

  parityControlType = self->_parityControlType;
  if (parityControlType)
  {
    [v3 appendString:parityControlType withName:@"Parity control type"];
  }

  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_gridSizeClass];
  v5 = [builder appendString:self->_moduleContainerBundleIdentifier];
  if (self->_parityControlExtensionIdentifier)
  {
    v6 = [builder appendString:?];
  }

  if (self->_parityControlContainerBundleIdentifier)
  {
    v7 = [builder appendString:?];
  }

  if (self->_parityControlKind)
  {
    v8 = [builder appendString:?];
  }

  if (self->_parityControlType)
  {
    v9 = [builder appendString:?];
  }

  v10 = [builder hash];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      if (BSEqualStrings() && BSEqualStrings() && BSEqualStrings() && BSEqualStrings() && BSEqualStrings())
      {
        v6 = BSEqualStrings();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end