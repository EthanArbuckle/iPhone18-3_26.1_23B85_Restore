@interface CSRemoteControlClient
- (BOOL)createRemoteVoiceProfileWithAudioFiles:(id)a3 aesKey:(id)a4 encryptedAudioSampleBypeDepth:(unint64_t)a5 languageCode:(id)a6 completion:(id)a7;
- (BOOL)isConnected;
- (BOOL)transferInterstitialAudioFiles:(id)a3 interstitialLevel:(int64_t)a4 completion:(id)a5;
- (BOOL)transferVoiceTriggerSpeakerModel:(id)a3 forAsset:(id)a4;
- (BOOL)waitingForConnection:(double)a3 error:(id *)a4;
- (CSRemoteControlClient)initWithRemoteDevice:(id)a3;
- (NSString)description;
- (id)_dictionaryWithContentsOfXPCObject:(id)a3;
- (id)_getMyriadInfoFromServerMessage:(id)a3;
- (void)_fetchDataFromAudioFileUrl:(id)a3 aesKey:(id)a4 encryptedAudioSampleBypeDepth:(unint64_t)a5 completion:(id)a6;
- (void)_handleServerError:(id)a3;
- (void)_handleServerEvent:(id)a3;
- (void)_handleServerMessage:(id)a3;
- (void)_invalidate;
- (void)_transferAudioData:(id)a3 numSamples:(unint64_t)a4 remoteWavFilePath:(id)a5 completion:(id)a6;
- (void)_transferFile:(id)a3 at:(id)a4 completion:(id)a5;
- (void)addObserver:(id)a3;
- (void)clearTriggerCount:(id)a3;
- (void)dealloc;
- (void)didDeviceConnect:(id)a3;
- (void)didDeviceDisconnect:(id)a3;
- (void)exchangeRemoteDeviceProtocolInfo:(id)a3;
- (void)fetchAndClearCachedVoiceTriggerEventsWithCompletion:(id)a3;
- (void)getFirstPassRunningMode:(id)a3;
- (void)getTriggerCount:(id)a3;
- (void)invalidate;
- (void)invalidateInterstitialWithLevel:(int64_t)a3;
- (void)notifyBluetoothWirelessSplitterStateChanged:(unint64_t)a3 shouldDisableSpeakerVerificationInSplitterMode:(BOOL)a4;
- (void)notifyVoiceTriggerAssetChangeWithSiriLanguageCode:(id)a3;
- (void)readAndClearVoiceTriggeredTokenWithCompletion:(id)a3;
- (void)readVoiceTriggeredTokenWithCompletion:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setSelfTriggerEnable:(BOOL)a3 withCompletion:(id)a4;
- (void)setUserSelectedVoiceTriggerPhraseType:(unint64_t)a3;
- (void)setVoiceTriggerEnable:(BOOL)a3 withCompletion:(id)a4;
- (void)transferVoiceTriggerAsset:(id)a3 forLanguageCode:(id)a4 completion:(id)a5;
- (void)voiceTriggerEnabledWithCompletion:(id)a3;
@end

@implementation CSRemoteControlClient

- (void)setSelfTriggerEnable:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[CSRemoteControlClient setSelfTriggerEnable:withCompletion:]";
    v23 = 1026;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s setting remote SelfTrigger enable : %{public}d", buf, 0x12u);
  }

  if (v4)
  {
    v19 = @"COMMAND";
    v20 = @"enableSelfTrigger";
    v8 = &v20;
    v9 = &v19;
  }

  else
  {
    v17 = @"COMMAND";
    v18 = @"disableSelfTrigger";
    v8 = &v18;
    v9 = &v17;
  }

  v10 = [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:1];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085B14;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v15 = v10;
  v16 = v6;
  v12 = v6;
  v13 = v10;
  dispatch_async(queue, block);
}

- (void)_transferAudioData:(id)a3 numSamples:(unint64_t)a4 remoteWavFilePath:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v13, "COMMAND", "writeFileFromAudioData");
  xpc_dictionary_set_uint64(v13, "numberOfSamples", a4);
  if (v11)
  {
    xpc_dictionary_set_string(v13, "filePath", [v11 UTF8String]);
  }

  if (v10)
  {
    v14 = [v10 _cs_xpcObject];
    xpc_dictionary_set_value(v13, "audioData", v14);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085E10;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v19 = v13;
  v20 = v12;
  v16 = v12;
  v17 = v13;
  dispatch_async(queue, block);
}

