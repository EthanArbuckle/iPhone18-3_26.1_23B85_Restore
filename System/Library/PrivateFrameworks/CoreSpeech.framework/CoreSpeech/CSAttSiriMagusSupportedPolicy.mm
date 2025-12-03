@interface CSAttSiriMagusSupportedPolicy
+ (BOOL)_isInputOriginSupportedByContinuousConversation:(id)conversation;
+ (BOOL)isCurrentlyInActiveCall;
+ (BOOL)isCurrentlyInSplitterState;
+ (CSAttSiriMagusSupportedPolicy)sharedInstance;
+ (void)initialize;
- (BOOL)isMagusSupportedWithInputOrigin:(id)origin recordRoute:(id)route playbackRoute:(id)playbackRoute;
- (void)_updateWithAsset:(id)asset;
- (void)start;
@end

@implementation CSAttSiriMagusSupportedPolicy

+ (BOOL)isCurrentlyInSplitterState
{
  v2 = +[CSBluetoothWirelessSplitterMonitor sharedInstance];
  splitterState = [v2 splitterState];

  return splitterState > 1;
}

+ (BOOL)isCurrentlyInActiveCall
{
  v2 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  phoneCallState = [v2 phoneCallState];

  return (phoneCallState - 2) < 3;
}

- (void)_updateWithAsset:(id)asset
{
  assetCopy = asset;
  v5 = +[CSUtils isContinuousConversationSupported];
  isMagusSupported = [assetCopy isMagusSupported];

  self->_isAssetMagusSupported = v5 & isMagusSupported;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CSAttSiriMagusSupportedPolicy _updateWithAsset:]";
    v10 = 1024;
    v11 = v5;
    v12 = 1024;
    v13 = isMagusSupported & 1;
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

- (BOOL)isMagusSupportedWithInputOrigin:(id)origin recordRoute:(id)route playbackRoute:(id)playbackRoute
{
  playbackRouteCopy = playbackRoute;
  routeCopy = route;
  LOBYTE(origin) = [(CSAttSiriMagusSupportedPolicy *)self _isMagusSupportedWithRecordRoute:routeCopy playbackRoute:playbackRouteCopy isInSplitterMode:+[CSAttSiriMagusSupportedPolicy isCurrentlyInSplitterState](CSAttSiriMagusSupportedPolicy isInActiveCall:"isCurrentlyInSplitterState") isSupportedRequestType:+[CSAttSiriMagusSupportedPolicy audioSessionId:"isCurrentlyInActiveCall"]recordDeviceInfo:[CSAttSiriMagusSupportedPolicy _isInputOriginSupportedByContinuousConversation:origin], 0, 0];

  return origin;
}

+ (BOOL)_isInputOriginSupportedByContinuousConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([conversationCopy isEqualToString:SAInputOriginHomeButtonValue] & 1) != 0 || (objc_msgSend(conversationCopy, "isEqualToString:", SAInputOriginRemoteButtonValue) & 1) != 0 || (objc_msgSend(conversationCopy, "isEqualToString:", SAInputOriginAssistantSpeechButtonValue) & 1) != 0 || (objc_msgSend(conversationCopy, "isEqualToString:", SAInputOriginVoiceTriggerValue) & 1) != 0 || (objc_msgSend(conversationCopy, "isEqualToString:", SAInputOriginServerGeneratedValue) & 1) != 0 || (objc_msgSend(conversationCopy, "isEqualToString:", SAInputOriginMagusFollowupValue))
  {
    v4 = 1;
  }

  else
  {
    v4 = [conversationCopy isEqualToString:SAInputOriginClientGeneratedValue];
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