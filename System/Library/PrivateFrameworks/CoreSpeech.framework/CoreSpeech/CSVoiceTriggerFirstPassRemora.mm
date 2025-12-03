@interface CSVoiceTriggerFirstPassRemora
- (CSSecondPassProgressDelegate)secondPassProgressDelegate;
- (CSVoiceTriggerDelegate)delegate;
- (CSVoiceTriggerFirstPassRemora)init;
- (void)_cancelAllAudioStreamHoldings;
- (void)_cancelAudioStreamHoldingForAccessoryWithId:(id)id;
- (void)_createSecondPassRequestIfNecessaryForActivationEvent:(id)event completion:(id)completion;
- (void)_handleRemoraTriggerEvent:(id)event secondPassRequest:(id)request completion:(id)completion;
- (void)_handleSecondPassResult:(id)result secondPassRequest:(id)request deviceId:(id)id error:(id)error completion:(id)completion;
- (void)_requestStartAudioStreamProviderWithContext:(id)context secondPassRequest:(id)request startStreamOption:(id)option completion:(id)completion;
- (void)_reset;
- (void)_setDeviceIds:(id)ids;
- (void)accessorySiriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d forAccessory:(id)accessory;
- (void)activationEventNotificationHandler:(id)handler event:(id)event completion:(id)completion;
- (void)cancelSecondPassRunning;
- (void)pendingSecondPassTriggerWasClearedForClient:(unint64_t)client deviceId:(id)id;
- (void)reset;
- (void)setConnectedDeviceIds:(id)ids;
- (void)start;
@end

@implementation CSVoiceTriggerFirstPassRemora

- (CSSecondPassProgressDelegate)secondPassProgressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secondPassProgressDelegate);

  return WeakRetained;
}

- (CSVoiceTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pendingSecondPassTriggerWasClearedForClient:(unint64_t)client deviceId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100137500;
  block[3] = &unk_1002533C8;
  selfCopy = self;
  clientCopy = client;
  v10 = idCopy;
  v8 = idCopy;
  dispatch_async(queue, block);
}

- (void)cancelSecondPassRunning
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100137594;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_cancelAllAudioStreamHoldings
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_remoraSecondPassRequests objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v7 + 1) + 8 * v6) cancelAudioStreamHold];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_cancelAudioStreamHoldingForAccessoryWithId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    triggeredAudioStreamHoldingByAccessoryId = [(CSVoiceTriggerFirstPassRemora *)self triggeredAudioStreamHoldingByAccessoryId];
    v6 = [triggeredAudioStreamHoldingByAccessoryId objectForKey:idCopy];

    if (v6)
    {
      audioStreamHolding = [v6 audioStreamHolding];
      audioProvider = [v6 audioProvider];
      if (audioProvider && audioStreamHolding)
      {
        v9 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_INFO))
        {
          v10 = 136315395;
          v11 = "[CSVoiceTriggerFirstPassRemora _cancelAudioStreamHoldingForAccessoryWithId:]";
          v12 = 2113;
          v13 = idCopy;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Cancelling audio stream hold for accessory: %{private}@", &v10, 0x16u);
        }

        [audioProvider cancelAudioStreamHold:audioStreamHolding];
      }
    }
  }
}

- (void)_requestStartAudioStreamProviderWithContext:(id)context secondPassRequest:(id)request startStreamOption:(id)option completion:(id)completion
{
  requestCopy = request;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100137A48;
  v16[3] = &unk_100253220;
  completionCopy = completion;
  v17 = completionCopy;
  contextCopy = context;
  v11 = objc_retainBlock(v16);
  v12 = +[CSSpeechManager sharedManager];
  v15 = 0;
  v13 = [v12 audioProviderWithContext:contextCopy error:&v15];

  v14 = v15;
  if (v13)
  {
    [requestCopy setAudioProvider:v13];
  }

  (v11[2])(v11, v13 != 0, v14);
}

