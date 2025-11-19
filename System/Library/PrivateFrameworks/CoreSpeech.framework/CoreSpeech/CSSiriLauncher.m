@interface CSSiriLauncher
+ (id)sharedLauncher;
- (void)_notifyBuiltInVoiceTriggerPrewarm:(id)a3 activationSource:(int64_t)a4 completion:(id)a5;
- (void)deactivateSiriActivationConnectionWithReason:(int64_t)a3 withOptions:(unint64_t)a4 withContext:(id)a5;
- (void)notifyBluetoothDeviceVoiceTrigger:(id)a3 deviceId:(id)a4 completion:(id)a5;
- (void)notifyBluetoothDeviceVoiceTriggerPrewarm:(id)a3 deviceId:(id)a4 completion:(id)a5;
- (void)notifyBuiltInVoiceTrigger:(id)a3 myriadPHash:(id)a4 completion:(id)a5;
- (void)notifyCarPlayVoiceTrigger:(id)a3 deviceId:(id)a4 myriadPHash:(id)a5 completion:(id)a6;
- (void)notifyCarPlayVoiceTriggerPrewarm:(id)a3 deviceId:(id)a4 completion:(id)a5;
- (void)notifyContinuousConversationActivation:(id)a3 deviceId:(id)a4 completion:(id)a5;
- (void)notifyDarwinVoiceTrigger:(id)a3 deviceId:(id)a4 myriadPHash:(id)a5 myriadLateActivationExpirationTime:(id)a6 completion:(id)a7;
- (void)notifyDarwinVoiceTriggerPrewarmWithCompletion:(id)a3;
- (void)notifyRemoraVoiceTrigger:(id)a3 myriadPHash:(id)a4 deviceId:(id)a5 completion:(id)a6;
- (void)notifyRemoraVoiceTriggerPrewarm:(id)a3 deviceId:(id)a4 completion:(id)a5;
- (void)notifyWakeKeywordSpokenBluetoothDevice:(id)a3 deviceId:(id)a4;
- (void)notifyWakeKeywordSpokenCarPlay:(id)a3 deviceId:(id)a4;
- (void)notifyWakeKeywordSpokenInBuiltInMic:(id)a3;
@end

@implementation CSSiriLauncher

- (void)notifyDarwinVoiceTrigger:(id)a3 deviceId:(id)a4 myriadPHash:(id)a5 myriadLateActivationExpirationTime:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000CDDE4;
  v26[3] = &unk_100250E00;
  v15 = v12;
  v27 = v15;
  v16 = v13;
  v28 = v16;
  v17 = a4;
  v18 = [SCDAContext newWithBuilder:v26];
  v19 = +[NSMutableDictionary dictionary];
  v20 = v19;
  if (v11)
  {
    [v19 setObject:v11 forKey:AFSiriActivationUserInfoKey[1]];
  }

  if (v18)
  {
    [v20 setObject:v18 forKey:AFSiriActivationUserInfoKey[10]];
  }

  if (v11)
  {
    v21 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
    [v21 logSiriLaunchStartedWithVoiceTriggerEventInfo:v11];
  }

  mach_absolute_time();
  v24 = v11;
  v25 = v14;
  v22 = v14;
  v23 = v11;
  AFSiriActivationHoneycombDeviceVoiceTrigger();
}

- (void)notifyDarwinVoiceTriggerPrewarmWithCompletion:(id)a3
{
  v3 = a3;
  mach_absolute_time();
  v5 = v3;
  v4 = v3;
  AFSiriActivationVoiceTriggerPrewarm();
}

- (void)deactivateSiriActivationConnectionWithReason:(int64_t)a3 withOptions:(unint64_t)a4 withContext:(id)a5
{
  v7 = a5;
  v8 = [[AFSiriActivationConnection alloc] initWithServicePort:AFSiriActivationServiceGetPort()];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CE238;
  v9[3] = &unk_100250DD8;
  v9[4] = a3;
  [v8 deactivateForReason:a3 options:a4 context:v7 completion:v9];
}

- (void)notifyContinuousConversationActivation:(id)a3 deviceId:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CSSiriLauncher notifyContinuousConversationActivation:deviceId:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  mach_absolute_time();
  v12 = v9;
  v11 = v9;
  AFSiriActivationContinuousConversation();
}

- (void)notifyRemoraVoiceTrigger:(id)a3 myriadPHash:(id)a4 deviceId:(id)a5 completion:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6);
  }
}

