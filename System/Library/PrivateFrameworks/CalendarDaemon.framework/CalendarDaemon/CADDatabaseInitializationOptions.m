@interface CADDatabaseInitializationOptions
- (BOOL)isEqualToOptions:(id)a3;
- (CADDatabaseInitializationOptions)init;
- (CADDatabaseInitializationOptions)initWithCoder:(id)a3;
- (id)description;
- (id)validOptionsForConnection:(id)a3;
- (void)encodeWithCoder:(id)a3;
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
    v3 = [(CADDatabaseInitializationOptions *)self databaseDirectory];
    v4 = [v3 relativeString];
    v5 = [v4 isEqual:@":memory:"];

    if (v5)
    {

      [(CADDatabaseInitializationOptions *)self setDatabaseDirectory:0];
    }
  }
}

- (BOOL)isEqualToOptions:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_databaseInitOptions == *(v4 + 3) && self->_enablePropertyModificationLogging == *(v4 + 8) && self->_unitTesting == *(v4 + 9) && self->_allowDelegateSources == *(v4 + 10) && self->_allowIntegrations == *(v4 + 11) && self->_management == *(v4 + 4) && ((managementBundleIdentifier = self->_managementBundleIdentifier, !(managementBundleIdentifier | v5[4])) || [(NSString *)managementBundleIdentifier isEqual:?]) && ((changeTrackingClientId = self->_changeTrackingClientId, changeTrackingClientId == v5[3]) || [(CADChangeTrackingClientId *)changeTrackingClientId isEqualToChangeTrackingClientId:?]) && ((databaseDirectory = self->_databaseDirectory, databaseDirectory == v5[5]) || [(NSURL *)databaseDirectory isEqual:?]) && ((calendarDataContainerProvider = self->_calendarDataContainerProvider, !(calendarDataContainerProvider | v5[6])) || [(CalCalendarDataContainerProvider *)calendarDataContainerProvider isEqual:?]) && ((allowedSourceIdentifiers = self->_allowedSourceIdentifiers, !(allowedSourceIdentifiers | v5[7])) || [(NSArray *)allowedSourceIdentifiers isEqual:?]) && ((privacyClientIdentity = self->_privacyClientIdentity, !(privacyClientIdentity | v5[8])) || [(OS_tcc_identity *)privacyClientIdentity isEqual:?]) && ((mockPermissions = self->_mockPermissions, !(mockPermissions | v5[9])) || [(CADMockPermissionValidator *)mockPermissions isEqual:?]))
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

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  [v12 encodeInt:self->_databaseInitOptions forKey:@"opts"];
  v4 = [(CADDatabaseInitializationOptions *)self changeTrackingClientId];
  [v12 encodeObject:v4 forKey:@"changeTrackingClientIdKey"];

  [v12 encodeBool:self->_enablePropertyModificationLogging forKey:@"log"];
  v5 = [(CADDatabaseInitializationOptions *)self databaseDirectory];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCAC90]);
    v7 = [(CADDatabaseInitializationOptions *)self databaseDirectory];
    v5 = [v6 initWithURL:v7 readonly:0];
  }

  [v12 encodeObject:v5 forKey:@"directory"];
  [v12 encodeObject:self->_calendarDataContainerProvider forKey:@"containerProvider"];
  [v12 encodeBool:self->_unitTesting forKey:@"test"];
  [v12 encodeBool:self->_allowDelegateSources forKey:@"dels"];
  [v12 encodeBool:self->_allowIntegrations forKey:@"allowIntegrations"];
  [v12 encodeInt:self->_management forKey:@"mgmt"];
  [v12 encodeObject:self->_managementBundleIdentifier forKey:@"managementBundleIDKey"];
  [v12 encodeObject:self->_allowedSourceIdentifiers forKey:@"allowedSourceIdentifiers"];
  [v12 encodeObject:self->_mockPermissions forKey:@"mockPermissions"];
  remoteClientIdentity = self->_remoteClientIdentity;
  if (remoteClientIdentity)
  {
    [v12 encodeObject:remoteClientIdentity forKey:@"remoteClientIdentity"];
  }

  if (self->_privacyClientIdentity)
  {
    v9 = tcc_identity_copy_external_representation();
    if (v9)
    {
      v10 = v9;
      Data = CFPropertyListCreateData(0, v9, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      [v12 encodeObject:Data forKey:@"PrivacyClientIdentity"];
      CFRelease(v10);
    }
  }
}

