@interface CRSUIClusterThemePalette
- (CRSUIClusterThemePalette)initWithBSXPCCoder:(id)a3;
- (CRSUIClusterThemePalette)initWithIdentifier:(id)a3 displayName:(id)a4 colorScheme:(id)a5 sortIndex:(int64_t)a6 accentColor:(id)a7 isDefault:(BOOL)a8 isProminent:(BOOL)a9;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CRSUIClusterThemePalette

- (CRSUIClusterThemePalette)initWithIdentifier:(id)a3 displayName:(id)a4 colorScheme:(id)a5 sortIndex:(int64_t)a6 accentColor:(id)a7 isDefault:(BOOL)a8 isProminent:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v25.receiver = self;
  v25.super_class = CRSUIClusterThemePalette;
  v19 = [(CRSUIClusterThemePalette *)&v25 init];
  if (v19)
  {
    v20 = [v15 copy];
    identifier = v19->_identifier;
    v19->_identifier = v20;

    v22 = [v16 copy];
    displayName = v19->_displayName;
    v19->_displayName = v22;

    objc_storeStrong(&v19->_colorScheme, a5);
    v19->_sortIndex = a6;
    objc_storeStrong(&v19->_themeAccentColor, a7);
    v19->_isDefault = a8;
    v19->_prominent = a9;
  }

  return v19;
}

- (CRSUIClusterThemePalette)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"identifier"];
  v6 = [v4 decodeStringForKey:@"displayName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sortIndex"];
  v8 = [v7 unsignedIntegerValue];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accentColor"];
  v11 = [v4 decodeBoolForKey:@"isDefault"];
  v12 = [v4 decodeBoolForKey:@"isProminent"];

  v13 = 0;
  if (v5 && v6 && v9)
  {
    LOBYTE(v15) = v12;
    self = [(CRSUIClusterThemePalette *)self initWithIdentifier:v5 displayName:v6 colorScheme:v9 sortIndex:v8 accentColor:v10 isDefault:v11 isProminent:v15];
    v13 = self;
  }

  return v13;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v8 = a3;
  v4 = [(CRSUIClusterThemePalette *)self identifier];
  [v8 encodeObject:v4 forKey:@"identifier"];

  v5 = [(CRSUIClusterThemePalette *)self displayName];
  [v8 encodeObject:v5 forKey:@"displayName"];

  v6 = [(CRSUIClusterThemePalette *)self colorScheme];
  [v8 encodeObject:v6 forKey:@"colorScheme"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRSUIClusterThemePalette sortIndex](self, "sortIndex")}];
  [v8 encodeObject:v7 forKey:@"sortIndex"];

  [v8 encodeObject:self->_themeAccentColor forKey:@"accentColor"];
  [v8 encodeBool:-[CRSUIClusterThemePalette isDefault](self forKey:{"isDefault"), @"isDefault"}];
  [v8 encodeBool:-[CRSUIClusterThemePalette isProminent](self forKey:{"isProminent"), @"isProminent"}];
}

@end