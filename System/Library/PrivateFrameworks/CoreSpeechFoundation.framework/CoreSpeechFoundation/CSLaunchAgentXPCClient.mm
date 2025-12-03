@interface CSLaunchAgentXPCClient
+ (id)sharedClient;
- (BOOL)activateSecureSession:(BOOL)session error:(id *)error;
- (BOOL)configAOPVoiceTrigger;
- (BOOL)fetchAndStoreAudioBuffer;
- (BOOL)initAudioRecorderWithError:(id *)error;
- (BOOL)initializeSecondPass;
- (BOOL)prepare;
- (BOOL)prepareAudioRecordWithStreamHandleId:(unint64_t)id settings:(id)settings error:(id *)error;
- (BOOL)sendMessageAndReplySync:(id)sync error:(id *)error;
- (BOOL)setAlertSoundFromURL:(id)l forType:(unint64_t)type;
- (BOOL)setRecordModeForStreamId:(unint64_t)id avvcRecordMode:(unint64_t)mode error:(id *)error;
- (BOOL)setSpeakerProfile:(id)profile numEmbeddings:(unint64_t)embeddings dimension:(unint64_t)dimension speakerRecognizerType:(unint64_t)type;
- (BOOL)startAudioStreamWithOption:(id)option error:(id *)error;
- (BOOL)stopAudioStreamWithError:(id *)error;
- (CSExclaveAudioProvidingDelegate)delegate;
- (CSLaunchAgentXPCClient)init;
- (CSLaunchAgentXPCClientConnectionStatusDelegate)crashMonitorDelegate;
- (id)_decodeError:(id)error;
- (id)recordDeviceInfoWithStreamHandleId:(unint64_t)id;
- (unint64_t)currentSensorStatus;
- (unint64_t)startSensor;
- (unint64_t)stopSensor;
- (void)_connectIfNeeded;
- (void)_disconnect;
- (void)_handleAudioCallbackDelegate:(id)delegate;
- (void)_handleAudioProvidingDelegateAudioBuffer:(id)buffer;
- (void)_handleAudioProvidingDelegateMessageBody:(id)body;
- (void)_handleDidFinishAlertPlaybackDelegate:(id)delegate;
- (void)_handleDidStartRecordingDelegate:(id)delegate;
- (void)_handleDidStopRecordingDelegate:(id)delegate;
- (void)_handleListenerDisconnectedError:(id)error;
- (void)_handleListenerError:(id)error;
- (void)_handleListenerEvent:(id)event;
- (void)_handleListenerMessage:(id)message;
- (void)adBlockerMatchingInProgress:(id)progress;
- (void)adBlockerReset;
- (void)deinitializeSecondPass;
- (void)duckAudioDeviceWithDeviceID:(unsigned int)d duckedLevel:(float)level rampDuration:(float)duration;
- (void)fetchAOPVoiceTriggerResult:(id)result;
- (void)pingpong:(id)pingpong;
- (void)processBargeInVoiceTriggerWithResult:(id)result;
- (void)processSecondPassVoiceTriggerWithShouldFlushAudio:(BOOL)audio result:(id)result;
- (void)requestHistoricalAudioBufferFor:(unint64_t)for startSample:(unint64_t)sample numSamples:(unint64_t)samples hostTime:(unint64_t)time;
- (void)resetAVVC;
- (void)resetFirstPassVoiceTrigger;
- (void)sendAssetsControlMessage:(id)message errorCodeIfFailed:(unint64_t)failed completion:(id)completion;
- (void)sendMessageAsync:(id)async completion:(id)completion;
- (void)sendMessageSync:(id)sync;
- (void)setAdBlockerAsset:(id)asset;
- (void)setAssetForLocale:(id)locale isOTA:(BOOL)a completion:(id)completion;
- (void)setContext:(id)context;
- (void)setDelegate:(id)delegate;
- (void)startAdBlockerMatching;
- (void)startBargeInVoiceTrigger;
- (void)startSecondPassVoiceTriggerWithFirstPassSource:(unint64_t)source enablePHS:(BOOL)s supportMultiPhrase:(BOOL)phrase activeChannel:(unsigned int)channel;
- (void)startSecureAdBlockerMobileAssetLoaderService:(id)service;
- (void)startSecureMobileAssetLoaderService:(BOOL)service completion:(id)completion;
- (void)stopAdBlockerMatching;
- (void)stopBargeInVoiceTrigger;
- (void)stopSecondPassVoiceTrigger;
- (void)stopSecureAdBlockerMobileAssetLoaderService:(id)service;
- (void)stopSecureMobileAssetLoaderService:(id)service;
@end

@implementation CSLaunchAgentXPCClient

- (CSExclaveAudioProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSLaunchAgentXPCClientConnectionStatusDelegate)crashMonitorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_crashMonitorDelegate);

  return WeakRetained;
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
      v7 = MEMORY[0x1E696ABC0];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      string = [v7 errorWithDomain:v8 code:int64 userInfo:0];
    }
  }

  else
  {
    string = 0;
  }

  return string;
}

- (BOOL)sendMessageAndReplySync:(id)sync error:(id *)error
{
  syncCopy = sync;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13094;
  v19 = __Block_byref_object_dispose__13095;
  v20 = 0;
  xpcRequestQueue = self->_xpcRequestQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__CSLaunchAgentXPCClient_sendMessageAndReplySync_error___block_invoke;
  v11[3] = &unk_1E865C808;
  v11[4] = self;
  v8 = syncCopy;
  v12 = v8;
  v13 = &v21;
  v14 = &v15;
  dispatch_async_and_wait(xpcRequestQueue, v11);
  if (error)
  {
    *error = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

uint64_t __56__CSLaunchAgentXPCClient_sendMessageAndReplySync_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _connectIfNeeded];
  v2 = *(a1 + 40);
  if (v2 && (v3 = *(*(a1 + 32) + 16)) != 0)
  {
    v4 = xpc_connection_send_message_with_reply_sync(v3, v2);
    v12 = v4;
    if (v4)
    {
      *(*(*(a1 + 48) + 8) + 24) = xpc_dictionary_get_BOOL(v4, "result");
      [*(a1 + 32) _decodeError:v12];
    }

    else
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:1251 userInfo:0];
    }
    v5 = ;
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v5;

    v8 = v12;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:1252 userInfo:0];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return MEMORY[0x1EEE66BB8](v6, v8);
}

- (void)sendMessageSync:(id)sync
{
  syncCopy = sync;
  xpcRequestQueue = self->_xpcRequestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CSLaunchAgentXPCClient_sendMessageSync___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = syncCopy;
  v6 = syncCopy;
  dispatch_async_and_wait(xpcRequestQueue, v7);
}

void __42__CSLaunchAgentXPCClient_sendMessageSync___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _connectIfNeeded];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 16);
    if (v3)
    {

      xpc_connection_send_message(v3, v2);
    }
  }
}

- (void)sendMessageAsync:(id)async completion:(id)completion
{
  asyncCopy = async;
  completionCopy = completion;
  xpcRequestQueue = self->_xpcRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CSLaunchAgentXPCClient_sendMessageAsync_completion___block_invoke;
  block[3] = &unk_1E865C678;
  block[4] = self;
  v12 = asyncCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = asyncCopy;
  dispatch_async(xpcRequestQueue, block);
}

