@interface CSPostBuildInstallService
+ (id)sharedService;
- (void)_performPostBuildInstallWithCompletion:(id)completion;
- (void)registerPostBuildInstallService;
@end

@implementation CSPostBuildInstallService

- (void)_performPostBuildInstallWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_100034D20;
  v9[4] = sub_100034D30;
  v10 = 0;
  v4 = +[SSRVoiceProfileManager sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100034D38;
  v6[3] = &unk_10024EC40;
  v8 = v9;
  v5 = completionCopy;
  v7 = v5;
  [v4 triggerVoiceProfileCleanupWithCompletion:v6];

  _Block_object_dispose(v9, 8);
}

- (void)registerPostBuildInstallService
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[CSPostBuildInstallService registerPostBuildInstallService]";
    v8 = 2080;
    v9 = "com.apple.cs.postinstall";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Registering for post build install/first unlock activity - %s", buf, 0x16u);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100034F98;
  handler[3] = &unk_100252758;
  handler[4] = self;
  xpc_activity_register("com.apple.cs.postinstall", v4, handler);
}

+ (id)sharedService
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    if (qword_10029E030 != -1)
    {
      dispatch_once(&qword_10029E030, &stru_10024EBF0);
    }

    v2 = qword_10029E028;
  }

  return v2;
}

@end