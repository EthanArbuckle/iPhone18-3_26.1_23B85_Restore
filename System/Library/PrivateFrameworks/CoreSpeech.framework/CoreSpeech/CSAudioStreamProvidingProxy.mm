@interface CSAudioStreamProvidingProxy
- (CSAudioStreamProviding)audioStreamProviding;
- (CSAudioStreamProvidingProxy)initWithXPCConnection:(id)connection;
- (CSClientXPCConnection)xpcConnection;
- (CSTriggerInfoProviding)triggerInfoProviding;
- (void)CSClientXPCConnectionReceivedClientError:(id)error clientError:(id)clientError client:(id)client;
- (void)_handleAudioDeviceInfo:(id)info messageBody:(id)body client:(id)client;
- (void)_handleAudioStreamPrepareMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleAudioStreamRequestMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleIsNarrowband:(id)narrowband messageBody:(id)body client:(id)client;
- (void)_handleIsRecordingMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handlePlaybackRouteMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleRecordDeviceInfo:(id)info messageBody:(id)body client:(id)client;
- (void)_handleRecordRouteMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleRecordSettings:(id)settings messageBody:(id)body client:(id)client;
- (void)_handleSetCurrentConextMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleStartAudioStreamMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleStopAudioStreamMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleSupportsDuckingWithStreamHandleID:(id)d messageBody:(id)body client:(id)client;
- (void)_handleVoiceTriggerInfoMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_sendDelegateMessageToClient:(id)client;
- (void)_sendReply:(id)reply client:(id)client result:(BOOL)result error:(id)error;
- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available;
- (void)audioStreamProvider:(id)provider audioChunkForTVAvailable:(id)available;
- (void)audioStreamProvider:(id)provider didHardwareConfigurationChange:(int64_t)change;
- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly;
- (void)handleXPCMessage:(id)message messageBody:(id)body client:(id)client;
- (void)setAudioStreamProvidingForProxy:(id)proxy;
- (void)setInitialContext:(id)context;
@end

@implementation CSAudioStreamProvidingProxy

- (CSAudioStreamProviding)audioStreamProviding
{
  WeakRetained = objc_loadWeakRetained(&self->_audioStreamProviding);

  return WeakRetained;
}