void __54__CSLaunchAgentXPCClient_sendMessageAsync_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _connectIfNeeded];
  v2 = *(a1 + 40);
  if (v2 && (v3 = *(a1 + 32), (v4 = *(v3 + 16)) != 0))
  {
    v5 = *(v3 + 24);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __54__CSLaunchAgentXPCClient_sendMessageAsync_completion___block_invoke_2;
    handler[3] = &unk_1E865CAF8;
    handler[4] = v3;
    v9 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v4, v2, v5, handler);
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:1252 userInfo:0];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

void __54__CSLaunchAgentXPCClient_sendMessageAsync_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    v4 = xpc_dictionary_get_BOOL(v3, "result");
    v5 = [*(a1 + 32) _decodeError:v8];
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v4, v5);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = 0;
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:1251 userInfo:0];
    (*(v7 + 16))(v7, 0, v5);
  }

  v3 = v8;
LABEL_7:
}

- (void)duckAudioDeviceWithDeviceID:(unsigned int)d duckedLevel:(float)level rampDuration:(float)duration
{
  v20 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E865C640;
  v19 = *&off_1E865C650;
  values[0] = xpc_int64_create(12);
  values[1] = xpc_uint64_create(d);
  values[2] = xpc_double_create(level);
  values[3] = xpc_double_create(duration);
  v9 = xpc_dictionary_create(keys, values, 4uLL);
  *v16 = xmmword_1E865C660;
  v15[0] = xpc_int64_create(2);
  v10 = v9;
  v15[1] = v10;
  v11 = xpc_dictionary_create(v16, v15, 2uLL);
  [(CSLaunchAgentXPCClient *)self sendMessageSync:v11, v15[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 3; j != -1; --j)
  {
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)setAlertSoundFromURL:(id)l forType:(unint64_t)type
{
  v33 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[CSLaunchAgentXPCClient setAlertSoundFromURL:forType:]";
    *&buf[12] = 2112;
    *&buf[14] = lCopy;
    *&buf[22] = 1024;
    typeCopy = type;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s alertURL: %@, forType: %d", buf, 0x1Cu);
  }

  if (!lCopy || ([lCopy path], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9))
  {
    v20 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[CSLaunchAgentXPCClient setAlertSoundFromURL:forType:]";
      _os_log_error_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_ERROR, "%s alert URL is nil", buf, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    *buf = xmmword_1E865C628;
    *&buf[16] = "alertType";
    values[0] = xpc_int64_create(13);
    path = [lCopy path];
    v11 = path;
    values[1] = xpc_string_create([path UTF8String]);
    values[2] = xpc_uint64_create(type);

    v12 = xpc_dictionary_create(buf, values, 3uLL);
    *keys = xmmword_1E865C660;
    v28[0] = xpc_int64_create(2);
    v13 = v12;
    v28[1] = v13;
    v14 = xpc_dictionary_create(keys, v28, 2uLL);
    v23 = 0;
    v15 = [(CSLaunchAgentXPCClient *)self sendMessageAndReplySync:v14 error:&v23];
    v16 = v23;
    if (!v15)
    {
      v17 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 136315394;
        v25 = "[CSLaunchAgentXPCClient setAlertSoundFromURL:forType:]";
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_DEFAULT, "%s SetAlertURL is failed with error: %@", v24, 0x16u);
      }
    }

    for (i = 1; i != -1; --i)
    {
    }

    for (j = 2; j != -1; --j)
    {
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)recordDeviceInfoWithStreamHandleId:(unint64_t)id
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSLaunchAgentXPCClient recordDeviceInfoWithStreamHandleId:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &buf, 0xCu);
  }

  if (id)
  {
    *keys = xmmword_1E865C618;
    values[0] = xpc_int64_create(8);
    values[1] = xpc_uint64_create(id);
    v6 = xpc_dictionary_create(keys, values, 2uLL);
    *v28 = xmmword_1E865C660;
    v27[0] = xpc_int64_create(2);
    v7 = v6;
    v27[1] = v7;
    v8 = xpc_dictionary_create(v28, v27, 2uLL);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__13094;
    v25 = __Block_byref_object_dispose__13095;
    v26 = 0;
    xpcRequestQueue = self->_xpcRequestQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__CSLaunchAgentXPCClient_recordDeviceInfoWithStreamHandleId___block_invoke;
    block[3] = &unk_1E865CC08;
    block[4] = self;
    v10 = v8;
    v20 = v10;
    p_buf = &buf;
    dispatch_async_and_wait(xpcRequestQueue, block);
    v11 = *(*(&buf + 1) + 40);
    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = xpc_dictionary_get_value(v11, "recordDeviceInfo");

    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = xpc_dictionary_get_value(*(*(&buf + 1) + 40), "recordDeviceInfo");
    if (v13)
    {
      v12 = [[CSFAudioRecordDeviceInfo alloc] initWithXPCObject:v13];
    }

    else
    {
LABEL_11:
      v12 = 0;
    }

LABEL_12:

    _Block_object_dispose(&buf, 8);
    for (i = 1; i != -1; --i)
    {
    }

    for (j = 1; j != -1; --j)
    {
    }

    goto LABEL_16;
  }

  v14 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSLaunchAgentXPCClient recordDeviceInfoWithStreamHandleId:]";
    _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, "%s Invalid streamId!!", &buf, 0xCu);
  }

  v12 = 0;
LABEL_16:
  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

_xpc_connection_s *__61__CSLaunchAgentXPCClient_recordDeviceInfoWithStreamHandleId___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _connectIfNeeded];
  v3 = *(a1 + 40);
  if (v3)
  {
    result = *(*(a1 + 32) + 16);
    if (result)
    {
      v4 = xpc_connection_send_message_with_reply_sync(result, v3);
      v5 = *(*(a1 + 48) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      return MEMORY[0x1EEE66BB8](v4, v6);
    }
  }

  return result;
}

