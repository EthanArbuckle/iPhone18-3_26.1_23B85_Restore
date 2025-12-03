@interface CSXPCClient
+ (id)createAudioStreamMessageWithRequest:(id)request;
+ (id)createPrepareAudioStreamMessageWithRequest:(id)request;
+ (id)createStartAudioStreamMessageWithOption:(id)option;
+ (id)createStopAudioStreamMessageWithOption:(id)option;
- (BOOL)activateAudioSessionWithReason:(unint64_t)reason dynamicAttribute:(unint64_t)attribute bundleID:(id)d error:(id *)error;
- (BOOL)deactivateAudioSession:(unint64_t)session error:(id *)error;
- (BOOL)fallbackDeactivateAudioSession:(unint64_t)session error:(id *)error;
- (BOOL)isConnected;
- (BOOL)isNarrowBand;
- (BOOL)isRecording;
- (BOOL)playAlertSoundForType:(int64_t)type;
- (BOOL)playRecordStartingAlertAndResetEndpointerWithAlertOverride:(int64_t)override;
- (BOOL)prepareAudioProviderWithContext:(id)context clientType:(unint64_t)type error:(id *)error;
- (BOOL)prepareAudioStreamSync:(id)sync request:(id)request error:(id *)error;
- (BOOL)prewarmAudioSessionWithError:(id *)error;
- (BOOL)sendMessageAndReplySync:(id)sync error:(id *)error;
- (BOOL)setAlertSoundFromURL:(id)l forType:(int64_t)type force:(BOOL)force;
- (BOOL)setCurrentContext:(id)context error:(id *)error;
- (BOOL)supportsDuckingOnCurrentRouteWithError:(id *)error;
- (CSAudioAlertProvidingDelegate)audioAlertProvidingDelegate;
- (CSAudioSessionProvidingDelegate)audioSessionProvidingDelegate;
- (CSAudioStreamProvidingDelegate)audioStreamProvidingDelegate;
- (CSXPCClient)initWithType:(unint64_t)type;
- (CSXPCClientDelegate)delegate;
- (float)averagePowerForChannel:(unint64_t)channel;
- (float)peakPowerForChannel:(unint64_t)channel;
- (id)_decodeError:(id)error;
- (id)_getSerialQueueWithName:(id)name targetQueue:(id)queue;
- (id)audioChunkFrom:(unint64_t)from to:(unint64_t)to;
- (id)audioChunkFrom:(unint64_t)from to:(unint64_t)to channelIdx:(unint64_t)idx;
- (id)audioChunkToEndFrom:(unint64_t)from;
- (id)audioChunkToEndFrom:(unint64_t)from channelIdx:(unint64_t)idx;
- (id)audioDeviceInfo;
- (id)audioMetric;
- (id)audioStreamWithRequest:(id)request streamName:(id)name error:(id *)error;
- (id)holdAudioStreamWithDescription:(id)description option:(id)option;
- (id)playbackRoute;
- (id)recordDeviceInfo;
- (id)recordRoute;
- (id)recordSettings;
- (unint64_t)alertStartTime;
- (unint64_t)audioStreamId;
- (unint64_t)hostTimeFromSampleCount:(unint64_t)uint64;
- (unint64_t)sampleCountFromHostTime:(unint64_t)uint64;
- (unsigned)audioSessionIdForDeviceId:(id)id;
- (void)_disconnect;
- (void)_handleAlertProvidingDelegateDidFinishAlertPlayback:(id)playback;
- (void)_handleAlertProvidingDelegateMessageBody:(id)body;
- (void)_handleListenerDisconnectedError:(id)error;
- (void)_handleListenerError:(id)error;
- (void)_handleListenerEvent:(id)event;
- (void)_handleListenerMessage:(id)message;
- (void)_handleSessionInfoProvidingDelegateInterruptionNotification:(id)notification;
- (void)_handleSessionInfoProvidingDelegateMediaServicesWereLostNotification:(id)notification;
- (void)_handleSessionInfoProvidingDelegateMediaServicesWereResetNotification:(id)notification;
- (void)_handleSessionInfoProvidingDelegateMessageBody:(id)body;
- (void)_handleSessionInfoProvidingDelegateRouteChangeNotification:(id)notification;
- (void)_handleSessionProvidingDelegateBeginInterruption:(id)interruption;
- (void)_handleSessionProvidingDelegateBeginInterruptionWithContext:(id)context;
- (void)_handleSessionProvidingDelegateDidChangeContext:(id)context;
- (void)_handleSessionProvidingDelegateDidSetAudioSession:(id)session;
- (void)_handleSessionProvidingDelegateEndInterruption:(id)interruption;
- (void)_handleSessionProvidingDelegateMessageBody:(id)body;
- (void)_handleSessionProvidingDelegateStreamHandleIdInvalidation:(id)invalidation;
- (void)_handleSessionProvidingDelegateWillSetAudioSession:(id)session;
- (void)_handleStreamProvidingDelegateChunkAvailable:(id)available;
- (void)_handleStreamProvidingDelegateChunkForTVAvailable:(id)available;
- (void)_handleStreamProvidingDelegateDidStopUnexpectedly:(id)unexpectedly;
- (void)_handleStreamProvidingDelegateHardwareConfigChange:(id)change;
- (void)_handleStreamProvidingDelegateMessageBody:(id)body;
- (void)_sendMessageAsync:(id)async completion:(id)completion;
- (void)_sendXPCClientType;
- (void)acousticSLResultForContext:(id)context completion:(id)completion;
- (void)attachTandemStream:(id)stream withConfig:(id)config toPrimaryStream:(id)primaryStream completion:(id)completion;
- (void)audioStreamWithRequest:(id)request streamName:(id)name completion:(id)completion;
- (void)cancelAudioStreamHold:(id)hold;
- (void)configureAlertBehavior:(id)behavior;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)enableMiniDucking:(BOOL)ducking;
- (void)enableSmartRoutingConsideration:(BOOL)consideration;
- (void)pingpong:(id)pingpong;
- (void)prepareAudioStream:(id)stream request:(id)request completion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)saveRecordingBufferFrom:(unint64_t)from to:(unint64_t)to toURL:(id)l;
- (void)saveRecordingBufferToEndFrom:(unint64_t)from toURL:(id)l;
- (void)sendMessageAsync:(id)async completion:(id)completion;
- (void)setAnnounceCallsEnabled:(BOOL)enabled withStreamHandleID:(unint64_t)d;
- (void)setDuckOthersOption:(BOOL)option;
- (void)setMeteringEnabled:(BOOL)enabled;
- (void)startAudioStream:(id)stream option:(id)option completion:(id)completion;
- (void)stopAudioStream:(id)stream option:(id)option completion:(id)completion;
- (void)triggerInfoForContext:(id)context completion:(id)completion;
- (void)unregisterObserver:(id)observer;
- (void)updateMeters;
@end

@implementation CSXPCClient

- (CSXPCClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSAudioAlertProvidingDelegate)audioAlertProvidingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audioAlertProvidingDelegate);

  return WeakRetained;
}

- (CSAudioStreamProvidingDelegate)audioStreamProvidingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audioStreamProvidingDelegate);

  return WeakRetained;
}

- (CSAudioSessionProvidingDelegate)audioSessionProvidingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audioSessionProvidingDelegate);

  return WeakRetained;
}

- (void)_handleStreamProvidingDelegateHardwareConfigChange:(id)change
{
  int64 = xpc_dictionary_get_int64(change, "hardwareConfig");
  audioStream = [(CSXPCClient *)self audioStream];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    audioStream2 = [(CSXPCClient *)self audioStream];
    [audioStream2 audioStreamProvider:self didHardwareConfigurationChange:int64];
  }
}

- (void)_handleStreamProvidingDelegateChunkForTVAvailable:(id)available
{
  v4 = xpc_dictionary_get_dictionary(available, "chunk");
  if (v4)
  {
    v9 = v4;
    v5 = [[CSAudioChunkForTV alloc] initWithXPCObject:v4];
    audioStream = [(CSXPCClient *)self audioStream];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      audioStream2 = [(CSXPCClient *)self audioStream];
      [audioStream2 audioStreamProvider:self audioChunkForTVAvailable:v5];
    }

    v4 = v9;
  }
}

- (void)_handleStreamProvidingDelegateChunkAvailable:(id)available
{
  v4 = xpc_dictionary_get_dictionary(available, "chunk");
  if (v4)
  {
    v9 = v4;
    v5 = [[CSAudioChunk alloc] initWithXPCObject:v4];
    audioStream = [(CSXPCClient *)self audioStream];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      audioStream2 = [(CSXPCClient *)self audioStream];
      [audioStream2 audioStreamProvider:self audioBufferAvailable:v5];
    }

    v4 = v9;
  }
}

- (void)_handleStreamProvidingDelegateDidStopUnexpectedly:(id)unexpectedly
{
  int64 = xpc_dictionary_get_int64(unexpectedly, "stopReason");
  audioStream = [(CSXPCClient *)self audioStream];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    audioStream2 = [(CSXPCClient *)self audioStream];
    [audioStream2 audioStreamProvider:self didStopStreamUnexpectedly:int64];
  }
}

