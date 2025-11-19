@interface CSVoiceTriggerFirstPassRemora
- (CSSecondPassProgressDelegate)secondPassProgressDelegate;
- (CSVoiceTriggerDelegate)delegate;
- (CSVoiceTriggerFirstPassRemora)init;
- (void)_cancelAllAudioStreamHoldings;
- (void)_cancelAudioStreamHoldingForAccessoryWithId:(id)a3;
- (void)_createSecondPassRequestIfNecessaryForActivationEvent:(id)a3 completion:(id)a4;
- (void)_handleRemoraTriggerEvent:(id)a3 secondPassRequest:(id)a4 completion:(id)a5;
- (void)_handleSecondPassResult:(id)a3 secondPassRequest:(id)a4 deviceId:(id)a5 error:(id)a6 completion:(id)a7;
- (void)_requestStartAudioStreamProviderWithContext:(id)a3 secondPassRequest:(id)a4 startStreamOption:(id)a5 completion:(id)a6;
- (void)_reset;
- (void)_setDeviceIds:(id)a3;
- (void)accessorySiriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7 forAccessory:(id)a8;
- (void)activationEventNotificationHandler:(id)a3 event:(id)a4 completion:(id)a5;
- (void)cancelSecondPassRunning;
- (void)pendingSecondPassTriggerWasClearedForClient:(unint64_t)a3 deviceId:(id)a4;
- (void)reset;
- (void)setConnectedDeviceIds:(id)a3;
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

- (void)pendingSecondPassTriggerWasClearedForClient:(unint64_t)a3 deviceId:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100137500;
  block[3] = &unk_1002533C8;
  v11 = self;
  v12 = a3;
  v10 = v6;
  v8 = v6;
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
  v2 = [(NSMutableDictionary *)self->_remoraSecondPassRequests objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) cancelAudioStreamHold];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_cancelAudioStreamHoldingForAccessoryWithId:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CSVoiceTriggerFirstPassRemora *)self triggeredAudioStreamHoldingByAccessoryId];
    v6 = [v5 objectForKey:v4];

    if (v6)
    {
      v7 = [v6 audioStreamHolding];
      v8 = [v6 audioProvider];
      if (v8 && v7)
      {
        v9 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_INFO))
        {
          v10 = 136315395;
          v11 = "[CSVoiceTriggerFirstPassRemora _cancelAudioStreamHoldingForAccessoryWithId:]";
          v12 = 2113;
          v13 = v4;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Cancelling audio stream hold for accessory: %{private}@", &v10, 0x16u);
        }

        [v8 cancelAudioStreamHold:v7];
      }
    }
  }
}

- (void)_requestStartAudioStreamProviderWithContext:(id)a3 secondPassRequest:(id)a4 startStreamOption:(id)a5 completion:(id)a6
{
  v8 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100137A48;
  v16[3] = &unk_100253220;
  v9 = a6;
  v17 = v9;
  v10 = a3;
  v11 = objc_retainBlock(v16);
  v12 = +[CSSpeechManager sharedManager];
  v15 = 0;
  v13 = [v12 audioProviderWithContext:v10 error:&v15];

  v14 = v15;
  if (v13)
  {
    [v8 setAudioProvider:v13];
  }

  (v11[2])(v11, v13 != 0, v14);
}

