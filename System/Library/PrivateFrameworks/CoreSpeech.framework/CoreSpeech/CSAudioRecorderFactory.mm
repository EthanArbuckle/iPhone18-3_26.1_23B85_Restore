@interface CSAudioRecorderFactory
+ (id)audioRecorderWithQueue:(id)queue error:(id *)error;
@end

@implementation CSAudioRecorderFactory

+ (id)audioRecorderWithQueue:(id)queue error:(id *)error
{
  queueCopy = queue;
  v6 = +[CSFPreferences sharedPreferences];
  programmableAudioInjectionEnabled = [v6 programmableAudioInjectionEnabled];

  if (programmableAudioInjectionEnabled)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "+[CSAudioRecorderFactory audioRecorderWithQueue:error:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Using audioInjectionProvider as recorder", &v11, 0xCu);
    }

    v9 = +[CSAudioInjectionProvider defaultInjectionProvider];
    [v9 start];
  }

  else
  {
    v9 = [[CSAudioRecorder alloc] initWithQueue:queueCopy error:error];
  }

  return v9;
}

@end