- (void)_handleStreamProvidingDelegateMessageBody:(id)body
{
  bodyCopy = body;
  int64 = xpc_dictionary_get_int64(bodyCopy, "type");
  v6 = int64;
  if (int64 > 2)
  {
    if (int64 == 3)
    {
      [(CSXPCClient *)self _handleStreamProvidingDelegateChunkForTVAvailable:bodyCopy];
      goto LABEL_12;
    }

    if (int64 == 4)
    {
      [(CSXPCClient *)self _handleStreamProvidingDelegateHardwareConfigChange:bodyCopy];
      goto LABEL_12;
    }
  }

  else
  {
    if (int64 == 1)
    {
      [(CSXPCClient *)self _handleStreamProvidingDelegateDidStopUnexpectedly:bodyCopy];
      goto LABEL_12;
    }

    if (int64 == 2)
    {
      [(CSXPCClient *)self _handleStreamProvidingDelegateChunkAvailable:bodyCopy];
      goto LABEL_12;
    }
  }

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[CSXPCClient _handleStreamProvidingDelegateMessageBody:]";
    v10 = 2050;
    v11 = v6;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Unexpected type : %{public}lld", &v8, 0x16u);
  }

LABEL_12:
}

- (void)_handleSessionInfoProvidingDelegateMediaServicesWereResetNotification:(id)notification
{
  notificationCopy = notification;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[CSXPCClient _handleSessionInfoProvidingDelegateMediaServicesWereResetNotification:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_audioSessionInfoObservers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 audioSessionInfoProvider:self didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:{0, v12}];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_handleSessionInfoProvidingDelegateMediaServicesWereLostNotification:(id)notification
{
  notificationCopy = notification;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[CSXPCClient _handleSessionInfoProvidingDelegateMediaServicesWereLostNotification:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_audioSessionInfoObservers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 audioSessionInfoProvider:self didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:{0, v12}];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_handleSessionInfoProvidingDelegateRouteChangeNotification:(id)notification
{
  v4 = xpc_dictionary_get_dictionary(notification, "notificationInfo");
  if (v4)
  {
    v5 = [NSDictionary alloc];
    v6 = [v5 _cs_initWithXPCObject:v4];

    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[CSXPCClient _handleSessionInfoProvidingDelegateRouteChangeNotification:]";
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Received notificationInfo %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[CSXPCClient _handleSessionInfoProvidingDelegateRouteChangeNotification:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to parse notificationInfo from raw data", buf, 0xCu);
    }

    v6 = 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_audioSessionInfoObservers;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 audioSessionInfoProvider:self didReceiveAudioSessionRouteChangeNotificationWithUserInfo:{v6, v15}];
        }
      }

      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)_handleSessionInfoProvidingDelegateInterruptionNotification:(id)notification
{
  v4 = xpc_dictionary_get_dictionary(notification, "notificationInfo");
  if (v4)
  {
    v5 = [NSDictionary alloc];
    v6 = [v5 _cs_initWithXPCObject:v4];

    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[CSXPCClient _handleSessionInfoProvidingDelegateInterruptionNotification:]";
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Received notificationInfo %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[CSXPCClient _handleSessionInfoProvidingDelegateInterruptionNotification:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to parse notificationInfo from raw data", buf, 0xCu);
    }

    v6 = 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_audioSessionInfoObservers;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 audioSessionInfoProvider:self didReceiveAudioSessionInterruptionNotificationWithUserInfo:{v6, v15}];
        }
      }

      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)_handleSessionInfoProvidingDelegateMessageBody:(id)body
{
  bodyCopy = body;
  int64 = xpc_dictionary_get_int64(bodyCopy, "type");
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSXPCClient _handleSessionInfoProvidingDelegateMessageBody:]";
    v10 = 2050;
    v11 = int64;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s SessionInfoProvidingDelegate messageType : %{public}lld", &v8, 0x16u);
  }

  if (int64 > 2)
  {
    if (int64 == 3)
    {
      [(CSXPCClient *)self _handleSessionInfoProvidingDelegateMediaServicesWereLostNotification:bodyCopy];
      goto LABEL_14;
    }

    if (int64 == 4)
    {
      [(CSXPCClient *)self _handleSessionInfoProvidingDelegateMediaServicesWereResetNotification:bodyCopy];
      goto LABEL_14;
    }
  }

  else
  {
    if (int64 == 1)
    {
      [(CSXPCClient *)self _handleSessionInfoProvidingDelegateInterruptionNotification:bodyCopy];
      goto LABEL_14;
    }

    if (int64 == 2)
    {
      [(CSXPCClient *)self _handleSessionInfoProvidingDelegateRouteChangeNotification:bodyCopy];
      goto LABEL_14;
    }
  }

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[CSXPCClient _handleSessionInfoProvidingDelegateMessageBody:]";
    v10 = 2050;
    v11 = int64;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Unexpected type : %{public}lld", &v8, 0x16u);
  }

LABEL_14:
}

- (void)_handleSessionProvidingDelegateDidChangeContext:(id)context
{
  v4 = xpc_dictionary_get_BOOL(context, "didChangeContextFlag");
  audioSessionProvidingDelegate = [(CSXPCClient *)self audioSessionProvidingDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    audioSessionProvidingDelegate2 = [(CSXPCClient *)self audioSessionProvidingDelegate];
    [audioSessionProvidingDelegate2 audioSessionProvider:self didChangeContext:v4];
  }
}

- (void)_handleSessionProvidingDelegateStreamHandleIdInvalidation:(id)invalidation
{
  v4 = xpc_dictionary_get_BOOL(invalidation, "streamHandleIdInvalidationflag");
  audioSessionProvidingDelegate = [(CSXPCClient *)self audioSessionProvidingDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    audioSessionProvidingDelegate2 = [(CSXPCClient *)self audioSessionProvidingDelegate];
    [audioSessionProvidingDelegate2 audioSessionProvider:self providerInvalidated:v4];
  }
}

- (void)_handleSessionProvidingDelegateDidSetAudioSession:(id)session
{
  v4 = xpc_dictionary_get_BOOL(session, "didSetAudioSessionActive");
  audioSessionProvidingDelegate = [(CSXPCClient *)self audioSessionProvidingDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    audioSessionProvidingDelegate2 = [(CSXPCClient *)self audioSessionProvidingDelegate];
    [audioSessionProvidingDelegate2 audioSessionProvider:self didSetAudioSessionActive:v4];
  }
}

- (void)_handleSessionProvidingDelegateWillSetAudioSession:(id)session
{
  v4 = xpc_dictionary_get_BOOL(session, "willSetAudioSessionActive");
  audioSessionProvidingDelegate = [(CSXPCClient *)self audioSessionProvidingDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    audioSessionProvidingDelegate2 = [(CSXPCClient *)self audioSessionProvidingDelegate];
    [audioSessionProvidingDelegate2 audioSessionProvider:self willSetAudioSessionActive:v4];
  }
}

- (void)_handleSessionProvidingDelegateEndInterruption:(id)interruption
{
  audioSessionProvidingDelegate = [(CSXPCClient *)self audioSessionProvidingDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    audioSessionProvidingDelegate2 = [(CSXPCClient *)self audioSessionProvidingDelegate];
    [audioSessionProvidingDelegate2 audioSessionProviderEndInterruption:self];
  }
}

- (void)_handleSessionProvidingDelegateBeginInterruptionWithContext:(id)context
{
  v4 = xpc_dictionary_get_dictionary(context, "interruptionContext");
  if (v4)
  {
    v5 = [NSDictionary alloc];
    v6 = [v5 _cs_initWithXPCObject:v4];

    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[CSXPCClient _handleSessionProvidingDelegateBeginInterruptionWithContext:]";
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s context : %{public}@", &v12, 0x16u);
    }

    audioSessionProvidingDelegate = [(CSXPCClient *)self audioSessionProvidingDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      audioSessionProvidingDelegate2 = [(CSXPCClient *)self audioSessionProvidingDelegate];
      [audioSessionProvidingDelegate2 audioSessionProviderBeginInterruption:self withContext:v6];
    }
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSXPCClient _handleSessionProvidingDelegateBeginInterruptionWithContext:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s invalid context", &v12, 0xCu);
    }
  }
}

- (void)_handleSessionProvidingDelegateBeginInterruption:(id)interruption
{
  audioSessionProvidingDelegate = [(CSXPCClient *)self audioSessionProvidingDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    audioSessionProvidingDelegate2 = [(CSXPCClient *)self audioSessionProvidingDelegate];
    [audioSessionProvidingDelegate2 audioSessionProviderBeginInterruption:self];
  }
}