- (BOOL)setRecordModeForStreamId:(unint64_t)id avvcRecordMode:(unint64_t)mode error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[CSLaunchAgentXPCClient setRecordModeForStreamId:avvcRecordMode:error:]";
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (!id)
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[CSLaunchAgentXPCClient setRecordModeForStreamId:avvcRecordMode:error:]";
      _os_log_error_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_ERROR, "%s Invalid streamId!!", buf, 0xCu);
      if (error)
      {
        goto LABEL_11;
      }
    }

    else if (error)
    {
LABEL_11:
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:114 userInfo:0];
      *error = v13 = 0;
      goto LABEL_14;
    }

    v13 = 0;
    goto LABEL_14;
  }

  *buf = xmmword_1E865C600;
  v23 = "avvcRecordMode";
  values[0] = xpc_int64_create(7);
  values[1] = xpc_uint64_create(id);
  values[2] = xpc_uint64_create(mode);
  v10 = xpc_dictionary_create(buf, values, 3uLL);
  *keys = xmmword_1E865C660;
  v19[0] = xpc_int64_create(2);
  v11 = v10;
  v19[1] = v11;
  v12 = xpc_dictionary_create(keys, v19, 2uLL);
  v13 = [(CSLaunchAgentXPCClient *)self sendMessageAndReplySync:v12 error:error, v19[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 2; j != -1; --j)
  {
  }

LABEL_14:
  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)resetAVVC
{
  keys[1] = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[CSLaunchAgentXPCClient resetAVVC]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  keys[0] = "type";
  values = xpc_int64_create(11);
  v4 = xpc_dictionary_create(keys, &values, 1uLL);
  *buf = xmmword_1E865C660;
  v9[0] = xpc_int64_create(2);
  v5 = v4;
  v9[1] = v5;
  v6 = xpc_dictionary_create(buf, v9, 2uLL);
  [(CSLaunchAgentXPCClient *)self sendMessageSync:v6, v9[0]];

  for (i = 1; i != -1; --i)
  {
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)stopAudioStreamWithError:(id *)error
{
  keys[1] = *MEMORY[0x1E69E9840];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[CSLaunchAgentXPCClient stopAudioStreamWithError:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v14, 0xCu);
  }

  keys[0] = "type";
  values = xpc_int64_create(10);
  v6 = xpc_dictionary_create(keys, &values, 1uLL);
  *v19 = xmmword_1E865C660;
  v18[0] = xpc_int64_create(2);
  v7 = v6;
  v18[1] = v7;
  v8 = xpc_dictionary_create(v19, v18, 2uLL);
  v9 = [(CSLaunchAgentXPCClient *)self sendMessageAndReplySync:v8 error:error];
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[CSLaunchAgentXPCClient stopAudioStreamWithError:]";
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s stopAudioStream successfully? %d", &v14, 0x12u);
  }

  for (i = 1; i != -1; --i)
  {
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)startAudioStreamWithOption:(id)option error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  optionCopy = option;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[CSLaunchAgentXPCClient startAudioStreamWithOption:error:]";
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (optionCopy)
  {
    *buf = xmmword_1E865C5F0;
    values[0] = xpc_int64_create(9);
    values[1] = [optionCopy xpcObject];
    v8 = xpc_dictionary_create(buf, values, 2uLL);
    *keys = xmmword_1E865C660;
    v16[0] = xpc_int64_create(2);
    v9 = v8;
    v16[1] = v9;
    v10 = xpc_dictionary_create(keys, v16, 2uLL);
    v11 = [(CSLaunchAgentXPCClient *)self sendMessageAndReplySync:v10 error:error, v16[0]];

    for (i = 1; i != -1; --i)
    {
    }

    for (j = 1; j != -1; --j)
    {
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:114 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)prepareAudioRecordWithStreamHandleId:(unint64_t)id settings:(id)settings error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[CSLaunchAgentXPCClient prepareAudioRecordWithStreamHandleId:settings:error:]";
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (!id || !settingsCopy)
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[CSLaunchAgentXPCClient prepareAudioRecordWithStreamHandleId:settings:error:]";
      _os_log_error_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_ERROR, "%s Invalid streamId or settings!!", buf, 0xCu);
      if (error)
      {
        goto LABEL_12;
      }
    }

    else if (error)
    {
LABEL_12:
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:114 userInfo:0];
      *error = v13 = 0;
      goto LABEL_15;
    }

    v13 = 0;
    goto LABEL_15;
  }

  *buf = xmmword_1E865C5D8;
  v23 = "prepareSettings";
  values[0] = xpc_int64_create(6);
  values[1] = xpc_uint64_create(id);
  values[2] = [settingsCopy _cs_xpcObject];
  v10 = xpc_dictionary_create(buf, values, 3uLL);
  *keys = xmmword_1E865C660;
  v19[0] = xpc_int64_create(2);
  v11 = v10;
  v19[1] = v11;
  v12 = xpc_dictionary_create(keys, v19, 2uLL);
  v13 = [(CSLaunchAgentXPCClient *)self sendMessageAndReplySync:v12 error:error, v19[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 2; j != -1; --j)
  {
  }

LABEL_15:

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)setContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[CSLaunchAgentXPCClient setContext:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (contextCopy)
  {
    *buf = xmmword_1E865C5C8;
    values[0] = xpc_int64_create(5);
    values[1] = [contextCopy xpcObject];
    v6 = xpc_dictionary_create(buf, values, 2uLL);
    *keys = xmmword_1E865C660;
    v13[0] = xpc_int64_create(2);
    v7 = v6;
    v13[1] = v7;
    v8 = xpc_dictionary_create(keys, v13, 2uLL);
    [(CSLaunchAgentXPCClient *)self sendMessageSync:v8, v13[0]];

    for (i = 1; i != -1; --i)
    {
    }

    for (j = 1; j != -1; --j)
    {
    }
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[CSLaunchAgentXPCClient setContext:]";
      _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Invalid context!!", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)activateSecureSession:(BOOL)session error:(id *)error
{
  sessionCopy = session;
  v32 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[CSLaunchAgentXPCClient activateSecureSession:error:]";
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  *keys = xmmword_1E865C5B8;
  values[0] = xpc_int64_create(2);
  values[1] = xpc_BOOL_create(sessionCopy);
  v7 = xpc_dictionary_create(keys, values, 2uLL);
  *v29 = xmmword_1E865C660;
  v28[0] = xpc_int64_create(2);
  v8 = v7;
  v28[1] = v8;
  v9 = xpc_dictionary_create(v29, v28, 2uLL);
  date = [MEMORY[0x1E695DF00] date];
  v11 = [(CSLaunchAgentXPCClient *)self sendMessageAndReplySync:v9 error:&errorCopy];
  date2 = [MEMORY[0x1E695DF00] date];
  v13 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    if (sessionCopy)
    {
      v14 = @"activate";
    }

    else
    {
      v14 = @"deactivate";
    }

    v15 = v13;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315650;
    v23 = "[CSLaunchAgentXPCClient activateSecureSession:error:]";
    v24 = 2112;
    v25 = v14;
    v26 = 2048;
    v27 = v16;
    _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s Calling AVVTC %@ secure session under system daemon took: %f", buf, 0x20u);
  }

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)initAudioRecorderWithError:(id *)error
{
  keys[1] = *MEMORY[0x1E69E9840];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[CSLaunchAgentXPCClient initAudioRecorderWithError:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  keys[0] = "type";
  values = xpc_int64_create(1);
  v6 = xpc_dictionary_create(keys, &values, 1uLL);
  *buf = xmmword_1E865C660;
  v13[0] = xpc_int64_create(2);
  v7 = v6;
  v13[1] = v7;
  v8 = xpc_dictionary_create(buf, v13, 2uLL);
  v9 = [(CSLaunchAgentXPCClient *)self sendMessageAndReplySync:v8 error:error, v13[0]];

  for (i = 1; i != -1; --i)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_handleListenerDisconnectedError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_crashMonitorDelegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_crashMonitorDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_crashMonitorDelegate);
      [v8 CSLaunchAgentXPCClientConnectionDisconnected:self];
    }
  }

  v9 = objc_loadWeakRetained(&self->_delegate);

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 CSSystemDaemonDisconnected];
  }

  v11 = +[CSUserSessionActiveMonitor sharedInstance];
  [v11 removeObserver:self];

  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[CSLaunchAgentXPCClient _handleListenerDisconnectedError:]";
    _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s xpcConnection has been nil down", &v15, 0xCu);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleListenerError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315394;
    v14 = "[CSLaunchAgentXPCClient _handleListenerError:]";
    v15 = 2050;
    v16 = 0;
    v8 = "%s cannot handle error : error = %{public}p";
    goto LABEL_15;
  }

  if (errorCopy != MEMORY[0x1E69E9E20] && errorCopy != MEMORY[0x1E69E9E18])
  {
    string = xpc_dictionary_get_string(errorCopy, *MEMORY[0x1E69E9E28]);
    v10 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315394;
    v14 = "[CSLaunchAgentXPCClient _handleListenerError:]";
    v15 = 2082;
    v16 = string;
    v8 = "%s connection error: %{public}s";
LABEL_15:
    _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, v8, &v13, 0x16u);
    goto LABEL_13;
  }

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CSLaunchAgentXPCClient _handleListenerError:]";
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Listener connection disconnected", &v13, 0xCu);
  }

  [(CSLaunchAgentXPCClient *)self _handleListenerDisconnectedError:v5];
LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_handleAudioCallbackDelegate:(id)delegate
{
  v17 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  uint64 = xpc_dictionary_get_uint64(delegateCopy, "audioStreamHandleId");
  v6 = xpc_dictionary_get_uint64(delegateCopy, "hostTime");

  v7 = _handleAudioCallbackDelegate__heartbeat;
  if (!(v7 % +[CSUtils loggingHeartbeatRate]))
  {
    v8 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[CSLaunchAgentXPCClient _handleAudioCallbackDelegate:]";
      v13 = 2050;
      v14 = _handleAudioCallbackDelegate__heartbeat;
      v15 = 2050;
      v16 = uint64;
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Launch Agent received audioCallBack from systemDaemon, heartbeat = %{public}lld, for streamId: %{public}lu", &v11, 0x20u);
    }
  }

  ++_handleAudioCallbackDelegate__heartbeat;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained CSSystemDaemonAudioCallbackForStream:uint64 butterTimestamp:v6];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleDidFinishAlertPlaybackDelegate:(id)delegate
{
  uint64 = xpc_dictionary_get_uint64(delegate, "alertType");
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained CSSystemDaemonDidFinishAlertPlaybackOfType:uint64];
}

- (void)_handleDidStopRecordingDelegate:(id)delegate
{
  delegateCopy = delegate;
  uint64 = xpc_dictionary_get_uint64(delegateCopy, "audioStreamHandleId");
  int64 = xpc_dictionary_get_int64(delegateCopy, "didStopReason");

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained CSSystemDaemonDidStopRecordingForStream:uint64 forReason:int64];
}

- (void)_handleDidStartRecordingDelegate:(id)delegate
{
  delegateCopy = delegate;
  uint64 = xpc_dictionary_get_uint64(delegateCopy, "audioStreamHandleId");
  v6 = xpc_dictionary_get_BOOL(delegateCopy, "didStartResult");

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained CSSystemDaemonDidStartRecordingForStream:uint64 successfully:v6];
}

- (void)_handleAudioProvidingDelegateAudioBuffer:(id)buffer
{
  v16 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[CSLaunchAgentXPCClient _handleAudioProvidingDelegateAudioBuffer:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v14, 0xCu);
  }

  uint64 = xpc_dictionary_get_uint64(bufferCopy, "audioStreamHandleId");
  v7 = xpc_dictionary_get_uint64(bufferCopy, "hostTime");
  v8 = xpc_dictionary_get_value(bufferCopy, "audioBuffer");
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DEF0]);
    v10 = [v9 _cs_initWithXPCObject:v8];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained exclaveRecordClientAudioBuffer:self audioStreamHandleId:uint64 audioBuffer:v10 hostTime:v7];
  }

  else
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[CSLaunchAgentXPCClient _handleAudioProvidingDelegateAudioBuffer:]";
      _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s Invalid raw audio buffer", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleAudioProvidingDelegateMessageBody:(id)body
{
  v13 = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  int64 = xpc_dictionary_get_int64(bodyCopy, "type");
  v6 = int64;
  if (int64 <= 2)
  {
    if (int64 == 1)
    {
      [(CSLaunchAgentXPCClient *)self _handleAudioProvidingDelegateAudioBuffer:bodyCopy];
      goto LABEL_14;
    }

    if (int64 == 2)
    {
      [(CSLaunchAgentXPCClient *)self _handleDidStartRecordingDelegate:bodyCopy];
      goto LABEL_14;
    }
  }

  else
  {
    switch(int64)
    {
      case 3:
        [(CSLaunchAgentXPCClient *)self _handleDidStopRecordingDelegate:bodyCopy];
        goto LABEL_14;
      case 4:
        [(CSLaunchAgentXPCClient *)self _handleDidFinishAlertPlaybackDelegate:bodyCopy];
        goto LABEL_14;
      case 5:
        [(CSLaunchAgentXPCClient *)self _handleAudioCallbackDelegate:bodyCopy];
        goto LABEL_14;
    }
  }

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "[CSLaunchAgentXPCClient _handleAudioProvidingDelegateMessageBody:]";
    v11 = 2050;
    v12 = v6;
    _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Unexpected type : %{public}lld", &v9, 0x16u);
  }

LABEL_14:

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleListenerMessage:(id)message
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    int64 = xpc_dictionary_get_int64(messageCopy, "type");
    v7 = xpc_dictionary_get_dictionary(v5, "body");
    if (int64 == 3)
    {
      [(CSLaunchAgentXPCClient *)self _handleAudioProvidingDelegateMessageBody:v7];
    }

    else
    {
      v9 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "[CSLaunchAgentXPCClient _handleListenerMessage:]";
        v13 = 2050;
        v14 = int64;
        _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s Unexpected message type : %{public}lld", &v11, 0x16u);
      }
    }
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CSLaunchAgentXPCClient _handleListenerMessage:]";
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s Cannot handle nil message", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleListenerEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    v6 = MEMORY[0x1E12BAC70](eventCopy);
    if (v6 == MEMORY[0x1E69E9E80])
    {
      [(CSLaunchAgentXPCClient *)self _handleListenerMessage:v5];
      goto LABEL_11;
    }

    if (v6 == MEMORY[0x1E69E9E98])
    {
      [(CSLaunchAgentXPCClient *)self _handleListenerError:v5];
      goto LABEL_11;
    }

    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[CSLaunchAgentXPCClient _handleListenerEvent:]";
      v8 = "%s ignore unknown types of message ";
      v9 = v7;
      v10 = 12;