- (void)_fetchDataFromAudioFileUrl:(id)a3 aesKey:(id)a4 encryptedAudioSampleBypeDepth:(unint64_t)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100086210;
  v37[3] = &unk_10024FED8;
  v11 = v8;
  v38 = v11;
  v12 = v10;
  v39 = v12;
  v13 = objc_retainBlock(v37);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10008633C;
  v31 = sub_10008634C;
  v32 = +[NSMutableData data];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10008633C;
  v25 = sub_10008634C;
  v26 = 0;
  +[CSFAudioStreamBasicDescriptionFactory lpcmInt16ASBD];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100086354;
  v15[3] = &unk_10024FF00;
  v14 = v11;
  v16 = v14;
  v17 = &v21;
  v18 = &v27;
  v19 = &v33;
  [SSRUtils streamAudioFromFileUrl:v14 audioStreamBasicDescriptor:v20 samplesPerStreamChunk:640 audioDataAvailableHandler:v15];
  (v13[2])(v13, v28[5], v34[3], v22[5]);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
}

- (void)setUserSelectedVoiceTriggerPhraseType:(unint64_t)a3
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSRemoteControlClient setUserSelectedVoiceTriggerPhraseType:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "COMMAND", "userSelectedVoiceTriggerPhraseType");
  xpc_dictionary_set_uint64(v6, "userSelectedVoiceTriggerPhraseTypeOption", a3);
  v7 = self->_connection;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100086640;
  v11[3] = &unk_100253C48;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, v11);
}

- (void)fetchAndClearCachedVoiceTriggerEventsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSRemoteControlClient fetchAndClearCachedVoiceTriggerEventsWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v13 = @"COMMAND";
  v14 = @"fetchAndClearCachedVTEvents";
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000867CC;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(queue, block);
}

- (void)notifyBluetoothWirelessSplitterStateChanged:(unint64_t)a3 shouldDisableSpeakerVerificationInSplitterMode:(BOOL)a4
{
  v4 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    v15 = "[CSRemoteControlClient notifyBluetoothWirelessSplitterStateChanged:shouldDisableSpeakerVerificationInSplitterMode:]";
    *buf = 136315650;
    if (v4)
    {
      v8 = @"YES";
    }

    v16 = 2050;
    v17 = a3;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s splitterState : %{public}lu, shouldDisableSpeakerVerification : %{public}@", buf, 0x20u);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "COMMAND", "notifySplitterStateChange");
  xpc_dictionary_set_uint64(v9, "splitterState", a3);
  xpc_dictionary_set_BOOL(v9, "shouldDisableSpeakerVerification", v4);
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100086C64;
  v12[3] = &unk_100253C48;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(queue, v12);
}

- (BOOL)createRemoteVoiceProfileWithAudioFiles:(id)a3 aesKey:(id)a4 encryptedAudioSampleBypeDepth:(unint64_t)a5 languageCode:(id)a6 completion:(id)a7
{
  v40 = a3;
  v44 = a4;
  v37 = a6;
  v39 = a7;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSRemoteControlClient createRemoteVoiceProfileWithAudioFiles:aesKey:encryptedAudioSampleBypeDepth:languageCode:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s ", &buf, 0xCu);
  }

  v41 = +[NSFileManager defaultManager];
  group = dispatch_group_create();
  if ([v40 count])
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v12 = v40;
    v13 = [v12 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v13)
    {
      v14 = *v58;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v58 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [*(*(&v57 + 1) + 8 * i) path];
          v17 = [v41 fileExistsAtPath:v16];

          if ((v17 & 1) == 0)
          {
            if (v39)
            {
              v29 = [NSError errorWithDomain:CSErrorDomain code:117 userInfo:&off_10025F098];
              v39[2](v39, v29);
            }

            goto LABEL_29;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v57 objects:v69 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v65 = 0x3032000000;
    v66 = sub_10008633C;
    v67 = sub_10008634C;
    v68 = +[NSMutableArray array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v12;
    v18 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v18)
    {
      v19 = *v54;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v53 + 1) + 8 * j);
          v22 = [v21 lastPathComponent];
          v23 = [@"VoiceTrigger/SAT/audio/" stringByAppendingPathComponent:v22];

          dispatch_group_enter(group);
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_1000873A0;
          v49[3] = &unk_10024FEB0;
          v49[4] = v21;
          v49[5] = self;
          v24 = v23;
          v50 = v24;
          p_buf = &buf;
          v51 = group;
          [(CSRemoteControlClient *)self _fetchDataFromAudioFileUrl:v21 aesKey:v44 encryptedAudioSampleBypeDepth:a5 completion:v49];
        }

        v18 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v18);
    }

    v25 = dispatch_time(0, 10000000000);
    v26 = dispatch_group_wait(group, v25);
    v27 = v26 == 0;
    if (v26)
    {
      v28 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *v61 = 136315138;
        v62 = "[CSRemoteControlClient createRemoteVoiceProfileWithAudioFiles:aesKey:encryptedAudioSampleBypeDepth:languageCode:completion:]";
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s ERR: training data transfer timed out", v61, 0xCu);
      }

      if (v39)
      {
        v39[2](v39, 0);
      }
    }

    else
    {
      v31 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v31, "COMMAND", "createRemoteVoiceProfile");
      v32 = v38;
      xpc_dictionary_set_string(v31, "languageCode", [v38 UTF8String]);
      v33 = [*(*(&buf + 1) + 40) _cs_xpcObject];
      xpc_dictionary_set_value(v31, "explicitTrainingAudioFiles", v33);

      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100087530;
      block[3] = &unk_1002533A0;
      block[4] = self;
      v47 = v31;
      v48 = v39;
      v35 = v31;
      dispatch_async(queue, block);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (v39)
    {
      v30 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:&off_10025F070];
      v39[2](v39, v30);
    }