- (CSClientXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (CSTriggerInfoProviding)triggerInfoProviding
{
  WeakRetained = objc_loadWeakRetained(&self->_triggerInfoProviding);

  return WeakRetained;
}

- (void)_sendDelegateMessageToClient:(id)client
{
  clientCopy = client;
  *keys = *off_100252E40;
  v9[0] = xpc_int64_create(5);
  v5 = clientCopy;
  v9[1] = v5;
  v6 = xpc_dictionary_create(keys, v9, 2uLL);
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  [WeakRetained sendMessageToClient:{v6, v9[0]}];

  for (i = 1; i != -1; --i)
  {
  }
}

- (void)audioStreamProvider:(id)provider didHardwareConfigurationChange:(int64_t)change
{
  providerCopy = provider;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[CSAudioStreamProvidingProxy audioStreamProvider:didHardwareConfigurationChange:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s CSAudioStreamProvidingProxy", buf, 0xCu);
  }

  *buf = *&off_10024E7B8;
  v10[0] = xpc_int64_create(4);
  v10[1] = xpc_int64_create(change);
  v8 = xpc_dictionary_create(buf, v10, 2uLL);
  [(CSAudioStreamProvidingProxy *)self _sendDelegateMessageToClient:v8, v10[0]];

  for (i = 1; i != -1; --i)
  {
  }
}

- (void)audioStreamProvider:(id)provider audioChunkForTVAvailable:(id)available
{
  providerCopy = provider;
  availableCopy = available;
  if (self->_streamClientType != 4)
  {
    *keys = *&off_10024E7A8;
    v10[1] = [availableCopy xpcObject];
    v8 = xpc_dictionary_create(keys, v10, 2uLL);
    [(CSAudioStreamProvidingProxy *)self _sendDelegateMessageToClient:v8];

    for (i = 1; i != -1; --i)
    {
    }
  }
}

- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available
{
  providerCopy = provider;
  availableCopy = available;
  if (self->_streamClientType != 4)
  {
    *keys = *&off_10024E7A8;
    v10[1] = [availableCopy xpcObject];
    v8 = xpc_dictionary_create(keys, v10, 2uLL);
    [(CSAudioStreamProvidingProxy *)self _sendDelegateMessageToClient:v8];

    for (i = 1; i != -1; --i)
    {
    }
  }
}

- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly
{
  providerCopy = provider;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[CSAudioStreamProvidingProxy audioStreamProvider:didStopStreamUnexpectedly:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v8 = [[CSAudioStopStreamOption alloc] initWithStopRecordingReason:6 expectedStopHostTime:0 trailingSilenceDurationAtEndpoint:0 holdRequest:0 supportsMagus:0.0];
  [(CSAudioStreamProvidingProxy *)self _setAllowMixableAudioWhileRecordingIfNeeded:1];
  if (!self->_clientRequestedSkipMonitorUpdate)
  {
    streamClientType = self->_streamClientType;
    if (streamClientType > 2)
    {
      if (streamClientType == 3)
      {
        v10 = +[CSCommandControlBehaviorMonitor sharedInstance];
        [v10 notifyDidStopStream:0];
        goto LABEL_15;
      }

      if (streamClientType == 4)
      {
        v10 = +[CSIntuitiveConvAudioCaptureMonitor sharedInstance];
        [v10 notifyDidStopAudioCaptureWithOption:v8 eventUUID:self->_recordEventUUID error:0];
        goto LABEL_15;
      }
    }

    else
    {
      if (streamClientType == 1)
      {
        if ([(CSAudioStreamProvidingProxy *)self _isHubRequest])
        {
          v10 = +[CSSiriClientBehaviorMonitor sharedInstance];
          [v10 notifyDidStopStream:v8 withEventUUID:self->_recordEventUUID];
        }

        else
        {
          v10 = +[CSAccessorySiriClientBehaviorMonitor sharedInstance];
          [v10 notifyDidStopStream:0 reason:0 withEventUUID:self->_recordEventUUID forAccessory:self->_accessoryId];
        }

        goto LABEL_15;
      }

      if (streamClientType == 2)
      {
        v10 = +[CSOpportuneSpeakBehaviorMonitor sharedInstance];
        [v10 notifyDidStopStream:0];
LABEL_15:
      }
    }
  }

  *buf = *&off_10024E798;
  v13[0] = xpc_int64_create(1);
  v13[1] = xpc_int64_create(unexpectedly);
  v11 = xpc_dictionary_create(buf, v13, 2uLL);
  [(CSAudioStreamProvidingProxy *)self _sendDelegateMessageToClient:v11, v13[0]];

  for (i = 1; i != -1; --i)
  {
  }
}

- (void)_handlePlaybackRouteMessage:(id)message messageBody:(id)body client:(id)client
{
  clientCopy = client;
  messageCopy = message;
  audioStreamProviding = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];

  if (audioStreamProviding)
  {
    WeakRetained = objc_loadWeakRetained(&self->_audioStreamProviding);
    playbackRoute = [WeakRetained playbackRoute];

    reply = xpc_dictionary_create_reply(messageCopy);
    if (playbackRoute)
    {
      xpc_dictionary_set_string(reply, "playbackRoute", [playbackRoute UTF8String]);
    }

    xpc_connection_send_message(clientCopy, reply);
  }

  else
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[CSAudioStreamProvidingProxy _handlePlaybackRouteMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Cannot handle PlaybackRoute : audioStreamProviding is nil", &v14, 0xCu);
    }

    [(CSAudioStreamProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:0 error:0];
  }
}

- (void)_handleIsNarrowband:(id)narrowband messageBody:(id)body client:(id)client
{
  clientCopy = client;
  narrowbandCopy = narrowband;
  audioStreamProviding = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];

  if (audioStreamProviding)
  {
    WeakRetained = objc_loadWeakRetained(&self->_audioStreamProviding);
    isNarrowBand = [WeakRetained isNarrowBand];

    xdict = xpc_dictionary_create_reply(narrowbandCopy);
    xpc_dictionary_set_BOOL(xdict, "result", isNarrowBand);
    xpc_connection_send_message(clientCopy, xdict);
  }

  else
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[CSAudioStreamProvidingProxy _handleIsNarrowband:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Cannot handle IsNarrowband : audioStreamProviding is nil", buf, 0xCu);
    }

    [(CSAudioStreamProvidingProxy *)self _sendReply:narrowbandCopy client:clientCopy result:0 error:0];
  }
}

- (void)_handleRecordSettings:(id)settings messageBody:(id)body client:(id)client
{
  clientCopy = client;
  settingsCopy = settings;
  audioStreamProviding = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];

  if (audioStreamProviding)
  {
    WeakRetained = objc_loadWeakRetained(&self->_audioStreamProviding);
    recordSettings = [WeakRetained recordSettings];

    reply = xpc_dictionary_create_reply(settingsCopy);
    if (recordSettings)
    {
      _cs_xpcObject = [recordSettings _cs_xpcObject];
      xpc_dictionary_set_value(reply, "recordSettings", _cs_xpcObject);
    }

    xpc_connection_send_message(clientCopy, reply);
  }

  else
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSAudioStreamProvidingProxy _handleRecordSettings:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Cannot handle RecordSettings : audioStreamProviding is nil", &v15, 0xCu);
    }

    [(CSAudioStreamProvidingProxy *)self _sendReply:settingsCopy client:clientCopy result:0 error:0];
  }
}