LABEL_8:
      _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, v8, &v13, v10);
    }
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[CSLaunchAgentXPCClient _handleListenerEvent:]";
      v15 = 2050;
      v16 = 0;
      v8 = "%s cannot handle event : event = %{public}p";
      v9 = v11;
      v10 = 22;
      goto LABEL_8;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)pingpong:(id)pingpong
{
  keys[1] = *MEMORY[0x1E69E9840];
  pingpongCopy = pingpong;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __35__CSLaunchAgentXPCClient_pingpong___block_invoke;
  v12 = &unk_1E865CAB8;
  v13 = pingpongCopy;
  v5 = pingpongCopy;
  v6 = MEMORY[0x1E12BA300](&v9);
  keys[0] = "type";
  values = xpc_int64_create(1);
  v7 = xpc_dictionary_create(keys, &values, 1uLL);
  [(CSLaunchAgentXPCClient *)self sendMessageAsync:v7 completion:v6, v9, v10, v11, v12];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __35__CSLaunchAgentXPCClient_pingpong___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)adBlockerReset
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[CSLaunchAgentXPCClient adBlockerReset]";
    _os_log_error_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_ERROR, "%s This call is unexpected in macOS", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)stopSecureAdBlockerMobileAssetLoaderService:(id)service
{
  v8 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[CSLaunchAgentXPCClient stopSecureAdBlockerMobileAssetLoaderService:]";
    _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s This call is unexpected in macOS", &v6, 0xCu);
    if (!serviceCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (serviceCopy)
  {
LABEL_3:
    serviceCopy[2](serviceCopy, 4);
  }

LABEL_4:

  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopAdBlockerMatching
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[CSLaunchAgentXPCClient stopAdBlockerMatching]";
    _os_log_error_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_ERROR, "%s This call is unexpected in macOS", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)startSecureAdBlockerMobileAssetLoaderService:(id)service
{
  v8 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[CSLaunchAgentXPCClient startSecureAdBlockerMobileAssetLoaderService:]";
    _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s This call is unexpected in macOS", &v6, 0xCu);
    if (!serviceCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (serviceCopy)
  {
LABEL_3:
    serviceCopy[2](serviceCopy, 4);
  }

LABEL_4:

  v5 = *MEMORY[0x1E69E9840];
}

- (void)startAdBlockerMatching
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[CSLaunchAgentXPCClient startAdBlockerMatching]";
    _os_log_error_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_ERROR, "%s This call is unexpected in macOS", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)setAdBlockerAsset:(id)asset
{
  v8 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[CSLaunchAgentXPCClient setAdBlockerAsset:]";
    _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s This call is unexpected in macOS", &v6, 0xCu);
    if (!assetCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (assetCopy)
  {
LABEL_3:
    assetCopy[2](assetCopy, 4);
  }

LABEL_4:

  v5 = *MEMORY[0x1E69E9840];
}

- (void)adBlockerMatchingInProgress:(id)progress
{
  v8 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[CSLaunchAgentXPCClient adBlockerMatchingInProgress:]";
    _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s This call is unexpected in macOS", &v6, 0xCu);
    if (!progressCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (progressCopy)
  {
LABEL_3:
    progressCopy[2](progressCopy, 0);
  }

LABEL_4:

  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendAssetsControlMessage:(id)message errorCodeIfFailed:(unint64_t)failed completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__13094;
  v23 = __Block_byref_object_dispose__13095;
  v24 = 0;
  xpcRequestQueue = self->_xpcRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__CSLaunchAgentXPCClient_sendAssetsControlMessage_errorCodeIfFailed_completion___block_invoke;
  block[3] = &unk_1E865CC08;
  block[4] = self;
  v11 = messageCopy;
  v17 = v11;
  v18 = &v19;
  dispatch_async_and_wait(xpcRequestQueue, block);
  if (!completionCopy || (v12 = v20[5]) == 0)
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[CSLaunchAgentXPCClient sendAssetsControlMessage:errorCodeIfFailed:completion:]";
      _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, "%s XPC connection not existing, return result as failed", buf, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_7;
    }

    completionCopy[2](completionCopy, failed);
    goto LABEL_7;
  }

  uint64 = xpc_dictionary_get_uint64(v12, "configErrorCode");
  completionCopy[2](completionCopy, uint64);
LABEL_7:

  _Block_object_dispose(&v19, 8);
  v15 = *MEMORY[0x1E69E9840];
}

_xpc_connection_s *__80__CSLaunchAgentXPCClient_sendAssetsControlMessage_errorCodeIfFailed_completion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _connectIfNeeded];
  v3 = *(a1 + 40);
  if (v3)
  {
    result = *(*(a1 + 32) + 16);
    if (result)
    {
      v4 = xpc_connection_send_message_with_reply_sync(result, v3);
      v5 = *(*(a1 + 48) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      return MEMORY[0x1EEE66BB8](v4, v6);
    }
  }

  return result;
}