- (void)_handleSessionProvidingDelegateMessageBody:(id)body
{
  bodyCopy = body;
  int64 = xpc_dictionary_get_int64(bodyCopy, "type");
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSXPCClient _handleSessionProvidingDelegateMessageBody:]";
    v10 = 2050;
    v11 = int64;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s SessionProvidingDelegate messageType : %{public}lld", &v8, 0x16u);
  }

  if (int64 <= 3)
  {
    switch(int64)
    {
      case 1:
        [(CSXPCClient *)self _handleSessionProvidingDelegateWillSetAudioSession:bodyCopy];
        goto LABEL_21;
      case 2:
        [(CSXPCClient *)self _handleSessionProvidingDelegateBeginInterruption:bodyCopy];
        goto LABEL_21;
      case 3:
        [(CSXPCClient *)self _handleSessionProvidingDelegateBeginInterruptionWithContext:bodyCopy];
        goto LABEL_21;
    }
  }

  else if (int64 > 9)
  {
    if (int64 == 10)
    {
      [(CSXPCClient *)self _handleSessionProvidingDelegateStreamHandleIdInvalidation:bodyCopy];
      goto LABEL_21;
    }

    if (int64 == 11)
    {
      [(CSXPCClient *)self _handleSessionProvidingDelegateDidChangeContext:bodyCopy];
      goto LABEL_21;
    }
  }

  else
  {
    if (int64 == 4)
    {
      [(CSXPCClient *)self _handleSessionProvidingDelegateEndInterruption:bodyCopy];
      goto LABEL_21;
    }

    if (int64 == 5)
    {
      [(CSXPCClient *)self _handleSessionProvidingDelegateDidSetAudioSession:bodyCopy];
      goto LABEL_21;
    }
  }

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[CSXPCClient _handleSessionProvidingDelegateMessageBody:]";
    v10 = 2050;
    v11 = int64;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Unexpected type : %{public}lld", &v8, 0x16u);
  }

LABEL_21:
}

- (void)_handleAlertProvidingDelegateDidFinishAlertPlayback:(id)playback
{
  xdict = playback;
  int64 = xpc_dictionary_get_int64(xdict, "didFinishAlertPlayback");
  if (xpc_dictionary_get_string(xdict, "errorDomain"))
  {
    string = xpc_dictionary_get_string(xdict, "errorDomain");
    v6 = xpc_dictionary_get_int64(xdict, "errorCode");
    v7 = [NSString stringWithUTF8String:string];
    v8 = [NSError errorWithDomain:v7 code:v6 userInfo:0];
  }

  else
  {
    v8 = 0;
  }

  audioAlertProvidingDelegate = [(CSXPCClient *)self audioAlertProvidingDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    audioAlertProvidingDelegate2 = [(CSXPCClient *)self audioAlertProvidingDelegate];
    [audioAlertProvidingDelegate2 audioAlertProvidingDidFinishAlertPlayback:self ofType:int64 error:v8];
  }
}

- (void)_handleAlertProvidingDelegateMessageBody:(id)body
{
  bodyCopy = body;
  int64 = xpc_dictionary_get_int64(bodyCopy, "type");
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSXPCClient _handleAlertProvidingDelegateMessageBody:]";
    v10 = 2050;
    v11 = int64;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s AlertProvidingDelegate messageType : %{public}lld", &v8, 0x16u);
  }

  if (int64 == 1)
  {
    [(CSXPCClient *)self _handleAlertProvidingDelegateDidFinishAlertPlayback:bodyCopy];
  }

  else
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[CSXPCClient _handleAlertProvidingDelegateMessageBody:]";
      v10 = 2050;
      v11 = int64;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Unexpected type : %{public}lld", &v8, 0x16u);
    }
  }
}

- (void)_handleListenerDisconnectedError:(id)error
{
  audioStream = [(CSXPCClient *)self audioStream];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    audioStream2 = [(CSXPCClient *)self audioStream];
    [audioStream2 audioStreamProvider:self didStopStreamUnexpectedly:1];
  }

  delegate = [(CSXPCClient *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained CSXPCClient:self didDisconnect:1];
  }
}

- (void)_handleListenerError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v12 = 136315394;
    v13 = "[CSXPCClient _handleListenerError:]";
    v14 = 2050;
    v15 = 0;
    v8 = "%s cannot handle error : error = %{public}p";
    goto LABEL_15;
  }

  if (errorCopy != &_xpc_error_connection_invalid && errorCopy != &_xpc_error_connection_interrupted)
  {
    string = xpc_dictionary_get_string(errorCopy, _xpc_error_key_description);
    v10 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v12 = 136315394;
    v13 = "[CSXPCClient _handleListenerError:]";
    v14 = 2082;
    v15 = string;
    v8 = "%s connection error: %{public}s";
LABEL_15:
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v8, &v12, 0x16u);
    goto LABEL_13;
  }

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[CSXPCClient _handleListenerError:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Listener connection disconnected", &v12, 0xCu);
  }

  [(CSXPCClient *)self _handleListenerDisconnectedError:v5];
LABEL_13:
}

- (void)_handleListenerMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    int64 = xpc_dictionary_get_int64(messageCopy, "type");
    v7 = xpc_dictionary_get_dictionary(v5, "body");
    if (int64 > 6)
    {
      if (int64 == 7)
      {
        [(CSXPCClient *)self _handleAlertProvidingDelegateMessageBody:v7];
        goto LABEL_15;
      }

      if (int64 == 11)
      {
        [(CSXPCClient *)self _handleSessionInfoProvidingDelegateMessageBody:v7];
        goto LABEL_15;
      }
    }

    else
    {
      if (int64 == 3)
      {
        [(CSXPCClient *)self _handleSessionProvidingDelegateMessageBody:v7];
        goto LABEL_15;
      }

      if (int64 == 5)
      {
        [(CSXPCClient *)self _handleStreamProvidingDelegateMessageBody:v7];
LABEL_15:

        goto LABEL_16;
      }
    }

    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[CSXPCClient _handleListenerMessage:]";
      v12 = 2050;
      v13 = int64;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Unexpected message type : %{public}lld", &v10, 0x16u);
    }

    goto LABEL_15;
  }

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315138;
    v11 = "[CSXPCClient _handleListenerMessage:]";
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Cannot handle nil message", &v10, 0xCu);
  }

LABEL_16:
}

- (void)_handleListenerEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    type = xpc_get_type(eventCopy);
    if (type == &_xpc_type_dictionary)
    {
      [(CSXPCClient *)self _handleListenerMessage:v5];
      goto LABEL_11;
    }

    if (type == &_xpc_type_error)
    {
      [(CSXPCClient *)self _handleListenerError:v5];
      goto LABEL_11;
    }

    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSXPCClient _handleListenerEvent:]";
      v8 = "%s ignore unknown types of message ";
      v9 = v7;
      v10 = 12;
LABEL_8:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &v12, v10);
    }
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[CSXPCClient _handleListenerEvent:]";
      v14 = 2050;
      v15 = 0;
      v8 = "%s cannot handle event : event = %{public}p";
      v9 = v11;
      v10 = 22;
      goto LABEL_8;
    }
  }

LABEL_11:
}

- (BOOL)sendMessageAndReplySync:(id)sync error:(id *)error
{
  syncCopy = sync;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000440E4;
  v20 = sub_1000440F4;
  v21 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000440FC;
  v11[3] = &unk_100252278;
  v8 = syncCopy;
  v12 = v8;
  selfCopy = self;
  v14 = &v22;
  v15 = &v16;
  dispatch_async_and_wait(xpcClientQueue, v11);
  if (error)
  {
    *error = v17[5];
  }

  v9 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

- (id)_decodeError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    string = xpc_dictionary_get_string(errorCopy, "resultErrorDomain");
    if (string)
    {
      int64 = xpc_dictionary_get_int64(v4, "resultErrorCode");
      v7 = [NSString stringWithUTF8String:string];
      string = [NSError errorWithDomain:v7 code:int64 userInfo:0];
    }
  }

  else
  {
    string = 0;
  }

  return string;
}

