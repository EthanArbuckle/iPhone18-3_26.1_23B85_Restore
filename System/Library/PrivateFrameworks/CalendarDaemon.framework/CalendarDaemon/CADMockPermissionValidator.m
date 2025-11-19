@interface CADMockPermissionValidator
- (CADMockPermissionValidator)init;
- (CADMockPermissionValidator)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setEventAccessLevel:(int)a3;
- (void)setHasReminderAccess:(BOOL)a3;
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

- (void)setEventAccessLevel:(int)a3
{
  if (a3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_22438FD50[a3];
  }

  self->_eventAuthorization = v3;
}

- (void)setHasReminderAccess:(BOOL)a3
{
  v3 = 2;
  if (a3)
  {
    v3 = 3;
  }

  self->_remindersAuthorization = v3;
}

- (CADMockPermissionValidator)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CADMockPermissionValidator;
  v5 = [(CADMockPermissionValidator *)&v7 init];
  if (v5)
  {
    v5->_eventAuthorization = [v4 decodeIntForKey:@"eventAuthorization"];
    v5->_remindersAuthorization = [v4 decodeIntForKey:@"remindersAuthorization"];
    v5->_isFirstPartyCalendarApp = [v4 decodeBoolForKey:@"isFirstPartyCalendarApp"];
    v5->_isCalendarDaemon = [v4 decodeBoolForKey:@"isCalendarDaemon"];
    v5->_isCalendarWidgetExtension = [v4 decodeBoolForKey:@"isCalendarWidgetExtension"];
    v5->_isRemoteUIExtension = [v4 decodeBoolForKey:@"isRemoteUIExtension"];
    v5->_isAutomatorApp = [v4 decodeBoolForKey:@"isAutomatorApp"];
    v5->_isShortcutsApp = [v4 decodeBoolForKey:@"isShortcutsApp"];
    v5->_canAccessProcedureAlarms = [v4 decodeBoolForKey:@"canAccessProcedureAlarms"];
    v5->_canModifySuggestedEventCalendar = [v4 decodeBoolForKey:@"canModifySuggestedEventCalendar"];
    v5->_canMakeSpotlightChanges = [v4 decodeBoolForKey:@"canMakeSpotlightChanges"];
    v5->_canModifyBirthdayCalendar = [v4 decodeBoolForKey:@"canModifyBirthdayCalendar"];
    v5->_canRequestDiagnostics = [v4 decodeBoolForKey:@"canRequestDiagnostics"];
    v5->_canModifyCalendarDatabase = [v4 decodeBoolForKey:@"canModifyCalendarDatabase"];
    v5->_testingAccessLevelGranted = [v4 decodeBoolForKey:@"testingAccessLevelGranted"];
    v5->_internalAccessLevelGranted = [v4 decodeBoolForKey:@"internalAccessLevelGranted"];
    v5->_storageManagementAccessGranted = [v4 decodeBoolForKey:@"storageManagementAccessGranted"];
    v5->_hasSyncClientEntitlement = [v4 decodeBoolForKey:@"hasSyncClientEntitlement"];
    v5->_hasCalendarToolEntitlement = [v4 decodeBoolForKey:@"hasCalendarToolEntitlement"];
    v5->_hasChangeIdTrackingOverrideEntitlement = [v4 decodeBoolForKey:@"hasChangeIdTrackingOverrideEntitlement"];
    v5->_hasNotificationCountEntitlement = [v4 decodeBoolForKey:@"hasNotificationCountEntitlement"];
    v5->_hasManagedConfigurationBundleIDOverrideEntitlement = [v4 decodeBoolForKey:@"hasManagedConfigurationBundleIDOverrideEntitlement"];
    v5->_shouldTrustClientEnforcedManagedConfigurationAccess = [v4 decodeBoolForKey:@"shouldTrustClientEnforcedManagedConfigurationAccess"];
    v5->_allowsCustomDatabasePath = [v4 decodeBoolForKey:@"allowsCustomDatabasePath"];
    v5->_allowsIntegrations = [v4 decodeBoolForKey:@"allowsIntegrations"];
    v5->_hasCalendarTCCBypassEntitlement = [v4 decodeBoolForKey:@"hasCalendarTCCBypassEntitlement"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  eventAuthorization_low = LODWORD(self->_eventAuthorization);
  v5 = a3;
  [v5 encodeInt:eventAuthorization_low forKey:@"eventAuthorization"];
  [v5 encodeInt:LODWORD(self->_remindersAuthorization) forKey:@"remindersAuthorization"];
  [v5 encodeBool:self->_isFirstPartyCalendarApp forKey:@"isFirstPartyCalendarApp"];
  [v5 encodeBool:self->_isCalendarDaemon forKey:@"isCalendarDaemon"];
  [v5 encodeBool:self->_isCalendarWidgetExtension forKey:@"isCalendarWidgetExtension"];
  [v5 encodeBool:self->_isRemoteUIExtension forKey:@"isRemoteUIExtension"];
  [v5 encodeBool:self->_isAutomatorApp forKey:@"isAutomatorApp"];
  [v5 encodeBool:self->_isShortcutsApp forKey:@"isShortcutsApp"];
  [v5 encodeBool:self->_canAccessProcedureAlarms forKey:@"canAccessProcedureAlarms"];
  [v5 encodeBool:self->_canModifySuggestedEventCalendar forKey:@"canModifySuggestedEventCalendar"];
  [v5 encodeBool:self->_canMakeSpotlightChanges forKey:@"canMakeSpotlightChanges"];
  [v5 encodeBool:self->_canModifyBirthdayCalendar forKey:@"canModifyBirthdayCalendar"];
  [v5 encodeBool:self->_canRequestDiagnostics forKey:@"canRequestDiagnostics"];
  [v5 encodeBool:self->_canModifyCalendarDatabase forKey:@"canModifyCalendarDatabase"];
  [v5 encodeBool:self->_testingAccessLevelGranted forKey:@"testingAccessLevelGranted"];
  [v5 encodeBool:self->_internalAccessLevelGranted forKey:@"internalAccessLevelGranted"];
  [v5 encodeBool:self->_storageManagementAccessGranted forKey:@"storageManagementAccessGranted"];
  [v5 encodeBool:self->_hasSyncClientEntitlement forKey:@"hasSyncClientEntitlement"];
  [v5 encodeBool:self->_hasCalendarToolEntitlement forKey:@"hasCalendarToolEntitlement"];
  [v5 encodeBool:self->_hasChangeIdTrackingOverrideEntitlement forKey:@"hasChangeIdTrackingOverrideEntitlement"];
  [v5 encodeBool:self->_hasNotificationCountEntitlement forKey:@"hasNotificationCountEntitlement"];
  [v5 encodeBool:self->_hasManagedConfigurationBundleIDOverrideEntitlement forKey:@"hasManagedConfigurationBundleIDOverrideEntitlement"];
  [v5 encodeBool:self->_shouldTrustClientEnforcedManagedConfigurationAccess forKey:@"shouldTrustClientEnforcedManagedConfigurationAccess"];
  [v5 encodeBool:self->_allowsCustomDatabasePath forKey:@"allowsCustomDatabasePath"];
  [v5 encodeBool:self->_allowsIntegrations forKey:@"allowsIntegrations"];
  [v5 encodeBool:self->_hasCalendarTCCBypassEntitlement forKey:@"hasCalendarTCCBypassEntitlement"];
}

@end