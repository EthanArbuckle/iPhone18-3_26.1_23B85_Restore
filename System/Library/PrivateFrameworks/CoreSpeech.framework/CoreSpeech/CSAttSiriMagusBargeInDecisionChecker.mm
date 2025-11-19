@interface CSAttSiriMagusBargeInDecisionChecker
+ (void)isBargeInAllowedForAudioSource:(id)a3 withCompletion:(id)a4;
@end

@implementation CSAttSiriMagusBargeInDecisionChecker

+ (void)isBargeInAllowedForAudioSource:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[CSFPreferences sharedPreferences];
  v8 = [v7 isBargeInSupportEnabled];

  v9 = +[CSAudioRouteChangeMonitor sharedInstance];
  v10 = [v9 jarvisConnected];

  v11 = +[CSCarKitUtils sharedInstance];
  v12 = [v11 isBargeInDisabledForConnectedVehicle];

  v13 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "+[CSAttSiriMagusBargeInDecisionChecker isBargeInAllowedForAudioSource:withCompletion:]";
    v19 = 1024;
    v20 = v8 ^ 1;
    v21 = 1024;
    v22 = v10;
    v23 = 1024;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s isBargeInDisabledPref:%u, isJarvisCarplayConnected:%u, isBargeInDisabledForCarplay:%u", buf, 0x1Eu);
  }

  if (v8)
  {
    if (v10)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001146C4;
      v14[3] = &unk_100251D10;
      v16 = v12;
      v15 = v6;
      [v5 fetchRoutesWithCompletion:v14];
    }

    else
    {
      (*(v6 + 2))(v6, 1);
    }
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

@end