- (void)_handleSecondPassResult:(id)result secondPassRequest:(id)request deviceId:(id)id error:(id)error completion:(id)completion
{
  resultCopy = result;
  requestCopy = request;
  idCopy = id;
  errorCopy = error;
  completionCopy = completion;
  result = [resultCopy result];
  voiceTriggerEventInfo = [resultCopy voiceTriggerEventInfo];
  if (result == 4)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, errorCopy);
    }

    goto LABEL_31;
  }

  v19 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    localizedDescription = [errorCopy localizedDescription];
    *buf = 136316162;
    v47 = "[CSVoiceTriggerFirstPassRemora _handleSecondPassResult:secondPassRequest:deviceId:error:completion:]";
    v48 = 1026;
    *v49 = result;
    *&v49[4] = 2114;
    *&v49[6] = voiceTriggerEventInfo;
    v50 = 2114;
    v51 = idCopy;
    v52 = 2114;
    v53 = localizedDescription;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Second Pass Result, %{public}d, %{public}@, %{public}@, %{public}@", buf, 0x30u);
  }

  isCancelled = [requestCopy isCancelled];
  if (isCancelled)
  {
    v22 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v47 = "[CSVoiceTriggerFirstPassRemora _handleSecondPassResult:secondPassRequest:deviceId:error:completion:]";
      _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "%s VoiceTrigger Second Pass has been marked for cancellation.", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v23 = [voiceTriggerEventInfo mutableCopy];
  [requestCopy firstPassTriggerEndTime];
  v24 = [NSNumber numberWithDouble:?];
  v39 = v23;
  [v23 setObject:v24 forKey:kVTEIFirstPassRemoraTriggerEndTime];

  if (result == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v33 = objc_opt_respondsToSelector();

    if ((v33 & 1) == 0)
    {
      goto LABEL_24;
    }

    v31 = objc_loadWeakRetained(&self->_delegate);
    [v31 voiceTriggerDidDetectNearMiss:v39 deviceId:idCopy];
    goto LABEL_18;
  }

  if (result == 2)
  {
    v29 = objc_loadWeakRetained(&self->_delegate);
    v30 = objc_opt_respondsToSelector();

    if ((v30 & 1) == 0)
    {
      goto LABEL_24;
    }

    v31 = objc_loadWeakRetained(&self->_delegate);
    [v31 voiceTriggerDidRejected:v39 deviceId:idCopy];
LABEL_18:

    goto LABEL_24;
  }

  if (result != 1)
  {
    v34 = CSLogCategoryVT;
    if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v31 = v34;
    localizedDescription2 = [errorCopy localizedDescription];
    *buf = 136315394;
    v47 = "[CSVoiceTriggerFirstPassRemora _handleSecondPassResult:secondPassRequest:deviceId:error:completion:]";
    v48 = 2114;
    *v49 = localizedDescription2;
    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s VoiceTrigger Second Pass has failed : %{public}@", buf, 0x16u);

    goto LABEL_18;
  }

  v25 = objc_loadWeakRetained(&self->_delegate);
  v26 = objc_opt_respondsToSelector();

  v27 = objc_loadWeakRetained(&self->_delegate);
  v28 = v27;
  if (v26)
  {
    [v27 voiceTriggerDidDetectKeyword:v39 deviceId:idCopy completion:0];
LABEL_23:

    goto LABEL_24;
  }

  v36 = objc_opt_respondsToSelector();

  if (v36)
  {
    v28 = objc_loadWeakRetained(&self->_delegate);
    [v28 voiceTriggerDidDetectKeyword:v39 deviceId:idCopy];
    goto LABEL_23;
  }

LABEL_24:

LABEL_25:
  if ([resultCopy isSecondChanceCandidate])
  {
    v37 = [[CSVoiceTriggerSecondChanceContext alloc] initWithWindowStartTime:mach_absolute_time()];
  }

  else
  {
    v37 = 0;
  }

  [requestCopy setSecondChanceContext:v37];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100137F4C;
  block[3] = &unk_100252610;
  block[4] = self;
  v42 = idCopy;
  v43 = requestCopy;
  v44 = result;
  v45 = isCancelled;
  dispatch_async(queue, block);
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

LABEL_31:
}

