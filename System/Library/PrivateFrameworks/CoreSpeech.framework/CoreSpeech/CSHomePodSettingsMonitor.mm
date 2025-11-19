@interface CSHomePodSettingsMonitor
+ (id)sharedInstance;
- (void)_stopMonitoring;
@end

@implementation CSHomePodSettingsMonitor

- (void)_stopMonitoring
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSHomePodSettingsMonitor _stopMonitoring]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : HomePod voiceTriggerAssertion", &v3, 0xCu);
  }
}

+ (id)sharedInstance
{
  if (qword_10029E140 != -1)
  {
    dispatch_once(&qword_10029E140, &stru_10024F960);
  }

  v3 = qword_10029E138;

  return v3;
}

@end