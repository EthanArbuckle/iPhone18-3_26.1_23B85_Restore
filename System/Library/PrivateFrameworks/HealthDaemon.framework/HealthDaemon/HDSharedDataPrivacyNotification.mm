@interface HDSharedDataPrivacyNotification
- (HDSharedDataPrivacyNotification)initWithNotificationManager:(id)manager guardianFirstName:(id)name lastName:(id)lastName;
- (id)body;
- (id)title;
@end

@implementation HDSharedDataPrivacyNotification

- (HDSharedDataPrivacyNotification)initWithNotificationManager:(id)manager guardianFirstName:(id)name lastName:(id)lastName
{
  nameCopy = name;
  lastNameCopy = lastName;
  v14.receiver = self;
  v14.super_class = HDSharedDataPrivacyNotification;
  v11 = [(HDNanoHealthNotification *)&v14 initWithNotificationManager:manager];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_firstName, name);
    objc_storeStrong(&v12->_lastName, lastName);
  }

  return v12;
}

- (id)title
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"SHARED_HEALTH_DATA_NOTIFICATION_TITLE" value:&stru_283BF39C8 table:@"Localizable-tinker"];

  return v3;
}

- (id)body
{
  firstName = self->_firstName;
  v3 = MEMORY[0x277CCAC00];
  v4 = self->_lastName;
  v5 = firstName;
  v6 = objc_alloc_init(v3);
  [v6 setGivenName:v5];

  [v6 setFamilyName:v4];
  v7 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v6 style:2 options:0];

  v8 = MEMORY[0x277CCACA8];
  v9 = HKHealthKitFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"SHARED_HEALTH_DATA_NOTIFICATION_BODY_%@" value:&stru_283BF39C8 table:@"Localizable-tinker"];
  v11 = [v8 localizedStringWithFormat:v10, v7];

  return v11;
}

@end