- (void)_handleAudioDeviceInfo:(id)info messageBody:(id)body client:(id)client
{
  clientCopy = client;
  infoCopy = info;
  audioStreamProviding = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];

  if (audioStreamProviding)
  {
    WeakRetained = objc_loadWeakRetained(&self->_audioStreamProviding);
    audioDeviceInfo = [WeakRetained audioDeviceInfo];

    reply = xpc_dictionary_create_reply(infoCopy);
    if (audioDeviceInfo)
    {
      xpcObject = [audioDeviceInfo xpcObject];
      xpc_dictionary_set_value(reply, "audioDeviceInfo", xpcObject);
    }

    if (self->_streamClientType == 1 && [(CSAudioStreamProvidingProxy *)self _isHubRequest])
    {
      v14 = +[CSSiriClientBehaviorMonitor sharedInstance];
      v15 = [audioDeviceInfo copy];
      [v14 notifyAudioDeviceInfoUpdated:v15];
    }

    xpc_connection_send_message(clientCopy, reply);
  }

  else
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[CSAudioStreamProvidingProxy _handleAudioDeviceInfo:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Cannot handle AudioDeviceInfo : audioStreamProviding is nil", &v17, 0xCu);
    }

    [(CSAudioStreamProvidingProxy *)self _sendReply:infoCopy client:clientCopy result:0 error:0];
  }
}

- (void)_handleRecordDeviceInfo:(id)info messageBody:(id)body client:(id)client
{
  clientCopy = client;
  infoCopy = info;
  audioStreamProviding = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];

  if (audioStreamProviding)
  {
    WeakRetained = objc_loadWeakRetained(&self->_audioStreamProviding);
    recordDeviceInfo = [WeakRetained recordDeviceInfo];

    reply = xpc_dictionary_create_reply(infoCopy);
    if (recordDeviceInfo)
    {
      xpcObject = [recordDeviceInfo xpcObject];
      xpc_dictionary_set_value(reply, "recordDeviceInfo", xpcObject);
    }

    xpc_connection_send_message(clientCopy, reply);
  }

  else
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSAudioStreamProvidingProxy _handleRecordDeviceInfo:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Cannot handle RecordDeviceInfo : audioStreamProviding is nil", &v15, 0xCu);
    }

    [(CSAudioStreamProvidingProxy *)self _sendReply:infoCopy client:clientCopy result:0 error:0];
  }
}

- (void)_handleRecordRouteMessage:(id)message messageBody:(id)body client:(id)client
{
  clientCopy = client;
  messageCopy = message;
  audioStreamProviding = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];

  if (audioStreamProviding)
  {
    WeakRetained = objc_loadWeakRetained(&self->_audioStreamProviding);
    recordRoute = [WeakRetained recordRoute];

    reply = xpc_dictionary_create_reply(messageCopy);
    if (recordRoute)
    {
      xpc_dictionary_set_string(reply, "recordRoute", [recordRoute UTF8String]);
    }

    xpc_connection_send_message(clientCopy, reply);
  }

  else
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[CSAudioStreamProvidingProxy _handleRecordRouteMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Cannot handle RecordRoute : audioStreamProviding is nil", &v14, 0xCu);
    }

    [(CSAudioStreamProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:0 error:0];
  }
}

- (void)_handleIsRecordingMessage:(id)message messageBody:(id)body client:(id)client
{
  clientCopy = client;
  messageCopy = message;
  audioStreamProviding = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];

  if (audioStreamProviding)
  {
    WeakRetained = objc_loadWeakRetained(&self->_audioStreamProviding);
    isRecording = [WeakRetained isRecording];

    xdict = xpc_dictionary_create_reply(messageCopy);
    xpc_dictionary_set_BOOL(xdict, "result", isRecording);
    xpc_connection_send_message(clientCopy, xdict);
  }

  else
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[CSAudioStreamProvidingProxy _handleIsRecordingMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Cannot handle IsRecording : audioStreamProviding is nil", buf, 0xCu);
    }

    [(CSAudioStreamProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:0 error:0];
  }
}

- (void)_handleVoiceTriggerInfoMessage:(id)message messageBody:(id)body client:(id)client
{
  clientCopy = client;
  bodyCopy = body;
  reply = xpc_dictionary_create_reply(message);
  v11 = xpc_dictionary_get_dictionary(bodyCopy, "context");

  if (!v11)
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[CSAudioStreamProvidingProxy _handleVoiceTriggerInfoMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Fail to parse recordContext", buf, 0xCu);
    }
  }

  v13 = [[CSAudioRecordContext alloc] initWithXPCObject:v11];
  [(CSAudioStreamProvidingProxy *)self setRecordContext:v13];
  v14 = +[CSVoiceTriggerEventInfoProvider sharedInstance];
  v19 = 0;
  v20 = 0;
  [v14 fetchVoiceTriggerInfoWithAudioContext:v13 resultVoiceTriggerInfo:&v20 resultRTSTriggerInfo:&v19];
  v15 = v20;
  v16 = v19;

  xpc_dictionary_set_BOOL(reply, "result", 1);
  if (v15)
  {
    _cs_xpcObject = [v15 _cs_xpcObject];
    xpc_dictionary_set_value(reply, "voiceTriggerInfo", _cs_xpcObject);
  }

  if (v16)
  {
    _cs_xpcObject2 = [v16 _cs_xpcObject];
    xpc_dictionary_set_value(reply, "rtsTriggerInfo", _cs_xpcObject2);
  }

  xpc_connection_send_message(clientCopy, reply);
}