- (void)_handleSecondPassResult:(id)a3 secondPassRequest:(id)a4 deviceId:(id)a5 error:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 result];
  v18 = [v12 voiceTriggerEventInfo];
  if (v17 == 4)
  {
    if (v16)
    {
      v16[2](v16, 0, v15);
    }

    goto LABEL_31;
  }

  v19 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [v15 localizedDescription];
    *buf = 136316162;
    v47 = "[CSVoiceTriggerFirstPassRemora _handleSecondPassResult:secondPassRequest:deviceId:error:completion:]";
    v48 = 1026;
    *v49 = v17;
    *&v49[4] = 2114;
    *&v49[6] = v18;
    v50 = 2114;
    v51 = v14;
    v52 = 2114;
    v53 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Second Pass Result, %{public}d, %{public}@, %{public}@, %{public}@", buf, 0x30u);
  }

  v40 = [v13 isCancelled];
  if (v40)
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

  v23 = [v18 mutableCopy];
  [v13 firstPassTriggerEndTime];
  v24 = [NSNumber numberWithDouble:?];
  v39 = v23;
  [v23 setObject:v24 forKey:kVTEIFirstPassRemoraTriggerEndTime];

  if (v17 == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v33 = objc_opt_respondsToSelector();

    if ((v33 & 1) == 0)
    {
      goto LABEL_24;
    }

    v31 = objc_loadWeakRetained(&self->_delegate);
    [v31 voiceTriggerDidDetectNearMiss:v39 deviceId:v14];
    goto LABEL_18;
  }

  if (v17 == 2)
  {
    v29 = objc_loadWeakRetained(&self->_delegate);
    v30 = objc_opt_respondsToSelector();

    if ((v30 & 1) == 0)
    {
      goto LABEL_24;
    }

    v31 = objc_loadWeakRetained(&self->_delegate);
    [v31 voiceTriggerDidRejected:v39 deviceId:v14];
LABEL_18:

    goto LABEL_24;
  }

  if (v17 != 1)
  {
    v34 = CSLogCategoryVT;
    if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v31 = v34;
    v35 = [v15 localizedDescription];
    *buf = 136315394;
    v47 = "[CSVoiceTriggerFirstPassRemora _handleSecondPassResult:secondPassRequest:deviceId:error:completion:]";
    v48 = 2114;
    *v49 = v35;
    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s VoiceTrigger Second Pass has failed : %{public}@", buf, 0x16u);

    goto LABEL_18;
  }

  v25 = objc_loadWeakRetained(&self->_delegate);
  v26 = objc_opt_respondsToSelector();

  v27 = objc_loadWeakRetained(&self->_delegate);
  v28 = v27;
  if (v26)
  {
    [v27 voiceTriggerDidDetectKeyword:v39 deviceId:v14 completion:0];
LABEL_23:

    goto LABEL_24;
  }

  v36 = objc_opt_respondsToSelector();

  if (v36)
  {
    v28 = objc_loadWeakRetained(&self->_delegate);
    [v28 voiceTriggerDidDetectKeyword:v39 deviceId:v14];
    goto LABEL_23;
  }

LABEL_24:

LABEL_25:
  if ([v12 isSecondChanceCandidate])
  {
    v37 = [[CSVoiceTriggerSecondChanceContext alloc] initWithWindowStartTime:mach_absolute_time()];
  }

  else
  {
    v37 = 0;
  }

  [v13 setSecondChanceContext:v37];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100137F4C;
  block[3] = &unk_100252610;
  block[4] = self;
  v42 = v14;
  v43 = v13;
  v44 = v17;
  v45 = v40;
  dispatch_async(queue, block);
  if (v16)
  {
    v16[2](v16, 1, 0);
  }

LABEL_31:
}

- (void)_handleRemoraTriggerEvent:(id)a3 secondPassRequest:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v29 = a5;
  v30 = +[CSVoiceTriggerFirstPassMetrics CSVoiceTriggerFirstPassMetricsWithFirstPassInfoGeneratedTime:firstPassInfoProcessedTime:](CSVoiceTriggerFirstPassMetrics, "CSVoiceTriggerFirstPassMetricsWithFirstPassInfoGeneratedTime:firstPassInfoProcessedTime:", [v8 hosttime], mach_absolute_time());
  v10 = [v8 deviceId];
  v31 = [CSAudioRecordContext contextForRemoraVoiceTriggerWithDeviceId:v10];

  v11 = +[NSUUID UUID];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100138460;
  v38[3] = &unk_100253300;
  v12 = v9;
  v39 = v12;
  [(CSVoiceTriggerFirstPassRemora *)self _requestStartAudioStreamProviderWithContext:v31 secondPassRequest:v12 startStreamOption:0 completion:v38];
  v13 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v8 deviceId];
    *buf = 136315394;
    v41 = "[CSVoiceTriggerFirstPassRemora _handleRemoraTriggerEvent:secondPassRequest:completion:]";
    v42 = 2112;
    v43 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v16 = [v8 deviceId];
  [(CSVoiceTriggerFirstPassRemora *)self _setIsSecondPassing:1 forDeviceId:v16];

  objc_initWeak(buf, self);
  v17 = [v12 secondChanceContext];
  v18 = [v17 shouldRunAsSecondChance];

  v19 = [CSVoiceTriggerSecondPassRequestOption alloc];
  v20 = [v8 deviceId];
  v21 = [v12 audioProvider];
  v22 = [v21 UUID];
  v23 = [v8 activationInfo];
  v24 = [(CSVoiceTriggerSecondPassRequestOption *)v19 initWithFirstPassSource:7 deviceId:v20 audioProviderUUID:v22 firstPassInfo:v23 rejectionMHUUID:v11 isSecondChanceRun:v18 firstpassMetrics:v30 rtModelRequestOptions:0];

  v25 = [v12 voiceTriggerSecondPass];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001385B0;
  v32[3] = &unk_1002525E8;
  objc_copyWeak(&v37, buf);
  v26 = v12;
  v33 = v26;
  v27 = v8;
  v34 = v27;
  v28 = v29;
  v35 = self;
  v36 = v28;
  [v25 handleVoiceTriggerSecondPassFrom:v24 completion:v32];

  objc_destroyWeak(&v37);
  objc_destroyWeak(buf);
}

