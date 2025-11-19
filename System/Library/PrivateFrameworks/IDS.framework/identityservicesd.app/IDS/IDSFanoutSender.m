@interface IDSFanoutSender
- (IDSFanoutSender)initWithGUID:(id)a3 service:(id)a4 messageDelivery:(id)a5 completionActivity:(id)a6 coalesceQueueManager:(id)a7;
- (void)finishedTrackingAPNSAcksWithURIs:(id)a3 guid:(id)a4;
- (void)finishedTrackingMadridAcksWithContext:(id)a3 uris:(id)a4 guid:(id)a5;
- (void)receivedAPNSAckForMessage:(id)a3 guid:(id)a4;
- (void)receivedErrorWithContext:(id)a3;
- (void)sendFanouts:(id)a3 guidToDeliveryAcknowledgementBlock:(id)a4 guidToSendCompletionBlock:(id)a5 forURIs:(id)a6 messageQueue:(id)a7;
- (void)sendMMLs:(id)a3 guidToDeliveryAcknowledgementBlock:(id)a4 guidToSendCompletionBlock:(id)a5 forService:(id)a6 sendMode:(id)a7 messageQueue:(id)a8;
@end

@implementation IDSFanoutSender

- (IDSFanoutSender)initWithGUID:(id)a3 service:(id)a4 messageDelivery:(id)a5 completionActivity:(id)a6 coalesceQueueManager:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = IDSFanoutSender;
  v17 = [(IDSFanoutSender *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_messageDelivery, a5);
    v19 = objc_alloc_init(IDSAckStateMachine);
    ackStateMachine = v18->_ackStateMachine;
    v18->_ackStateMachine = v19;

    objc_storeStrong(&v18->_guid, a3);
    objc_storeStrong(&v18->_service, a4);
    objc_storeStrong(&v18->_completionActivity, a6);
    objc_storeStrong(&v18->_coalesceQueueManager, a7);
  }

  return v18;
}

- (void)sendFanouts:(id)a3 guidToDeliveryAcknowledgementBlock:(id)a4 guidToSendCompletionBlock:(id)a5 forURIs:(id)a6 messageQueue:(id)a7
{
  v12 = a3;
  v43 = a4;
  v42 = a5;
  v13 = a6;
  v14 = a7;
  objc_storeStrong(&self->_guidToDeliveryAcknowledgementBlock, a4);
  objc_storeStrong(&self->_guidToSendCompletionBlock, a5);
  v15 = objc_alloc_init(IDSAPNSAckTracker);
  v16 = objc_alloc_init(IDSMadridAckTracker);
  [(IDSAPNSAckTracker *)v15 setDelegate:self];
  [(IDSMadridAckTracker *)v16 setDelegate:self];
  v40 = v15;
  [(IDSAPNSAckTracker *)v15 trackMessages:v12 forURIs:v13];
  v39 = v16;
  v41 = v13;
  v47 = v14;
  [(IDSMadridAckTracker *)v16 trackMessages:v12 forURIs:v13 messageQueue:v14];
  v46 = self;
  [(IDSAckStateMachine *)self->_ackStateMachine setState:1];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v17 = v12;
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

        v23 = [*(*(&v52 + 1) + 8 * i) pendingResponseTokens];
        v20 += [v23 count];
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
        [(FTMessageDelivery *)v46->_messageDelivery sendMessage:v27];
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

        v31 = [v27 sendMetric];
        v32 = +[IDSCurrentServerTime sharedInstance];
        [v32 currentServerTimeInterval];
        v33 = [NSNumber numberWithDouble:?];
        v34 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys outgoingSendFanoutsKey];
        [v31 addEntry:v33 forKey:v34];

        v35 = [v27 chunkNumber];
        v36 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys fanoutChunkNumberKey];
        [v31 addEntry:v35 forKey:v36];

        v37 = [NSNumber numberWithLongLong:v20];
        v38 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys totalFanoutDeviceCountKey];
        [v31 addEntry:v37 forKey:v38];
      }

      v25 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v25);
  }
}