LABEL_29:
    v27 = 0;
  }

  return v27;
}

- (void)exchangeRemoteDeviceProtocolInfo:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 description];
    *buf = 136315394;
    v16 = "[CSRemoteControlClient exchangeRemoteDeviceProtocolInfo:]";
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Exchange protocol info with host info : %{public}@", buf, 0x16u);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "COMMAND", "exchangeProtocolInfo");
  if (v4)
  {
    v9 = [v4 xpcObject];
    xpc_dictionary_set_value(v8, "hostProtocolInfo", v9);
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CSRemoteControlClient exchangeRemoteDeviceProtocolInfo:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Invalid hostProtocolInfo", buf, 0xCu);
    }
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100087A24;
  v13[3] = &unk_100253C48;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)notifyVoiceTriggerAssetChangeWithSiriLanguageCode:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[CSRemoteControlClient notifyVoiceTriggerAssetChangeWithSiriLanguageCode:]";
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s languageCode : %{public}@", buf, 0x16u);
  }

  v11[0] = @"COMMAND";
  v11[1] = @"languageCode";
  v12[0] = @"NotifyVTAssetChange";
  v12[1] = v4;
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100087F90;
  v9[3] = &unk_100253C48;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (id)_getMyriadInfoFromServerMessage:(id)a3
{
  v3 = a3;
  v4 = [NSData alloc];
  v5 = xpc_dictionary_get_value(v3, "myriadHash");

  v6 = [v4 _cs_initWithXPCObject:v5];

  return v6;
}

- (id)_dictionaryWithContentsOfXPCObject:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = v4;
  if (v4)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1000881E4;
    applier[3] = &unk_100251E38;
    v8 = v4;
    xpc_dictionary_apply(v3, applier);
  }

  return v5;
}

- (void)getFirstPassRunningMode:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSRemoteControlClient getFirstPassRunningMode:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v13 = @"COMMAND";
  v14 = @"getFirstPassRunningMode";
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008845C;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(queue, block);
}

- (void)clearTriggerCount:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSRemoteControlClient clearTriggerCount:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v13 = @"COMMAND";
  v14 = @"clearTriggerCount";
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088828;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(queue, block);
}

- (void)getTriggerCount:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSRemoteControlClient getTriggerCount:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v13 = @"COMMAND";
  v14 = @"getTriggerCount";
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088BB0;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(queue, block);
}

- (BOOL)transferInterstitialAudioFiles:(id)a3 interstitialLevel:(int64_t)a4 completion:(id)a5
{
  v32 = a3;
  v33 = a5;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSRemoteControlClient transferInterstitialAudioFiles:interstitialLevel:completion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s ", &buf, 0xCu);
  }

  v34 = +[NSFileManager defaultManager];
  group = dispatch_group_create();
  v38 = +[NSMutableArray array];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v61 = 0x3032000000;
  v62 = sub_10008633C;
  v63 = sub_10008634C;
  v64 = 0;
  if ([v32 count])
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v7 = v32;
    v8 = [v7 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v8)
    {
      v9 = *v51;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v51 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v50 + 1) + 8 * v10) path];
        v12 = [v34 fileExistsAtPath:v11];

        if ((v12 & 1) == 0)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v50 objects:v59 count:16];
          if (v8)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      if (!v33)
      {
        goto LABEL_28;
      }

      v23 = [NSError errorWithDomain:CSErrorDomain code:117 userInfo:&off_10025EFF8];
      v33[2](v33, v23);
      v24 = 0;
      goto LABEL_38;
    }

