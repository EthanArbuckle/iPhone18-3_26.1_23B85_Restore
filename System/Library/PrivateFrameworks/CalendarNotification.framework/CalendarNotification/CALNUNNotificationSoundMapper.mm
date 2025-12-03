@interface CALNUNNotificationSoundMapper
+ (id)calnNotificationSoundFromUNNotificationSound:(id)sound;
+ (id)unNotificationSoundFromCALNNotificationSound:(id)sound;
@end

@implementation CALNUNNotificationSoundMapper

+ (id)unNotificationSoundFromCALNNotificationSound:(id)sound
{
  v3 = MEMORY[0x277CE1FE0];
  soundCopy = sound;
  v5 = [v3 soundWithAlertType:{objc_msgSend(soundCopy, "alertType")}];
  v6 = [v5 mutableCopy];

  alertTopic = [soundCopy alertTopic];

  [v6 setAlertTopic:alertTopic];
  v8 = [v6 copy];

  return v8;
}

+ (id)calnNotificationSoundFromUNNotificationSound:(id)sound
{
  soundCopy = sound;
  alertType = [soundCopy alertType];
  alertTopic = [soundCopy alertTopic];

  v6 = [(CALNNotificationSound *)CALNMutableNotificationSound soundWithAlertType:alertType alertTopic:alertTopic];

  return v6;
}

@end