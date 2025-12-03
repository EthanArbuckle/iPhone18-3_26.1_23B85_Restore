@interface CADMockPermissionValidator
- (CADMockPermissionValidator)init;
- (CADMockPermissionValidator)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setEventAccessLevel:(int)level;
- (void)setHasReminderAccess:(BOOL)access;
@end

@implementation CADMockPermissionValidator

- (CADMockPermissionValidator)init
{
  v3.receiver = self;
  v3.super_class = CADMockPermissionValidator;
  result = [(CADMockPermissionValidator *)&v3 init];
  if (result)
  {
    *&result->_eventAuthorization = vdupq_n_s64(3uLL);
    result->_canModifyCalendarDatabase = 1;
  }

  return result;
}

- (void)setEventAccessLevel:(int)level
{
  if (level > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_22438FD50[level];
  }

  self->_eventAuthorization = v3;
}

- (void)setHasReminderAccess:(BOOL)access
{
  v3 = 2;
  if (access)
  {
    v3 = 3;
  }

  self->_remindersAuthorization = v3;
}

- (CADMockPermissionValidator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CADMockPermissionValidator;
  v5 = [(CADMockPermissionValidator *)&v7 init];
  if (v5)
  {
    v5->_eventAuthorization = [coderCopy decodeIntForKey:@"eventAuthorization"];
    v5->_remindersAuthorization = [coderCopy decodeIntForKey:@"remindersAuthorization"];
    v5->_isFirstPartyCalendarApp = [coderCopy decodeBoolForKey:@"isFirstPartyCalendarApp"];
    v5->_isCalendarDaemon = [coderCopy decodeBoolForKey:@"isCalendarDaemon"];
    v5->_isCalendarWidgetExtension = [coderCopy decodeBoolForKey:@"isCalendarWidgetExtension"];
    v5->_isRemoteUIExtension = [coderCopy decodeBoolForKey:@"isRemoteUIExtension"];
    v5->_isAutomatorApp = [coderCopy decodeBoolForKey:@"isAutomatorApp"];
    v5->_isShortcutsApp = [coderCopy decodeBoolForKey:@"isShortcutsApp"];
    v5->_canAccessProcedureAlarms = [coderCopy decodeBoolForKey:@"canAccessProcedureAlarms"];
    v5->_canModifySuggestedEventCalendar = [coderCopy decodeBoolForKey:@"canModifySuggestedEventCalendar"];
    v5->_canMakeSpotlightChanges = [coderCopy decodeBoolForKey:@"canMakeSpotlightChanges"];
    v5->_canModifyBirthdayCalendar = [coderCopy decodeBoolForKey:@"canModifyBirthdayCalendar"];
    v5->_canRequestDiagnostics = [coderCopy decodeBoolForKey:@"canRequestDiagnostics"];
    v5->_canModifyCalendarDatabase = [coderCopy decodeBoolForKey:@"canModifyCalendarDatabase"];
    v5->_testingAccessLevelGranted = [coderCopy decodeBoolForKey:@"testingAccessLevelGranted"];
    v5->_internalAccessLevelGranted = [coderCopy decodeBoolForKey:@"internalAccessLevelGranted"];
    v5->_storageManagementAccessGranted = [coderCopy decodeBoolForKey:@"storageManagementAccessGranted"];
    v5->_hasSyncClientEntitlement = [coderCopy decodeBoolForKey:@"hasSyncClientEntitlement"];
    v5->_hasCalendarToolEntitlement = [coderCopy decodeBoolForKey:@"hasCalendarToolEntitlement"];
    v5->_hasChangeIdTrackingOverrideEntitlement = [coderCopy decodeBoolForKey:@"hasChangeIdTrackingOverrideEntitlement"];
    v5->_hasNotificationCountEntitlement = [coderCopy decodeBoolForKey:@"hasNotificationCountEntitlement"];
    v5->_hasManagedConfigurationBundleIDOverrideEntitlement = [coderCopy decodeBoolForKey:@"hasManagedConfigurationBundleIDOverrideEntitlement"];
    v5->_shouldTrustClientEnforcedManagedConfigurationAccess = [coderCopy decodeBoolForKey:@"shouldTrustClientEnforcedManagedConfigurationAccess"];
    v5->_allowsCustomDatabasePath = [coderCopy decodeBoolForKey:@"allowsCustomDatabasePath"];
    v5->_allowsIntegrations = [coderCopy decodeBoolForKey:@"allowsIntegrations"];
    v5->_hasCalendarTCCBypassEntitlement = [coderCopy decodeBoolForKey:@"hasCalendarTCCBypassEntitlement"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  eventAuthorization_low = LODWORD(self->_eventAuthorization);
  coderCopy = coder;
  [coderCopy encodeInt:eventAuthorization_low forKey:@"eventAuthorization"];
  [coderCopy encodeInt:LODWORD(self->_remindersAuthorization) forKey:@"remindersAuthorization"];
  [coderCopy encodeBool:self->_isFirstPartyCalendarApp forKey:@"isFirstPartyCalendarApp"];
  [coderCopy encodeBool:self->_isCalendarDaemon forKey:@"isCalendarDaemon"];
  [coderCopy encodeBool:self->_isCalendarWidgetExtension forKey:@"isCalendarWidgetExtension"];
  [coderCopy encodeBool:self->_isRemoteUIExtension forKey:@"isRemoteUIExtension"];
  [coderCopy encodeBool:self->_isAutomatorApp forKey:@"isAutomatorApp"];
  [coderCopy encodeBool:self->_isShortcutsApp forKey:@"isShortcutsApp"];
  [coderCopy encodeBool:self->_canAccessProcedureAlarms forKey:@"canAccessProcedureAlarms"];
  [coderCopy encodeBool:self->_canModifySuggestedEventCalendar forKey:@"canModifySuggestedEventCalendar"];
  [coderCopy encodeBool:self->_canMakeSpotlightChanges forKey:@"canMakeSpotlightChanges"];
  [coderCopy encodeBool:self->_canModifyBirthdayCalendar forKey:@"canModifyBirthdayCalendar"];
  [coderCopy encodeBool:self->_canRequestDiagnostics forKey:@"canRequestDiagnostics"];
  [coderCopy encodeBool:self->_canModifyCalendarDatabase forKey:@"canModifyCalendarDatabase"];
  [coderCopy encodeBool:self->_testingAccessLevelGranted forKey:@"testingAccessLevelGranted"];
  [coderCopy encodeBool:self->_internalAccessLevelGranted forKey:@"internalAccessLevelGranted"];
  [coderCopy encodeBool:self->_storageManagementAccessGranted forKey:@"storageManagementAccessGranted"];
  [coderCopy encodeBool:self->_hasSyncClientEntitlement forKey:@"hasSyncClientEntitlement"];
  [coderCopy encodeBool:self->_hasCalendarToolEntitlement forKey:@"hasCalendarToolEntitlement"];
  [coderCopy encodeBool:self->_hasChangeIdTrackingOverrideEntitlement forKey:@"hasChangeIdTrackingOverrideEntitlement"];
  [coderCopy encodeBool:self->_hasNotificationCountEntitlement forKey:@"hasNotificationCountEntitlement"];
  [coderCopy encodeBool:self->_hasManagedConfigurationBundleIDOverrideEntitlement forKey:@"hasManagedConfigurationBundleIDOverrideEntitlement"];
  [coderCopy encodeBool:self->_shouldTrustClientEnforcedManagedConfigurationAccess forKey:@"shouldTrustClientEnforcedManagedConfigurationAccess"];
  [coderCopy encodeBool:self->_allowsCustomDatabasePath forKey:@"allowsCustomDatabasePath"];
  [coderCopy encodeBool:self->_allowsIntegrations forKey:@"allowsIntegrations"];
  [coderCopy encodeBool:self->_hasCalendarTCCBypassEntitlement forKey:@"hasCalendarTCCBypassEntitlement"];
}

@end