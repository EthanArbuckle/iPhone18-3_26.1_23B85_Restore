@interface CSMyriadNotifier
+ (void)notifyInEarMyriadTrigger;
@end

@implementation CSMyriadNotifier

+ (void)notifyInEarMyriadTrigger
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.in.ear", 0, 0, 1u);
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[CSMyriadNotifier notifyInEarMyriadTrigger]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Send a In-Ear Myriad notification", &v4, 0xCu);
  }
}

@end