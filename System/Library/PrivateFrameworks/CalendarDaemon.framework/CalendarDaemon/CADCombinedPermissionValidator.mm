@interface CADCombinedPermissionValidator
- (BOOL)allowsCustomDatabasePath;
- (BOOL)allowsIntegrations;
- (BOOL)canAccessProcedureAlarms;
- (BOOL)canMakeSpotlightChanges;
- (BOOL)canModifyBirthdayCalendar;
- (BOOL)canModifyCalendarDatabase;
- (BOOL)canModifySuggestedEventCalendar;
- (BOOL)canRequestDiagnostics;
- (BOOL)hasCalendarTCCBypassEntitlement;
- (BOOL)hasCalendarToolEntitlement;
- (BOOL)hasChangeIdTrackingOverrideEntitlement;
- (BOOL)hasManagedConfigurationBundleIDOverrideEntitlement;
- (BOOL)hasNotificationCountEntitlement;
- (BOOL)hasSyncClientEntitlement;
- (BOOL)internalAccessLevelGranted;
- (BOOL)isAutomatorApp;
- (BOOL)isCalendarDaemon;
- (BOOL)isCalendarWidgetExtension;
- (BOOL)isFirstPartyCalendarApp;
- (BOOL)isRemoteUIExtension;
- (BOOL)isShortcutsApp;
- (BOOL)shouldTrustClientEnforcedManagedConfigurationAccess;
- (BOOL)storageManagementAccessGranted;
- (BOOL)testingAccessLevelGranted;
- (CADCombinedPermissionValidator)initWithPermissionValidator:(id)validator andValidator:(id)andValidator;
- (int)eventAccessLevel;
- (int64_t)eventAuthorization;
- (int64_t)remindersAuthorization;
@end

@implementation CADCombinedPermissionValidator

- (CADCombinedPermissionValidator)initWithPermissionValidator:(id)validator andValidator:(id)andValidator
{
  validatorCopy = validator;
  andValidatorCopy = andValidator;
  v12.receiver = self;
  v12.super_class = CADCombinedPermissionValidator;
  v9 = [(CADCombinedPermissionValidator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_validator1, validator);
    objc_storeStrong(&v10->_validator2, andValidator);
  }

  return v10;
}

- (int64_t)eventAuthorization
{
  eventAuthorization = [(CADPermissionValidator *)self->_validator1 eventAuthorization];
  eventAuthorization2 = [(CADPermissionValidator *)self->_validator2 eventAuthorization];

  return _minimumAuthStatus(eventAuthorization, eventAuthorization2);
}

- (int64_t)remindersAuthorization
{
  remindersAuthorization = [(CADPermissionValidator *)self->_validator1 remindersAuthorization];
  remindersAuthorization2 = [(CADPermissionValidator *)self->_validator2 remindersAuthorization];

  return _minimumAuthStatus(remindersAuthorization, remindersAuthorization2);
}

- (int)eventAccessLevel
{
  eventAuthorization = [(CADCombinedPermissionValidator *)self eventAuthorization];

  return CADEventAccessTypeFromAuthStatus(eventAuthorization);
}

- (BOOL)isFirstPartyCalendarApp
{
  isFirstPartyCalendarApp = [(CADPermissionValidator *)self->_validator1 isFirstPartyCalendarApp];
  if (isFirstPartyCalendarApp)
  {
    validator2 = self->_validator2;

    LOBYTE(isFirstPartyCalendarApp) = [(CADPermissionValidator *)validator2 isFirstPartyCalendarApp];
  }

  return isFirstPartyCalendarApp;
}

- (BOOL)isCalendarDaemon
{
  isCalendarDaemon = [(CADPermissionValidator *)self->_validator1 isCalendarDaemon];
  if (isCalendarDaemon)
  {
    validator2 = self->_validator2;

    LOBYTE(isCalendarDaemon) = [(CADPermissionValidator *)validator2 isCalendarDaemon];
  }

  return isCalendarDaemon;
}

- (BOOL)isRemoteUIExtension
{
  isRemoteUIExtension = [(CADPermissionValidator *)self->_validator1 isRemoteUIExtension];
  if (isRemoteUIExtension)
  {
    validator2 = self->_validator2;

    LOBYTE(isRemoteUIExtension) = [(CADPermissionValidator *)validator2 isRemoteUIExtension];
  }

  return isRemoteUIExtension;
}

- (BOOL)isCalendarWidgetExtension
{
  isCalendarWidgetExtension = [(CADPermissionValidator *)self->_validator1 isCalendarWidgetExtension];
  if (isCalendarWidgetExtension)
  {
    validator2 = self->_validator2;

    LOBYTE(isCalendarWidgetExtension) = [(CADPermissionValidator *)validator2 isCalendarWidgetExtension];
  }

  return isCalendarWidgetExtension;
}