- (void)stopSecureMobileAssetLoaderService:(id)service
{
  keys[1] = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  keys[0] = "type";
  values = xpc_int64_create(3);
  v5 = xpc_dictionary_create(keys, &values, 1uLL);
  *v11 = xmmword_1E865C660;
  v10[0] = xpc_int64_create(6);
  v6 = v5;
  v10[1] = v6;
  v7 = xpc_dictionary_create(v11, v10, 2uLL);
  [(CSLaunchAgentXPCClient *)self sendAssetsControlMessage:v7 errorCodeIfFailed:3 completion:serviceCopy, v10[0]];

  for (i = 1; i != -1; --i)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)startSecureMobileAssetLoaderService:(BOOL)service completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  *keys = xmmword_1E865C5A8;
  values[0] = xpc_int64_create(2);
  values[1] = xpc_BOOL_create(service);
  v7 = xpc_dictionary_create(keys, values, 2uLL);
  *v14 = xmmword_1E865C660;
  v13[0] = xpc_int64_create(6);
  v8 = v7;
  v13[1] = v8;
  v9 = xpc_dictionary_create(v14, v13, 2uLL);
  [(CSLaunchAgentXPCClient *)self sendAssetsControlMessage:v9 errorCodeIfFailed:2 completion:completionCopy, v13[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setAssetForLocale:(id)locale isOTA:(BOOL)a completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  completionCopy = completion;
  *keys = xmmword_1E865C598;
  values[0] = xpc_int64_create(1);
  values[1] = xpc_BOOL_create(a);
  v10 = xpc_dictionary_create(keys, values, 2uLL);
  if (localeCopy)
  {
    v11 = localeCopy;
    xpc_dictionary_set_string(v10, "locale", [localeCopy UTF8String]);
  }

  *v18 = xmmword_1E865C660;
  v17[0] = xpc_int64_create(6);
  v12 = v10;
  v17[1] = v12;
  v13 = xpc_dictionary_create(v18, v17, 2uLL);
  [(CSLaunchAgentXPCClient *)self sendAssetsControlMessage:v13 errorCodeIfFailed:1 completion:completionCopy, v17[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)stopSecondPassVoiceTrigger
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "type";
  values = xpc_int64_create(5);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v9 = xmmword_1E865C660;
  v8[0] = xpc_int64_create(5);
  v4 = v3;
  v8[1] = v4;
  v5 = xpc_dictionary_create(v9, v8, 2uLL);
  [(CSLaunchAgentXPCClient *)self sendMessageSync:v5, v8[0]];

  for (i = 1; i != -1; --i)
  {
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)startSecondPassVoiceTriggerWithFirstPassSource:(unint64_t)source enablePHS:(BOOL)s supportMultiPhrase:(BOOL)phrase activeChannel:(unsigned int)channel
{
  v23 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E865C570;
  v21 = *&off_1E865C580;
  v22 = "activeChannel";
  values[0] = xpc_int64_create(4);
  values[1] = xpc_uint64_create(source);
  values[2] = xpc_BOOL_create(s);
  values[3] = xpc_BOOL_create(phrase);
  values[4] = xpc_uint64_create(channel);
  v11 = xpc_dictionary_create(keys, values, 5uLL);
  *v18 = xmmword_1E865C660;
  v17[0] = xpc_int64_create(5);
  v12 = v11;
  v17[1] = v12;
  v13 = xpc_dictionary_create(v18, v17, 2uLL);
  [(CSLaunchAgentXPCClient *)self sendMessageSync:v13, v17[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 4; j != -1; --j)
  {
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)setSpeakerProfile:(id)profile numEmbeddings:(unint64_t)embeddings dimension:(unint64_t)dimension speakerRecognizerType:(unint64_t)type
{
  v34 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  *keys = xmmword_1E865C550;
  v33 = *&off_1E865C560;
  values[0] = xpc_int64_create(3);
  values[1] = xpc_uint64_create(embeddings);
  values[2] = xpc_uint64_create(dimension);
  values[3] = xpc_uint64_create(type);
  v11 = xpc_dictionary_create(keys, values, 4uLL);
  if (profileCopy)
  {
    _cs_xpcObject = [profileCopy _cs_xpcObject];
    xpc_dictionary_set_value(v11, "profileEmbedding", _cs_xpcObject);
  }

  *v30 = xmmword_1E865C660;
  v29[0] = xpc_int64_create(5);
  v13 = v11;
  v29[1] = v13;
  v14 = xpc_dictionary_create(v30, v29, 2uLL);
  v24 = 0;
  v15 = [(CSLaunchAgentXPCClient *)self sendMessageAndReplySync:v14 error:&v24];
  v16 = v24;
  if (!v15)
  {
    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      localizedDescription = [v16 localizedDescription];
      *buf = 136315394;
      v26 = "[CSLaunchAgentXPCClient setSpeakerProfile:numEmbeddings:dimension:speakerRecognizerType:]";
      v27 = 2114;
      v28 = localizedDescription;
      _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEFAULT, "%s Failed with error %{public}@", buf, 0x16u);
    }
  }

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 3; j != -1; --j)
  {
  }

  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)processSecondPassVoiceTriggerWithShouldFlushAudio:(BOOL)audio result:(id)result
{
  v33 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  *keys = xmmword_1E865C540;
  values[0] = xpc_int64_create(2);
  values[1] = xpc_BOOL_create(audio);
  v7 = xpc_dictionary_create(keys, values, 2uLL);
  *v30 = xmmword_1E865C660;
  v29[0] = xpc_int64_create(5);
  v8 = v7;
  v29[1] = v8;
  v9 = xpc_dictionary_create(v30, v29, 2uLL);
  xpcRequestQueue = self->_xpcRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__CSLaunchAgentXPCClient_processSecondPassVoiceTriggerWithShouldFlushAudio_result___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async_and_wait(xpcRequestQueue, block);
  if (!v9 || (xpcConnection = self->_xpcConnection) == 0)
  {
    v22 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[CSLaunchAgentXPCClient processSecondPassVoiceTriggerWithShouldFlushAudio:result:]";
      _os_log_error_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_ERROR, "%s XPC connection not existing, return result as failed", buf, 0xCu);
      if (!resultCopy)
      {
        goto LABEL_9;
      }
    }

    else if (!resultCopy)
    {
      goto LABEL_9;
    }

    (*(resultCopy + 2))(resultCopy, 3, 0, 0, 0, 0, 0, 0, 0.0);
    goto LABEL_9;
  }

  v12 = xpc_connection_send_message_with_reply_sync(xpcConnection, v9);
  v13 = v12;
  if (resultCopy)
  {
    uint64 = xpc_dictionary_get_uint64(v12, "secondPassResultType");
    v15 = xpc_dictionary_get_uint64(v13, "secondPassTriggerTimestamp");
    v16 = xpc_dictionary_get_double(v13, "secondPassSignalIntensity");
    v17 = xpc_dictionary_get_uint64(v13, "secondPassPhId");
    v18 = xpc_dictionary_get_uint64(v13, "secondPassTriggerStartSampleCount");
    v19 = xpc_dictionary_get_uint64(v13, "secondPassTriggerEndSampleCount");
    v20 = xpc_dictionary_get_uint64(v13, "keywordDetectResult");
    v21 = xpc_dictionary_get_uint64(v13, "speakerDetectResult");
    (*(resultCopy + 2))(resultCopy, uint64, v15, v17, v18, v19, v20, v21, v16);
  }

LABEL_9:
  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)deinitializeSecondPass
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "type";
  values = xpc_int64_create(6);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v9 = xmmword_1E865C660;
  v8[0] = xpc_int64_create(5);
  v4 = v3;
  v8[1] = v4;
  v5 = xpc_dictionary_create(v9, v8, 2uLL);
  [(CSLaunchAgentXPCClient *)self sendMessageSync:v5, v8[0]];

  for (i = 1; i != -1; --i)
  {
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)initializeSecondPass
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "type";
  values = xpc_int64_create(1);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v20 = xmmword_1E865C660;
  v19[0] = xpc_int64_create(5);
  v4 = v3;
  v19[1] = v4;
  v5 = xpc_dictionary_create(v20, v19, 2uLL);
  v14 = 0;
  v6 = [(CSLaunchAgentXPCClient *)self sendMessageAndReplySync:v5 error:&v14];
  v7 = v14;
  if (!v6)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      localizedDescription = [v7 localizedDescription];
      *buf = 136315394;
      v16 = "[CSLaunchAgentXPCClient initializeSecondPass]";
      v17 = 2114;
      v18 = localizedDescription;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Failed with error %{public}@", buf, 0x16u);
    }
  }

  for (i = 1; i != -1; --i)
  {
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)stopBargeInVoiceTrigger
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "type";
  values = xpc_int64_create(6);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v9 = xmmword_1E865C660;
  v8[0] = xpc_int64_create(4);
  v4 = v3;
  v8[1] = v4;
  v5 = xpc_dictionary_create(v9, v8, 2uLL);
  [(CSLaunchAgentXPCClient *)self sendMessageSync:v5, v8[0]];

  for (i = 1; i != -1; --i)
  {
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)startBargeInVoiceTrigger
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "type";
  values = xpc_int64_create(5);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v9 = xmmword_1E865C660;
  v8[0] = xpc_int64_create(4);
  v4 = v3;
  v8[1] = v4;
  v5 = xpc_dictionary_create(v9, v8, 2uLL);
  [(CSLaunchAgentXPCClient *)self sendMessageSync:v5, v8[0]];

  for (i = 1; i != -1; --i)
  {
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)resetFirstPassVoiceTrigger
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "type";
  values = xpc_int64_create(4);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v9 = xmmword_1E865C660;
  v8[0] = xpc_int64_create(4);
  v4 = v3;
  v8[1] = v4;
  v5 = xpc_dictionary_create(v9, v8, 2uLL);
  [(CSLaunchAgentXPCClient *)self sendMessageSync:v5, v8[0]];

  for (i = 1; i != -1; --i)
  {
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)processBargeInVoiceTriggerWithResult:(id)result
{
  keys[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  keys[0] = "type";
  values = xpc_int64_create(3);
  v5 = xpc_dictionary_create(keys, &values, 1uLL);
  *v29 = xmmword_1E865C660;
  v28[0] = xpc_int64_create(4);
  v6 = v5;
  v28[1] = v6;
  v7 = xpc_dictionary_create(v29, v28, 2uLL);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__13094;
  v24 = __Block_byref_object_dispose__13095;
  v25 = 0;
  xpcRequestQueue = self->_xpcRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CSLaunchAgentXPCClient_processBargeInVoiceTriggerWithResult___block_invoke;
  block[3] = &unk_1E865CC08;
  block[4] = self;
  v9 = v7;
  v18 = v9;
  v19 = &v20;
  dispatch_async_and_wait(xpcRequestQueue, block);
  if (!resultCopy || (v10 = v21[5]) == 0)
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "[CSLaunchAgentXPCClient processBargeInVoiceTriggerWithResult:]";
      _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, "%s XPC connection not existing, return result as failed", buf, 0xCu);
      if (!resultCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!resultCopy)
    {
      goto LABEL_7;
    }

    (*(resultCopy + 2))(resultCopy, 1, 0, 0);
    goto LABEL_7;
  }

  uint64 = xpc_dictionary_get_uint64(v10, "APResultType");
  v12 = xpc_dictionary_get_uint64(v21[5], "APResultTriggerTimestamp");
  v13 = xpc_dictionary_get_uint64(v21[5], "APResultTriggerBestChannel");
  (*(resultCopy + 2))(resultCopy, uint64, v12, v13);
