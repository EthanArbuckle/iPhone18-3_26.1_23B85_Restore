@interface CSAttSiriMagusBargeInDecisionChecker
+ (void)isBargeInAllowedForAudioSource:(id)source withCompletion:(id)completion;
@end

@implementation CSAttSiriMagusBargeInDecisionChecker

+ (void)isBargeInAllowedForAudioSource:(id)source withCompletion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  v7 = +[CSFPreferences sharedPreferences];
  isBargeInSupportEnabled = [v7 isBargeInSupportEnabled];

  v9 = +[CSAudioRouteChangeMonitor sharedInstance];
  jarvisConnected = [v9 jarvisConnected];

  v11 = +[CSCarKitUtils sharedInstance];
  isBargeInDisabledForConnectedVehicle = [v11 isBargeInDisabledForConnectedVehicle];

  v13 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "+[CSAttSiriMagusBargeInDecisionChecker isBargeInAllowedForAudioSource:withCompletion:]";
    v19 = 1024;
    v20 = isBargeInSupportEnabled ^ 1;
    v21 = 1024;
    v22 = jarvisConnected;
    v23 = 1024;
    v24 = isBargeInDisabledForConnectedVehicle;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s isBargeInDisabledPref:%u, isJarvisCarplayConnected:%u, isBargeInDisabledForCarplay:%u", buf, 0x1Eu);
  }

  if (isBargeInSupportEnabled)
  {
    if (jarvisConnected)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001146C4;
      v14[3] = &unk_100251D10;
      v16 = isBargeInDisabledForConnectedVehicle;
      v15 = completionCopy;
      [sourceCopy fetchRoutesWithCompletion:v14];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

@end