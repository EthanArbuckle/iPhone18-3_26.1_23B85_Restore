@interface IDSFanoutSender
- (IDSFanoutSender)initWithGUID:(id)d service:(id)service messageDelivery:(id)delivery completionActivity:(id)activity coalesceQueueManager:(id)manager;
- (void)finishedTrackingAPNSAcksWithURIs:(id)is guid:(id)guid;
- (void)finishedTrackingMadridAcksWithContext:(id)context uris:(id)uris guid:(id)guid;
- (void)receivedAPNSAckForMessage:(id)message guid:(id)guid;
- (void)receivedErrorWithContext:(id)context;
- (void)sendFanouts:(id)fanouts guidToDeliveryAcknowledgementBlock:(id)block guidToSendCompletionBlock:(id)completionBlock forURIs:(id)is messageQueue:(id)queue;
- (void)sendMMLs:(id)ls guidToDeliveryAcknowledgementBlock:(id)block guidToSendCompletionBlock:(id)completionBlock forService:(id)service sendMode:(id)mode messageQueue:(id)queue;
@end

@implementation IDSFanoutSender

- (IDSFanoutSender)initWithGUID:(id)d service:(id)service messageDelivery:(id)delivery completionActivity:(id)activity coalesceQueueManager:(id)manager
{
  dCopy = d;
  serviceCopy = service;
  deliveryCopy = delivery;
  activityCopy = activity;
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = IDSFanoutSender;
  v17 = [(IDSFanoutSender *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_messageDelivery, delivery);
    v19 = objc_alloc_init(IDSAckStateMachine);
    ackStateMachine = v18->_ackStateMachine;
    v18->_ackStateMachine = v19;

    objc_storeStrong(&v18->_guid, d);
    objc_storeStrong(&v18->_service, service);
    objc_storeStrong(&v18->_completionActivity, activity);
    objc_storeStrong(&v18->_coalesceQueueManager, manager);
  }

  return v18;
}

- (void)sendFanouts:(id)fanouts guidToDeliveryAcknowledgementBlock:(id)block guidToSendCompletionBlock:(id)completionBlock forURIs:(id)is messageQueue:(id)queue
{
  fanoutsCopy = fanouts;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  isCopy = is;
  queueCopy = queue;
  objc_storeStrong(&self->_guidToDeliveryAcknowledgementBlock, block);
  objc_storeStrong(&self->_guidToSendCompletionBlock, completionBlock);
  v15 = objc_alloc_init(IDSAPNSAckTracker);
  v16 = objc_alloc_init(IDSMadridAckTracker);
  [(IDSAPNSAckTracker *)v15 setDelegate:self];
  [(IDSMadridAckTracker *)v16 setDelegate:self];
  v40 = v15;
  [(IDSAPNSAckTracker *)v15 trackMessages:fanoutsCopy forURIs:isCopy];
  v39 = v16;
  v41 = isCopy;
  v47 = queueCopy;
  [(IDSMadridAckTracker *)v16 trackMessages:fanoutsCopy forURIs:isCopy messageQueue:queueCopy];
  selfCopy = self;
  [(IDSAckStateMachine *)self->_ackStateMachine setState:1];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v17 = fanoutsCopy;
  v18 = [v17 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v53;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(v17);
        }

        pendingResponseTokens = [*(*(&v52 + 1) + 8 * i) pendingResponseTokens];
        v20 += [pendingResponseTokens count];
      }

      v19 = [v17 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v17;
  v24 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v24)
  {
    v25 = v24;
    v45 = *v49;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v49 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v48 + 1) + 8 * j);
        [(FTMessageDelivery *)selfCopy->_messageDelivery sendMessage:v27];
        v28 = [v47 count];
        v29 = +[IMMobileNetworkManager sharedInstance];
        v30 = v29;
        if (v28)
        {
          [v29 addFastDormancyDisableToken:@"IDSDeliveryManager"];
        }

        else
        {
          [v29 removeFastDormancyDisableToken:@"IDSDeliveryManager"];
        }

        sendMetric = [v27 sendMetric];
        v32 = +[IDSCurrentServerTime sharedInstance];
        [v32 currentServerTimeInterval];
        v33 = [NSNumber numberWithDouble:?];
        v34 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys outgoingSendFanoutsKey];
        [sendMetric addEntry:v33 forKey:v34];

        chunkNumber = [v27 chunkNumber];
        v36 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys fanoutChunkNumberKey];
        [sendMetric addEntry:chunkNumber forKey:v36];

        v37 = [NSNumber numberWithLongLong:v20];
        v38 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys totalFanoutDeviceCountKey];
        [sendMetric addEntry:v37 forKey:v38];
      }

      v25 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v25);
  }
}

