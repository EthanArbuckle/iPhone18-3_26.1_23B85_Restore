@interface CDBPreferences
+ (id)preferencesForDirectory:(id)a3;
+ (id)sharedReadOnly;
+ (id)sharedReadWrite;
- (BOOL)has_DefaultAllDayAlarmOffset;
- (BOOL)has_DefaultTimedAlarmOffset;
- (BOOL)has_LastConfirmedSplashScreenVersionViewed;
- (BOOL)has_allowUnlimitedMigrationAttempts;
- (BOOL)has_defaultCalendarChangedReason;
- (BOOL)has_defaultCalendarChangedTimestamp;
- (BOOL)has_defaultCalendarDatabaseID;
- (BOOL)has_defaultCalendarID;
- (BOOL)has_defaultCalendarStoreUID;
- (BOOL)has_enableTravelAdvisoriesForAutomaticBehavior;
- (BOOL)has_kCalPreferredDaysToSyncKey;
- (BOOL)has_kCalRemindersPreferredDaysToSyncKey;
- (BOOL)has_migrationAttempts;
- (BOOL)has_overrideParticipantRoleConstraint;
- (BOOL)has_privacyPaneHasBeenAcknowledgedVersion;
- (BOOL)has_sqlProfileLoggingEnabled;
- (BOOL)has_suggestEventLocations;
- (BOOL)has_suggestedLocationsTestMode;
- (CDBPreferences)initWithPreferences:(id)a3;
- (NSNumber)get_DefaultAllDayAlarmOffset;
- (NSNumber)get_DefaultTimedAlarmOffset;
- (NSString)get_defaultCalendarChangedReason;
- (NSString)get_defaultCalendarID;
- (void)set_DefaultAllDayAlarmOffset:(id)a3;
- (void)set_DefaultTimedAlarmOffset:(id)a3;
- (void)set_defaultCalendarChangedReason:(id)a3;
- (void)set_defaultCalendarID:(id)a3;
@end

@implementation CDBPreferences

- (NSString)get_defaultCalendarID
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"defaultCalendarID" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)sharedReadOnly
{
  if (sharedReadOnly_onceToken != -1)
  {
    +[CDBPreferences sharedReadOnly];
  }

  v3 = sharedReadOnly_sharedPreferences;

  return v3;
}

uint64_t __32__CDBPreferences_sharedReadOnly__block_invoke()
{
  v0 = [[CDBPreferences alloc] initWithReadOnly:1];
  v1 = sharedReadOnly_sharedPreferences;
  sharedReadOnly_sharedPreferences = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)sharedReadWrite
{
  if (sharedReadWrite_onceToken != -1)
  {
    +[CDBPreferences sharedReadWrite];
  }

  v3 = sharedReadWrite_sharedPreferences;

  return v3;
}

uint64_t __33__CDBPreferences_sharedReadWrite__block_invoke()
{
  v0 = [[CDBPreferences alloc] initWithReadOnly:0];
  v1 = sharedReadWrite_sharedPreferences;
  sharedReadWrite_sharedPreferences = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)preferencesForDirectory:(id)a3
{
  v3 = [MEMORY[0x1E6993000] preferencesStoreForPath:a3];
  v4 = objc_alloc(MEMORY[0x1E6993020]);
  v5 = [v4 initWithDomain:*MEMORY[0x1E6993168] store:v3];
  v6 = [[CDBPreferences alloc] initWithPreferences:v5];

  return v6;
}

- (CDBPreferences)initWithPreferences:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDBPreferences;
  v6 = [(CDBPreferences *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferences, a3);
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.enableTravelAdvisoriesForAutomaticBehavior"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.suggestEventLocations"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.sqlProfileLoggingEnabled"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.suggestedLocationsTestMode"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.overrideParticipantRoleConstraint"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.allowUnlimitedMigrationAttempts"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.kCalPreferredDaysToSyncKey"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.kCalRemindersPreferredDaysToSyncKey"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.LastConfirmedSplashScreenVersionViewed"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.privacyPaneHasBeenAcknowledgedVersion"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.defaultCalendarStoreUID"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.defaultCalendarDatabaseID"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.defaultCalendarChangedTimestamp"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.migrationAttempts"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.defaultCalendarID"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.database.preference.notification.defaultCalendarChangedReason"];
  }

  return v7;
}

