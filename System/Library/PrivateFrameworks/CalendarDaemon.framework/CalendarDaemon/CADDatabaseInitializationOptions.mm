@interface CADDatabaseInitializationOptions
- (BOOL)isEqualToOptions:(id)options;
- (CADDatabaseInitializationOptions)init;
- (CADDatabaseInitializationOptions)initWithCoder:(id)coder;
- (id)description;
- (id)validOptionsForConnection:(id)connection;
- (void)encodeWithCoder:(id)coder;
- (void)purifyOptions;
@end

@implementation CADDatabaseInitializationOptions

- (CADDatabaseInitializationOptions)init
{
  v7.receiver = self;
  v7.super_class = CADDatabaseInitializationOptions;
  v2 = [(CADDatabaseInitializationOptions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_enablePropertyModificationLogging = 1;
    v2->_allowDelegateSources = 1;
    v4 = objc_opt_new();
    changeTrackingClientId = v3->_changeTrackingClientId;
    v3->_changeTrackingClientId = v4;
  }

  return v3;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v17.receiver = self;
  v17.super_class = CADDatabaseInitializationOptions;
  v15 = [(CADDatabaseInitializationOptions *)&v17 description];
  databaseInitOptions = self->_databaseInitOptions;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_enablePropertyModificationLogging];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_unitTesting];
  changeTrackingClientId = self->_changeTrackingClientId;
  managementBundleIdentifier = self->_managementBundleIdentifier;
  databaseDirectory = self->_databaseDirectory;
  calendarDataContainerProvider = self->_calendarDataContainerProvider;
  management = self->_management;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowDelegateSources];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowIntegrations];
  v12 = [v16 stringWithFormat:@"%@: {databaseInitOptions = %i, enablePropertyModificationLogging = %@, unitTesting = %@, management = %i, managementBundleID = %@, changeTrackingID = %@, databaseDirectory = %@, containerProvider = %@, allowDelegateSources: %@, allowIntegrations: %@, allowedSourceIdentifiers: %@, privacyClientIdentity: %@, mockPermissions: %@, remoteClientIdentity: %@}", v15, databaseInitOptions, v3, v4, management, managementBundleIdentifier, changeTrackingClientId, databaseDirectory, calendarDataContainerProvider, v10, v11, self->_allowedSourceIdentifiers, self->_privacyClientIdentity, self->_mockPermissions, self->_remoteClientIdentity];

  return v12;
}

- (void)purifyOptions
{
  if (([(CADDatabaseInitializationOptions *)self databaseInitOptions]& 0x20) != 0)
  {
    databaseDirectory = [(CADDatabaseInitializationOptions *)self databaseDirectory];
    relativeString = [databaseDirectory relativeString];
    v5 = [relativeString isEqual:@":memory:"];

    if (v5)
    {

      [(CADDatabaseInitializationOptions *)self setDatabaseDirectory:0];
    }
  }
}