- (void)sendMMLs:(id)ls guidToDeliveryAcknowledgementBlock:(id)block guidToSendCompletionBlock:(id)completionBlock forService:(id)service sendMode:(id)mode messageQueue:(id)queue
{
  lsCopy = ls;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  serviceCopy = service;
  modeCopy = mode;
  queueCopy = queue;
  objc_storeStrong(&self->_guidToDeliveryAcknowledgementBlock, block);
  objc_storeStrong(&self->_guidToSendCompletionBlock, completionBlock);
  v18 = objc_alloc_init(IDSAPNSAckTracker);
  v19 = objc_alloc_init(IDSMadridAckTracker);
  [(IDSAPNSAckTracker *)v18 setDelegate:self];
  [(IDSMadridAckTracker *)v19 setDelegate:self];
  allKeys = [lsCopy allKeys];
  v31 = modeCopy;
  v32 = serviceCopy;
  v21 = [IDSMMLBuilder mmlsFromAggregates:allKeys service:serviceCopy sendMode:modeCopy guid:self->_guid];

  [(IDSAPNSAckTracker *)v18 trackMMLMessages:v21 forURIs:lsCopy];
  v30 = v19;
  v35 = lsCopy;
  [(IDSMadridAckTracker *)v19 trackMMLMessages:v21 forURIs:lsCopy messageQueue:queueCopy];
  [(IDSAckStateMachine *)self->_ackStateMachine setState:1];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(FTMessageDelivery *)self->_messageDelivery sendMessage:*(*(&v36 + 1) + 8 * i)];
        v27 = [queueCopy count];
        v28 = +[IMMobileNetworkManager sharedInstance];
        v29 = v28;
        if (v27)
        {
          [v28 addFastDormancyDisableToken:@"IDSDeliveryManager"];
        }

        else
        {
          [v28 removeFastDormancyDisableToken:@"IDSDeliveryManager"];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v24);
  }
}

- (void)receivedAPNSAckForMessage:(id)message guid:(id)guid
{
  messageCopy = message;
  guidCopy = guid;
  v8 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = guidCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received APNS Ack for GUID %@", &v11, 0xCu);
  }

  v9 = [(NSDictionary *)self->_guidToDeliveryAcknowledgementBlock objectForKey:guidCopy];

  if (v9)
  {
    v10 = [(NSDictionary *)self->_guidToDeliveryAcknowledgementBlock objectForKey:guidCopy];
    (v10)[2](v10, messageCopy);
  }
}

- (void)finishedTrackingAPNSAcksWithURIs:(id)is guid:(id)guid
{
  isCopy = is;
  guidCopy = guid;
  v8 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ([(IDSAckStateMachine *)self->_ackStateMachine successful])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    error = [(IDSAckStateMachine *)self->_ackStateMachine error];
    v17 = 138412802;
    v18 = guidCopy;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = error;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished acks for GUID %@ success: %@ error: %@", &v17, 0x20u);
  }

  if ([(IDSAckStateMachine *)self->_ackStateMachine state]!= 3)
  {
    v11 = [(NSDictionary *)self->_guidToSendCompletionBlock objectForKey:guidCopy];

    if (v11)
    {
      v12 = 2;
      [(IDSAckStateMachine *)self->_ackStateMachine setState:2];
      v13 = [IDSDeliveryContext alloc];
      if ([(IDSAckStateMachine *)self->_ackStateMachine successful])
      {
        v12 = 0;
      }

      error2 = [(IDSAckStateMachine *)self->_ackStateMachine error];
      v15 = [v13 initWithResponseCode:v12 error:error2 lastCall:0];

      [v15 setDisplayURIs:isCopy];
      [v15 setLastCourierAck:1];
      v16 = [(NSDictionary *)self->_guidToSendCompletionBlock objectForKey:guidCopy];
      (v16)[2](v16, v15);
      [(IDSAckStateMachine *)self->_ackStateMachine setError:0];
    }
  }
}

- (void)receivedErrorWithContext:(id)context
{
  contextCopy = context;
  [(IDSAckStateMachine *)self->_ackStateMachine setSuccessful:0];
  responseError = [contextCopy responseError];
  if (responseError)
  {
    v5 = responseError;
    error = [(IDSAckStateMachine *)self->_ackStateMachine error];

    if (!error)
    {
      ackStateMachine = self->_ackStateMachine;
      responseError2 = [contextCopy responseError];
      [(IDSAckStateMachine *)ackStateMachine setError:responseError2];
    }
  }
}

- (void)finishedTrackingMadridAcksWithContext:(id)context uris:(id)uris guid:(id)guid
{
  contextCopy = context;
  urisCopy = uris;
  guidCopy = guid;
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(self->_completionActivity, &state);
  [(IDSAckStateMachine *)self->_ackStateMachine setState:3];
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    *buf = 138412546;
    v26 = guidCopy;
    v27 = 2112;
    v28 = service;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "OUTGOING-PUSH_FULLY_SENT:%@ SERVICE:%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v22 = guidCopy;
    v23 = self->_service;
    _IDSLogV();
  }

  v13 = [IDSFoundationLog delivery:v22];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    successful = [(IDSAckStateMachine *)self->_ackStateMachine successful];
    error = [(IDSAckStateMachine *)self->_ackStateMachine error];
    v16 = error;
    v17 = @"NO";
    *buf = 138412802;
    v26 = guidCopy;
    v27 = 2112;
    if (successful)
    {
      v17 = @"YES";
    }

    v28 = v17;
    v29 = 2112;
    v30 = error;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Finished sending GUID %@ success: %@ error: %@", buf, 0x20u);
  }

  v18 = [(NSDictionary *)self->_guidToSendCompletionBlock objectForKey:guidCopy];

  if (v18)
  {
    [contextCopy setDisplayURIs:urisCopy];
    if ([(IDSAckStateMachine *)self->_ackStateMachine successful])
    {
      v19 = 0;
    }

    else
    {
      v19 = 2;
    }

    [contextCopy setIdsResponseCode:v19];
    error2 = [(IDSAckStateMachine *)self->_ackStateMachine error];
    [contextCopy setResponseError:error2];

    [contextCopy setLastCall:1];
    v21 = [(NSDictionary *)self->_guidToSendCompletionBlock objectForKey:guidCopy];
    (v21)[2](v21, contextCopy);
    [(IDSAckStateMachine *)self->_ackStateMachine setError:0];
  }

  os_activity_scope_leave(&state);
}

@end