- (void)_sendMessageAsync:(id)async completion:(id)completion
{
  asyncCopy = async;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_xpcClientQueue);
  if (asyncCopy && (xpcConnection = self->_xpcConnection) != 0)
  {
    xpcReplyQueue = self->_xpcReplyQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000443DC;
    v11[3] = &unk_10024F1F8;
    v11[4] = self;
    v12 = completionCopy;
    xpc_connection_send_message_with_reply(xpcConnection, asyncCopy, xpcReplyQueue, v11);
  }

  else if (completionCopy)
  {
    v10 = [NSError errorWithDomain:CSErrorDomain code:1252 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

- (void)sendMessageAsync:(id)async completion:(id)completion
{
  asyncCopy = async;
  completionCopy = completion;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004457C;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v12 = asyncCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = asyncCopy;
  dispatch_async(xpcClientQueue, block);
}

- (BOOL)fallbackDeactivateAudioSession:(unint64_t)session error:(id *)error
{
  *keys = *off_10024F1E0;
  values[0] = xpc_int64_create(1);
  values[1] = xpc_int64_create(session);
  v7 = xpc_dictionary_create(keys, values, 2uLL);
  *v15 = *off_100252E40;
  v14[0] = xpc_int64_create(17);
  v8 = v7;
  v14[1] = v8;
  v9 = xpc_dictionary_create(v15, v14, 2uLL);
  v10 = [(CSXPCClient *)self sendMessageAndReplySync:v9 error:error, v14[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  return v10;
}

- (unint64_t)sampleCountFromHostTime:(unint64_t)uint64
{
  *keys = *off_10024F1D0;
  values[0] = xpc_int64_create(2);
  values[1] = xpc_uint64_create(uint64);
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  *v24 = *off_100252E40;
  v23[0] = xpc_int64_create(14);
  v6 = v5;
  v23[1] = v6;
  v7 = xpc_dictionary_create(v24, v23, 2uLL);
  v8 = v7;
  if (!v7)
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[CSXPCClient sampleCountFromHostTime:]";
      *&buf[12] = 2050;
      *&buf[14] = uint64;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s No message for sampleCountFromHostTime request with hostTime %{public}llu", buf, 0x16u);
    }

    goto LABEL_7;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = sub_1000440E4;
  v21 = sub_1000440F4;
  v22 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100044994;
  v15[3] = &unk_100252000;
  v15[4] = self;
  v17 = buf;
  v16 = v7;
  v18 = uint64;
  dispatch_async_and_wait(xpcClientQueue, v15);
  v10 = *(*&buf[8] + 40);
  if (v10)
  {
    uint64 = xpc_dictionary_get_uint64(*(*&buf[8] + 40), "replySampleCount");
  }

  _Block_object_dispose(buf, 8);
  if (!v10)
  {
LABEL_7:
    uint64 = 0;
  }

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  return uint64;
}

- (unint64_t)hostTimeFromSampleCount:(unint64_t)uint64
{
  *keys = *off_10024F1C0;
  values[0] = xpc_int64_create(1);
  values[1] = xpc_uint64_create(uint64);
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  *v24 = *off_100252E40;
  v23[0] = xpc_int64_create(14);
  v6 = v5;
  v23[1] = v6;
  v7 = xpc_dictionary_create(v24, v23, 2uLL);
  v8 = v7;
  if (!v7)
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[CSXPCClient hostTimeFromSampleCount:]";
      *&buf[12] = 2050;
      *&buf[14] = uint64;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s No message for hostTimeFromSampleCount request with sampleCount %{public}llu", buf, 0x16u);
    }

    goto LABEL_7;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = sub_1000440E4;
  v21 = sub_1000440F4;
  v22 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100044D9C;
  v15[3] = &unk_100252000;
  v15[4] = self;
  v17 = buf;
  v16 = v7;
  v18 = uint64;
  dispatch_async_and_wait(xpcClientQueue, v15);
  v10 = *(*&buf[8] + 40);
  if (v10)
  {
    uint64 = xpc_dictionary_get_uint64(*(*&buf[8] + 40), "replyHostTime");
  }

  _Block_object_dispose(buf, 8);
  if (!v10)
  {
LABEL_7:
    uint64 = 0;
  }

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  return uint64;
}

- (unsigned)audioSessionIdForDeviceId:(id)id
{
  idCopy = id;
  keys = "type";
  values = xpc_int64_create(1);
  v5 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (idCopy)
  {
    v6 = idCopy;
    xpc_dictionary_set_string(v5, "deviceID", [idCopy UTF8String]);
  }

  *v27 = *off_100252E40;
  v26[0] = xpc_int64_create(10);
  v7 = v5;
  v26[1] = v7;
  v8 = xpc_dictionary_create(v27, v26, 2uLL);
  v9 = v8;
  if (!v8)
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[CSXPCClient audioSessionIdForDeviceId:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s No message!!", &buf, 0xCu);
    }

    goto LABEL_11;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = sub_1000440E4;
  v24 = sub_1000440F4;
  v25 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000451F0;
  block[3] = &unk_100252228;
  block[4] = self;
  p_buf = &buf;
  v17 = v8;
  dispatch_async_and_wait(xpcClientQueue, block);
  v11 = *(*(&buf + 1) + 40);
  if (v11)
  {
    LODWORD(self) = xpc_dictionary_get_uint64(*(*(&buf + 1) + 40), "sessionID");
  }

  else
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315138;
      v20 = "[CSXPCClient audioSessionIdForDeviceId:]";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s NO reply!!!", v19, 0xCu);
    }
  }

  _Block_object_dispose(&buf, 8);
  if (!v11)
  {
LABEL_11:
    LODWORD(self) = 0;
  }

  for (i = 1; i != -1; --i)
  {
  }

  return self;
}

- (void)unregisterObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_audioSessionInfoObservers removeObject:?];
  }
}

- (void)registerObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_audioSessionInfoObservers addObject:?];
  }
}

- (void)attachTandemStream:(id)stream withConfig:(id)config toPrimaryStream:(id)primaryStream completion:(id)completion
{
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315138;
    v8 = "[CSXPCClient attachTandemStream:withConfig:toPrimaryStream:completion:]";
    _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s Not implemented", &v7, 0xCu);
  }
}

- (void)setAnnounceCallsEnabled:(BOOL)enabled withStreamHandleID:(unint64_t)d
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315138;
    v6 = "[CSXPCClient setAnnounceCallsEnabled:withStreamHandleID:]";
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s Not implemented", &v5, 0xCu);
  }
}

- (BOOL)isRecording
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315138;
    v5 = "[CSXPCClient isRecording]";
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "%s Not implemented", &v4, 0xCu);
  }

  return 0;
}

- (void)cancelAudioStreamHold:(id)hold
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315138;
    v5 = "[CSXPCClient cancelAudioStreamHold:]";
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%s Not implemented", &v4, 0xCu);
  }
}

- (id)holdAudioStreamWithDescription:(id)description option:(id)option
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = "[CSXPCClient holdAudioStreamWithDescription:option:]";
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s Not implemented", &v6, 0xCu);
  }

  return 0;
}

- (void)saveRecordingBufferToEndFrom:(unint64_t)from toURL:(id)l
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315138;
    v6 = "[CSXPCClient saveRecordingBufferToEndFrom:toURL:]";
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s Not implemented", &v5, 0xCu);
  }
}

- (void)saveRecordingBufferFrom:(unint64_t)from to:(unint64_t)to toURL:(id)l
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = "[CSXPCClient saveRecordingBufferFrom:to:toURL:]";
    _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s Not implemented", &v6, 0xCu);
  }
}

- (id)audioChunkToEndFrom:(unint64_t)from channelIdx:(unint64_t)idx
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = "[CSXPCClient audioChunkToEndFrom:channelIdx:]";
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s Not implemented", &v6, 0xCu);
  }

  return 0;
}

- (id)audioChunkToEndFrom:(unint64_t)from
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315138;
    v6 = "[CSXPCClient audioChunkToEndFrom:]";
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%s Not implemented", &v5, 0xCu);
  }

  return 0;
}

- (id)audioChunkFrom:(unint64_t)from to:(unint64_t)to channelIdx:(unint64_t)idx
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315138;
    v8 = "[CSXPCClient audioChunkFrom:to:channelIdx:]";
    _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s Not implemented", &v7, 0xCu);
  }

  return 0;
}

- (id)audioChunkFrom:(unint64_t)from to:(unint64_t)to
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = "[CSXPCClient audioChunkFrom:to:]";
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s Not implemented", &v6, 0xCu);
  }

  return 0;
}

- (unint64_t)audioStreamId
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315138;
    v5 = "[CSXPCClient audioStreamId]";
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "%s Not implemented", &v4, 0xCu);
  }

  return 0;
}

- (id)playbackRoute
{
  keys = "type";
  values = xpc_int64_create(11);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  *v23 = *off_100252E40;
  v22[0] = xpc_int64_create(4);
  v4 = v3;
  v22[1] = v4;
  v5 = xpc_dictionary_create(v23, v22, 2uLL);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000440E4;
  v20 = sub_1000440F4;
  v21 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100045CE4;
  block[3] = &unk_100252228;
  v7 = v5;
  v13 = v7;
  selfCopy = self;
  v15 = &v16;
  dispatch_async_and_wait(xpcClientQueue, block);
  v8 = v17[5];
  if (v8)
  {
    v9 = xpc_dictionary_get_value(v8, "playbackRoute");

    if (v9)
    {
      v9 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v17[5], "playbackRoute")];
    }
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v16, 8);
  for (i = 1; i != -1; --i)
  {
  }

  return v9;
}

- (BOOL)isNarrowBand
{
  keys = "type";
  values = xpc_int64_create(10);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  *v23 = *off_100252E40;
  v22[0] = xpc_int64_create(4);
  v4 = v3;
  v22[1] = v4;
  v5 = xpc_dictionary_create(v23, v22, 2uLL);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000440E4;
  v20 = sub_1000440F4;
  v21 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100045F40;
  block[3] = &unk_100252228;
  v7 = v5;
  v13 = v7;
  selfCopy = self;
  v15 = &v16;
  dispatch_async_and_wait(xpcClientQueue, block);
  v8 = v17[5];
  if (v8)
  {
    v9 = xpc_dictionary_get_BOOL(v8, "result");
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v16, 8);
  for (i = 1; i != -1; --i)
  {
  }

  return v9;
}

