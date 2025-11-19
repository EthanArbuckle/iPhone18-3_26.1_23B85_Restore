@interface CCUIModuleSettings
- (BOOL)isEqual:(id)a3;
- (CCUIModuleSettings)initWithGridSizeClass:(id)a3 moduleContainerBundleIdentifier:(id)a4 controlExtensionIdentifier:(id)a5 controlContainerBundleIdentifier:(id)a6 controlKind:(id)a7 controlType:(id)a8;
- (id)description;
- (unint64_t)hash;
@end

@implementation CCUIModuleSettings

- (CCUIModuleSettings)initWithGridSizeClass:(id)a3 moduleContainerBundleIdentifier:(id)a4 controlExtensionIdentifier:(id)a5 controlContainerBundleIdentifier:(id)a6 controlKind:(id)a7 controlType:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = CCUIModuleSettings;
  v20 = [(CCUIModuleSettings *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    gridSizeClass = v20->_gridSizeClass;
    v20->_gridSizeClass = v21;

    v23 = [v15 copy];
    moduleContainerBundleIdentifier = v20->_moduleContainerBundleIdentifier;
    v20->_moduleContainerBundleIdentifier = v23;

    v25 = [v16 copy];
    parityControlExtensionIdentifier = v20->_parityControlExtensionIdentifier;
    v20->_parityControlExtensionIdentifier = v25;

    v27 = [v17 copy];
    parityControlContainerBundleIdentifier = v20->_parityControlContainerBundleIdentifier;
    v20->_parityControlContainerBundleIdentifier = v27;

    v29 = [v18 copy];
    parityControlKind = v20->_parityControlKind;
    v20->_parityControlKind = v29;

    v31 = [v19 copy];
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

  v8 = [v3 build];

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendString:self->_gridSizeClass];
  v5 = [v3 appendString:self->_moduleContainerBundleIdentifier];
  if (self->_parityControlExtensionIdentifier)
  {
    v6 = [v3 appendString:?];
  }

  if (self->_parityControlContainerBundleIdentifier)
  {
    v7 = [v3 appendString:?];
  }

  if (self->_parityControlKind)
  {
    v8 = [v3 appendString:?];
  }

  if (self->_parityControlType)
  {
    v9 = [v3 appendString:?];
  }

  v10 = [v3 hash];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
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