LABEL_12:

    v13 = +[CSFPreferences sharedPreferences];
    v36 = [v13 interstitialRelativeDirForLevel:v31];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v7;
    v14 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v14)
    {
      v15 = *v47;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v46 + 1) + 8 * i);
          dispatch_group_enter(group);
          v18 = [v17 lastPathComponent];
          v19 = [v36 stringByAppendingPathComponent:v18];

          [v38 addObject:v19];
          v20 = [v17 path];
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_1000894D4;
          v43[3] = &unk_100251750;
          p_buf = &buf;
          v44 = group;
          [(CSRemoteControlClient *)self _transferFile:v20 at:v19 completion:v43];
        }

        v14 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v14);
    }

    v21 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(group, v21))
    {
      v22 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 136315138;
        v57 = "[CSRemoteControlClient transferInterstitialAudioFiles:interstitialLevel:completion:]";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Interstitial file transmission timed out", v56, 0xCu);
      }

      if (v33)
      {
        v23 = [NSError errorWithDomain:CSErrorDomain code:301 userInfo:&off_10025F020];
        v33[2](v33, v23);
        v24 = 0;
LABEL_37:
        v7 = v36;
LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
      if (!*(*(&buf + 1) + 40))
      {
        v54[0] = @"COMMAND";
        v54[1] = @"interstitialLevel";
        v55[0] = @"updateInterstitialAudio";
        v25 = [NSNumber numberWithInteger:v31];
        v55[1] = v25;
        v26 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];

        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10008953C;
        block[3] = &unk_1002533A0;
        block[4] = self;
        v23 = v26;
        v41 = v23;
        v28 = v33;
        v42 = v28;
        dispatch_async(queue, block);
        if (v28)
        {
          v28[2](v28, 0);
        }

        v24 = 1;
        goto LABEL_37;
      }

      if (v33)
      {
        (v33[2])();
      }
    }

    v24 = 0;
    v7 = v36;
LABEL_39:

    goto LABEL_40;
  }

  if (v33)
  {
    v7 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:&off_10025EFD0];
    v33[2](v33, v7);
LABEL_28:
    v24 = 0;
    goto LABEL_39;
  }

  v24 = 0;
LABEL_40:
  _Block_object_dispose(&buf, 8);

  return v24;
}

- (void)invalidateInterstitialWithLevel:(int64_t)a3
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSRemoteControlClient invalidateInterstitialWithLevel:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v12[0] = @"COMMAND";
  v12[1] = @"interstitialLevel";
  v13[0] = @"invalidateInterstitialAudio";
  v6 = [NSNumber numberWithInteger:a3];
  v13[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100089820;
  v10[3] = &unk_100253C48;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(queue, v10);
}

- (void)voiceTriggerEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSRemoteControlClient voiceTriggerEnabledWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v13 = @"COMMAND";
  v14 = @"voiceTriggerEnabled";
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100089AA4;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(queue, block);
}

- (void)setVoiceTriggerEnable:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[CSRemoteControlClient setVoiceTriggerEnable:withCompletion:]";
    v23 = 1026;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s set enable : %{public}d", buf, 0x12u);
  }

  if (v4)
  {
    v19 = @"COMMAND";
    v20 = @"enableVoiceTrigger";
    v8 = &v20;
    v9 = &v19;
  }

  else
  {
    v17 = @"COMMAND";
    v18 = @"disableVoiceTrigger";
    v8 = &v18;
    v9 = &v17;
  }

  v10 = [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:1];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100089ECC;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v15 = v10;
  v16 = v6;
  v12 = v6;
  v13 = v10;
  dispatch_async(queue, block);
}