- (void)accessorySiriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7 forAccessory:(id)a8
{
  v9 = a8;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001388A8;
  v12[3] = &unk_100253C48;
  v13 = v9;
  v14 = self;
  v11 = v9;
  dispatch_async(queue, v12);
}

- (void)_createSecondPassRequestIfNecessaryForActivationEvent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 activationInfo];
  v9 = [v8 objectForKey:@"firstPassGoodness"];
  [v9 floatValue];
  v11 = v10;

  v12 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v6 deviceId];
    *buf = 136316163;
    v59 = "[CSVoiceTriggerFirstPassRemora _createSecondPassRequestIfNecessaryForActivationEvent:completion:]";
    v60 = 2113;
    v61 = v14;
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
  v15 = v6;
  v56 = v15;
  v57 = v11 + 0.0;
  v16 = objc_retainBlock(v55);
  if (v15)
  {
    v17 = [v15 activationInfo];
    if (v17)
    {
      v18 = v17;
      v19 = [v15 activationInfo];
      v20 = [v19 objectForKey:@"firstPassGoodness"];

      if (!v20)
      {
        goto LABEL_27;
      }
    }
  }

  v21 = [v15 hosttime];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v22 = [(NSMutableDictionary *)self->_remoraSecondPassRequests allKeys];
  v23 = [v22 countByEnumeratingWithState:&v51 objects:v70 count:16];
  if (!v23)
  {

LABEL_27:
    v44 = (v16[2])(v16);
    remoraSecondPassRequests = self->_remoraSecondPassRequests;
    v46 = [v15 deviceId];
    [(NSMutableDictionary *)remoraSecondPassRequests setObject:v44 forKey:v46];

    if (v7)
    {
      v7[2](v7, 0, v44);
    }

    goto LABEL_29;
  }

  v24 = v23;
  v47 = v16;
  v48 = v7;
  v49 = v15;
  v25 = *v52;
  v50 = 1;
  do
  {
    for (i = 0; i != v24; i = i + 1)
    {
      if (*v52 != v25)
      {
        objc_enumerationMutation(v22);
      }

      v27 = *(*(&v51 + 1) + 8 * i);
      v28 = [(NSMutableDictionary *)self->_remoraSecondPassRequests objectForKeyedSubscript:v27, v47];
      v29 = [v28 isCancelled];

      if ((v29 & 1) == 0)
      {
        v30 = [(NSMutableDictionary *)self->_remoraSecondPassRequests objectForKeyedSubscript:v27];
        v31 = [v30 timestamp];

        v32 = [(NSMutableDictionary *)self->_remoraSecondPassRequests objectForKeyedSubscript:v27];
        v33 = [v32 timestamp];
        v34 = v21 <= v31 ? v33 - v21 : v21 - v33;
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

    v24 = [v22 countByEnumeratingWithState:&v51 objects:v70 count:16];
  }

  while (v24);

  v16 = v47;
  v7 = v48;
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

- (void)activationEventNotificationHandler:(id)a3 event:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001390EC;
  block[3] = &unk_1002533A0;
  v14 = self;
  v15 = v8;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

- (void)_setDeviceIds:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a3;
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

- (void)setConnectedDeviceIds:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100139F44;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_reset
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_remoraSecondPassRequests objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) reset];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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