- (BOOL)isAutomatorApp
{
  isAutomatorApp = [(CADPermissionValidator *)self->_validator1 isAutomatorApp];
  if (isAutomatorApp)
  {
    validator2 = self->_validator2;

    LOBYTE(isAutomatorApp) = [(CADPermissionValidator *)validator2 isAutomatorApp];
  }

  return isAutomatorApp;
}

- (BOOL)isShortcutsApp
{
  isShortcutsApp = [(CADPermissionValidator *)self->_validator1 isShortcutsApp];
  if (isShortcutsApp)
  {
    validator2 = self->_validator2;

    LOBYTE(isShortcutsApp) = [(CADPermissionValidator *)validator2 isShortcutsApp];
  }

  return isShortcutsApp;
}

- (BOOL)canAccessProcedureAlarms
{
  canAccessProcedureAlarms = [(CADPermissionValidator *)self->_validator1 canAccessProcedureAlarms];
  if (canAccessProcedureAlarms)
  {
    validator2 = self->_validator2;

    LOBYTE(canAccessProcedureAlarms) = [(CADPermissionValidator *)validator2 canAccessProcedureAlarms];
  }

  return canAccessProcedureAlarms;
}

- (BOOL)canModifySuggestedEventCalendar
{
  canModifySuggestedEventCalendar = [(CADPermissionValidator *)self->_validator1 canModifySuggestedEventCalendar];
  if (canModifySuggestedEventCalendar)
  {
    validator2 = self->_validator2;

    LOBYTE(canModifySuggestedEventCalendar) = [(CADPermissionValidator *)validator2 canModifySuggestedEventCalendar];
  }

  return canModifySuggestedEventCalendar;
}

- (BOOL)canMakeSpotlightChanges
{
  canMakeSpotlightChanges = [(CADPermissionValidator *)self->_validator1 canMakeSpotlightChanges];
  if (canMakeSpotlightChanges)
  {
    validator2 = self->_validator2;

    LOBYTE(canMakeSpotlightChanges) = [(CADPermissionValidator *)validator2 canMakeSpotlightChanges];
  }

  return canMakeSpotlightChanges;
}

- (BOOL)canModifyBirthdayCalendar
{
  canModifyBirthdayCalendar = [(CADPermissionValidator *)self->_validator1 canModifyBirthdayCalendar];
  if (canModifyBirthdayCalendar)
  {
    validator2 = self->_validator2;

    LOBYTE(canModifyBirthdayCalendar) = [(CADPermissionValidator *)validator2 canModifyBirthdayCalendar];
  }

  return canModifyBirthdayCalendar;
}

- (BOOL)canRequestDiagnostics
{
  canRequestDiagnostics = [(CADPermissionValidator *)self->_validator1 canRequestDiagnostics];
  if (canRequestDiagnostics)
  {
    validator2 = self->_validator2;

    LOBYTE(canRequestDiagnostics) = [(CADPermissionValidator *)validator2 canRequestDiagnostics];
  }

  return canRequestDiagnostics;
}

- (BOOL)canModifyCalendarDatabase
{
  canModifyCalendarDatabase = [(CADPermissionValidator *)self->_validator1 canModifyCalendarDatabase];
  if (canModifyCalendarDatabase)
  {
    validator2 = self->_validator2;

    LOBYTE(canModifyCalendarDatabase) = [(CADPermissionValidator *)validator2 canModifyCalendarDatabase];
  }

  return canModifyCalendarDatabase;
}

- (BOOL)testingAccessLevelGranted
{
  testingAccessLevelGranted = [(CADPermissionValidator *)self->_validator1 testingAccessLevelGranted];
  if (testingAccessLevelGranted)
  {
    validator2 = self->_validator2;

    LOBYTE(testingAccessLevelGranted) = [(CADPermissionValidator *)validator2 testingAccessLevelGranted];
  }

  return testingAccessLevelGranted;
}

- (BOOL)internalAccessLevelGranted
{
  internalAccessLevelGranted = [(CADPermissionValidator *)self->_validator1 internalAccessLevelGranted];
  if (internalAccessLevelGranted)
  {
    validator2 = self->_validator2;

    LOBYTE(internalAccessLevelGranted) = [(CADPermissionValidator *)validator2 internalAccessLevelGranted];
  }

  return internalAccessLevelGranted;
}

- (BOOL)storageManagementAccessGranted
{
  storageManagementAccessGranted = [(CADPermissionValidator *)self->_validator1 storageManagementAccessGranted];
  if (storageManagementAccessGranted)
  {
    validator2 = self->_validator2;

    LOBYTE(storageManagementAccessGranted) = [(CADPermissionValidator *)validator2 storageManagementAccessGranted];
  }

  return storageManagementAccessGranted;
}

