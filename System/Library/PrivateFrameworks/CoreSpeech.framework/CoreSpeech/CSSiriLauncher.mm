@interface CSSiriLauncher
+ (id)sharedLauncher;
- (void)_notifyBuiltInVoiceTriggerPrewarm:(id)prewarm activationSource:(int64_t)source completion:(id)completion;
- (void)deactivateSiriActivationConnectionWithReason:(int64_t)reason withOptions:(unint64_t)options withContext:(id)context;
- (void)notifyBluetoothDeviceVoiceTrigger:(id)trigger deviceId:(id)id completion:(id)completion;
- (void)notifyBluetoothDeviceVoiceTriggerPrewarm:(id)prewarm deviceId:(id)id completion:(id)completion;
- (void)notifyBuiltInVoiceTrigger:(id)trigger myriadPHash:(id)hash completion:(id)completion;
- (void)notifyCarPlayVoiceTrigger:(id)trigger deviceId:(id)id myriadPHash:(id)hash completion:(id)completion;
- (void)notifyCarPlayVoiceTriggerPrewarm:(id)prewarm deviceId:(id)id completion:(id)completion;
- (void)notifyContinuousConversationActivation:(id)activation deviceId:(id)id completion:(id)completion;
- (void)notifyDarwinVoiceTrigger:(id)trigger deviceId:(id)id myriadPHash:(id)hash myriadLateActivationExpirationTime:(id)time completion:(id)completion;
- (void)notifyDarwinVoiceTriggerPrewarmWithCompletion:(id)completion;
- (void)notifyRemoraVoiceTrigger:(id)trigger myriadPHash:(id)hash deviceId:(id)id completion:(id)completion;
- (void)notifyRemoraVoiceTriggerPrewarm:(id)prewarm deviceId:(id)id completion:(id)completion;
- (void)notifyWakeKeywordSpokenBluetoothDevice:(id)device deviceId:(id)id;
- (void)notifyWakeKeywordSpokenCarPlay:(id)play deviceId:(id)id;
- (void)notifyWakeKeywordSpokenInBuiltInMic:(id)mic;
@end

@implementation CSSiriLauncher

- (void)notifyDarwinVoiceTrigger:(id)trigger deviceId:(id)id myriadPHash:(id)hash myriadLateActivationExpirationTime:(id)time completion:(id)completion
{
  triggerCopy = trigger;
  hashCopy = hash;
  timeCopy = time;
  completionCopy = completion;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000CDDE4;
  v26[3] = &unk_100250E00;
  v15 = hashCopy;
  v27 = v15;
  v16 = timeCopy;
  v28 = v16;
  idCopy = id;
  v18 = [SCDAContext newWithBuilder:v26];
  v19 = +[NSMutableDictionary dictionary];
  v20 = v19;
  if (triggerCopy)
  {
    [v19 setObject:triggerCopy forKey:AFSiriActivationUserInfoKey[1]];
  }

  if (v18)
  {
    [v20 setObject:v18 forKey:AFSiriActivationUserInfoKey[10]];
  }

  if (triggerCopy)
  {
    v21 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
    [v21 logSiriLaunchStartedWithVoiceTriggerEventInfo:triggerCopy];
  }

  mach_absolute_time();
  v24 = triggerCopy;
  v25 = completionCopy;
  v22 = completionCopy;
  v23 = triggerCopy;
  AFSiriActivationHoneycombDeviceVoiceTrigger();
}

- (void)notifyDarwinVoiceTriggerPrewarmWithCompletion:(id)completion
{
  completionCopy = completion;
  mach_absolute_time();
  v5 = completionCopy;
  v4 = completionCopy;
  AFSiriActivationVoiceTriggerPrewarm();
}

- (void)deactivateSiriActivationConnectionWithReason:(int64_t)reason withOptions:(unint64_t)options withContext:(id)context
{
  contextCopy = context;
  v8 = [[AFSiriActivationConnection alloc] initWithServicePort:AFSiriActivationServiceGetPort()];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CE238;
  v9[3] = &unk_100250DD8;
  v9[4] = reason;
  [v8 deactivateForReason:reason options:options context:contextCopy completion:v9];
}

- (void)notifyContinuousConversationActivation:(id)activation deviceId:(id)id completion:(id)completion
{
  activationCopy = activation;
  idCopy = id;
  completionCopy = completion;
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CSSiriLauncher notifyContinuousConversationActivation:deviceId:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  mach_absolute_time();
  v12 = completionCopy;
  v11 = completionCopy;
  AFSiriActivationContinuousConversation();
}

- (void)notifyRemoraVoiceTrigger:(id)trigger myriadPHash:(id)hash deviceId:(id)id completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)notifyRemoraVoiceTriggerPrewarm:(id)prewarm deviceId:(id)id completion:(id)completion
{
  if (completion)
  {
    v6 = CSErrorDomain;
    completionCopy = completion;
    v8 = [NSError errorWithDomain:v6 code:1852 userInfo:0];
    (*(completion + 2))(completionCopy, 0, v8);
  }
}