- (void)_handleStopAudioStreamMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  bodyCopy = body;
  clientCopy = client;
  audioStreamProviding = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];

  if (audioStreamProviding)
  {
    audioStream = [(CSAudioStreamProvidingProxy *)self audioStream];

    if (audioStream)
    {
      v13 = xpc_dictionary_get_dictionary(bodyCopy, "stopAudioStreamOption");
      if (v13)
      {
        v14 = [[CSAudioStopStreamOption alloc] initWithXPCObject:v13];
      }

      else
      {
        v14 = 0;
      }

      [(CSAudioStreamProvidingProxy *)self _setAllowMixableAudioWhileRecordingIfNeeded:1];
      if (self->_clientRequestedSkipMonitorUpdate)
      {
        goto LABEL_26;
      }

      streamClientType = self->_streamClientType;
      if (streamClientType > 2)
      {
        if (streamClientType == 3)
        {
          v20 = CSCommandControlBehaviorMonitor;
          goto LABEL_24;
        }

        if (streamClientType == 4)
        {
          sharedInstance = +[CSIntuitiveConvAudioCaptureMonitor sharedInstance];
          [sharedInstance notifyWillStopAudioCaptureWithReason:0];
LABEL_25:
        }
      }

      else
      {
        if (streamClientType == 1)
        {
          if ([(CSAudioStreamProvidingProxy *)self _isHubRequest])
          {
            sharedInstance = +[CSSiriClientBehaviorMonitor sharedInstance];
            [sharedInstance notifyWillStopStream:v14 reason:0 withEventUUID:self->_recordEventUUID];
          }

          else
          {
            sharedInstance = +[CSAccessorySiriClientBehaviorMonitor sharedInstance];
            [sharedInstance notifyWillStopStream:0 reason:0 forAccessory:self->_accessoryId];
          }

          goto LABEL_25;
        }

        if (streamClientType == 2)
        {
          v20 = CSOpportuneSpeakBehaviorMonitor;
LABEL_24:
          sharedInstance = [(__objc2_class *)v20 sharedInstance];
          [sharedInstance notifyWillStopStream:0];
          goto LABEL_25;
        }
      }

LABEL_26:
      audioStream2 = [(CSAudioStreamProvidingProxy *)self audioStream];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100021B64;
      v24[3] = &unk_10024E778;
      v24[4] = self;
      v25 = v14;
      v26 = messageCopy;
      v27 = clientCopy;
      v23 = v14;
      [audioStream2 stopAudioStreamWithOption:v23 completion:v24];

      goto LABEL_27;
    }

    v18 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[CSAudioStreamProvidingProxy _handleStopAudioStreamMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Cannot handle stopAudioStream : audioStream is nil", buf, 0xCu);
    }

    v16 = CSErrorDomain;
    v17 = 1402;
  }

  else
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[CSAudioStreamProvidingProxy _handleStopAudioStreamMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Cannot handle stopAudioStream : audioStreamProviding is nil", buf, 0xCu);
    }

    v16 = CSErrorDomain;
    v17 = 1401;
  }

  v13 = [NSError errorWithDomain:v16 code:v17 userInfo:0];
  [(CSAudioStreamProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:0 error:v13];
LABEL_27:
}

- (void)_handleStartAudioStreamMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v10 = xpc_dictionary_get_dictionary(body, "startAudioStreamOption");
  if (v10)
  {
    audioStream = [(CSAudioStreamProvidingProxy *)self audioStream];

    if (audioStream)
    {
      audioStreamProviding = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];

      if (audioStreamProviding)
      {
        v13 = [[CSAudioStartStreamOption alloc] initWithXPCObject:v10];
        [(CSAudioStreamProvidingProxy *)self _setAllowMixableAudioWhileRecordingIfNeeded:1];
        v14 = +[NSUUID UUID];
        uUIDString = [v14 UUIDString];
        recordEventUUID = self->_recordEventUUID;
        self->_recordEventUUID = uUIDString;

        if (!self->_clientRequestedSkipMonitorUpdate)
        {
          streamClientType = self->_streamClientType;
          if (streamClientType > 2)
          {
            if (streamClientType == 3)
            {
              v18 = +[CSCommandControlBehaviorMonitor sharedInstance];
              recordContext = self->_recordContext;
              audioStreamProviding2 = [v13 copy];
              [v18 notifyWillStartStreamWithContext:recordContext option:audioStreamProviding2];
              goto LABEL_25;
            }

            if (streamClientType == 4)
            {
              v18 = +[CSIntuitiveConvAudioCaptureMonitor sharedInstance];
              v29 = self->_recordContext;
              audioStreamProviding2 = [v13 copy];
              [v18 notifyWillStartAudioCaptureWithContext:v29 option:audioStreamProviding2];
              goto LABEL_25;
            }
          }

          else
          {
            if (streamClientType == 1)
            {
              if ([(CSAudioStreamProvidingProxy *)self _isHubRequest])
              {
                v18 = +[CSSiriClientBehaviorMonitor sharedInstance];
                [v18 notifyWillStartStreamWithContext:self->_recordContext option:v13 withEventUUID:self->_recordEventUUID];
              }

              else
              {
                v18 = +[CSAccessorySiriClientBehaviorMonitor sharedInstance];
                [v18 notifyWillStartStreamWithContext:self->_recordContext option:v13 forAccessory:self->_accessoryId];
              }

              goto LABEL_26;
            }

            if (streamClientType == 2)
            {
              v18 = +[CSOpportuneSpeakBehaviorMonitor sharedInstance];
              v19 = self->_recordContext;
              audioStreamProviding2 = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];
              uUID = [audioStreamProviding2 UUID];
              v22 = [v13 copy];
              [v18 notifyWillStartStreamWithContext:v19 audioProviderUUID:uUID option:v22];

LABEL_25:
LABEL_26:
            }
          }
        }

        audioStream2 = [(CSAudioStreamProvidingProxy *)self audioStream];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100022178;
        v32[3] = &unk_10024E778;
        v32[4] = self;
        v33 = v13;
        v34 = messageCopy;
        v35 = clientCopy;
        v28 = v13;
        [audioStream2 startAudioStreamWithOption:v28 completion:v32];

        goto LABEL_28;
      }

      v27 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v37 = "[CSAudioStreamProvidingProxy _handleStartAudioStreamMessage:messageBody:client:]";
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Cannot handle startAudioStream : audioStreamProviding is nil", buf, 0xCu);
      }

      v24 = CSErrorDomain;
      v25 = 1401;
    }

    else
    {
      v26 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v37 = "[CSAudioStreamProvidingProxy _handleStartAudioStreamMessage:messageBody:client:]";
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Cannot handle startAudioStream : audioStream is nil", buf, 0xCu);
      }

      v24 = CSErrorDomain;
      v25 = 1402;
    }
  }

  else
  {
    v23 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v37 = "[CSAudioStreamProvidingProxy _handleStartAudioStreamMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Cannot handle startAudioStream : given audio stream option is nil", buf, 0xCu);
    }

    v24 = CSErrorDomain;
    v25 = 114;
  }

  v28 = [NSError errorWithDomain:v24 code:v25 userInfo:0];
  [(CSAudioStreamProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:0 error:v28];
LABEL_28:
}

- (void)_handleAudioStreamPrepareMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v10 = xpc_dictionary_get_dictionary(body, "audioStreamRequest");
  audioStreamProviding = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];

  if (audioStreamProviding)
  {
    if (v10)
    {
      streamRequest = [[CSAudioStreamRequest alloc] initWithXPCObject:v10];
    }

    else
    {
      v14 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v31 = "[CSAudioStreamProvidingProxy _handleAudioStreamPrepareMessage:messageBody:client:]";
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Given audioStreamRequest is nil, use default audioStreamRequest", buf, 0xCu);
      }

      audioStream = [(CSAudioStreamProvidingProxy *)self audioStream];
      streamRequest = [audioStream streamRequest];
    }

    self->_clientRequestedSkipMonitorUpdate = [streamRequest requestSkipClientMonitorUpdate];
    audioStream2 = [(CSAudioStreamProvidingProxy *)self audioStream];

    if (audioStream2)
    {
      audioStream3 = [(CSAudioStreamProvidingProxy *)self audioStream];
      v29 = 0;
      v18 = [audioStream3 prepareAudioStreamSyncWithRequest:streamRequest error:&v29];
      v19 = v29;

      if (self->_streamClientType != 1 || ![(CSAudioStreamProvidingProxy *)self _isHubRequest])
      {
        goto LABEL_23;
      }

      v20 = +[CSSiriClientBehaviorMonitor sharedInstance];
      audioStream4 = [(CSAudioStreamProvidingProxy *)self audioStream];
      [v20 notifyPreparedSiriClientAudioStream:audioStream4 successfully:v18];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_audioStreamProviding);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v28 = 0;
      v20 = [WeakRetained audioStreamWithRequest:streamRequest streamName:v24 error:&v28];
      v19 = v28;

      v18 = v20 != 0;
      if (v20)
      {
        [v20 setDelegate:self];
        [(CSAudioStreamProvidingProxy *)self setAudioStream:v20];
      }

      else
      {
        v25 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v26 = v25;
          localizedDescription = [v19 localizedDescription];
          *buf = 136315394;
          v31 = "[CSAudioStreamProvidingProxy _handleAudioStreamPrepareMessage:messageBody:client:]";
          v32 = 2114;
          v33 = localizedDescription;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Getting audio stream has failed : %{public}@", buf, 0x16u);
        }
      }

      if (self->_streamClientType != 1 || ![(CSAudioStreamProvidingProxy *)self _isHubRequest])
      {
        goto LABEL_22;
      }

      audioStream4 = +[CSSiriClientBehaviorMonitor sharedInstance];
      [audioStream4 notifyFetchedSiriClientAudioStream:v20 successfully:v20 != 0];
    }

LABEL_22:
LABEL_23:
    [(CSAudioStreamProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:v18 error:v19];

    goto LABEL_24;
  }

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v31 = "[CSAudioStreamProvidingProxy _handleAudioStreamPrepareMessage:messageBody:client:]";
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Cannot handle PrepareRequest throught XPC : audioStreamProviding is nil", buf, 0xCu);
  }

  streamRequest = [NSError errorWithDomain:CSErrorDomain code:1401 userInfo:0];
  [(CSAudioStreamProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:0 error:streamRequest];
LABEL_24:
}