- (BOOL)has_enableTravelAdvisoriesForAutomaticBehavior
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"enableTravelAdvisoriesForAutomaticBehavior" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)has_suggestEventLocations
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"suggestEventLocations" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)has_sqlProfileLoggingEnabled
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"sqlProfileLoggingEnabled" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)has_suggestedLocationsTestMode
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"suggestedLocationsTestMode" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)has_overrideParticipantRoleConstraint
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"overrideParticipantRoleConstraint" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)has_allowUnlimitedMigrationAttempts
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"allowUnlimitedMigrationAttempts" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)has_kCalPreferredDaysToSyncKey
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"kCalPreferredDaysToSyncKey" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)has_kCalRemindersPreferredDaysToSyncKey
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"kCalRemindersPreferredDaysToSyncKey" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)has_LastConfirmedSplashScreenVersionViewed
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"LastConfirmedSplashScreenVersionViewed" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)has_privacyPaneHasBeenAcknowledgedVersion
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"privacyPaneHasBeenAcknowledgedVersion" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)has_defaultCalendarStoreUID
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"defaultCalendarStoreUID" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)has_defaultCalendarDatabaseID
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"defaultCalendarDatabaseID" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)has_defaultCalendarChangedTimestamp
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"defaultCalendarChangedTimestamp" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)has_migrationAttempts
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"migrationAttempts" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (void)set_defaultCalendarID:(id)a3
{
  preferences = self->_preferences;
  v4 = [a3 copy];
  [(CalPreferences *)preferences setValueForPreference:@"defaultCalendarID" value:v4 notificationName:@"com.apple.calendar.database.preference.notification.defaultCalendarID"];
}

- (BOOL)has_defaultCalendarID
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"defaultCalendarID" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (NSString)get_defaultCalendarChangedReason
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"defaultCalendarChangedReason" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)set_defaultCalendarChangedReason:(id)a3
{
  preferences = self->_preferences;
  v4 = [a3 copy];
  [(CalPreferences *)preferences setValueForPreference:@"defaultCalendarChangedReason" value:v4 notificationName:@"com.apple.calendar.database.preference.notification.defaultCalendarChangedReason"];
}

- (BOOL)has_defaultCalendarChangedReason
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"defaultCalendarChangedReason" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (NSNumber)get_DefaultTimedAlarmOffset
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"DefaultTimedAlarmOffset" expectedClass:v3];
}

- (void)set_DefaultTimedAlarmOffset:(id)a3
{
  preferences = self->_preferences;
  v4 = [a3 copy];
  [(CalPreferences *)preferences setValueForPreference:@"DefaultTimedAlarmOffset" value:v4 notificationName:@"com.apple.calendar.database.preference.notification.DefaultTimedAlarmOffset"];
}

- (BOOL)has_DefaultTimedAlarmOffset
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"DefaultTimedAlarmOffset" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

- (NSNumber)get_DefaultAllDayAlarmOffset
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"DefaultAllDayAlarmOffset" expectedClass:v3];
}

- (void)set_DefaultAllDayAlarmOffset:(id)a3
{
  preferences = self->_preferences;
  v4 = [a3 copy];
  [(CalPreferences *)preferences setValueForPreference:@"DefaultAllDayAlarmOffset" value:v4 notificationName:@"com.apple.calendar.database.preference.notification.DefaultAllDayAlarmOffset"];
}

- (BOOL)has_DefaultAllDayAlarmOffset
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"DefaultAllDayAlarmOffset" expectedClass:objc_opt_class()];
  v3 = v2 != 0;

  return v3;
}

@end