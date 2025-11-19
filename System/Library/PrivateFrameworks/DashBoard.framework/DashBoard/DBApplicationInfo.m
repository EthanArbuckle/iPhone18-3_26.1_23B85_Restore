@interface DBApplicationInfo
- (BOOL)isEqual:(id)a3;
- (id)displayName;
- (unint64_t)hash;
- (void)_loadFromRecord:(id)a3;
@end

@implementation DBApplicationInfo

- (id)displayName
{
  carDisplayName = self->_carDisplayName;
  if (carDisplayName)
  {
    v3 = carDisplayName;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DBApplicationInfo;
    v3 = [(DBApplicationInfo *)&v5 displayName];
  }

  return v3;
}

- (void)_loadFromRecord:(id)a3
{
  v4 = a3;
  if (_loadFromRecord__onceToken != -1)
  {
    [DBApplicationInfo _loadFromRecord:];
  }

  v32.receiver = self;
  v32.super_class = DBApplicationInfo;
  [(DBApplicationInfo *)&v32 _loadFromRecord:v4];
  v5 = [(DBApplicationInfo *)self bundleIdentifier];
  v6 = [v4 infoDictionary];
  v7 = [v6 objectsForKeys:_loadFromRecord____infoKeys];

  v8 = [v4 entitlements];
  v9 = [v8 objectsForKeys:_loadFromRecord____entitlementKeys];

  v10 = [MEMORY[0x277CF8A10] declarationForAppRecord:v4];
  carPlayDeclaration = self->_carPlayDeclaration;
  self->_carPlayDeclaration = v10;

  if ([(DBApplicationInfo *)self type]> 1)
  {
    self->_requiresBackgroundURLDelivery = 0;
  }

  else
  {
    v12 = [v9 objectForKey:@"com.apple.springboard.deliveropenurlusingworkspace" ofClass:objc_opt_class()];
    if ([v12 BOOLValue])
    {
      self->_requiresBackgroundURLDelivery = 1;
    }

    else
    {
      v13 = [v7 objectForKey:@"SBLaunchSuspendedAlways" ofClass:objc_opt_class()];
      self->_requiresBackgroundURLDelivery = [v13 BOOLValue];
    }
  }

  v14 = [v9 objectForKey:@"CARAppHidden" ofClass:objc_opt_class()];
  self->_hidden = [v14 BOOLValue];

  v15 = [v9 objectForKey:@"CARAppInternal" ofClass:objc_opt_class()];
  self->_carInternal = [v15 BOOLValue];

  v16 = [v9 objectForKey:@"CARAppPrototype" ofClass:objc_opt_class()];
  self->_carPrototype = [v16 BOOLValue];

  v17 = [v9 objectForKey:@"CARAppFullScreen" ofClass:objc_opt_class()];
  self->_presentsFullScreen = [v17 BOOLValue];

  v18 = [v9 objectForKey:@"CARAppCertification" ofClass:objc_opt_class()];
  self->_certificationApp = [v18 BOOLValue];

  v19 = [v7 objectForKey:@"UIUserInterfaceStyle" ofClass:objc_opt_class()];
  self->_alwaysDarkInterface = BSEqualStrings();

  v20 = objc_opt_class();
  v21 = [v9 objectForKey:@"com.apple.private.RequiredVehicleAccessories" ofClass:v20 valuesOfClass:objc_opt_class()];
  requiredVehicleAccessories = self->_requiredVehicleAccessories;
  self->_requiredVehicleAccessories = v21;

  v23 = [v4 db_localizedCarName];
  carDisplayName = self->_carDisplayName;
  self->_carDisplayName = v23;

  v25 = [v4 applicationState];
  self->_valid = [v25 isValid];

  v26 = [v4 applicationState];
  self->_installed = [v26 isInstalled];

  v27 = [v7 objectForKey:@"UIApplicationSceneManifest" ofClass:objc_opt_class()];
  v28 = [v27 objectForKey:@"CPSupportsDashboardNavigationScene"];
  if ([v28 BOOLValue] & 1) != 0 || (objc_msgSend(v4, "supportsCarPlayDashboardScene"))
  {
    v29 = 1;
  }

  else
  {
    v29 = [v5 isEqualToString:@"com.apple.Maps"];
  }

  self->_supportsDashboardNavigation = v29;

  v30 = [v27 objectForKey:@"CPSupportsInstrumentClusterNavigationScene"];
  if ([v30 BOOLValue] & 1) != 0 || (objc_msgSend(v4, "supportsCarPlayInstrumentClusterScene"))
  {
    v31 = 1;
  }

  else
  {
    v31 = [v5 isEqualToString:@"com.apple.Maps"];
  }

  self->_supportsInstrumentClusterNavigation = v31;
}

void __37__DBApplicationInfo__loadFromRecord___block_invoke()
{
  v8[7] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  [v0 addObject:@"SBLaunchSuspendedAlways"];
  [v0 addObject:@"UIApplicationSceneManifest"];
  [v0 addObject:@"UIUserInterfaceStyle"];
  v1 = [MEMORY[0x277CF8A10] requiredInfoKeys];
  [v0 unionSet:v1];

  v2 = [v0 copy];
  v3 = _loadFromRecord____infoKeys;
  _loadFromRecord____infoKeys = v2;

  v4 = objc_opt_new();
  v8[0] = @"CARAppFullScreen";
  v8[1] = @"CARAppCertification";
  v8[2] = @"CARAppInternal";
  v8[3] = @"CARAppHidden";
  v8[4] = @"CARAppPrototype";
  v8[5] = @"com.apple.private.RequiredVehicleAccessories";
  v8[6] = @"com.apple.springboard.deliveropenurlusingworkspace";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:7];
  [v4 addObjectsFromArray:v5];

  v6 = [MEMORY[0x277CF8A10] requiredEntitlementKeys];
  [v4 unionSet:v6];

  v7 = _loadFromRecord____entitlementKeys;
  _loadFromRecord____entitlementKeys = v4;
}

- (unint64_t)hash
{
  v2 = [(DBApplicationInfo *)self bundleIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(DBApplicationInfo *)self bundleIdentifier];
    v6 = [v4 bundleIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end