- (void)transferVoiceTriggerAsset:(id)a3 forLanguageCode:(id)a4 completion:(id)a5
{
  v38 = a3;
  v31 = a4;
  v35 = a5;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSRemoteControlClient transferVoiceTriggerAsset:forLanguageCode:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ", &buf, 0xCu);
  }

  v34 = [v38 hashFromResourcePath];
  v33 = [v38 configVersion];
  v8 = [@"VoiceTrigger/asset" stringByAppendingPathComponent:v34];
  v37 = [v8 stringByAppendingString:@".asset"];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v59 = 0x3032000000;
  v60 = sub_10008633C;
  v61 = sub_10008634C;
  v62 = 0;
  v9 = dispatch_group_create();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = +[NSFileManager defaultManager];
  v11 = [v38 resourcePath];
  v12 = [v10 enumeratorAtPath:v11];

  v13 = [v12 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v13)
  {
    v14 = *v46;
    do
    {
      v15 = 0;
      do
      {
        if (*v46 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v45 + 1) + 8 * v15);
        v17 = [v38 resourcePath];
        v18 = [v17 stringByAppendingPathComponent:v16];

        v53[0] = 0;
        v19 = +[NSFileManager defaultManager];
        [v19 fileExistsAtPath:v18 isDirectory:v53];

        if ((v53[0] & 1) == 0)
        {
          dispatch_group_enter(v9);
          v20 = [v37 stringByAppendingPathComponent:v16];
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_10008A748;
          v42[3] = &unk_100251750;
          p_buf = &buf;
          v43 = v9;
          [(CSRemoteControlClient *)self _transferFile:v18 at:v20 completion:v42];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v13);
  }

  v21 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v9, v21))
  {
    v22 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 136315138;
      v54 = "[CSRemoteControlClient transferVoiceTriggerAsset:forLanguageCode:completion:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger asset file transmission timed out", v53, 0xCu);
    }

    if (v35)
    {
      v23 = [NSError errorWithDomain:CSErrorDomain code:304 userInfo:&off_10025EF80];
      v35[2](v35, 0, v23);
LABEL_23:
    }
  }

  else
  {
    v24 = *(&buf + 1);
    if (!*(*(&buf + 1) + 40))
    {
      v49[0] = @"COMMAND";
      v49[1] = @"voiceTriggerAssetHash";
      v50[0] = @"setVoiceTriggerAsset";
      v50[1] = v34;
      v49[2] = @"voiceTriggerAssetLanguageCode";
      v49[3] = @"voiceTriggerAssetPath";
      v50[2] = v32;
      v50[3] = v37;
      v49[4] = @"voiceTriggerAssetConfigVersion";
      v50[4] = v33;
      v28 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:5];
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10008A7B0;
      block[3] = &unk_1002533A0;
      block[4] = self;
      v40 = v28;
      v41 = v35;
      v23 = v28;
      dispatch_async(queue, block);

      goto LABEL_23;
    }

    v25 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v30 = [*(v24 + 40) localizedDescription];
      *v53 = 136315394;
      v54 = "[CSRemoteControlClient transferVoiceTriggerAsset:forLanguageCode:completion:]";
      v55 = 2114;
      v56 = v30;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Cannot transfer VoiceTrigger asset %{public}@", v53, 0x16u);
    }

    if (v35)
    {
      v51 = @"reason";
      v23 = [*(*(&buf + 1) + 40) localizedDescription];
      v52 = v23;
      v26 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v27 = [NSError errorWithDomain:CSErrorDomain code:304 userInfo:v26];
      v35[2](v35, 0, v27);

      goto LABEL_23;
    }
  }

  _Block_object_dispose(&buf, 8);
}

- (BOOL)transferVoiceTriggerSpeakerModel:(id)a3 forAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[SSRVoiceProfileManager sharedInstance];
    v26 = [v8 modelDirectoryPathForProfile:v6];
    v9 = [v7 hashFromResourcePath];
    v10 = [v26 URLByAppendingPathComponent:v9];

    v11 = [v7 hashFromResourcePath];
    v12 = [@"VoiceTrigger/SAT/model/" stringByAppendingPathComponent:v11];

    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "[CSRemoteControlClient transferVoiceTriggerSpeakerModel:forAsset:]";
      *&buf[12] = 2114;
      *&buf[14] = v10;
      *&buf[22] = 2114;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Speaker model file %{public}@ is being transmited to %{public}@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = sub_10008633C;
    v36 = sub_10008634C;
    v37 = 0;
    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    v15 = [v10 path];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10008AD4C;
    v27[3] = &unk_100251750;
    v29 = buf;
    v16 = v14;
    v28 = v16;
    [(CSRemoteControlClient *)self _transferFile:v15 at:v12 completion:v27];

    v17 = v8;
    v18 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(v16, v18))
    {
      v19 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *v30 = 136315138;
        v31 = "[CSRemoteControlClient transferVoiceTriggerSpeakerModel:forAsset:]";
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s ERR: Speaker model transmission timed out", v30, 0xCu);
      }
    }

    else
    {
      v22 = *&buf[8];
      if (!*(*&buf[8] + 40))
      {
        v21 = 1;
        v17 = v8;
        goto LABEL_15;
      }

      v23 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = [*(v22 + 40) localizedDescription];
        *v30 = 136315394;
        v31 = "[CSRemoteControlClient transferVoiceTriggerSpeakerModel:forAsset:]";
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", v30, 0x16u);
      }

      v17 = v8;
    }

    v21 = 0;
