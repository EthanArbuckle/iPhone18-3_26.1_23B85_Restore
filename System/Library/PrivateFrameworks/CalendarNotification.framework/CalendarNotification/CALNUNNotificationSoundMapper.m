@interface CALNUNNotificationSoundMapper
+ (id)calnNotificationSoundFromUNNotificationSound:(id)a3;
+ (id)unNotificationSoundFromCALNNotificationSound:(id)a3;
@end

@implementation CALNUNNotificationSoundMapper

+ (id)unNotificationSoundFromCALNNotificationSound:(id)a3
{
  v3 = MEMORY[0x277CE1FE0];
  v4 = a3;
  v5 = [v3 soundWithAlertType:{objc_msgSend(v4, "alertType")}];
  v6 = [v5 mutableCopy];

  v7 = [v4 alertTopic];

  [v6 setAlertTopic:v7];
  v8 = [v6 copy];

  return v8;
}

+ (id)calnNotificationSoundFromUNNotificationSound:(id)a3
{
  v3 = a3;
  v4 = [v3 alertType];
  v5 = [v3 alertTopic];

  v6 = [(CALNNotificationSound *)CALNMutableNotificationSound soundWithAlertType:v4 alertTopic:v5];

  return v6;
}

@end