- (id)recordSettings
{
  keys = "type";
  values = xpc_int64_create(9);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  *v25 = *off_100252E40;
  v24[0] = xpc_int64_create(4);
  v4 = v3;
  v24[1] = v4;
  v5 = xpc_dictionary_create(v25, v24, 2uLL);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000440E4;
  v22 = sub_1000440F4;
  v23 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046204;
  block[3] = &unk_100252228;
  v7 = v5;
  v15 = v7;
  selfCopy = self;
  v17 = &v18;
  dispatch_async_and_wait(xpcClientQueue, block);
  v8 = v19[5];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = xpc_dictionary_get_value(v8, "recordSettings");

  if (v9)
  {
    v10 = xpc_dictionary_get_value(v19[5], "recordSettings");
    if (v10)
    {
      v11 = [NSDictionary alloc];
      v9 = [v11 _cs_initWithXPCObject:v10];

      goto LABEL_6;
    }

LABEL_5:
    v9 = 0;
  }

LABEL_6:

  _Block_object_dispose(&v18, 8);
  for (i = 1; i != -1; --i)
  {
  }

  return v9;
}

- (id)audioDeviceInfo
{
  keys = "type";
  values = xpc_int64_create(12);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  *v22 = *off_100252E40;
  v21[0] = xpc_int64_create(4);
  v4 = v3;
  v21[1] = v4;
  v5 = xpc_dictionary_create(v22, v21, 2uLL);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000440E4;
  v19 = sub_1000440F4;
  v20 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046440;
  block[3] = &unk_100252228;
  v12 = v5;
  selfCopy = self;
  v14 = &v15;
  v7 = v5;
  dispatch_async_and_wait(xpcClientQueue, block);
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);
  for (i = 1; i != -1; --i)
  {
  }

  return v8;
}

- (id)recordDeviceInfo
{
  keys = "type";
  values = xpc_int64_create(8);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  *v24 = *off_100252E40;
  v23[0] = xpc_int64_create(4);
  v4 = v3;
  v23[1] = v4;
  v5 = xpc_dictionary_create(v24, v23, 2uLL);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000440E4;
  v21 = sub_1000440F4;
  v22 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046764;
  block[3] = &unk_100252228;
  v7 = v5;
  v14 = v7;
  selfCopy = self;
  v16 = &v17;
  dispatch_async_and_wait(xpcClientQueue, block);
  v8 = v18[5];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = xpc_dictionary_get_value(v8, "recordDeviceInfo");

  if (v9)
  {
    v10 = xpc_dictionary_get_value(v18[5], "recordDeviceInfo");
    if (v10)
    {
      v9 = [[CSFAudioRecordDeviceInfo alloc] initWithXPCObject:v10];

      goto LABEL_6;
    }

LABEL_5:
    v9 = 0;
  }

LABEL_6:

  _Block_object_dispose(&v17, 8);
  for (i = 1; i != -1; --i)
  {
  }

  return v9;
}

- (id)recordRoute
{
  keys = "type";
  values = xpc_int64_create(7);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  *v23 = *off_100252E40;
  v22[0] = xpc_int64_create(4);
  v4 = v3;
  v22[1] = v4;
  v5 = xpc_dictionary_create(v23, v22, 2uLL);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000440E4;
  v20 = sub_1000440F4;
  v21 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046A10;
  block[3] = &unk_100252228;
  v7 = v5;
  v13 = v7;
  selfCopy = self;
  v15 = &v16;
  dispatch_async_and_wait(xpcClientQueue, block);
  v8 = v17[5];
  if (v8)
  {
    v9 = xpc_dictionary_get_value(v8, "recordRoute");

    if (v9)
    {
      v9 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v17[5], "recordRoute")];
    }
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v16, 8);
  for (i = 1; i != -1; --i)
  {
  }

  return v9;
}

- (void)triggerInfoForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000470B0;
  v31[3] = &unk_10024F190;
  completionCopy = completion;
  v32 = completionCopy;
  v8 = objc_retainBlock(v31);
  *keys = *off_10024F1B0;
  values[0] = xpc_int64_create(100);
  values[1] = [contextCopy xpcObject];
  v9 = xpc_dictionary_create(keys, values, 2uLL);
  *v43 = *off_100252E40;
  v42[0] = xpc_int64_create(4);
  v10 = v9;
  v42[1] = v10;
  v11 = xpc_dictionary_create(v43, v42, 2uLL);
  v12 = CSLogContextFacilityCoreSpeech;
  if (v11)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[CSXPCClient triggerInfoForContext:completion:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Sending VoiceTriggerInfo request", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x3032000000;
    v39 = sub_1000440E4;
    v40 = sub_1000440F4;
    v41 = 0;
    xpcClientQueue = self->_xpcClientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000470C8;
    block[3] = &unk_100252228;
    block[4] = self;
    p_buf = &buf;
    v29 = v11;
    dispatch_async_and_wait(xpcClientQueue, block);
    v14 = *(*(&buf + 1) + 40);
    if (!v14 || !xpc_dictionary_get_BOOL(v14, "result"))
    {
      v22 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *v33 = 136315138;
        v34 = "[CSXPCClient triggerInfoForContext:completion:]";
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Failed to get VoiceTriggerInfo request", v33, 0xCu);
      }

      (v8[2])(v8, 0, 0);
      goto LABEL_27;
    }

    v27 = xpc_dictionary_get_dictionary(*(*(&buf + 1) + 40), "voiceTriggerInfo");
    v15 = xpc_dictionary_get_dictionary(*(*(&buf + 1) + 40), "rtsTriggerInfo");
    if (v27)
    {
      v16 = [NSDictionary alloc];
      v17 = [v16 _cs_initWithXPCObject:v27];

      v18 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 136315394;
        v34 = "[CSXPCClient triggerInfoForContext:completion:]";
        v35 = 2114;
        v36 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Received VoiceTriggerInfo %{public}@", v33, 0x16u);
      }

      if (v15)
      {
LABEL_10:
        v19 = [NSDictionary alloc];
        v20 = [v19 _cs_initWithXPCObject:v15];

        v21 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 136315394;
          v34 = "[CSXPCClient triggerInfoForContext:completion:]";
          v35 = 2114;
          v36 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Received rtsTriggerInfo %{public}@", v33, 0x16u);
        }

LABEL_26:
        (v8[2])(v8, v17, v20);

LABEL_27:
        _Block_object_dispose(&buf, 8);

        goto LABEL_28;
      }
    }

    else
    {
      if ([contextCopy isVoiceTriggered])
      {
        v23 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *v33 = 136315138;
          v34 = "[CSXPCClient triggerInfoForContext:completion:]";
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Failed to parse VoiceTriggerInfo from raw data", v33, 0xCu);
        }
      }

      v17 = 0;
      if (v15)
      {
        goto LABEL_10;
      }
    }

    if ([contextCopy isRTSTriggered])
    {
      v24 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *v33 = 136315138;
        v34 = "[CSXPCClient triggerInfoForContext:completion:]";
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Failed to parse rtsTriggerInfo from raw data", v33, 0xCu);
      }
    }

    v20 = 0;
    goto LABEL_26;
  }

  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSXPCClient triggerInfoForContext:completion:]";
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Message not valid", &buf, 0xCu);
  }

  (v8[2])(v8, 0, 0);
LABEL_28:

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }
}

- (void)acousticSLResultForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100047440;
  v20[3] = &unk_10024F168;
  completionCopy = completion;
  v21 = completionCopy;
  v8 = objc_retainBlock(v20);
  keys = *off_10024F1B0;
  values[0] = xpc_int64_create(101);
  values[1] = [contextCopy xpcObject];
  v9 = xpc_dictionary_create(&keys, values, 2uLL);
  v25 = *off_100252E40;
  v24[0] = xpc_int64_create(4);
  v10 = v9;
  v24[1] = v10;
  v11 = xpc_dictionary_create(&v25, v24, 2uLL);
  v12 = CSLogContextFacilityCoreSpeech;
  if (v11)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[CSXPCClient acousticSLResultForContext:completion:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Sending AcousticSLResult request", buf, 0xCu);
    }

    xpcClientQueue = self->_xpcClientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100047458;
    block[3] = &unk_100252E58;
    block[4] = self;
    v17 = v11;
    v19 = v8;
    v18 = contextCopy;
    dispatch_async(xpcClientQueue, block);
  }

  else
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[CSXPCClient acousticSLResultForContext:completion:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Message not valid", buf, 0xCu);
    }

    (v8[2])(v8, 0);
  }

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }
}

- (void)stopAudioStream:(id)stream option:(id)option completion:(id)completion
{
  optionCopy = option;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100047914;
  v12[3] = &unk_100253220;
  completionCopy = completion;
  v13 = completionCopy;
  v10 = objc_retainBlock(v12);
  if (stream)
  {
    v11 = [CSXPCClient createStopAudioStreamMessageWithOption:optionCopy];
    [(CSXPCClient *)self sendMessageAsync:v11 completion:v10];
  }

  else
  {
    v11 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (v10[2])(v10, 0, v11);
  }
}