- (CADDatabaseInitializationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CADDatabaseInitializationOptions;
  v5 = [(CADDatabaseInitializationOptions *)&v27 init];
  if (v5)
  {
    v5->_databaseInitOptions = [v4 decodeIntForKey:@"opts"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changeTrackingClientIdKey"];
    changeTrackingClientId = v5->_changeTrackingClientId;
    v5->_changeTrackingClientId = v6;

    v5->_enablePropertyModificationLogging = [v4 decodeBoolForKey:@"log"];
    v5->_unitTesting = [v4 decodeBoolForKey:@"test"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"directory"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerProvider"];
    calendarDataContainerProvider = v5->_calendarDataContainerProvider;
    v5->_calendarDataContainerProvider = v9;

    v11 = [v8 url];
    databaseDirectory = v5->_databaseDirectory;
    v5->_databaseDirectory = v11;

    v5->_allowDelegateSources = [v4 decodeBoolForKey:@"dels"];
    v5->_allowIntegrations = [v4 decodeBoolForKey:@"allowIntegrations"];
    v5->_management = [v4 decodeIntForKey:@"mgmt"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managementBundleIDKey"];
    managementBundleIdentifier = v5->_managementBundleIdentifier;
    v5->_managementBundleIdentifier = v13;

    v15 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"allowedSourceIdentifiers"];
    allowedSourceIdentifiers = v5->_allowedSourceIdentifiers;
    v5->_allowedSourceIdentifiers = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mockPermissions"];
    mockPermissions = v5->_mockPermissions;
    v5->_mockPermissions = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteClientIdentity"];
    remoteClientIdentity = v5->_remoteClientIdentity;
    v5->_remoteClientIdentity = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyClientIdentity"];
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

- (id)validOptionsForConnection:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CADDatabaseInitializationOptions);
  v6 = [v4 permissionValidator];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [CADDefaultPermissionValidator alloc];
    v8 = [v4 identity];
    v9 = [v4 tccPermissionChecker];
    v10 = [(CADDefaultPermissionValidator *)v7 initWithClientIdentity:v8 tccPermissionChecker:v9];

    v6 = v10;
  }

  v11 = [v6 testingAccessLevelGranted];
  if (v11 && self->_mockPermissions)
  {
    v12 = [[CADCombinedPermissionValidator alloc] initWithPermissionValidator:v6 andValidator:self->_mockPermissions];

    [(CADDatabaseInitializationOptions *)v5 setMockPermissions:self->_mockPermissions];
    v6 = v12;
  }

  [(CADDatabaseInitializationOptions *)v5 setAllowDelegateSources:self->_allowDelegateSources];
  [(CADDatabaseInitializationOptions *)v5 setChangeTrackingClientId:self->_changeTrackingClientId];
  if ([v6 allowsIntegrations])
  {
    [(CADDatabaseInitializationOptions *)v5 setAllowIntegrations:self->_allowIntegrations];
  }

  if ([v6 eventAccessLevel] || (v11 | objc_msgSend(v6, "hasReminderAccess")) == 1)
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
  if (v11)
  {
    [(CADDatabaseInitializationOptions *)v5 setUnitTesting:self->_unitTesting];
    [(CADDatabaseInitializationOptions *)v5 setCalendarDataContainerProvider:self->_calendarDataContainerProvider];
  }

  else if (![v6 allowsCustomDatabasePath])
  {
    goto LABEL_16;
  }

  [(CADDatabaseInitializationOptions *)v5 setDatabaseDirectory:self->_databaseDirectory];
LABEL_16:
  v14 = [(CADDatabaseInitializationOptions *)self changeTrackingClientId];
  if ([(CADChangeTrackingClientId *)v14 hasCustomClientId])
  {
    v15 = [v6 hasChangeIdTrackingOverrideEntitlement];

    if (v15)
    {
      goto LABEL_20;
    }

    v14 = objc_alloc_init(CADChangeTrackingClientId);
    [(CADDatabaseInitializationOptions *)v5 setChangeTrackingClientId:v14];
  }

LABEL_20:
  if ([v6 isRemoteUIExtension])
  {
    [(CADDatabaseInitializationOptions *)v5 setRemoteClientIdentity:self->_remoteClientIdentity];
  }

  if ([v6 hasManagedConfigurationBundleIDOverrideEntitlement])
  {
    [(CADDatabaseInitializationOptions *)v5 setManagementBundleIdentifier:self->_managementBundleIdentifier];
  }

  if (_os_feature_enabled_impl() && self->_privacyClientIdentity)
  {
    v16 = [v4 identity];
    v17 = v16;
    if (v16)
    {
      [v16 auditToken];
    }

    privacyClientIdentity = self->_privacyClientIdentity;
    v19 = PAAuthenticatedClientIdentity();
    [(CADDatabaseInitializationOptions *)v5 setPrivacyClientIdentity:v19];
  }

  return v5;
}

@end