LABEL_15:

    _Block_object_dispose(buf, 8);
    goto LABEL_16;
  }

  v20 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "[CSRemoteControlClient transferVoiceTriggerSpeakerModel:forAsset:]";
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s ERR: speakerProfile passed is nil - Bailing out", buf, 0xCu);
  }

  v21 = 0;
LABEL_16:

  return v21;
}

- (void)_transferFile:(id)a3 at:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "[CSRemoteControlClient _transferFile:at:completion:]";
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  if (v8 && v9)
  {
    v12 = +[NSFileManager defaultManager];
    if ([v12 fileExistsAtPath:v8])
    {
      v13 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v13, "COMMAND", "writeFile");
      xpc_dictionary_set_string(v13, "filePath", [v9 UTF8String]);
      [v8 UTF8String];
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_10008B1E4;
      v26 = &unk_10024FE60;
      v27 = v8;
      v14 = v10;
      v28 = v14;
      v15 = xpc_file_transfer_create_with_path();
      if (v15)
      {
        xpc_dictionary_set_value(v13, "fileTx", v15);
        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10008B3DC;
        block[3] = &unk_1002533A0;
        block[4] = self;
        v21 = v13;
        v22 = v14;
        dispatch_async(queue, block);

LABEL_16:
        goto LABEL_17;
      }

      v18 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v30 = "[CSRemoteControlClient _transferFile:at:completion:]";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Failed to create xpc file transfer", buf, 0xCu);
        if (!v14)
        {
          goto LABEL_16;
        }
      }

      else if (!v14)
      {
        goto LABEL_16;
      }

      v19 = [NSError errorWithDomain:CSErrorDomain code:304 userInfo:&off_10025EF30];
      (*(v14 + 2))(v14, v19);

      goto LABEL_16;
    }

    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[CSRemoteControlClient _transferFile:at:completion:]";
      v31 = 2114;
      v32 = v8;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s File does not exists : %{public}@", buf, 0x16u);
      if (!v10)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    if (v10)
    {
LABEL_12:
      v13 = [NSError errorWithDomain:CSErrorDomain code:117 userInfo:&off_10025EF08];
      (*(v10 + 2))(v10, v13);
LABEL_17:
    }

LABEL_18:

    goto LABEL_19;
  }

  if (v10)
  {
    v12 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:&off_10025EEE0];
    (*(v10 + 2))(v10, v12);
    goto LABEL_18;
  }

LABEL_19:
}

- (void)readAndClearVoiceTriggeredTokenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSRemoteControlClient readAndClearVoiceTriggeredTokenWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v13 = @"COMMAND";
  v14 = @"readAndClearVoiceTriggeredToken";
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008B734;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(queue, block);
}

- (void)readVoiceTriggeredTokenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSRemoteControlClient readVoiceTriggeredTokenWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v13 = @"COMMAND";
  v14 = @"readVoiceTriggeredToken";
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008BBFC;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(queue, block);
}

- (void)_handleServerMessage:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [NSString stringWithFormat:@"%s", xpc_dictionary_get_string(v4, "COMMAND")];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v53 = "[CSRemoteControlClient _handleServerMessage:]";
    v54 = 2114;
    v55 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s XPC command recevied : %{public}@", buf, 0x16u);
  }

  if ([(NSHashTable *)v5 isEqualToString:@"notifyVoiceTrigger"])
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v7 = self->_observers;
    v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v48;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v47 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v12 didReceiveVoiceTriggered:self];
          }
        }

        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v47 objects:v60 count:16];
      }

      while (v9);
    }

    goto LABEL_56;
  }

  if ([(NSHashTable *)v5 isEqualToString:@"notifySelfTrigger"])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v7 = self->_observers;
    v13 = [(NSHashTable *)v7 countByEnumeratingWithState:&v43 objects:v59 count:16];
    if (!v13)
    {
LABEL_56:

      goto LABEL_57;
    }

    v14 = v13;
    v34 = v5;
    v15 = *v44;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v43 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          v18 = [(CSRemoteControlClient *)self _getMyriadInfoFromServerMessage:v4];
          [v17 didReceiveSelfTriggerDetected:self myriadHash:v18];
        }
      }

      v14 = [(NSHashTable *)v7 countByEnumeratingWithState:&v43 objects:v59 count:16];
    }

    while (v14);
