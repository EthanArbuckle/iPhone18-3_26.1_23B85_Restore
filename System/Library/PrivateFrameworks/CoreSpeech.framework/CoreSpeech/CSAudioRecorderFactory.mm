@interface CSAudioRecorderFactory
+ (id)audioRecorderWithQueue:(id)a3 error:(id *)a4;
@end

@implementation CSAudioRecorderFactory

+ (id)audioRecorderWithQueue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[CSFPreferences sharedPreferences];
  v7 = [v6 programmableAudioInjectionEnabled];

  if (v7)
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
    v9 = [[CSAudioRecorder alloc] initWithQueue:v5 error:a4];
  }

  return v9;
}

@end