- (BOOL)isEqualToOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (optionsCopy && self->_databaseInitOptions == *(optionsCopy + 3) && self->_enablePropertyModificationLogging == *(optionsCopy + 8) && self->_unitTesting == *(optionsCopy + 9) && self->_allowDelegateSources == *(optionsCopy + 10) && self->_allowIntegrations == *(optionsCopy + 11) && self->_management == *(optionsCopy + 4) && ((managementBundleIdentifier = self->_managementBundleIdentifier, !(managementBundleIdentifier | v5[4])) || [(NSString *)managementBundleIdentifier isEqual:?]) && ((changeTrackingClientId = self->_changeTrackingClientId, changeTrackingClientId == v5[3]) || [(CADChangeTrackingClientId *)changeTrackingClientId isEqualToChangeTrackingClientId:?]) && ((databaseDirectory = self->_databaseDirectory, databaseDirectory == v5[5]) || [(NSURL *)databaseDirectory isEqual:?]) && ((calendarDataContainerProvider = self->_calendarDataContainerProvider, !(calendarDataContainerProvider | v5[6])) || [(CalCalendarDataContainerProvider *)calendarDataContainerProvider isEqual:?]) && ((allowedSourceIdentifiers = self->_allowedSourceIdentifiers, !(allowedSourceIdentifiers | v5[7])) || [(NSArray *)allowedSourceIdentifiers isEqual:?]) && ((privacyClientIdentity = self->_privacyClientIdentity, !(privacyClientIdentity | v5[8])) || [(OS_tcc_identity *)privacyClientIdentity isEqual:?]) && ((mockPermissions = self->_mockPermissions, !(mockPermissions | v5[9])) || [(CADMockPermissionValidator *)mockPermissions isEqual:?]))
  {
    remoteClientIdentity = self->_remoteClientIdentity;
    if (remoteClientIdentity | v5[10])
    {
      v14 = [remoteClientIdentity isEqual:?];
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->_databaseInitOptions forKey:@"opts"];
  changeTrackingClientId = [(CADDatabaseInitializationOptions *)self changeTrackingClientId];
  [coderCopy encodeObject:changeTrackingClientId forKey:@"changeTrackingClientIdKey"];

  [coderCopy encodeBool:self->_enablePropertyModificationLogging forKey:@"log"];
  databaseDirectory = [(CADDatabaseInitializationOptions *)self databaseDirectory];

  if (databaseDirectory)
  {
    v6 = objc_alloc(MEMORY[0x277CCAC90]);
    databaseDirectory2 = [(CADDatabaseInitializationOptions *)self databaseDirectory];
    databaseDirectory = [v6 initWithURL:databaseDirectory2 readonly:0];
  }

  [coderCopy encodeObject:databaseDirectory forKey:@"directory"];
  [coderCopy encodeObject:self->_calendarDataContainerProvider forKey:@"containerProvider"];
  [coderCopy encodeBool:self->_unitTesting forKey:@"test"];
  [coderCopy encodeBool:self->_allowDelegateSources forKey:@"dels"];
  [coderCopy encodeBool:self->_allowIntegrations forKey:@"allowIntegrations"];
  [coderCopy encodeInt:self->_management forKey:@"mgmt"];
  [coderCopy encodeObject:self->_managementBundleIdentifier forKey:@"managementBundleIDKey"];
  [coderCopy encodeObject:self->_allowedSourceIdentifiers forKey:@"allowedSourceIdentifiers"];
  [coderCopy encodeObject:self->_mockPermissions forKey:@"mockPermissions"];
  remoteClientIdentity = self->_remoteClientIdentity;
  if (remoteClientIdentity)
  {
    [coderCopy encodeObject:remoteClientIdentity forKey:@"remoteClientIdentity"];
  }

  if (self->_privacyClientIdentity)
  {
    v9 = tcc_identity_copy_external_representation();
    if (v9)
    {
      v10 = v9;
      Data = CFPropertyListCreateData(0, v9, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      [coderCopy encodeObject:Data forKey:@"PrivacyClientIdentity"];
      CFRelease(v10);
    }
  }
}

- (CADDatabaseInitializationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = CADDatabaseInitializationOptions;
  v5 = [(CADDatabaseInitializationOptions *)&v27 init];
  if (v5)
  {
    v5->_databaseInitOptions = [coderCopy decodeIntForKey:@"opts"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changeTrackingClientIdKey"];
    changeTrackingClientId = v5->_changeTrackingClientId;
    v5->_changeTrackingClientId = v6;

    v5->_enablePropertyModificationLogging = [coderCopy decodeBoolForKey:@"log"];
    v5->_unitTesting = [coderCopy decodeBoolForKey:@"test"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"directory"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerProvider"];
    calendarDataContainerProvider = v5->_calendarDataContainerProvider;
    v5->_calendarDataContainerProvider = v9;

    v11 = [v8 url];
    databaseDirectory = v5->_databaseDirectory;
    v5->_databaseDirectory = v11;

    v5->_allowDelegateSources = [coderCopy decodeBoolForKey:@"dels"];
    v5->_allowIntegrations = [coderCopy decodeBoolForKey:@"allowIntegrations"];
    v5->_management = [coderCopy decodeIntForKey:@"mgmt"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managementBundleIDKey"];
    managementBundleIdentifier = v5->_managementBundleIdentifier;
    v5->_managementBundleIdentifier = v13;

    v15 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"allowedSourceIdentifiers"];
    allowedSourceIdentifiers = v5->_allowedSourceIdentifiers;
    v5->_allowedSourceIdentifiers = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mockPermissions"];
    mockPermissions = v5->_mockPermissions;
    v5->_mockPermissions = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteClientIdentity"];
    remoteClientIdentity = v5->_remoteClientIdentity;
    v5->_remoteClientIdentity = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyClientIdentity"];
    if (v21)
    {
      v22 = CFPropertyListCreateWithData(0, v21, 0, 0, 0);
      if (v22)
      {
        v23 = v22;
        v24 = tcc_identity_create_from_external_representation();
        privacyClientIdentity = v5->_privacyClientIdentity;
        v5->_privacyClientIdentity = v24;

        CFRelease(v23);
      }
    }
  }

  return v5;
}

- (id)validOptionsForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = objc_alloc_init(CADDatabaseInitializationOptions);
  permissionValidator = [connectionCopy permissionValidator];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [CADDefaultPermissionValidator alloc];
    identity = [connectionCopy identity];
    tccPermissionChecker = [connectionCopy tccPermissionChecker];
    v10 = [(CADDefaultPermissionValidator *)v7 initWithClientIdentity:identity tccPermissionChecker:tccPermissionChecker];

    permissionValidator = v10;
  }

  testingAccessLevelGranted = [permissionValidator testingAccessLevelGranted];
  if (testingAccessLevelGranted && self->_mockPermissions)
  {
    v12 = [[CADCombinedPermissionValidator alloc] initWithPermissionValidator:permissionValidator andValidator:self->_mockPermissions];

    [(CADDatabaseInitializationOptions *)v5 setMockPermissions:self->_mockPermissions];
    permissionValidator = v12;
  }

  [(CADDatabaseInitializationOptions *)v5 setAllowDelegateSources:self->_allowDelegateSources];
  [(CADDatabaseInitializationOptions *)v5 setChangeTrackingClientId:self->_changeTrackingClientId];
  if ([permissionValidator allowsIntegrations])
  {
    [(CADDatabaseInitializationOptions *)v5 setAllowIntegrations:self->_allowIntegrations];
  }

  if ([permissionValidator eventAccessLevel] || (testingAccessLevelGranted | objc_msgSend(permissionValidator, "hasReminderAccess")) == 1)
  {
    [(CADDatabaseInitializationOptions *)v5 setDatabaseInitOptions:self->_databaseInitOptions];
    [(CADDatabaseInitializationOptions *)v5 setEnablePropertyModificationLogging:self->_enablePropertyModificationLogging];
    [(CADDatabaseInitializationOptions *)v5 setManagement:self->_management];
    p_allowedSourceIdentifiers = &self->_allowedSourceIdentifiers;
LABEL_11:
    [(CADDatabaseInitializationOptions *)v5 setAllowedSourceIdentifiers:*p_allowedSourceIdentifiers];
    goto LABEL_12;
  }

  p_allowedSourceIdentifiers = &self->_allowedSourceIdentifiers;
  if (![(NSArray *)self->_allowedSourceIdentifiers count])
  {
    goto LABEL_11;
  }

LABEL_12:
  if (testingAccessLevelGranted)
  {
    [(CADDatabaseInitializationOptions *)v5 setUnitTesting:self->_unitTesting];
    [(CADDatabaseInitializationOptions *)v5 setCalendarDataContainerProvider:self->_calendarDataContainerProvider];
  }

  else if (![permissionValidator allowsCustomDatabasePath])
  {
    goto LABEL_16;
  }

  [(CADDatabaseInitializationOptions *)v5 setDatabaseDirectory:self->_databaseDirectory];
LABEL_16:
  changeTrackingClientId = [(CADDatabaseInitializationOptions *)self changeTrackingClientId];
  if ([(CADChangeTrackingClientId *)changeTrackingClientId hasCustomClientId])
  {
    hasChangeIdTrackingOverrideEntitlement = [permissionValidator hasChangeIdTrackingOverrideEntitlement];

    if (hasChangeIdTrackingOverrideEntitlement)
    {
      goto LABEL_20;
    }

    changeTrackingClientId = objc_alloc_init(CADChangeTrackingClientId);
    [(CADDatabaseInitializationOptions *)v5 setChangeTrackingClientId:changeTrackingClientId];
  }

LABEL_20:
  if ([permissionValidator isRemoteUIExtension])
  {
    [(CADDatabaseInitializationOptions *)v5 setRemoteClientIdentity:self->_remoteClientIdentity];
  }

  if ([permissionValidator hasManagedConfigurationBundleIDOverrideEntitlement])
  {
    [(CADDatabaseInitializationOptions *)v5 setManagementBundleIdentifier:self->_managementBundleIdentifier];
  }

  if (_os_feature_enabled_impl() && self->_privacyClientIdentity)
  {
    identity2 = [connectionCopy identity];
    v17 = identity2;
    if (identity2)
    {
      [identity2 auditToken];
    }

    privacyClientIdentity = self->_privacyClientIdentity;
    v19 = PAAuthenticatedClientIdentity();
    [(CADDatabaseInitializationOptions *)v5 setPrivacyClientIdentity:v19];
  }

  return v5;
}

@end