- (void)_handleAudioStreamRequestMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v10 = xpc_dictionary_get_dictionary(body, "audioStreamRequest");
  if (v10)
  {
    audioStreamProviding = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];

    if (audioStreamProviding)
    {
      v12 = [[CSAudioStreamRequest alloc] initWithXPCObject:v10];
      self->_clientRequestedSkipMonitorUpdate = [v12 requestSkipClientMonitorUpdate];
      WeakRetained = objc_loadWeakRetained(&self->_audioStreamProviding);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v27 = 0;
      v16 = [WeakRetained audioStreamWithRequest:v12 streamName:v15 error:&v27];
      v17 = v27;

      if (v16)
      {
        [v16 setDelegate:self];
        [(CSAudioStreamProvidingProxy *)self setAudioStream:v16];
      }

      else
      {
        v22 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v25 = v22;
          localizedDescription = [v17 localizedDescription];
          *buf = 136315394;
          v29 = "[CSAudioStreamProvidingProxy _handleAudioStreamRequestMessage:messageBody:client:]";
          v30 = 2114;
          v31 = localizedDescription;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Getting audio stream has failed : %{public}@", buf, 0x16u);
        }
      }

      [(CSAudioStreamProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:v16 != 0 error:v17];
      streamClientType = self->_streamClientType;
      if (streamClientType == 4)
      {
        v24 = +[CSIntuitiveConvAudioCaptureMonitor sharedInstance];
        [v24 notifyFetchedAudioStream:v16 successfully:v16 != 0];
      }

      else
      {
        if (streamClientType != 1 || ![(CSAudioStreamProvidingProxy *)self _isHubRequest])
        {
          goto LABEL_20;
        }

        v24 = +[CSSiriClientBehaviorMonitor sharedInstance];
        [v24 notifyFetchedSiriClientAudioStream:v16 successfully:v16 != 0];
      }

LABEL_20:
      goto LABEL_21;
    }

    v21 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[CSAudioStreamProvidingProxy _handleAudioStreamRequestMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Cannot handle AudioStreamRequest throught XPC : audioStreamProviding is nil", buf, 0xCu);
    }

    v19 = CSErrorDomain;
    v20 = 1401;
  }

  else
  {
    v18 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[CSAudioStreamProvidingProxy _handleAudioStreamRequestMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Cannot handle AudioStreamRequest throught XPC : given audioStreamRequest is nil", buf, 0xCu);
    }

    v19 = CSErrorDomain;
    v20 = 114;
  }

  v12 = [NSError errorWithDomain:v19 code:v20 userInfo:0];
  [(CSAudioStreamProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:0 error:v12];
LABEL_21:
}

- (void)_handleSetCurrentConextMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  bodyCopy = body;
  clientCopy = client;
  audioStreamProviding = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];

  if (audioStreamProviding)
  {
    v12 = xpc_dictionary_get_dictionary(bodyCopy, "context");
    if (v12)
    {
      v13 = [[CSAudioRecordContext alloc] initWithXPCObject:v12];
      [(CSAudioStreamProvidingProxy *)self setRecordContext:v13];
      WeakRetained = objc_loadWeakRetained(&self->_audioStreamProviding);
      v19 = 0;
      v15 = [WeakRetained setCurrentContext:v13 error:&v19];
      v16 = v19;

      [(CSAudioStreamProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:v15 error:v16];
    }

    else
    {
      v18 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v21 = "[CSAudioStreamProvidingProxy _handleSetCurrentConextMessage:messageBody:client:]";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Cannot handle setCurrentContext throught XPC : given context is nil", buf, 0xCu);
      }

      v13 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
      [(CSAudioStreamProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:0 error:v13];
    }
  }

  else
  {
    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[CSAudioStreamProvidingProxy _handleSetCurrentConextMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Cannot handle setCurrentContext throught XPC : audioStreamProviding is nil", buf, 0xCu);
    }

    v12 = [NSError errorWithDomain:CSErrorDomain code:1401 userInfo:0];
    [(CSAudioStreamProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:0 error:v12];
  }
}

- (void)_handleSupportsDuckingWithStreamHandleID:(id)d messageBody:(id)body client:(id)client
{
  clientCopy = client;
  dCopy = d;
  audioStreamProviding = [(CSAudioStreamProvidingProxy *)self audioStreamProviding];

  if (audioStreamProviding)
  {
    WeakRetained = objc_loadWeakRetained(&self->_audioStreamProviding);
    v15 = 0;
    v11 = [WeakRetained supportsDuckingOnCurrentRouteWithError:&v15];
    v12 = v15;

    [(CSAudioStreamProvidingProxy *)self _sendReply:dCopy client:clientCopy result:v11 error:v12];
  }

  else
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[CSAudioStreamProvidingProxy _handleSupportsDuckingWithStreamHandleID:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Cannot handle setCurrentContext throught XPC : audioStreamProviding is nil", buf, 0xCu);
    }

    v14 = [NSError errorWithDomain:CSErrorDomain code:1401 userInfo:0];
    [(CSAudioStreamProvidingProxy *)self _sendReply:dCopy client:clientCopy result:0 error:v14];
    v12 = clientCopy;
    clientCopy = dCopy;
    dCopy = v14;
  }
}

