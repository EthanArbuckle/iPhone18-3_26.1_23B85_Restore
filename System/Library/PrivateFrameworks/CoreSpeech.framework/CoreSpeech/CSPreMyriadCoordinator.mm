@interface CSPreMyriadCoordinator
- (BOOL)_isRemoraSecondPassRunning;
- (BOOL)handlePendingBuiltInVoiceTriggerIfNeeded;
- (BOOL)handlePendingRemoraVoiceTriggerIfNeeded;
- (BOOL)isBultInVoiceTriggerEvent:(id)a3;
- (BOOL)isRemoraVoiceTriggerEvent:(id)a3;
- (CSPreMyriadCoordinator)init;
- (CSSecondPassProgressProviding)builtInSeconPassProgressProvider;
- (CSSecondPassProgressProviding)remoraSecondPassProgressProvider;
- (CSVoiceTriggerDelegate)delegate;
- (void)_clearPendingBuiltInVoiceTrigger;
- (void)_clearPendingRemoraVoiceTrigger;
- (void)_getHighestRemoraFirstPassGoodnessScore:(id)a3;
- (void)keywordDetectorDidDetectKeyword;
- (void)raiseToSpeakDetected:(id)a3;
- (void)secondPassDidStartForClient:(unint64_t)a3 deviceId:(id)a4 withFirstPassEstimate:(double)a5;
- (void)secondPassDidStopForClient:(unint64_t)a3 deviceId:(id)a4;
- (void)voiceTriggerDidDetectKeyword:(id)a3 deviceId:(id)a4;
- (void)voiceTriggerDidDetectKeyword:(id)a3 deviceId:(id)a4 completion:(id)a5;
- (void)voiceTriggerDidDetectNearMiss:(id)a3 deviceId:(id)a4;
- (void)voiceTriggerDidDetectSpeakerReject:(id)a3;
- (void)voiceTriggerDidRejected:(id)a3 deviceId:(id)a4;
- (void)voiceTriggerGotSuperVector:(id)a3;
@end

@implementation CSPreMyriadCoordinator

- (CSSecondPassProgressProviding)remoraSecondPassProgressProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_remoraSecondPassProgressProvider);

  return WeakRetained;
}

- (CSSecondPassProgressProviding)builtInSeconPassProgressProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_builtInSeconPassProgressProvider);

  return WeakRetained;
}

- (CSVoiceTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)secondPassDidStartForClient:(unint64_t)a3 deviceId:(id)a4 withFirstPassEstimate:(double)a5
{
  v8 = a4;
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"N/A";
    *buf = 136315651;
    v16 = "[CSPreMyriadCoordinator secondPassDidStartForClient:deviceId:withFirstPassEstimate:]";
    if (v8)
    {
      v10 = v8;
    }

    v17 = 2048;
    v18 = a3;
    v19 = 2113;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s client: %lu, deviceId: %{private}@", buf, 0x20u);
  }

  if (+[CSUtils supportHomeKitAccessory])
  {
    objc_initWeak(buf, self);
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000274AC;
    v12[3] = &unk_10024E8A8;
    objc_copyWeak(v14, buf);
    v14[1] = a3;
    v14[2] = *&a5;
    v13 = v8;
    dispatch_async(queue, v12);

    objc_destroyWeak(v14);
    objc_destroyWeak(buf);
  }
}

- (void)secondPassDidStopForClient:(unint64_t)a3 deviceId:(id)a4
{
  v6 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"N/A";
    *buf = 136315651;
    v14 = "[CSPreMyriadCoordinator secondPassDidStopForClient:deviceId:]";
    if (v6)
    {
      v8 = v6;
    }

    v15 = 2048;
    v16 = a3;
    v17 = 2113;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s client: %lu, deviceId: %{private}@", buf, 0x20u);
  }

  if (+[CSUtils supportHomeKitAccessory])
  {
    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100027748;
    block[3] = &unk_100251DA0;
    objc_copyWeak(v12, buf);
    v12[1] = a3;
    v11 = v6;
    dispatch_async(queue, block);

    objc_destroyWeak(v12);
    objc_destroyWeak(buf);
  }
}