- (void)sendMMLs:(id)a3 guidToDeliveryAcknowledgementBlock:(id)a4 guidToSendCompletionBlock:(id)a5 forService:(id)a6 sendMode:(id)a7 messageQueue:(id)a8
{
  v14 = a3;
  v34 = a4;
  v33 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  objc_storeStrong(&self->_guidToDeliveryAcknowledgementBlock, a4);
  objc_storeStrong(&self->_guidToSendCompletionBlock, a5);
  v18 = objc_alloc_init(IDSAPNSAckTracker);
  v19 = objc_alloc_init(IDSMadridAckTracker);
  [(IDSAPNSAckTracker *)v18 setDelegate:self];
  [(IDSMadridAckTracker *)v19 setDelegate:self];
  v20 = [v14 allKeys];
  v31 = v16;
  v32 = v15;
  v21 = [IDSMMLBuilder mmlsFromAggregates:v20 service:v15 sendMode:v16 guid:self->_guid];

  [(IDSAPNSAckTracker *)v18 trackMMLMessages:v21 forURIs:v14];
  v30 = v19;
  v35 = v14;
  [(IDSMadridAckTracker *)v19 trackMMLMessages:v21 forURIs:v14 messageQueue:v17];
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
        v27 = [v17 count];
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

- (void)receivedAPNSAckForMessage:(id)a3 guid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received APNS Ack for GUID %@", &v11, 0xCu);
  }

  v9 = [(NSDictionary *)self->_guidToDeliveryAcknowledgementBlock objectForKey:v7];

  if (v9)
  {
    v10 = [(NSDictionary *)self->_guidToDeliveryAcknowledgementBlock objectForKey:v7];
    (v10)[2](v10, v6);
  }
}

- (void)finishedTrackingAPNSAcksWithURIs:(id)a3 guid:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    v10 = [(IDSAckStateMachine *)self->_ackStateMachine error];
    v17 = 138412802;
    v18 = v7;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished acks for GUID %@ success: %@ error: %@", &v17, 0x20u);
  }

  if ([(IDSAckStateMachine *)self->_ackStateMachine state]!= 3)
  {
    v11 = [(NSDictionary *)self->_guidToSendCompletionBlock objectForKey:v7];

    if (v11)
    {
      v12 = 2;
      [(IDSAckStateMachine *)self->_ackStateMachine setState:2];
      v13 = [IDSDeliveryContext alloc];
      if ([(IDSAckStateMachine *)self->_ackStateMachine successful])
      {
        v12 = 0;
      }

      v14 = [(IDSAckStateMachine *)self->_ackStateMachine error];
      v15 = [v13 initWithResponseCode:v12 error:v14 lastCall:0];

      [v15 setDisplayURIs:v6];
      [v15 setLastCourierAck:1];
      v16 = [(NSDictionary *)self->_guidToSendCompletionBlock objectForKey:v7];
      (v16)[2](v16, v15);
      [(IDSAckStateMachine *)self->_ackStateMachine setError:0];
    }
  }
}

- (void)receivedErrorWithContext:(id)a3
{
  v9 = a3;
  [(IDSAckStateMachine *)self->_ackStateMachine setSuccessful:0];
  v4 = [v9 responseError];
  if (v4)
  {
    v5 = v4;
    v6 = [(IDSAckStateMachine *)self->_ackStateMachine error];

    if (!v6)
    {
      ackStateMachine = self->_ackStateMachine;
      v8 = [v9 responseError];
      [(IDSAckStateMachine *)ackStateMachine setError:v8];
    }
  }
}

- (void)finishedTrackingMadridAcksWithContext:(id)a3 uris:(id)a4 guid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(self->_completionActivity, &state);
  [(IDSAckStateMachine *)self->_ackStateMachine setState:3];
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    *buf = 138412546;
    v26 = v10;
    v27 = 2112;
    v28 = service;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "OUTGOING-PUSH_FULLY_SENT:%@ SERVICE:%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v22 = v10;
    v23 = self->_service;
    _IDSLogV();
  }

  v13 = [IDSFoundationLog delivery:v22];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(IDSAckStateMachine *)self->_ackStateMachine successful];
    v15 = [(IDSAckStateMachine *)self->_ackStateMachine error];
    v16 = v15;
    v17 = @"NO";
    *buf = 138412802;
    v26 = v10;
    v27 = 2112;
    if (v14)
    {
      v17 = @"YES";
    }

    v28 = v17;
    v29 = 2112;
    v30 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Finished sending GUID %@ success: %@ error: %@", buf, 0x20u);
  }

  v18 = [(NSDictionary *)self->_guidToSendCompletionBlock objectForKey:v10];

  if (v18)
  {
    [v8 setDisplayURIs:v9];
    if ([(IDSAckStateMachine *)self->_ackStateMachine successful])
    {
      v19 = 0;
    }

    else
    {
      v19 = 2;
    }

    [v8 setIdsResponseCode:v19];
    v20 = [(IDSAckStateMachine *)self->_ackStateMachine error];
    [v8 setResponseError:v20];

    [v8 setLastCall:1];
    v21 = [(NSDictionary *)self->_guidToSendCompletionBlock objectForKey:v10];
    (v21)[2](v21, v8);
    [(IDSAckStateMachine *)self->_ackStateMachine setError:0];
  }

  os_activity_scope_leave(&state);
}

@end