- (void)_handleRemoraTriggerEvent:(id)event secondPassRequest:(id)request completion:(id)completion
{
  eventCopy = event;
  requestCopy = request;
  completionCopy = completion;
  v30 = +[CSVoiceTriggerFirstPassMetrics CSVoiceTriggerFirstPassMetricsWithFirstPassInfoGeneratedTime:firstPassInfoProcessedTime:](CSVoiceTriggerFirstPassMetrics, "CSVoiceTriggerFirstPassMetricsWithFirstPassInfoGeneratedTime:firstPassInfoProcessedTime:", [eventCopy hosttime], mach_absolute_time());
  deviceId = [eventCopy deviceId];
  v31 = [CSAudioRecordContext contextForRemoraVoiceTriggerWithDeviceId:deviceId];

  v11 = +[NSUUID UUID];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100138460;
  v38[3] = &unk_100253300;
  v12 = requestCopy;
  v39 = v12;
  [(CSVoiceTriggerFirstPassRemora *)self _requestStartAudioStreamProviderWithContext:v31 secondPassRequest:v12 startStreamOption:0 completion:v38];
  v13 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    deviceId2 = [eventCopy deviceId];
    *buf = 136315394;
    v41 = "[CSVoiceTriggerFirstPassRemora _handleRemoraTriggerEvent:secondPassRequest:completion:]";
    v42 = 2112;
    v43 = deviceId2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  deviceId3 = [eventCopy deviceId];
  [(CSVoiceTriggerFirstPassRemora *)self _setIsSecondPassing:1 forDeviceId:deviceId3];

  objc_initWeak(buf, self);
  secondChanceContext = [v12 secondChanceContext];
  shouldRunAsSecondChance = [secondChanceContext shouldRunAsSecondChance];

  v19 = [CSVoiceTriggerSecondPassRequestOption alloc];
  deviceId4 = [eventCopy deviceId];
  audioProvider = [v12 audioProvider];
  uUID = [audioProvider UUID];
  activationInfo = [eventCopy activationInfo];
  v24 = [(CSVoiceTriggerSecondPassRequestOption *)v19 initWithFirstPassSource:7 deviceId:deviceId4 audioProviderUUID:uUID firstPassInfo:activationInfo rejectionMHUUID:v11 isSecondChanceRun:shouldRunAsSecondChance firstpassMetrics:v30 rtModelRequestOptions:0];

  voiceTriggerSecondPass = [v12 voiceTriggerSecondPass];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001385B0;
  v32[3] = &unk_1002525E8;
  objc_copyWeak(&v37, buf);
  v26 = v12;
  v33 = v26;
  v27 = eventCopy;
  v34 = v27;
  v28 = completionCopy;
  selfCopy = self;
  v36 = v28;
  [voiceTriggerSecondPass handleVoiceTriggerSecondPassFrom:v24 completion:v32];

  objc_destroyWeak(&v37);
  objc_destroyWeak(buf);
}

- (void)accessorySiriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d forAccessory:(id)accessory
{
  accessoryCopy = accessory;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001388A8;
  v12[3] = &unk_100253C48;
  v13 = accessoryCopy;
  selfCopy = self;
  v11 = accessoryCopy;
  dispatch_async(queue, v12);
}

- (void)_createSecondPassRequestIfNecessaryForActivationEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  activationInfo = [eventCopy activationInfo];
  v9 = [activationInfo objectForKey:@"firstPassGoodness"];
  [v9 floatValue];
  v11 = v10;

  v12 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    deviceId = [eventCopy deviceId];
    *buf = 136316163;
    v59 = "[CSVoiceTriggerFirstPassRemora _createSecondPassRequestIfNecessaryForActivationEvent:completion:]";
    v60 = 2113;
    v61 = deviceId;
    v62 = 2049;
    v63 = v11 + 0.0;
    v64 = 2049;
    v65 = v11;
    v66 = 2049;
    v67 = 0.0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s accessory id %{private}@, ascore: %{private}f (raw=%{private}f, bump=%{private}f)", buf, 0x34u);
  }

  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100138EC4;
  v55[3] = &unk_1002525C0;
  v15 = eventCopy;
  v56 = v15;
  v57 = v11 + 0.0;
  v16 = objc_retainBlock(v55);
  if (v15)
  {
    activationInfo2 = [v15 activationInfo];
    if (activationInfo2)
    {
      v18 = activationInfo2;
      activationInfo3 = [v15 activationInfo];
      v20 = [activationInfo3 objectForKey:@"firstPassGoodness"];

      if (!v20)
      {
        goto LABEL_27;
      }
    }
  }

  hosttime = [v15 hosttime];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  allKeys = [(NSMutableDictionary *)self->_remoraSecondPassRequests allKeys];
  v23 = [allKeys countByEnumeratingWithState:&v51 objects:v70 count:16];
  if (!v23)
  {

LABEL_27:
    v44 = (v16[2])(v16);
    remoraSecondPassRequests = self->_remoraSecondPassRequests;
    deviceId2 = [v15 deviceId];
    [(NSMutableDictionary *)remoraSecondPassRequests setObject:v44 forKey:deviceId2];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v44);
    }

    goto LABEL_29;
  }

  v24 = v23;
  v47 = v16;
  v48 = completionCopy;
  v49 = v15;
  v25 = *v52;
  v50 = 1;
  do
  {
    for (i = 0; i != v24; i = i + 1)
    {
      if (*v52 != v25)
      {
        objc_enumerationMutation(allKeys);
      }

      v27 = *(*(&v51 + 1) + 8 * i);
      v28 = [(NSMutableDictionary *)self->_remoraSecondPassRequests objectForKeyedSubscript:v27, v47];
      isCancelled = [v28 isCancelled];

      if ((isCancelled & 1) == 0)
      {
        v30 = [(NSMutableDictionary *)self->_remoraSecondPassRequests objectForKeyedSubscript:v27];
        timestamp = [v30 timestamp];

        v32 = [(NSMutableDictionary *)self->_remoraSecondPassRequests objectForKeyedSubscript:v27];
        timestamp2 = [v32 timestamp];
        v34 = hosttime <= timestamp ? timestamp2 - hosttime : hosttime - timestamp2;
        [CSFTimeUtils hostTimeToTimeInterval:v34];
        v36 = v35;

        if (v36 <= 0.349999994)
        {
          v37 = [(NSMutableDictionary *)self->_remoraSecondPassRequests objectForKeyedSubscript:v27];
          [v37 goodnessScore];
          v39 = v38;

          if (v11 <= v39)
          {
            v50 = 0;
          }

          else
          {
            v40 = CSLogCategoryVT;
            if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
            {
              v41 = v40;
              [v49 deviceId];
              v42 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 136316419;
              v59 = "[CSVoiceTriggerFirstPassRemora _createSecondPassRequestIfNecessaryForActivationEvent:completion:]";
              v60 = 2113;
              v61 = v27;
              v62 = 2048;
              v63 = v11 + 0.0;
              v64 = 2113;
              v65 = v42;
              v66 = 2048;
              v67 = v39;
              v68 = 2113;
              v69 = v27;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s Pre-Myriad is cancelling activation on device %{private}@ (activation goodness score: %f (deviceId: %{private}@), competing goodness score: %f (deviceId: %{private}@))", buf, 0x3Eu);
            }

            v43 = [(NSMutableDictionary *)self->_remoraSecondPassRequests objectForKeyedSubscript:v27];
            [v43 cancelRequest];

            [(NSMutableDictionary *)self->_remoraSecondPassRequests removeObjectForKey:v27];
          }
        }
      }
    }

    v24 = [allKeys countByEnumeratingWithState:&v51 objects:v70 count:16];
  }

  while (v24);

  v16 = v47;
  completionCopy = v48;
  v15 = v49;
  if (v50)
  {
    goto LABEL_27;
  }

  if (v48)
  {
    v44 = [NSError errorWithDomain:CSErrorDomain code:605 userInfo:0];
    (v48)[2](v48, v44, 0);
LABEL_29:
  }
}