- (void)voiceTriggerDidRejected:(id)a3 deviceId:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CSPreMyriadCoordinator *)self isBultInVoiceTriggerEvent:v8])
  {
    [(CSPreMyriadCoordinator *)self handlePendingRemoraVoiceTriggerIfNeeded];
  }

  else if ([(CSPreMyriadCoordinator *)self isRemoraVoiceTriggerEvent:v8])
  {
    [(CSPreMyriadCoordinator *)self handlePendingBuiltInVoiceTriggerIfNeeded];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained voiceTriggerDidRejected:v8 deviceId:v6];
}

- (void)raiseToSpeakDetected:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained raiseToSpeakDetected:v4];
}

- (void)voiceTriggerGotSuperVector:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained voiceTriggerGotSuperVector:v4];
}

- (void)keywordDetectorDidDetectKeyword
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained keywordDetectorDidDetectKeyword];
}

- (void)voiceTriggerDidDetectSpeakerReject:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained voiceTriggerDidDetectSpeakerReject:v4];
}

- (void)voiceTriggerDidDetectNearMiss:(id)a3 deviceId:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CSPreMyriadCoordinator *)self isBultInVoiceTriggerEvent:v8])
  {
    [(CSPreMyriadCoordinator *)self handlePendingRemoraVoiceTriggerIfNeeded];
  }

  else if ([(CSPreMyriadCoordinator *)self isRemoraVoiceTriggerEvent:v8])
  {
    [(CSPreMyriadCoordinator *)self handlePendingBuiltInVoiceTriggerIfNeeded];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained voiceTriggerDidDetectNearMiss:v8 deviceId:v6];
}

- (void)voiceTriggerDidDetectKeyword:(id)a3 deviceId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027B38;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)voiceTriggerDidDetectKeyword:(id)a3 deviceId:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 voiceTriggerDidDetectKeyword:v12 deviceId:v8 completion:v9];
  }
}

- (BOOL)_isRemoraSecondPassRunning
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessoryVoiceTriggerMetaDataByDeviceId = self->_accessoryVoiceTriggerMetaDataByDeviceId;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100027D20;
  v5[3] = &unk_10024E880;
  v5[4] = &v6;
  [(NSMutableDictionary *)accessoryVoiceTriggerMetaDataByDeviceId enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_getHighestRemoraFirstPassGoodnessScore:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0xBFF0000000000000;
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_100027EAC;
    v11 = sub_100027EBC;
    v12 = 0;
    accessoryVoiceTriggerMetaDataByDeviceId = self->_accessoryVoiceTriggerMetaDataByDeviceId;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100027EC4;
    v6[3] = &unk_10024E858;
    v6[4] = &v13;
    v6[5] = &v7;
    [(NSMutableDictionary *)accessoryVoiceTriggerMetaDataByDeviceId enumerateKeysAndObjectsUsingBlock:v6];
    v4[2](v4, v8[5], v14[3]);
    _Block_object_dispose(&v7, 8);

    _Block_object_dispose(&v13, 8);
  }
}

- (BOOL)handlePendingBuiltInVoiceTriggerIfNeeded
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSPreMyriadCoordinator handlePendingBuiltInVoiceTriggerIfNeeded]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Handling Pending BuiltInVoiceTrigger Event", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x3032000000;
  v17 = sub_100027EAC;
  v18 = sub_100027EBC;
  v19 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10002815C;
  v13 = sub_100028188;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028190;
  block[3] = &unk_100251428;
  block[4] = self;
  block[5] = &buf;
  block[6] = &v9;
  dispatch_async_and_wait(queue, block);
  v5 = *(*(&buf + 1) + 40);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained voiceTriggerDidDetectKeyword:*(*(&buf + 1) + 40) deviceId:0 completion:v10[5]];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&buf, 8);
  return v5 != 0;
}

- (void)_clearPendingBuiltInVoiceTrigger
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    pendingBuiltInVoiceTriggerResult = self->_pendingBuiltInVoiceTriggerResult;
    v9 = 136315395;
    v10 = "[CSPreMyriadCoordinator _clearPendingBuiltInVoiceTrigger]";
    v11 = 2113;
    v12 = pendingBuiltInVoiceTriggerResult;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Clearing pending built-in voice trigger %{private}@", &v9, 0x16u);
  }

  v5 = self->_pendingBuiltInVoiceTriggerResult;
  self->_pendingBuiltInVoiceTriggerResult = 0;

  pendingBuiltInVoiceTriggerCompletionBlk = self->_pendingBuiltInVoiceTriggerCompletionBlk;
  self->_pendingBuiltInVoiceTriggerCompletionBlk = 0;

  WeakRetained = objc_loadWeakRetained(&self->_builtInSeconPassProgressProvider);
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_builtInSeconPassProgressProvider);
    [v8 pendingSecondPassTriggerWasClearedForClient:1 deviceId:0];
  }
}