LABEL_7:

  _Block_object_dispose(&v20, 8);
  for (i = 1; i != -1; --i)
  {
  }

  v16 = *MEMORY[0x1E69E9840];
}

_xpc_connection_s *__63__CSLaunchAgentXPCClient_processBargeInVoiceTriggerWithResult___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _connectIfNeeded];
  v3 = *(a1 + 40);
  if (v3)
  {
    result = *(*(a1 + 32) + 16);
    if (result)
    {
      v4 = xpc_connection_send_message_with_reply_sync(result, v3);
      v5 = *(*(a1 + 48) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      return MEMORY[0x1EEE66BB8](v4, v6);
    }
  }

  return result;
}

- (void)fetchAOPVoiceTriggerResult:(id)result
{
  keys[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  keys[0] = "type";
  values = xpc_int64_create(2);
  v5 = xpc_dictionary_create(keys, &values, 1uLL);
  *v28 = xmmword_1E865C660;
  v27[0] = xpc_int64_create(4);
  v6 = v5;
  v27[1] = v6;
  v7 = xpc_dictionary_create(v28, v27, 2uLL);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__13094;
  v23 = __Block_byref_object_dispose__13095;
  v24 = 0;
  xpcRequestQueue = self->_xpcRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CSLaunchAgentXPCClient_fetchAOPVoiceTriggerResult___block_invoke;
  block[3] = &unk_1E865CC08;
  block[4] = self;
  v9 = v7;
  v17 = v9;
  v18 = &v19;
  dispatch_async_and_wait(xpcRequestQueue, block);
  if (!resultCopy || (v10 = v20[5]) == 0)
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[CSLaunchAgentXPCClient fetchAOPVoiceTriggerResult:]";
      _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s XPC connection not existing, return trigger-length as 0", buf, 0xCu);
      if (!resultCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!resultCopy)
    {
      goto LABEL_7;
    }

    (*(resultCopy + 2))(resultCopy, 0, 0);
    goto LABEL_7;
  }

  uint64 = xpc_dictionary_get_uint64(v10, "AOPTriggerLength");
  v12 = xpc_dictionary_get_BOOL(v20[5], "AOPLateTrigger");
  (*(resultCopy + 2))(resultCopy, uint64, v12);
LABEL_7:

  _Block_object_dispose(&v19, 8);
  for (i = 1; i != -1; --i)
  {
  }

  v15 = *MEMORY[0x1E69E9840];
}

_xpc_connection_s *__53__CSLaunchAgentXPCClient_fetchAOPVoiceTriggerResult___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _connectIfNeeded];
  v3 = *(a1 + 40);
  if (v3)
  {
    result = *(*(a1 + 32) + 16);
    if (result)
    {
      v4 = xpc_connection_send_message_with_reply_sync(result, v3);
      v5 = *(*(a1 + 48) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      return MEMORY[0x1EEE66BB8](v4, v6);
    }
  }

  return result;
}

- (BOOL)configAOPVoiceTrigger
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "type";
  values = xpc_int64_create(1);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v12 = xmmword_1E865C660;
  v11[0] = xpc_int64_create(4);
  v4 = v3;
  v11[1] = v4;
  v5 = xpc_dictionary_create(v12, v11, 2uLL);
  v10 = 0;
  v6 = [(CSLaunchAgentXPCClient *)self sendMessageAndReplySync:v5 error:&v10];

  for (i = 1; i != -1; --i)
  {
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)stopSensor
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "type";
  values = xpc_int64_create(16);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v24 = xmmword_1E865C660;
  v23[0] = xpc_int64_create(2);
  v4 = v3;
  v23[1] = v4;
  v5 = xpc_dictionary_create(v24, v23, 2uLL);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__13094;
  v21 = __Block_byref_object_dispose__13095;
  v22 = 0;
  xpcRequestQueue = self->_xpcRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CSLaunchAgentXPCClient_stopSensor__block_invoke;
  block[3] = &unk_1E865CC08;
  v7 = v5;
  v14 = v7;
  selfCopy = self;
  v16 = &v17;
  dispatch_async_and_wait(xpcRequestQueue, block);
  v8 = v18[5];
  if (v8 && xpc_dictionary_get_uint64(v8, "sensorStatus"))
  {
    uint64 = xpc_dictionary_get_uint64(v18[5], "sensorStatus");
  }

  else
  {
    uint64 = 0;
  }

  _Block_object_dispose(&v17, 8);
  for (i = 1; i != -1; --i)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
  return uint64;
}

_xpc_connection_s *__36__CSLaunchAgentXPCClient_stopSensor__block_invoke(_xpc_connection_s *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = result;
    result = *(*(result + 5) + 16);
    if (result)
    {
      v3 = xpc_connection_send_message_with_reply_sync(result, v1);
      v4 = *(*(v2 + 6) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      return MEMORY[0x1EEE66BB8](v3, v5);
    }
  }

  return result;
}

- (unint64_t)startSensor
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "type";
  values = xpc_int64_create(15);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v24 = xmmword_1E865C660;
  v23[0] = xpc_int64_create(2);
  v4 = v3;
  v23[1] = v4;
  v5 = xpc_dictionary_create(v24, v23, 2uLL);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__13094;
  v21 = __Block_byref_object_dispose__13095;
  v22 = 0;
  xpcRequestQueue = self->_xpcRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CSLaunchAgentXPCClient_startSensor__block_invoke;
  block[3] = &unk_1E865CC08;
  v7 = v5;
  v14 = v7;
  selfCopy = self;
  v16 = &v17;
  dispatch_async_and_wait(xpcRequestQueue, block);
  v8 = v18[5];
  if (v8 && xpc_dictionary_get_uint64(v8, "sensorStatus"))
  {
    uint64 = xpc_dictionary_get_uint64(v18[5], "sensorStatus");
  }

  else
  {
    uint64 = 0;
  }

  _Block_object_dispose(&v17, 8);
  for (i = 1; i != -1; --i)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
  return uint64;
}

_xpc_connection_s *__37__CSLaunchAgentXPCClient_startSensor__block_invoke(_xpc_connection_s *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = result;
    result = *(*(result + 5) + 16);
    if (result)
    {
      v3 = xpc_connection_send_message_with_reply_sync(result, v1);
      v4 = *(*(v2 + 6) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      return MEMORY[0x1EEE66BB8](v3, v5);
    }
  }

  return result;
}