- (void)handleXPCMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  bodyCopy = body;
  clientCopy = client;
  int64 = xpc_dictionary_get_int64(bodyCopy, "type");
  v12 = int64;
  if (int64 > 7)
  {
    if (int64 <= 10)
    {
      if (int64 == 8)
      {
        [(CSAudioStreamProvidingProxy *)self _handleRecordDeviceInfo:messageCopy messageBody:bodyCopy client:clientCopy];
      }

      else if (int64 == 9)
      {
        [(CSAudioStreamProvidingProxy *)self _handleRecordSettings:messageCopy messageBody:bodyCopy client:clientCopy];
      }

      else
      {
        [(CSAudioStreamProvidingProxy *)self _handleIsNarrowband:messageCopy messageBody:bodyCopy client:clientCopy];
      }

      goto LABEL_33;
    }

    if (int64 > 99)
    {
      if (int64 == 100)
      {
        [(CSAudioStreamProvidingProxy *)self _handleVoiceTriggerInfoMessage:messageCopy messageBody:bodyCopy client:clientCopy];
        goto LABEL_33;
      }

      if (int64 == 102)
      {
        [(CSAudioStreamProvidingProxy *)self _handleSupportsDuckingWithStreamHandleID:messageCopy messageBody:bodyCopy client:clientCopy];
        goto LABEL_33;
      }
    }

    else
    {
      if (int64 == 11)
      {
        [(CSAudioStreamProvidingProxy *)self _handlePlaybackRouteMessage:messageCopy messageBody:bodyCopy client:clientCopy];
        goto LABEL_33;
      }

      if (int64 == 12)
      {
        [(CSAudioStreamProvidingProxy *)self _handleAudioDeviceInfo:messageCopy messageBody:bodyCopy client:clientCopy];
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (int64 > 3)
    {
      if (int64 > 5)
      {
        if (int64 == 6)
        {
          [(CSAudioStreamProvidingProxy *)self _handleIsRecordingMessage:messageCopy messageBody:bodyCopy client:clientCopy];
        }

        else
        {
          [(CSAudioStreamProvidingProxy *)self _handleRecordRouteMessage:messageCopy messageBody:bodyCopy client:clientCopy];
        }
      }

      else if (int64 == 4)
      {
        [(CSAudioStreamProvidingProxy *)self _handleStartAudioStreamMessage:messageCopy messageBody:bodyCopy client:clientCopy];
      }

      else
      {
        [(CSAudioStreamProvidingProxy *)self _handleStopAudioStreamMessage:messageCopy messageBody:bodyCopy client:clientCopy];
      }

      goto LABEL_33;
    }

    switch(int64)
    {
      case 1:
        [(CSAudioStreamProvidingProxy *)self _handleSetCurrentConextMessage:messageCopy messageBody:bodyCopy client:clientCopy];
        goto LABEL_33;
      case 2:
        [(CSAudioStreamProvidingProxy *)self _handleAudioStreamRequestMessage:messageCopy messageBody:bodyCopy client:clientCopy];
        goto LABEL_33;
      case 3:
        [(CSAudioStreamProvidingProxy *)self _handleAudioStreamPrepareMessage:messageCopy messageBody:bodyCopy client:clientCopy];
        goto LABEL_33;
    }
  }

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "[CSAudioStreamProvidingProxy handleXPCMessage:messageBody:client:]";
    v16 = 2050;
    v17 = v12;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Unknown body type : %{public}lld", &v14, 0x16u);
  }

LABEL_33:
}

