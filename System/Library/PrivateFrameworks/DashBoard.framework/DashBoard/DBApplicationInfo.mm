@interface DBApplicationInfo
- (BOOL)isEqual:(id)equal;
- (id)displayName;
- (unint64_t)hash;
- (void)_loadFromRecord:(id)record;
@end

@implementation DBApplicationInfo

- (id)displayName
{
  carDisplayName = self->_carDisplayName;
  if (carDisplayName)
  {
    displayName = carDisplayName;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DBApplicationInfo;
    displayName = [(DBApplicationInfo *)&v5 displayName];
  }

  return displayName;
}

- (void)_loadFromRecord:(id)record
{
  recordCopy = record;
  if (_loadFromRecord__onceToken != -1)
  {
    [DBApplicationInfo _loadFromRecord:];
  }

  v32.receiver = self;
  v32.super_class = DBApplicationInfo;
  [(DBApplicationInfo *)&v32 _loadFromRecord:recordCopy];
  bundleIdentifier = [(DBApplicationInfo *)self bundleIdentifier];
  infoDictionary = [recordCopy infoDictionary];
  v7 = [infoDictionary objectsForKeys:_loadFromRecord____infoKeys];

  entitlements = [recordCopy entitlements];
  v9 = [entitlements objectsForKeys:_loadFromRecord____entitlementKeys];

  v10 = [MEMORY[0x277CF8A10] declarationForAppRecord:recordCopy];
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

  db_localizedCarName = [recordCopy db_localizedCarName];
  carDisplayName = self->_carDisplayName;
  self->_carDisplayName = db_localizedCarName;

  applicationState = [recordCopy applicationState];
  self->_valid = [applicationState isValid];

  applicationState2 = [recordCopy applicationState];
  self->_installed = [applicationState2 isInstalled];

  v27 = [v7 objectForKey:@"UIApplicationSceneManifest" ofClass:objc_opt_class()];
  v28 = [v27 objectForKey:@"CPSupportsDashboardNavigationScene"];
  if ([v28 BOOLValue] & 1) != 0 || (objc_msgSend(recordCopy, "supportsCarPlayDashboardScene"))
  {
    v29 = 1;
  }

  else
  {
    v29 = [bundleIdentifier isEqualToString:@"com.apple.Maps"];
  }

  self->_supportsDashboardNavigation = v29;

  v30 = [v27 objectForKey:@"CPSupportsInstrumentClusterNavigationScene"];
  if ([v30 BOOLValue] & 1) != 0 || (objc_msgSend(recordCopy, "supportsCarPlayInstrumentClusterScene"))
  {
    v31 = 1;
  }

  else
  {
    v31 = [bundleIdentifier isEqualToString:@"com.apple.Maps"];
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
  bundleIdentifier = [(DBApplicationInfo *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bundleIdentifier = [(DBApplicationInfo *)self bundleIdentifier];
    bundleIdentifier2 = [equalCopy bundleIdentifier];
    v7 = [bundleIdentifier isEqualToString:bundleIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end