- (void)activationEventNotificationHandler:(id)handler event:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001390EC;
  block[3] = &unk_1002533A0;
  selfCopy = self;
  v15 = completionCopy;
  v13 = eventCopy;
  v10 = completionCopy;
  v11 = eventCopy;
  dispatch_async(queue, block);
}

- (void)_setDeviceIds:(id)ids
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = ids;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = dispatch_semaphore_create(0);
        v10 = +[CSVoiceTriggerAssetHandler sharedHandler];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100139E2C;
        v13[3] = &unk_100252520;
        v13[4] = self;
        v13[5] = v8;
        v14 = v9;
        v11 = v9;
        [v10 getVoiceTriggerAssetWithEndpointId:v8 completion:v13];

        dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)setConnectedDeviceIds:(id)ids
{
  idsCopy = ids;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100139F44;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = idsCopy;
  v6 = idsCopy;
  dispatch_async(queue, v7);
}

- (void)_reset
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_remoraSecondPassRequests objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v7 + 1) + 8 * v6) reset];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013A0B4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013A130;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSVoiceTriggerFirstPassRemora)init
{
  v12.receiver = self;
  v12.super_class = CSVoiceTriggerFirstPassRemora;
  v2 = [(CSVoiceTriggerFirstPassRemora *)&v12 init];
  if (v2)
  {
    v3 = [CSUtils getSerialQueueWithQOS:33 name:@"com.apple.corespeech.firstpassremora" fixedPriority:kCSDefaultSerialQueueFixedPriority];
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSMutableDictionary dictionary];
    remoraSecondPassRequests = v2->_remoraSecondPassRequests;
    v2->_remoraSecondPassRequests = v5;

    v7 = +[NSMutableDictionary dictionary];
    accessoryFirstPassGoodnessScores = v2->_accessoryFirstPassGoodnessScores;
    v2->_accessoryFirstPassGoodnessScores = v7;

    v9 = +[NSMutableDictionary dictionary];
    triggeredAudioStreamHoldingByAccessoryId = v2->_triggeredAudioStreamHoldingByAccessoryId;
    v2->_triggeredAudioStreamHoldingByAccessoryId = v9;
  }

  return v2;
}

@end