- (void)CSClientXPCConnectionReceivedClientError:(id)error clientError:(id)clientError client:(id)client
{
  errorCopy = error;
  clientErrorCopy = clientError;
  clientCopy = client;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[CSAudioStreamProvidingProxy CSClientXPCConnectionReceivedClientError:clientError:client:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s CSAudioStreamProvidingProxy has received xpc disconnection", buf, 0xCu);
  }

  audioStream = [(CSAudioStreamProvidingProxy *)self audioStream];

  if (audioStream)
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[CSAudioStreamProvidingProxy CSClientXPCConnectionReceivedClientError:clientError:client:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Trying to stop audio stream on CSAudioStreamProvidingProxy", buf, 0xCu);
    }

    clientRequestedSkipMonitorUpdate = self->_clientRequestedSkipMonitorUpdate;
    audioStream2 = [(CSAudioStreamProvidingProxy *)self audioStream];
    isStreaming = [audioStream2 isStreaming];

    if ((isStreaming & 1) == 0)
    {
      v17 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        audioStream3 = [(CSAudioStreamProvidingProxy *)self audioStream];
        name = [audioStream3 name];
        *buf = 136315394;
        v31 = "[CSAudioStreamProvidingProxy CSClientXPCConnectionReceivedClientError:clientError:client:]";
        v32 = 2114;
        v33 = name;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s audioStream %{public}@ already stopped streaming, we will skip monitor notification in this case", buf, 0x16u);
      }

      clientRequestedSkipMonitorUpdate = 1;
    }

    v21 = [[CSAudioStopStreamOption alloc] initWithStopRecordingReason:5 expectedStopHostTime:0 trailingSilenceDurationAtEndpoint:0 holdRequest:0 supportsMagus:0.0];
    [(CSAudioStreamProvidingProxy *)self _setAllowMixableAudioWhileRecordingIfNeeded:1];
    if (clientRequestedSkipMonitorUpdate)
    {
      goto LABEL_23;
    }

    streamClientType = self->_streamClientType;
    if (streamClientType > 2)
    {
      if (streamClientType == 3)
      {
        v23 = CSCommandControlBehaviorMonitor;
        goto LABEL_21;
      }

      if (streamClientType == 4)
      {
        sharedInstance = +[CSIntuitiveConvAudioCaptureMonitor sharedInstance];
        [sharedInstance notifyWillStopAudioCaptureWithReason:1];
LABEL_22:
      }
    }

    else
    {
      if (streamClientType == 1)
      {
        if ([(CSAudioStreamProvidingProxy *)self _isHubRequest])
        {
          sharedInstance = +[CSSiriClientBehaviorMonitor sharedInstance];
          [sharedInstance notifyWillStopStream:0 reason:1 withEventUUID:self->_recordEventUUID];
        }

        else
        {
          sharedInstance = +[CSAccessorySiriClientBehaviorMonitor sharedInstance];
          [sharedInstance notifyWillStopStream:0 reason:1 forAccessory:self->_accessoryId];
        }

        goto LABEL_22;
      }

      if (streamClientType == 2)
      {
        v23 = CSOpportuneSpeakBehaviorMonitor;
LABEL_21:
        sharedInstance = [(__objc2_class *)v23 sharedInstance];
        [sharedInstance notifyWillStopStream:0];
        goto LABEL_22;
      }
    }

LABEL_23:
    audioStream4 = [(CSAudioStreamProvidingProxy *)self audioStream];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100023690;
    v27[3] = &unk_10024E750;
    v29 = clientRequestedSkipMonitorUpdate;
    v27[4] = self;
    v28 = v21;
    v26 = v21;
    [audioStream4 stopAudioStreamWithOption:0 completion:v27];
  }
}

- (void)_sendReply:(id)reply client:(id)client result:(BOOL)result error:(id)error
{
  replyCopy = reply;
  clientCopy = client;
  errorCopy = error;
  if (!replyCopy)
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[CSAudioStreamProvidingProxy _sendReply:client:result:error:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s event is nil", &v18, 0xCu);
    }
  }

  reply = xpc_dictionary_create_reply(replyCopy);
  replyCopy2 = reply;
  if (reply)
  {
    xpc_dictionary_set_BOOL(reply, "result", result);
    if (errorCopy)
    {
      domain = [errorCopy domain];
      xpc_dictionary_set_string(replyCopy2, "resultErrorDomain", [domain UTF8String]);

      xpc_dictionary_set_int64(replyCopy2, "resultErrorCode", [errorCopy code]);
    }

    if (clientCopy)
    {
      xpc_connection_send_message(clientCopy, replyCopy2);
    }

    else
    {
      v17 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[CSAudioStreamProvidingProxy _sendReply:client:result:error:]";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s client is null", &v18, 0xCu);
      }
    }
  }

  else
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[CSAudioStreamProvidingProxy _sendReply:client:result:error:]";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s reply is nil", &v18, 0xCu);
    }
  }
}

- (void)setInitialContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    [(CSAudioStreamProvidingProxy *)self setRecordContext:contextCopy];
    if ([contextCopy type] == 17 || objc_msgSend(contextCopy, "type") == 18)
    {
      deviceId = [contextCopy deviceId];
      accessoryId = self->_accessoryId;
      self->_accessoryId = deviceId;
    }
  }
}

- (void)setAudioStreamProvidingForProxy:(id)proxy
{
  proxyCopy = proxy;
  objc_storeWeak(&self->_audioStreamProviding, proxyCopy);
  audioStream = [(CSAudioStreamProvidingProxy *)self audioStream];
  streamProvider = [audioStream streamProvider];

  if (streamProvider != proxyCopy)
  {
    audioStream2 = [(CSAudioStreamProvidingProxy *)self audioStream];
    isStreaming = [audioStream2 isStreaming];

    if (isStreaming)
    {
      v9 = +[CSDiagnosticReporter sharedInstance];
      [v9 submitAudioIssueReport:kCSDiagnosticReporterAudioStreamDeallocDuringStreaming];

      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
      {
        v11 = v10;
        audioStream3 = [(CSAudioStreamProvidingProxy *)self audioStream];
        name = [audioStream3 name];
        v14 = 136315394;
        v15 = "[CSAudioStreamProvidingProxy setAudioStreamProvidingForProxy:]";
        v16 = 2114;
        v17 = name;
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%s Audio steam %{public}@ is still streaming when we get new streamProvider", &v14, 0x16u);
      }
    }

    [(CSAudioStreamProvidingProxy *)self setAudioStream:0];
  }
}

- (CSAudioStreamProvidingProxy)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = CSAudioStreamProvidingProxy;
  v5 = [(CSAudioStreamProvidingProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CSAudioStreamProvidingProxy *)v5 setXpcConnection:connectionCopy];
  }

  return v6;
}

@end