- (void)notifyWakeKeywordSpokenBluetoothDevice:(id)device deviceId:(id)id
{
  idCopy = id;
  mach_absolute_time();
  AFSiriActivationVoiceKeywordDetected();
}

- (void)notifyBluetoothDeviceVoiceTrigger:(id)trigger deviceId:(id)id completion:(id)completion
{
  triggerCopy = trigger;
  completionCopy = completion;
  idCopy = id;
  v10 = +[NSMutableDictionary dictionary];
  v11 = v10;
  if (triggerCopy)
  {
    [v10 setObject:triggerCopy forKey:AFSiriActivationUserInfoKey[1]];
    v12 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
    [v12 logSiriLaunchStartedWithVoiceTriggerEventInfo:triggerCopy];
  }

  mach_absolute_time();
  v15 = triggerCopy;
  v16 = completionCopy;
  v13 = completionCopy;
  v14 = triggerCopy;
  AFSiriActivationVoiceTriggerActivate();
}

- (void)notifyBluetoothDeviceVoiceTriggerPrewarm:(id)prewarm deviceId:(id)id completion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  prewarmCopy = prewarm;
  mach_absolute_time();
  v11 = completionCopy;
  v10 = completionCopy;
  AFSiriActivationVoiceTriggerPrewarm();
}

- (void)notifyWakeKeywordSpokenCarPlay:(id)play deviceId:(id)id
{
  idCopy = id;
  mach_absolute_time();
  AFSiriActivationVoiceKeywordDetected();
}

- (void)notifyCarPlayVoiceTrigger:(id)trigger deviceId:(id)id myriadPHash:(id)hash completion:(id)completion
{
  triggerCopy = trigger;
  hashCopy = hash;
  completionCopy = completion;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000CEEAC;
  v22[3] = &unk_100250CC0;
  v12 = hashCopy;
  v23 = v12;
  idCopy = id;
  v14 = [SCDAContext newWithBuilder:v22];
  v15 = +[NSMutableDictionary dictionary];
  v16 = v15;
  if (triggerCopy)
  {
    [v15 setObject:triggerCopy forKey:AFSiriActivationUserInfoKey[1]];
  }

  if (v14)
  {
    [v16 setObject:v14 forKey:AFSiriActivationUserInfoKey[10]];
  }

  if (triggerCopy)
  {
    v17 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
    [v17 logSiriLaunchStartedWithVoiceTriggerEventInfo:triggerCopy];
  }

  mach_absolute_time();
  v20 = triggerCopy;
  v21 = completionCopy;
  v18 = completionCopy;
  v19 = triggerCopy;
  AFSiriActivationVoiceTriggerActivate();
}

- (void)notifyCarPlayVoiceTriggerPrewarm:(id)prewarm deviceId:(id)id completion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  prewarmCopy = prewarm;
  mach_absolute_time();
  v11 = completionCopy;
  v10 = completionCopy;
  AFSiriActivationVoiceTriggerPrewarm();
}

- (void)notifyWakeKeywordSpokenInBuiltInMic:(id)mic
{
  mach_absolute_time();

  AFSiriActivationVoiceKeywordDetected();
}

- (void)notifyBuiltInVoiceTrigger:(id)trigger myriadPHash:(id)hash completion:(id)completion
{
  triggerCopy = trigger;
  hashCopy = hash;
  completionCopy = completion;
  v10 = +[NSMutableDictionary dictionary];
  v11 = v10;
  if (triggerCopy)
  {
    [v10 setObject:triggerCopy forKey:AFSiriActivationUserInfoKey[1]];
    [CSUtils isFirstPassSourceTypeRingtoneWithVTEI:triggerCopy];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000CF66C;
  v19[3] = &unk_100250CC0;
  v12 = hashCopy;
  v20 = v12;
  v13 = [SCDAContext newWithBuilder:v19];
  if (v13)
  {
    [v11 setObject:v13 forKey:AFSiriActivationUserInfoKey[10]];
  }

  [CSUtils isVoiceTriggerFromExclaveWithVTEI:triggerCopy];
  if (triggerCopy)
  {
    v14 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
    [v14 logSiriLaunchStartedWithVoiceTriggerEventInfo:triggerCopy];
  }

  mach_absolute_time();
  v18 = completionCopy;
  v17 = triggerCopy;
  v15 = completionCopy;
  v16 = triggerCopy;
  AFSiriActivationVoiceTriggerActivate();
}

- (void)_notifyBuiltInVoiceTriggerPrewarm:(id)prewarm activationSource:(int64_t)source completion:(id)completion
{
  completionCopy = completion;
  prewarmCopy = prewarm;
  mach_absolute_time();
  v9 = completionCopy;
  v8 = completionCopy;
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