- (void)notifyRemoraVoiceTriggerPrewarm:(id)a3 deviceId:(id)a4 completion:(id)a5
{
  if (a5)
  {
    v6 = CSErrorDomain;
    v7 = a5;
    v8 = [NSError errorWithDomain:v6 code:1852 userInfo:0];
    (*(a5 + 2))(v7, 0, v8);
  }
}

- (void)notifyWakeKeywordSpokenBluetoothDevice:(id)a3 deviceId:(id)a4
{
  v4 = a4;
  mach_absolute_time();
  AFSiriActivationVoiceKeywordDetected();
}

- (void)notifyBluetoothDeviceVoiceTrigger:(id)a3 deviceId:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[NSMutableDictionary dictionary];
  v11 = v10;
  if (v7)
  {
    [v10 setObject:v7 forKey:AFSiriActivationUserInfoKey[1]];
    v12 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
    [v12 logSiriLaunchStartedWithVoiceTriggerEventInfo:v7];
  }

  mach_absolute_time();
  v15 = v7;
  v16 = v8;
  v13 = v8;
  v14 = v7;
  AFSiriActivationVoiceTriggerActivate();
}

- (void)notifyBluetoothDeviceVoiceTriggerPrewarm:(id)a3 deviceId:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  mach_absolute_time();
  v11 = v7;
  v10 = v7;
  AFSiriActivationVoiceTriggerPrewarm();
}

- (void)notifyWakeKeywordSpokenCarPlay:(id)a3 deviceId:(id)a4
{
  v4 = a4;
  mach_absolute_time();
  AFSiriActivationVoiceKeywordDetected();
}

- (void)notifyCarPlayVoiceTrigger:(id)a3 deviceId:(id)a4 myriadPHash:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000CEEAC;
  v22[3] = &unk_100250CC0;
  v12 = v10;
  v23 = v12;
  v13 = a4;
  v14 = [SCDAContext newWithBuilder:v22];
  v15 = +[NSMutableDictionary dictionary];
  v16 = v15;
  if (v9)
  {
    [v15 setObject:v9 forKey:AFSiriActivationUserInfoKey[1]];
  }

  if (v14)
  {
    [v16 setObject:v14 forKey:AFSiriActivationUserInfoKey[10]];
  }

  if (v9)
  {
    v17 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
    [v17 logSiriLaunchStartedWithVoiceTriggerEventInfo:v9];
  }

  mach_absolute_time();
  v20 = v9;
  v21 = v11;
  v18 = v11;
  v19 = v9;
  AFSiriActivationVoiceTriggerActivate();
}

- (void)notifyCarPlayVoiceTriggerPrewarm:(id)a3 deviceId:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  mach_absolute_time();
  v11 = v7;
  v10 = v7;
  AFSiriActivationVoiceTriggerPrewarm();
}

- (void)notifyWakeKeywordSpokenInBuiltInMic:(id)a3
{
  mach_absolute_time();

  AFSiriActivationVoiceKeywordDetected();
}

- (void)notifyBuiltInVoiceTrigger:(id)a3 myriadPHash:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSMutableDictionary dictionary];
  v11 = v10;
  if (v7)
  {
    [v10 setObject:v7 forKey:AFSiriActivationUserInfoKey[1]];
    [CSUtils isFirstPassSourceTypeRingtoneWithVTEI:v7];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000CF66C;
  v19[3] = &unk_100250CC0;
  v12 = v8;
  v20 = v12;
  v13 = [SCDAContext newWithBuilder:v19];
  if (v13)
  {
    [v11 setObject:v13 forKey:AFSiriActivationUserInfoKey[10]];
  }

  [CSUtils isVoiceTriggerFromExclaveWithVTEI:v7];
  if (v7)
  {
    v14 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
    [v14 logSiriLaunchStartedWithVoiceTriggerEventInfo:v7];
  }

  mach_absolute_time();
  v18 = v9;
  v17 = v7;
  v15 = v9;
  v16 = v7;
  AFSiriActivationVoiceTriggerActivate();
}

- (void)_notifyBuiltInVoiceTriggerPrewarm:(id)a3 activationSource:(int64_t)a4 completion:(id)a5
{
  v6 = a5;
  v7 = a3;
  mach_absolute_time();
  v9 = v6;
  v8 = v6;
  AFSiriActivationVoiceTriggerPrewarm();
}

+ (id)sharedLauncher
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    if (qword_10029E2F0 != -1)
    {
      dispatch_once(&qword_10029E2F0, &stru_100250C70);
    }

    v2 = qword_10029E2E8;
  }

  return v2;
}

@end