- (BOOL)hasSyncClientEntitlement
{
  hasSyncClientEntitlement = [(CADPermissionValidator *)self->_validator1 hasSyncClientEntitlement];
  if (hasSyncClientEntitlement)
  {
    validator2 = self->_validator2;

    LOBYTE(hasSyncClientEntitlement) = [(CADPermissionValidator *)validator2 hasSyncClientEntitlement];
  }

  return hasSyncClientEntitlement;
}

- (BOOL)hasCalendarToolEntitlement
{
  hasCalendarToolEntitlement = [(CADPermissionValidator *)self->_validator1 hasCalendarToolEntitlement];
  if (hasCalendarToolEntitlement)
  {
    validator2 = self->_validator2;

    LOBYTE(hasCalendarToolEntitlement) = [(CADPermissionValidator *)validator2 hasCalendarToolEntitlement];
  }

  return hasCalendarToolEntitlement;
}

- (BOOL)hasChangeIdTrackingOverrideEntitlement
{
  hasChangeIdTrackingOverrideEntitlement = [(CADPermissionValidator *)self->_validator1 hasChangeIdTrackingOverrideEntitlement];
  if (hasChangeIdTrackingOverrideEntitlement)
  {
    validator2 = self->_validator2;

    LOBYTE(hasChangeIdTrackingOverrideEntitlement) = [(CADPermissionValidator *)validator2 hasChangeIdTrackingOverrideEntitlement];
  }

  return hasChangeIdTrackingOverrideEntitlement;
}

- (BOOL)hasNotificationCountEntitlement
{
  hasNotificationCountEntitlement = [(CADPermissionValidator *)self->_validator1 hasNotificationCountEntitlement];
  if (hasNotificationCountEntitlement)
  {
    validator2 = self->_validator2;

    LOBYTE(hasNotificationCountEntitlement) = [(CADPermissionValidator *)validator2 hasNotificationCountEntitlement];
  }

  return hasNotificationCountEntitlement;
}

- (BOOL)hasManagedConfigurationBundleIDOverrideEntitlement
{
  hasManagedConfigurationBundleIDOverrideEntitlement = [(CADPermissionValidator *)self->_validator1 hasManagedConfigurationBundleIDOverrideEntitlement];
  if (hasManagedConfigurationBundleIDOverrideEntitlement)
  {
    validator2 = self->_validator2;

    LOBYTE(hasManagedConfigurationBundleIDOverrideEntitlement) = [(CADPermissionValidator *)validator2 hasManagedConfigurationBundleIDOverrideEntitlement];
  }

  return hasManagedConfigurationBundleIDOverrideEntitlement;
}

- (BOOL)shouldTrustClientEnforcedManagedConfigurationAccess
{
  shouldTrustClientEnforcedManagedConfigurationAccess = [(CADPermissionValidator *)self->_validator1 shouldTrustClientEnforcedManagedConfigurationAccess];
  if (shouldTrustClientEnforcedManagedConfigurationAccess)
  {
    validator2 = self->_validator2;

    LOBYTE(shouldTrustClientEnforcedManagedConfigurationAccess) = [(CADPermissionValidator *)validator2 shouldTrustClientEnforcedManagedConfigurationAccess];
  }

  return shouldTrustClientEnforcedManagedConfigurationAccess;
}

- (BOOL)allowsCustomDatabasePath
{
  allowsCustomDatabasePath = [(CADPermissionValidator *)self->_validator1 allowsCustomDatabasePath];
  if (allowsCustomDatabasePath)
  {
    validator2 = self->_validator2;

    LOBYTE(allowsCustomDatabasePath) = [(CADPermissionValidator *)validator2 allowsCustomDatabasePath];
  }

  return allowsCustomDatabasePath;
}

- (BOOL)allowsIntegrations
{
  allowsIntegrations = [(CADPermissionValidator *)self->_validator1 allowsIntegrations];
  if (allowsIntegrations)
  {
    validator2 = self->_validator2;

    LOBYTE(allowsIntegrations) = [(CADPermissionValidator *)validator2 allowsIntegrations];
  }

  return allowsIntegrations;
}

- (BOOL)hasCalendarTCCBypassEntitlement
{
  hasCalendarTCCBypassEntitlement = [(CADPermissionValidator *)self->_validator1 hasCalendarTCCBypassEntitlement];
  if (hasCalendarTCCBypassEntitlement)
  {
    validator2 = self->_validator2;

    LOBYTE(hasCalendarTCCBypassEntitlement) = [(CADPermissionValidator *)validator2 hasCalendarTCCBypassEntitlement];
  }

  return hasCalendarTCCBypassEntitlement;
}

@end