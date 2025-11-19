@interface CSAttSiriMagusSupportedPolicy
+ (BOOL)_isInputOriginSupportedByContinuousConversation:(id)a3;
+ (BOOL)isCurrentlyInActiveCall;
+ (BOOL)isCurrentlyInSplitterState;
+ (CSAttSiriMagusSupportedPolicy)sharedInstance;
+ (void)initialize;
- (BOOL)isMagusSupportedWithInputOrigin:(id)a3 recordRoute:(id)a4 playbackRoute:(id)a5;
- (void)_updateWithAsset:(id)a3;
- (void)start;
@end

@implementation CSAttSiriMagusSupportedPolicy

+ (BOOL)isCurrentlyInSplitterState
{
  v2 = +[CSBluetoothWirelessSplitterMonitor sharedInstance];
  v3 = [v2 splitterState];

  return v3 > 1;
}

+ (BOOL)isCurrentlyInActiveCall
{
  v2 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  v3 = [v2 phoneCallState];

  return (v3 - 2) < 3;
}

- (void)_updateWithAsset:(id)a3
{
  v4 = a3;
  v5 = +[CSUtils isContinuousConversationSupported];
  v6 = [v4 isMagusSupported];

  self->_isAssetMagusSupported = v5 & v6;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CSAttSiriMagusSupportedPolicy _updateWithAsset:]";
    v10 = 1024;
    v11 = v5;
    v12 = 1024;
    v13 = v6 & 1;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s DeviceSupport %d AssetSupport %d", &v8, 0x18u);
  }
}

- (void)start
{
  v3 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  [v3 addObserver:self];

  self->_isAssetMagusSupported = 0;
  v4 = +[CSBluetoothWirelessSplitterMonitor sharedInstance];
  [v4 addObserver:self];

  if (+[CSUtils isMedocFeatureEnabled])
  {
    if (+[CSUtils isContinuousConversationSupported])
    {
      v5 = +[CSAttSiriMitigationAssetHandler sharedHandlerDisabledOnDeviceCompilation];
      [v5 registerObserver:self];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10009199C;
      v6[3] = &unk_100252F10;
      v6[4] = self;
      [v5 getMitigationAssetWithEndpointId:0 completion:v6];
    }
  }
}

- (BOOL)isMagusSupportedWithInputOrigin:(id)a3 recordRoute:(id)a4 playbackRoute:(id)a5
{
  v8 = a5;
  v9 = a4;
  LOBYTE(a3) = [(CSAttSiriMagusSupportedPolicy *)self _isMagusSupportedWithRecordRoute:v9 playbackRoute:v8 isInSplitterMode:+[CSAttSiriMagusSupportedPolicy isCurrentlyInSplitterState](CSAttSiriMagusSupportedPolicy isInActiveCall:"isCurrentlyInSplitterState") isSupportedRequestType:+[CSAttSiriMagusSupportedPolicy audioSessionId:"isCurrentlyInActiveCall"]recordDeviceInfo:[CSAttSiriMagusSupportedPolicy _isInputOriginSupportedByContinuousConversation:a3], 0, 0];

  return a3;
}

+ (BOOL)_isInputOriginSupportedByContinuousConversation:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:SAInputOriginHomeButtonValue] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", SAInputOriginRemoteButtonValue) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", SAInputOriginAssistantSpeechButtonValue) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", SAInputOriginVoiceTriggerValue) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", SAInputOriginServerGeneratedValue) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", SAInputOriginMagusFollowupValue))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:SAInputOriginClientGeneratedValue];
  }

  return v4;
}

+ (void)initialize
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "+[CSAttSiriMagusSupportedPolicy initialize]";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s ", &v4, 0xCu);
  }

  v3 = +[CSCarKitUtils sharedInstance];
}

+ (CSAttSiriMagusSupportedPolicy)sharedInstance
{
  if (qword_10029E1A8 != -1)
  {
    dispatch_once(&qword_10029E1A8, &stru_10024FFC0);
  }

  v3 = qword_10029E1A0;

  return v3;
}

@end