- (void)startAudioStream:(id)stream option:(id)option completion:(id)completion
{
  optionCopy = option;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100047A60;
  v12[3] = &unk_100253220;
  completionCopy = completion;
  v13 = completionCopy;
  v10 = objc_retainBlock(v12);
  if (stream && optionCopy)
  {
    v11 = [CSXPCClient createStartAudioStreamMessageWithOption:optionCopy];
    [(CSXPCClient *)self sendMessageAsync:v11 completion:v10];
  }

  else
  {
    v11 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (v10[2])(v10, 0, v11);
  }
}

- (BOOL)supportsDuckingOnCurrentRouteWithError:(id *)error
{
  keys = "type";
  values = xpc_int64_create(102);
  v5 = xpc_dictionary_create(&keys, &values, 1uLL);
  *v12 = *off_100252E40;
  v11[0] = xpc_int64_create(4);
  v6 = v5;
  v11[1] = v6;
  v7 = xpc_dictionary_create(v12, v11, 2uLL);
  v8 = [(CSXPCClient *)self sendMessageAndReplySync:v7 error:error, v11[0]];

  for (i = 1; i != -1; --i)
  {
  }

  return v8;
}

- (void)prepareAudioStream:(id)stream request:(id)request completion:(id)completion
{
  streamCopy = stream;
  requestCopy = request;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100047DD0;
  v16[3] = &unk_100253220;
  completionCopy = completion;
  v17 = completionCopy;
  v11 = objc_retainBlock(v16);
  v12 = CSLogContextFacilityCoreSpeech;
  if (streamCopy && requestCopy)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      name = [streamCopy name];
      *buf = 136315394;
      v19 = "[CSXPCClient prepareAudioStream:request:completion:]";
      v20 = 2114;
      v21 = name;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s PrepareAudioStream %{public}@", buf, 0x16u);
    }

    v15 = [CSXPCClient createPrepareAudioStreamMessageWithRequest:requestCopy];
    [(CSXPCClient *)self sendMessageAsync:v15 completion:v11];
  }

  else
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[CSXPCClient prepareAudioStream:request:completion:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Invalid message: stream is nil or request is nil", buf, 0xCu);
    }

    v15 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (v11[2])(v11, 0, v15);
  }
}

- (BOOL)prepareAudioStreamSync:(id)sync request:(id)request error:(id *)error
{
  syncCopy = sync;
  requestCopy = request;
  v10 = requestCopy;
  v11 = CSLogContextFacilityCoreSpeech;
  if (!syncCopy || !requestCopy)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[CSXPCClient prepareAudioStreamSync:request:error:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Invalid message: stream is nil or request is nil", buf, 0xCu);
      if (error)
      {
        goto LABEL_10;
      }
    }

    else if (error)
    {
LABEL_10:
      [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
      *error = v20 = 0;
      goto LABEL_20;
    }

    v20 = 0;
    goto LABEL_20;
  }

  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    name = [syncCopy name];
    *buf = 136315394;
    *&buf[4] = "[CSXPCClient prepareAudioStreamSync:request:error:]";
    *&buf[12] = 2114;
    *&buf[14] = name;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s PrepareAudioStream %{public}@", buf, 0x16u);
  }

  *keys = *off_10024F130;
  values[0] = xpc_int64_create(3);
  values[1] = [v10 xpcObject];
  v14 = xpc_dictionary_create(keys, values, 2uLL);
  *v45 = *off_100252E40;
  v44[0] = xpc_int64_create(4);
  v15 = v14;
  v44[1] = v15;
  v16 = xpc_dictionary_create(v45, v44, 2uLL);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = sub_1000440E4;
  v42 = sub_1000440F4;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1000440E4;
  v38 = sub_1000440F4;
  v39 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_1000481F8;
  v29 = &unk_100252278;
  v18 = v16;
  v30 = v18;
  selfCopy = self;
  v32 = buf;
  v33 = &v34;
  dispatch_async_and_wait(xpcClientQueue, &v26);
  v19 = *(*&buf[8] + 40);
  if (!v19)
  {
    v20 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v20 = xpc_dictionary_get_BOOL(v19, "result");
  v21 = [(CSXPCClient *)self _decodeError:*(*&buf[8] + 40), v26, v27, v28, v29];
  v22 = v35[5];
  v35[5] = v21;

  if (error)
  {
LABEL_12:
    *error = v35[5];
  }

LABEL_13:

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(buf, 8);

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

LABEL_20:

  return v20;
}

- (void)audioStreamWithRequest:(id)request streamName:(id)name completion:(id)completion
{
  requestCopy = request;
  nameCopy = name;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10004855C;
  v23[3] = &unk_10024F0E8;
  completionCopy = completion;
  v24 = completionCopy;
  v11 = objc_retainBlock(v23);
  if (requestCopy)
  {
    v12 = [CSXPCClient createPrepareAudioStreamMessageWithRequest:requestCopy];
    if (v12)
    {
      v13 = v12;
      v14 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "[CSXPCClient audioStreamWithRequest:streamName:completion:]";
        v27 = 2114;
        v28 = nameCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s audioStreamWithRequest for stream %{public}@", buf, 0x16u);
      }

      xpcClientQueue = self->_xpcClientQueue;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100048574;
      v18[3] = &unk_10024FD80;
      v18[4] = self;
      v16 = v13;
      v19 = v16;
      v20 = nameCopy;
      v21 = requestCopy;
      v22 = v11;
      dispatch_async(xpcClientQueue, v18);
    }

    else
    {
      v17 = [NSError errorWithDomain:CSErrorDomain code:1253 userInfo:0];
      (v11[2])(v11, 0, v17);

      v16 = 0;
    }
  }

  else
  {
    v16 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (v11[2])(v11, 0, v16);
  }
}

