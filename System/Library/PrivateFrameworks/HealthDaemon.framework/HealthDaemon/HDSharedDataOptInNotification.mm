@interface HDSharedDataOptInNotification
- (HDSharedDataOptInNotification)initWithNotificationManager:(id)manager guardianDisplayName:(id)name;
- (id)body;
- (id)title;
@end

@implementation HDSharedDataOptInNotification

- (HDSharedDataOptInNotification)initWithNotificationManager:(id)manager guardianDisplayName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = HDSharedDataOptInNotification;
  v7 = [(HDNanoHealthNotification *)&v11 initWithNotificationManager:manager];
  if (v7)
  {
    v8 = [nameCopy copy];
    guardianDisplayName = v7->_guardianDisplayName;
    v7->_guardianDisplayName = v8;
  }

  return v7;
}

- (id)title
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"START_SHARING_DATA_NOTIFICATION_TITLE" value:&stru_283BF39C8 table:@"Localizable-tinker"];

  return v3;
}

- (id)body
{
  v3 = MEMORY[0x277CCACA8];
  v4 = HKHealthKitFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"START_SHARING_DATA_NOTIFICATION_BODY_%@" value:&stru_283BF39C8 table:@"Localizable-tinker"];
  v6 = [v3 localizedStringWithFormat:v5, self->_guardianDisplayName];

  return v6;
}

@end