- (BOOL)handlePendingRemoraVoiceTriggerIfNeeded
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSPreMyriadCoordinator handlePendingRemoraVoiceTriggerIfNeeded]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Handling Pending Remora VoiceTrigger Event", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = sub_100027EAC;
  v24 = sub_100027EBC;
  v25 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100027EAC;
  v19 = sub_100027EBC;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10002815C;
  v13 = sub_100028188;
  v14 = 0;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100028628;
  v8[3] = &unk_10024E830;
  v8[4] = self;
  v8[5] = &buf;
  v8[6] = &v15;
  v8[7] = &v9;
  dispatch_async_and_wait(queue, v8);
  v5 = *(*(&buf + 1) + 40);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained voiceTriggerDidDetectKeyword:*(*(&buf + 1) + 40) deviceId:v16[5] completion:v10[5]];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&buf, 8);

  return v5 != 0;
}

- (void)_clearPendingRemoraVoiceTrigger
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    pendingRemoraVoiceTriggerResult = self->_pendingRemoraVoiceTriggerResult;
    v11 = 136315395;
    v12 = "[CSPreMyriadCoordinator _clearPendingRemoraVoiceTrigger]";
    v13 = 2113;
    v14 = pendingRemoraVoiceTriggerResult;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Clearing pending homekit accessory voice trigger %{private}@", &v11, 0x16u);
  }

  v5 = [(NSString *)self->_pendingRemoraVoiceTriggerDeviceId copy];
  v6 = self->_pendingRemoraVoiceTriggerResult;
  self->_pendingRemoraVoiceTriggerResult = 0;

  pendingRemoraVoiceTriggerDeviceId = self->_pendingRemoraVoiceTriggerDeviceId;
  self->_pendingRemoraVoiceTriggerDeviceId = 0;

  pendingRemoraVoiceTriggerCompletionBlk = self->_pendingRemoraVoiceTriggerCompletionBlk;
  self->_pendingRemoraVoiceTriggerCompletionBlk = 0;

  WeakRetained = objc_loadWeakRetained(&self->_remoraSecondPassProgressProvider);
  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_remoraSecondPassProgressProvider);
    [v10 pendingSecondPassTriggerWasClearedForClient:5 deviceId:v5];
  }
}

- (BOOL)isRemoraVoiceTriggerEvent:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = kVTEIfirstPassTriggerSource;
  v6 = [v3 objectForKeyedSubscript:kVTEIfirstPassTriggerSource];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [v4 objectForKeyedSubscript:v5];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = [v4 objectForKeyedSubscript:v5];
  v11 = [v10 isEqualToString:kVTEIFirstPassTriggeredFromRemora];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

- (BOOL)isBultInVoiceTriggerEvent:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = kVTEIfirstPassTriggerSource;
  v6 = [v3 objectForKeyedSubscript:kVTEIfirstPassTriggerSource];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [v4 objectForKeyedSubscript:v5];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = [v4 objectForKeyedSubscript:v5];
  v11 = [v10 isEqualToString:kVTEIFirstPassTriggeredFromApplicationProcessor];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

- (CSPreMyriadCoordinator)init
{
  v9.receiver = self;
  v9.super_class = CSPreMyriadCoordinator;
  v2 = [(CSPreMyriadCoordinator *)&v9 init];
  v3 = v2;
  if (v2)
  {
    if (!v2->_queue)
    {
      v4 = [CSUtils getSerialQueueWithQOS:33 name:@"com.apple.corespeech.premyriad" fixedPriority:kCSDefaultSerialQueueFixedPriority];
      queue = v3->_queue;
      v3->_queue = v4;
    }

    v6 = +[NSMutableDictionary dictionary];
    accessoryVoiceTriggerMetaDataByDeviceId = v3->_accessoryVoiceTriggerMetaDataByDeviceId;
    v3->_accessoryVoiceTriggerMetaDataByDeviceId = v6;
  }

  return v3;
}

@end