LABEL_55:
    v5 = v34;
    goto LABEL_56;
  }

  if ([(NSHashTable *)v5 isEqualToString:@"notifyBootFromHibernate"])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = self->_observers;
    v19 = [(NSHashTable *)v7 countByEnumeratingWithState:&v39 objects:v58 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v40;
      do
      {
        for (k = 0; k != v20; k = k + 1)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v7);
          }

          v23 = *(*(&v39 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            [v23 didReceiveBootFromHibernate:self];
          }
        }

        v20 = [(NSHashTable *)v7 countByEnumeratingWithState:&v39 objects:v58 count:16];
      }

      while (v20);
    }

    goto LABEL_56;
  }

  if ([(NSHashTable *)v5 isEqualToString:@"requestAssetDownload"])
  {
    string = xpc_dictionary_get_string(v4, "voiceTriggerAssetConfigVersion");
    if (string)
    {
      v7 = [NSString stringWithUTF8String:string];
    }

    else
    {
      v7 = 0;
    }

    v25 = xpc_dictionary_get_string(v4, "languageCode");
    v34 = v5;
    if (v25)
    {
      v26 = [NSString stringWithUTF8String:v25];
    }

    else
    {
      v26 = 0;
    }

    v27 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v53 = "[CSRemoteControlClient _handleServerMessage:]";
      v54 = 2114;
      v55 = v7;
      v56 = 2114;
      v57 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s RequestVoiceTriggerAssetDownload : configVersion %{public}@, languageCode %{public}@", buf, 0x20u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = self->_observers;
    v29 = [(NSHashTable *)v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v36;
      do
      {
        for (m = 0; m != v30; m = m + 1)
        {
          if (*v36 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v35 + 1) + 8 * m);
          if (objc_opt_respondsToSelector())
          {
            [v33 didReceiveVoiceTriggerAssetsDownloadingRequest:self withConfigVersion:v7 languageCode:v26];
          }
        }

        v30 = [(NSHashTable *)v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
      }

      while (v30);
    }

    goto LABEL_55;
  }

LABEL_57:
}

- (void)_handleServerError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    if (v4 == &_xpc_error_connection_invalid || v4 == &_xpc_error_connection_interrupted)
    {
      v6 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v21 = "[CSRemoteControlClient _handleServerError:]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s connection disconnected", buf, 0xCu);
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = self->_observers;
      v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * v11);
            if (objc_opt_respondsToSelector())
            {
              [v12 didReceiveConnectionInvalidated:{self, v16}];
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v9);
      }
    }

    else
    {
      string = xpc_dictionary_get_string(v4, _xpc_error_key_description);
      v14 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[CSRemoteControlClient _handleServerError:]";
        v22 = 2082;
        v23 = string;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s connection error: %{public}s", buf, 0x16u);
      }
    }
  }
}

- (void)_handleServerEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    type = xpc_get_type(v4);
    if (xpc_get_type(v4) == &_xpc_type_error)
    {
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "[CSRemoteControlClient _handleServerEvent:]";
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s remoteXPC connection get failed", &v9, 0xCu);
      }

      [(CSRemoteControlClient *)self _handleServerError:v4];
    }

    else
    {
      if (type == &_xpc_type_dictionary)
      {
        [(CSRemoteControlClient *)self _handleServerMessage:v4];
        goto LABEL_13;
      }

      v6 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "[CSRemoteControlClient _handleServerEvent:]";
        v7 = "%s Ignore unknown type message";
LABEL_8:
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, &v9, 0xCu);
      }
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSRemoteControlClient _handleServerEvent:]";
      v7 = "%s cannot handle server event since event is nil";
      goto LABEL_8;
    }
  }

LABEL_13:
}

- (NSString)description
{
  v3 = +[NSMutableString string];
  deviceId = self->_deviceId;
  deviceType = self->_deviceType;
  v6 = [NSString stringWithUTF8String:remote_device_type_get_description()];
  [v3 appendFormat:@"deviceUUID(%@), deviceType(%@)", deviceId, v6];

  return v3;
}