- (id)audioStreamWithRequest:(id)request streamName:(id)name error:(id *)error
{
  requestCopy = request;
  nameCopy = name;
  if (requestCopy)
  {
    *keys = *off_10024F130;
    values[0] = xpc_int64_create(2);
    values[1] = [requestCopy xpcObject];
    v10 = xpc_dictionary_create(keys, values, 2uLL);
    *v48 = *off_100252E40;
    v47[0] = xpc_int64_create(4);
    v11 = v10;
    v47[1] = v11;
    v12 = xpc_dictionary_create(v48, v47, 2uLL);
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_1000440E4;
    v41 = sub_1000440F4;
    v42 = 0;
    if (v12)
    {
      v13 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[CSXPCClient audioStreamWithRequest:streamName:error:]";
        *&buf[12] = 2114;
        *&buf[14] = nameCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s audioStreamWithRequest for stream %{public}@", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v44 = sub_1000440E4;
      v45 = sub_1000440F4;
      v46 = 0;
      xpcClientQueue = self->_xpcClientQueue;
      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_100048C78;
      v32 = &unk_100252278;
      selfCopy = self;
      v35 = buf;
      v34 = v12;
      v36 = &v37;
      dispatch_async_and_wait(xpcClientQueue, &v29);
      v15 = *(*&buf[8] + 40);
      if (v15 && (v16 = xpc_dictionary_get_BOOL(v15, "result"), [(CSXPCClient *)self _decodeError:*(*&buf[8] + 40), v29, v30, v31, v32, selfCopy], v17 = objc_claimAutoreleasedReturnValue(), v18 = v38[5], v38[5] = v17, v18, v16))
      {
        v19 = [[CSAudioStream alloc] initWithAudioStreamProvider:self streamName:nameCopy streamRequest:requestCopy];
        audioStream = self->_audioStream;
        p_audioStream = &self->_audioStream;
        *p_audioStream = v19;

        v22 = *p_audioStream;
      }

      else
      {
        v22 = 0;
      }

      _Block_object_dispose(buf, 8);
      if (!error)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v24 = [NSError errorWithDomain:CSErrorDomain code:1253 userInfo:0];
      v25 = v38[5];
      v38[5] = v24;

      v22 = 0;
      if (!error)
      {
        goto LABEL_15;
      }
    }

    *error = v38[5];
LABEL_15:
    v23 = v22;
    _Block_object_dispose(&v37, 8);

    for (i = 1; i != -1; --i)
    {
    }

    for (j = 1; j != -1; --j)
    {
    }

    goto LABEL_19;
  }

  if (*error)
  {
    [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_19:

  return v23;
}

- (BOOL)setCurrentContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (contextCopy)
  {
    *keys = *off_10024F1B0;
    values[0] = xpc_int64_create(1);
    values[1] = [contextCopy xpcObject];
    v7 = xpc_dictionary_create(keys, values, 2uLL);
    *v40 = *off_100252E40;
    v39[0] = xpc_int64_create(4);
    v8 = v7;
    v39[1] = v8;
    v9 = xpc_dictionary_create(v40, v39, 2uLL);
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_1000440E4;
    v37 = sub_1000440F4;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_1000440E4;
    v31 = sub_1000440F4;
    v32 = 0;
    xpcClientQueue = self->_xpcClientQueue;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100049050;
    v22 = &unk_100252278;
    v11 = v9;
    v23 = v11;
    selfCopy = self;
    v25 = &v33;
    v26 = &v27;
    dispatch_async_and_wait(xpcClientQueue, &v19);
    v12 = v34[5];
    if (v12)
    {
      v13 = xpc_dictionary_get_BOOL(v12, "result");
      v14 = [(CSXPCClient *)self _decodeError:v34[5], v19, v20, v21, v22];
      v15 = v28[5];
      v28[5] = v14;

      if (!error)
      {
LABEL_9:

        _Block_object_dispose(&v27, 8);
        _Block_object_dispose(&v33, 8);

        for (i = 1; i != -1; --i)
        {
        }

        for (j = 1; j != -1; --j)
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v13 = 0;
      if (!error)
      {
        goto LABEL_9;
      }
    }

    *error = v28[5];
    goto LABEL_9;
  }

  if (error)
  {
    [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (id)audioMetric
{
  keys = "type";
  values = xpc_int64_create(1);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  *v22 = *off_100252E40;
  v21[0] = xpc_int64_create(9);
  v4 = v3;
  v21[1] = v4;
  v5 = xpc_dictionary_create(v22, v21, 2uLL);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000440E4;
  v19 = sub_1000440F4;
  v20 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000492DC;
  block[3] = &unk_100252228;
  v12 = v5;
  selfCopy = self;
  v14 = &v15;
  v7 = v5;
  dispatch_async_and_wait(xpcClientQueue, block);
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);
  for (i = 1; i != -1; --i)
  {
  }

  return v8;
}

- (float)averagePowerForChannel:(unint64_t)channel
{
  *keys = *off_10024F0D0;
  values[0] = xpc_int64_create(4);
  values[1] = xpc_uint64_create(channel);
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  *v23 = *off_100252E40;
  v22[0] = xpc_int64_create(8);
  v6 = v5;
  v22[1] = v6;
  v7 = xpc_dictionary_create(v23, v22, 2uLL);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004979C;
  block[3] = &unk_100252228;
  v15 = v7;
  selfCopy = self;
  v17 = &v18;
  v9 = v7;
  dispatch_async_and_wait(xpcClientQueue, block);
  v10 = v19[6];

  v11 = 1;
  _Block_object_dispose(&v18, 8);
  do
  {
  }

  while (v11 != -1);

  for (i = 1; i != -1; --i)
  {
  }

  return v10;
}

- (float)peakPowerForChannel:(unint64_t)channel
{
  *keys = *off_10024F0D0;
  values[0] = xpc_int64_create(3);
  values[1] = xpc_uint64_create(channel);
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  *v23 = *off_100252E40;
  v22[0] = xpc_int64_create(8);
  v6 = v5;
  v22[1] = v6;
  v7 = xpc_dictionary_create(v23, v22, 2uLL);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100049AF0;
  block[3] = &unk_100252228;
  v15 = v7;
  selfCopy = self;
  v17 = &v18;
  v9 = v7;
  dispatch_async_and_wait(xpcClientQueue, block);
  v10 = v19[6];

  v11 = 1;
  _Block_object_dispose(&v18, 8);
  do
  {
  }

  while (v11 != -1);

  for (i = 1; i != -1; --i)
  {
  }

  return v10;
}

- (void)updateMeters
{
  keys = "type";
  values = xpc_int64_create(2);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  *v8 = *off_100252E40;
  v7[0] = xpc_int64_create(8);
  v4 = v3;
  v7[1] = v4;
  v5 = xpc_dictionary_create(v8, v7, 2uLL);
  [(CSXPCClient *)self sendMessageAsync:v5 completion:0, v7[0]];

  for (i = 1; i != -1; --i)
  {
  }
}

- (void)setMeteringEnabled:(BOOL)enabled
{
  *keys = *off_10024F0C0;
  values[0] = xpc_int64_create(1);
  values[1] = xpc_BOOL_create(enabled);
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  *v11 = *off_100252E40;
  v10[0] = xpc_int64_create(8);
  v6 = v5;
  v10[1] = v6;
  v7 = xpc_dictionary_create(v11, v10, 2uLL);
  [(CSXPCClient *)self sendMessageAsync:v7 completion:0, v10[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }
}

- (void)configureAlertBehavior:(id)behavior
{
  behaviorCopy = behavior;
  *keys = *off_10024F0B0;
  values[0] = xpc_int64_create(5);
  values[1] = [behaviorCopy _cs_xpcObject];
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  *v11 = *off_100252E40;
  v10[0] = xpc_int64_create(6);
  v6 = v5;
  v10[1] = v6;
  v7 = xpc_dictionary_create(v11, v10, 2uLL);
  [(CSXPCClient *)self sendMessageAsync:v7 completion:0, v10[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }
}

- (unint64_t)alertStartTime
{
  keys = "type";
  values = xpc_int64_create(4);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  *v20 = *off_100252E40;
  v19[0] = xpc_int64_create(6);
  v4 = v3;
  v19[1] = v4;
  v5 = xpc_dictionary_create(v20, v19, 2uLL);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004A194;
  block[3] = &unk_100252228;
  v12 = v5;
  selfCopy = self;
  v14 = &v15;
  v7 = v5;
  dispatch_async_and_wait(xpcClientQueue, block);
  v8 = v16[3];

  v9 = 1;
  _Block_object_dispose(&v15, 8);
  do
  {
  }

  while (v9 != -1);

  return v8;
}

- (BOOL)playRecordStartingAlertAndResetEndpointerWithAlertOverride:(int64_t)override
{
  *keys = *off_10024F0A0;
  values[0] = xpc_int64_create(3);
  values[1] = xpc_int64_create(override);
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  *v13 = *off_100252E40;
  v12[0] = xpc_int64_create(6);
  v6 = v5;
  v12[1] = v6;
  v7 = xpc_dictionary_create(v13, v12, 2uLL);
  v8 = [(CSXPCClient *)self sendMessageAndReplySync:v7 error:0, v12[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  return v8;
}

- (BOOL)playAlertSoundForType:(int64_t)type
{
  *keys = *off_10024F090;
  values[0] = xpc_int64_create(2);
  values[1] = xpc_int64_create(type);
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  *v13 = *off_100252E40;
  v12[0] = xpc_int64_create(6);
  v6 = v5;
  v12[1] = v6;
  v7 = xpc_dictionary_create(v13, v12, 2uLL);
  v8 = [(CSXPCClient *)self sendMessageAndReplySync:v7 error:0, v12[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  return v8;
}

- (BOOL)setAlertSoundFromURL:(id)l forType:(int64_t)type force:(BOOL)force
{
  lCopy = l;
  *keys = *off_10024F078;
  v24 = "forceSetAlert";
  values[0] = xpc_int64_create(1);
  values[1] = xpc_int64_create(type);
  values[2] = xpc_BOOL_create(force);
  v9 = xpc_dictionary_create(keys, values, 3uLL);
  if (lCopy)
  {
    path = [lCopy path];
    v11 = path == 0;

    if (!v11)
    {
      path2 = [lCopy path];
      v13 = path2;
      xpc_dictionary_set_string(v9, "soundPath", [path2 UTF8String]);
    }
  }

  *v21 = *off_100252E40;
  v20[0] = xpc_int64_create(6);
  v14 = v9;
  v20[1] = v14;
  v15 = xpc_dictionary_create(v21, v20, 2uLL);
  v16 = [(CSXPCClient *)self sendMessageAndReplySync:v15 error:0, v20[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 2; j != -1; --j)
  {
  }

  return v16;
}

- (void)enableMiniDucking:(BOOL)ducking
{
  *keys = *off_10024F068;
  values[0] = xpc_int64_create(6);
  values[1] = xpc_BOOL_create(ducking);
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  *v11 = *off_100252E40;
  v10[0] = xpc_int64_create(2);
  v6 = v5;
  v10[1] = v6;
  v7 = xpc_dictionary_create(v11, v10, 2uLL);
  [(CSXPCClient *)self sendMessageAsync:v7 completion:0, v10[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }
}

- (void)enableSmartRoutingConsideration:(BOOL)consideration
{
  *keys = *off_10024F058;
  values[0] = xpc_int64_create(9);
  values[1] = xpc_BOOL_create(consideration);
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  *v11 = *off_100252E40;
  v10[0] = xpc_int64_create(2);
  v6 = v5;
  v10[1] = v6;
  v7 = xpc_dictionary_create(v11, v10, 2uLL);
  [(CSXPCClient *)self sendMessageAsync:v7 completion:0, v10[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }
}

- (void)setDuckOthersOption:(BOOL)option
{
  *keys = *off_10024F048;
  values[0] = xpc_int64_create(5);
  values[1] = xpc_BOOL_create(option);
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  *v11 = *off_100252E40;
  v10[0] = xpc_int64_create(2);
  v6 = v5;
  v10[1] = v6;
  v7 = xpc_dictionary_create(v11, v10, 2uLL);
  [(CSXPCClient *)self sendMessageAsync:v7 completion:0, v10[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }
}

- (BOOL)deactivateAudioSession:(unint64_t)session error:(id *)error
{
  *keys = *off_10024F038;
  values[0] = xpc_int64_create(3);
  values[1] = xpc_int64_create(session);
  v7 = xpc_dictionary_create(keys, values, 2uLL);
  *v15 = *off_100252E40;
  v14[0] = xpc_int64_create(2);
  v8 = v7;
  v14[1] = v8;
  v9 = xpc_dictionary_create(v15, v14, 2uLL);
  v10 = [(CSXPCClient *)self sendMessageAndReplySync:v9 error:error, v14[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  return v10;
}

- (BOOL)activateAudioSessionWithReason:(unint64_t)reason dynamicAttribute:(unint64_t)attribute bundleID:(id)d error:(id *)error
{
  dCopy = d;
  v11 = dCopy;
  *keys = *off_10024F018;
  v25 = *off_10024F028;
  if (dCopy)
  {
    v12 = xpc_string_create([dCopy UTF8String]);
  }

  else
  {
    v12 = 0;
  }

  values[0] = xpc_int64_create(2);
  values[1] = xpc_int64_create(reason);
  values[2] = xpc_int64_create(attribute);
  v13 = v12;
  values[3] = v13;
  v14 = xpc_dictionary_create(keys, values, 4uLL);
  *v22 = *off_100252E40;
  v21[0] = xpc_int64_create(2);
  v15 = v14;
  v21[1] = v15;
  v16 = xpc_dictionary_create(v22, v21, 2uLL);
  v17 = [(CSXPCClient *)self sendMessageAndReplySync:v16 error:error, v21[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 3; j != -1; --j)
  {
  }

  return v17;
}

- (BOOL)prewarmAudioSessionWithError:(id *)error
{
  keys = "type";
  values = xpc_int64_create(1);
  v5 = xpc_dictionary_create(&keys, &values, 1uLL);
  *v12 = *off_100252E40;
  v11[0] = xpc_int64_create(2);
  v6 = v5;
  v11[1] = v6;
  v7 = xpc_dictionary_create(v12, v11, 2uLL);
  v8 = [(CSXPCClient *)self sendMessageAndReplySync:v7 error:error, v11[0]];

  for (i = 1; i != -1; --i)
  {
  }

  return v8;
}

- (void)pingpong:(id)pingpong
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10004B098;
  v10 = &unk_100253220;
  pingpongCopy = pingpong;
  v4 = pingpongCopy;
  v5 = objc_retainBlock(&v7);
  keys = "type";
  values = xpc_int64_create(1);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  [(CSXPCClient *)self sendMessageAsync:v6 completion:v5, v7, v8, v9, v10];
}

- (BOOL)prepareAudioProviderWithContext:(id)context clientType:(unint64_t)type error:(id *)error
{
  contextCopy = context;
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[CSXPCClient prepareAudioProviderWithContext:clientType:error:]";
    *&buf[12] = 2114;
    *&buf[14] = contextCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Prepare Audio Provider with Context : %{public}@", buf, 0x16u);
  }

  *buf = *off_10024F000;
  *&buf[16] = "clientType";
  values[0] = xpc_int64_create(1);
  values[1] = [contextCopy xpcObject];
  values[2] = xpc_uint64_create(type);
  v10 = xpc_dictionary_create(buf, values, 3uLL);
  *keys = *off_100252E40;
  v17[0] = xpc_int64_create(13);
  v11 = v10;
  v17[1] = v11;
  v12 = xpc_dictionary_create(keys, v17, 2uLL);
  v13 = [(CSXPCClient *)self sendMessageAndReplySync:v12 error:error, v17[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 2; j != -1; --j)
  {
  }

  return v13;
}

- (void)_sendXPCClientType
{
  dispatch_assert_queue_V2(self->_xpcClientQueue);
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    xpcClientType = self->_xpcClientType;
    *buf = 136315394;
    *&buf[4] = "[CSXPCClient _sendXPCClientType]";
    *&buf[12] = 1026;
    *&buf[14] = xpcClientType;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Sending XPCClientType : %{public}d", buf, 0x12u);
  }

  keys = "xpcClientType";
  values = xpc_int64_create(self->_xpcClientType);
  v5 = xpc_dictionary_create(&keys, &values, 1uLL);
  *buf = *off_100252E40;
  v9[0] = xpc_int64_create(15);
  v6 = v5;
  v9[1] = v6;
  v7 = xpc_dictionary_create(buf, v9, 2uLL);
  [(CSXPCClient *)self _sendMessageAsync:v7 completion:0, v9[0]];

  for (i = 1; i != -1; --i)
  {
  }
}

- (id)_getSerialQueueWithName:(id)name targetQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    v6 = dispatch_queue_create_with_target_V2([name UTF8String], 0, queueCopy);
  }

  else
  {
    v6 = [CSUtils getSerialQueueWithQOS:33 name:name fixedPriority:kCSDefaultSerialQueueFixedPriority];
  }

  v7 = v6;

  return v7;
}

- (void)dealloc
{
  [(CSXPCClient *)self _disconnect];
  v3.receiver = self;
  v3.super_class = CSXPCClient;
  [(CSXPCClient *)&v3 dealloc];
}

- (void)_disconnect
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    xpc_connection_set_event_handler(xpcConnection, &stru_10024EFE0);
    xpc_connection_cancel(self->_xpcConnection);
    v4 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }
}

- (void)disconnect
{
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004B5C0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(xpcClientQueue, block);
}

- (void)connect
{
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004B63C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(xpcClientQueue, block);
}

- (BOOL)isConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004B8E8;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(xpcClientQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (CSXPCClient)initWithType:(unint64_t)type
{
  v18.receiver = self;
  v18.super_class = CSXPCClient;
  v4 = [(CSXPCClient *)&v18 init];
  if (v4)
  {
    CSLogInitIfNeeded();
    if ((+[CSUtils supportsDispatchWorkloop]& 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = [CSUtils rootQueueWithFixedPriority:kCSDefaultSerialQueueFixedPriority];
    }

    v6 = [(CSXPCClient *)v4 _getSerialQueueWithName:@"CSXPCClient Reply Queue" targetQueue:v5];
    xpcReplyQueue = v4->_xpcReplyQueue;
    v4->_xpcReplyQueue = v6;

    v8 = [(CSXPCClient *)v4 _getSerialQueueWithName:@"CSXPCClient connection Queue" targetQueue:v5];
    xpcClientQueue = v4->_xpcClientQueue;
    v4->_xpcClientQueue = v8;

    v10 = +[NSMutableSet set];
    activationAssertions = v4->_activationAssertions;
    v4->_activationAssertions = v10;

    v12 = +[NSHashTable weakObjectsHashTable];
    audioSessionInfoObservers = v4->_audioSessionInfoObservers;
    v4->_audioSessionInfoObservers = v12;

    v4->_xpcClientType = type;
    v14 = +[NSUUID UUID];
    uUIDString = [v14 UUIDString];
    UUID = v4->_UUID;
    v4->_UUID = uUIDString;
  }

  return v4;
}

+ (id)createStopAudioStreamMessageWithOption:(id)option
{
  optionCopy = option;
  *keys = *off_10024F150;
  values[0] = xpc_int64_create(5);
  values[1] = [optionCopy xpcObject];
  v4 = xpc_dictionary_create(keys, values, 2uLL);
  *v11 = *off_100252E40;
  v10[0] = xpc_int64_create(4);
  v5 = v4;
  v10[1] = v5;
  v6 = xpc_dictionary_create(v11, v10, 2uLL);
  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  return v6;
}

+ (id)createStartAudioStreamMessageWithOption:(id)option
{
  optionCopy = option;
  *keys = *off_10024F140;
  values[0] = xpc_int64_create(4);
  values[1] = [optionCopy xpcObject];
  v4 = xpc_dictionary_create(keys, values, 2uLL);
  *v11 = *off_100252E40;
  v10[0] = xpc_int64_create(4);
  v5 = v4;
  v10[1] = v5;
  v6 = xpc_dictionary_create(v11, v10, 2uLL);
  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  return v6;
}

+ (id)createPrepareAudioStreamMessageWithRequest:(id)request
{
  requestCopy = request;
  *keys = *off_10024F130;
  values[0] = xpc_int64_create(3);
  values[1] = [requestCopy xpcObject];
  v4 = xpc_dictionary_create(keys, values, 2uLL);
  *v11 = *off_100252E40;
  v10[0] = xpc_int64_create(4);
  v5 = v4;
  v10[1] = v5;
  v6 = xpc_dictionary_create(v11, v10, 2uLL);
  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  return v6;
}

+ (id)createAudioStreamMessageWithRequest:(id)request
{
  requestCopy = request;
  *keys = *off_10024F130;
  values[0] = xpc_int64_create(2);
  values[1] = [requestCopy xpcObject];
  v4 = xpc_dictionary_create(keys, values, 2uLL);
  *v11 = *off_100252E40;
  v10[0] = xpc_int64_create(4);
  v5 = v4;
  v10[1] = v5;
  v6 = xpc_dictionary_create(v11, v10, 2uLL);
  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  return v6;
}

@end