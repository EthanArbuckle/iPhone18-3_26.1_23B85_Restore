@interface ACCSettingsState
- (ACCSettingsState)initWithKey:(id)key applicationID:(id)d notification:(id)notification defaultValue:(int64_t)value invalidValue:(int64_t)invalidValue;
- (id)description;
- (void)_readLoggingPrefs;
- (void)_registerForLoggingPrefsNotification;
- (void)dealloc;
@end

@implementation ACCSettingsState

- (ACCSettingsState)initWithKey:(id)key applicationID:(id)d notification:(id)notification defaultValue:(int64_t)value invalidValue:(int64_t)invalidValue
{
  keyCopy = key;
  dCopy = d;
  notificationCopy = notification;
  v19.receiver = self;
  v19.super_class = ACCSettingsState;
  v16 = [(ACCSettingsState *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_key, key);
    objc_storeStrong(&v17->_applicationID, d);
    objc_storeStrong(&v17->_notificationName, notification);
    v17->_defaultValue = value;
    v17->_invalidValue = invalidValue;
    [(ACCSettingsState *)v17 _readLoggingPrefs];
    [(ACCSettingsState *)v17 _registerForLoggingPrefsNotification];
  }

  return v17;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, self->_notificationName, 0);
  v4.receiver = self;
  v4.super_class = ACCSettingsState;
  [(ACCSettingsState *)&v4 dealloc];
}

- (id)description
{
  if (self->_BOOLValue)
  {
    v2 = @"true";
  }

  else
  {
    v2 = @"false";
  }

  defaultValue = self->_defaultValue;
  return [NSString stringWithFormat:@"<ACCSettingsState>[%@:%@ = %ld (= %@), default = %ld, invalid = %ld]", self->_applicationID, self->_key, self->_intValue, v2, defaultValue, self->_invalidValue];
}

- (void)_readLoggingPrefs
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(self->_key, self->_applicationID, &keyExistsAndHasValidFormat);
  intValue = self->_intValue;
  v5 = keyExistsAndHasValidFormat;
  if (!keyExistsAndHasValidFormat || AppIntegerValue == self->_invalidValue)
  {
    AppIntegerValue = self->_defaultValue;
  }

  self->_intValue = AppIntegerValue;
  self->_BOOLValue = AppIntegerValue != 0;
  self->_exists = v5 != 0;
  if (intValue != AppIntegerValue)
  {
    NSLog(@"Read preferences, key=%@, %ld -> %ld", self->_key, intValue, AppIntegerValue);
  }
}

- (void)_registerForLoggingPrefsNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  notificationName = self->_notificationName;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, __receivedNotification, notificationName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

@end