- (BOOL)isConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008C8B0;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)waitingForConnection:(double)a3 error:(id *)a4
{
  if ([(CSDispatchGroup *)self->_deviceWaitingGroup waitWithTimeout:dispatch_time(0, (a3 * 1000000000.0))])
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v26 = "[CSRemoteControlClient waitingForConnection:error:]";
      v27 = 2050;
      v28 = a3;
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s Device connection waiting %{public}.3f seconds timed out", buf, 0x16u);
      if (a4)
      {
        goto LABEL_4;
      }
    }

    else if (a4)
    {
LABEL_4:
      v8 = CSErrorDomain;
      v9 = 301;
LABEL_19:
      v18 = [NSError errorWithDomain:v8 code:v9 userInfo:0];
      v19 = v18;
      result = 0;
      *a4 = v18;
      return result;
    }

    return 0;
  }

  if (![(CSRemoteControlClient *)self isConnected])
  {
    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[CSRemoteControlClient waitingForConnection:error:]";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Device is connected but RemoteXPC service is not connected", buf, 0xCu);
      if (a4)
      {
        goto LABEL_18;
      }
    }

    else if (a4)
    {
LABEL_18:
      v8 = CSErrorDomain;
      v9 = 302;
      goto LABEL_19;
    }

    return 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_observers;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v15 didConnected:{self, v20}];
        }
      }

      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return 1;
}

- (void)didDeviceDisconnect:(id)a3
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSRemoteControlClient didDeviceDisconnect:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008CC6C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)didDeviceConnect:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CSRemoteControlClient didDeviceConnect:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008CF28;
  v8[3] = &unk_100253C48;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(queue, v8);
}

- (void)dealloc
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSRemoteControlClient dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Dealloc of CSRemoteControlClient, it should close connection", buf, 0xCu);
  }

  [(CSRemoteControlClient *)self _invalidate];
  v4.receiver = self;
  v4.super_class = CSRemoteControlClient;
  [(CSRemoteControlClient *)&v4 dealloc];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008D384;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_invalidate
{
  connection = self->_connection;
  if (connection)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSRemoteControlClient _invalidate]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Cancelling remote connection", &v9, 0xCu);
      connection = self->_connection;
    }

    self->_connection = 0;
    v5 = connection;

    xpc_remote_connection_cancel();
  }

  if (self->_device && remote_device_get_type())
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSRemoteControlClient _invalidate]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Cancelling remote device", &v9, 0xCu);
    }

    device = self->_device;
    self->_device = 0;
    v8 = device;

    remote_device_cancel();
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008D580;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___CSRemoteControlClientDelegateV1] & 1) != 0 || (objc_msgSend(v4, "conformsToProtocol:", &OBJC_PROTOCOL___CSRemoteControlClientDelegateV2))
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008D6F0;
    v7[3] = &unk_100253C48;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[CSRemoteControlClient addObserver:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s observer doesn't conform to either V1 or V2 protocol", buf, 0xCu);
    }
  }
}

- (CSRemoteControlClient)initWithRemoteDevice:(id)a3
{
  v5 = a3;
  if ((+[CSUtils isDarwinOS]& 1) == 0)
  {
    v22.receiver = self;
    v22.super_class = CSRemoteControlClient;
    self = [(CSRemoteControlClient *)&v22 init];
    if (self)
    {
      if (!v5)
      {
        v19 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 136315138;
          *(location + 4) = "[CSRemoteControlClient initWithRemoteDevice:]";
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s invalid remote device", location, 0xCu);
        }

        goto LABEL_2;
      }

      v7 = dispatch_queue_create("CSRemoteControlClient", 0);
      queue = self->_queue;
      self->_queue = v7;

      v9 = +[NSHashTable weakObjectsHashTable];
      observers = self->_observers;
      self->_observers = v9;

      v11 = objc_alloc_init(CSDispatchGroup);
      deviceWaitingGroup = self->_deviceWaitingGroup;
      self->_deviceWaitingGroup = v11;

      objc_initWeak(location, self);
      v13 = self->_queue;
      objc_storeStrong(&self->_device, a3);
      self->_deviceType = remote_device_get_type();
      v14 = +[CSRemoteDeviceProtocolInfo defaultProtocolInfo];
      deviceProtocolInfo = self->_deviceProtocolInfo;
      self->_deviceProtocolInfo = v14;

      [(CSDispatchGroup *)self->_deviceWaitingGroup enter];
      device = self->_device;
      v20[1] = _NSConcreteStackBlock;
      v20[2] = 3221225472;
      v20[3] = sub_10008DA6C;
      v20[4] = &unk_10024FE10;
      objc_copyWeak(&v21, location);
      remote_device_set_connected_callback();
      v17 = self->_device;
      objc_copyWeak(v20, location);
      remote_device_set_disconnected_callback();
      objc_destroyWeak(v20);
      objc_destroyWeak(&v21);

      objc_destroyWeak(location);
    }

    self = self;
    v6 = self;
    goto LABEL_7;
  }

LABEL_2:
  v6 = 0;
LABEL_7:

  return v6;
}

@end