- (unint64_t)currentSensorStatus
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "type";
  values = xpc_int64_create(14);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v24 = xmmword_1E865C660;
  v23[0] = xpc_int64_create(2);
  v4 = v3;
  v23[1] = v4;
  v5 = xpc_dictionary_create(v24, v23, 2uLL);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__13094;
  v21 = __Block_byref_object_dispose__13095;
  v22 = 0;
  xpcRequestQueue = self->_xpcRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CSLaunchAgentXPCClient_currentSensorStatus__block_invoke;
  block[3] = &unk_1E865CC08;
  v7 = v5;
  v14 = v7;
  selfCopy = self;
  v16 = &v17;
  dispatch_async_and_wait(xpcRequestQueue, block);
  v8 = v18[5];
  if (v8 && xpc_dictionary_get_uint64(v8, "sensorStatus"))
  {
    uint64 = xpc_dictionary_get_uint64(v18[5], "sensorStatus");
  }

  else
  {
    uint64 = 0;
  }

  _Block_object_dispose(&v17, 8);
  for (i = 1; i != -1; --i)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
  return uint64;
}

_xpc_connection_s *__45__CSLaunchAgentXPCClient_currentSensorStatus__block_invoke(_xpc_connection_s *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = result;
    result = *(*(result + 5) + 16);
    if (result)
    {
      v3 = xpc_connection_send_message_with_reply_sync(result, v1);
      v4 = *(*(v2 + 6) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      return MEMORY[0x1EEE66BB8](v3, v5);
    }
  }

  return result;
}

- (void)requestHistoricalAudioBufferFor:(unint64_t)for startSample:(unint64_t)sample numSamples:(unint64_t)samples hostTime:(unint64_t)time
{
  v23 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E865C518;
  v21 = *&off_1E865C528;
  v22 = "hostTime";
  values[0] = xpc_int64_create(4);
  values[1] = xpc_uint64_create(for);
  values[2] = xpc_uint64_create(sample);
  values[3] = xpc_uint64_create(samples);
  values[4] = xpc_uint64_create(time);
  v11 = xpc_dictionary_create(keys, values, 5uLL);
  *v18 = xmmword_1E865C660;
  v17[0] = xpc_int64_create(2);
  v12 = v11;
  v17[1] = v12;
  v13 = xpc_dictionary_create(v18, v17, 2uLL);
  [(CSLaunchAgentXPCClient *)self sendMessageSync:v13, v17[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 4; j != -1; --j)
  {
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)fetchAndStoreAudioBuffer
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "type";
  values = xpc_int64_create(3);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v20 = xmmword_1E865C660;
  v19[0] = xpc_int64_create(2);
  v4 = v3;
  v19[1] = v4;
  v5 = xpc_dictionary_create(v20, v19, 2uLL);
  v14 = 0;
  v6 = [(CSLaunchAgentXPCClient *)self sendMessageAndReplySync:v5 error:&v14];
  v7 = v14;
  if (!v6)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      localizedDescription = [v7 localizedDescription];
      *buf = 136315394;
      v16 = "[CSLaunchAgentXPCClient fetchAndStoreAudioBuffer]";
      v17 = 2114;
      v18 = localizedDescription;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Failed with error %{public}@", buf, 0x16u);
    }
  }

  for (i = 1; i != -1; --i)
  {
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)prepare
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSLaunchAgentXPCClient prepare]";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)setDelegate:(id)delegate
{
  v13 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CSLaunchAgentXPCClient setDelegate:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  xpcRequestQueue = self->_xpcRequestQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__CSLaunchAgentXPCClient_setDelegate___block_invoke;
  v9[3] = &unk_1E865C970;
  v9[4] = self;
  v10 = delegateCopy;
  v7 = delegateCopy;
  dispatch_async(xpcRequestQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_disconnect
{
  xpcRequestQueue = self->_xpcRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CSLaunchAgentXPCClient__disconnect__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(xpcRequestQueue, block);
}

void __37__CSLaunchAgentXPCClient__disconnect__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  v3 = CSLogContextFacilityCoreSpeech;
  v4 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 136315138;
      v9 = "[CSLaunchAgentXPCClient _disconnect]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
      v2 = *(*(a1 + 32) + 16);
    }

    xpc_connection_set_event_handler(v2, &__block_literal_global_20_13190);
    xpc_connection_cancel(*(*(a1 + 32) + 16));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;
  }

  else if (v4)
  {
    v8 = 136315138;
    v9 = "[CSLaunchAgentXPCClient _disconnect]_block_invoke_2";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s xpcConnection is already nil, no need to disconnect", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_connectIfNeeded
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_xpcConnection)
  {
    v3 = +[CSUserSessionActiveMonitor sharedInstance];
    isUserActive = [v3 isUserActive];

    v5 = CSLogContextFacilityCoreSpeech;
    v6 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
    if (isUserActive)
    {
      if (v6)
      {
        *buf = 136315138;
        v20 = "[CSLaunchAgentXPCClient _connectIfNeeded]";
        _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Initializing new xpcConnection", buf, 0xCu);
      }

      mach_service = xpc_connection_create_mach_service("com.apple.corespeech_launchagent.xpc", 0, 0);
      xpcConnection = self->_xpcConnection;
      self->_xpcConnection = mach_service;

      objc_initWeak(&location, self);
      v9 = self->_xpcConnection;
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __42__CSLaunchAgentXPCClient__connectIfNeeded__block_invoke;
      v16 = &unk_1E865CA90;
      objc_copyWeak(&v17, &location);
      xpc_connection_set_event_handler(v9, &v13);
      xpc_connection_activate(self->_xpcConnection);
      v10 = [CSUserSessionActiveMonitor sharedInstance:v13];
      [v10 addObserver:self];

      v11 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[CSLaunchAgentXPCClient _connectIfNeeded]";
        _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s New xpcConnection initialized", buf, 0xCu);
      }

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else if (v6)
    {
      *buf = 136315138;
      v20 = "[CSLaunchAgentXPCClient _connectIfNeeded]";
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Not allowed to initialize new xpcConnection when current user is inactive", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __42__CSLaunchAgentXPCClient__connectIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleListenerEvent:v3];
}

- (CSLaunchAgentXPCClient)init
{
  v10.receiver = self;
  v10.super_class = CSLaunchAgentXPCClient;
  v2 = [(CSLaunchAgentXPCClient *)&v10 init];
  if (v2)
  {
    CSLogInitIfNeededWithSubsystemType(0);
    v3 = [CSUtils rootQueueWithFixedPriority:60];
    v4 = dispatch_queue_create_with_target_V2("CSExclaveLaunchAgentXPCClient Reply Queue", 0, v3);
    xpcReplyQueue = v2->_xpcReplyQueue;
    v2->_xpcReplyQueue = v4;

    v6 = dispatch_queue_create_with_target_V2("CSExclaveLaunchAgentXPCClient Request Queue", 0, v3);
    xpcRequestQueue = v2->_xpcRequestQueue;
    v2->_xpcRequestQueue = v6;

    v8 = +[CSSystemDaemonStateMonitor sharedInstance];
    objc_storeWeak(&v2->_crashMonitorDelegate, v8);
  }

  return v2;
}

+ (id)sharedClient
{
  if (sharedClient_onceToken != -1)
  {
    dispatch_once(&sharedClient_onceToken, &__block_literal_global_13205);
  }

  v3 = sharedClient_sharedClient;

  return v3;
}

uint64_t __38__CSLaunchAgentXPCClient_sharedClient__block_invoke()
{
  v0 = objc_alloc_init(CSLaunchAgentXPCClient);
  v1 = sharedClient_sharedClient;
  sharedClient_sharedClient = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end