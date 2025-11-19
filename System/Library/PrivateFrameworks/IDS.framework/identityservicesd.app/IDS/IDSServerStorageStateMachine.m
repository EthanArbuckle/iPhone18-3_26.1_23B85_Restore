@interface IDSServerStorageStateMachine
+ (id)sharedInstance;
- (BOOL)_hasExceededMaxRequestsWithSSMForTopic:(id)a3 retryCount:(int)a4 ssm:(id)a5;
- (BOOL)_shouldExtendServerResponseTimeoutForTopic:(id)a3;
- (BOOL)_shouldSkipRetryForTopic:(id)a3;
- (IDSServerStorageStateMachine)init;
- (IDSServerStorageStateMachine)initWithDeliveryController:(id)a3 userDefaults:(id)a4 idsServerBag:(id)a5;
- (id)_persistedTopics;
- (id)currentMetricCollectorForTopic:(id)a3;
- (id)ssmForTopic:(id)a3;
- (int)_clientAckTimeoutIntervalForTopic:(id)a3;
- (int)_extendedClientAckTimeoutIntervalForTopic:(id)a3;
- (int)_extendedServerResponseTimeoutIntervalForTopic:(id)a3;
- (int)_maxRequestsPerSSMForTopic:(id)a3;
- (int)_retryLimitForTopic:(id)a3;
- (int)_serverResponseTimeoutIntervalForTopic:(id)a3;
- (unint64_t)currentStateForTopic:(id)a3;
- (void)_attemptRetryForTopic:(id)a3 withSSM:(id)a4;
- (void)_cleanupPersistedStateForTopic:(id)a3;
- (void)_handleBatchProcessedForTopic:(id)a3 clientSSM:(id)a4 isClientAck:(BOOL)a5;
- (void)_incrementClientTimeoutCountForTopic:(id)a3;
- (void)_incrementMessagesFromStorageForTopic:(id)a3;
- (void)_incrementRoundCountForTopic:(id)a3;
- (void)_incrementServerTimeoutCountForTopic:(id)a3;
- (void)_invalidateClientAckTimerForTopic:(id)a3;
- (void)_invalidateServerResponseTimerForTopic:(id)a3;
- (void)_invalidateTimeoutTimersForTopic:(id)a3;
- (void)_persistSSMForTopic:(id)a3 ssm:(id)a4;
- (void)_persistStateForTopic:(id)a3 state:(unint64_t)a4;
- (void)_persistTopic:(id)a3;
- (void)_sendServerStorageMessageForTopic:(id)a3 retryCount:(int)a4 ssm:(id)a5 sendReasonPathID:(int64_t)a6;
- (void)_setStorageCheckVersion:(id)a3 forTopic:(id)a4;
- (void)_setTerminationReasonForTopic:(id)a3 reason:(int64_t)a4;
- (void)_startClientAckTimeoutTimerForTopic:(id)a3;
- (void)_startExtendedServerResponseTimeoutTimerForTopic:(id)a3 ssm:(id)a4;
- (void)_startServerResponseTimeoutTimerForTopic:(id)a3 ssm:(id)a4;
- (void)_stateMachineTimedOutWaitingForClientAck:(id)a3;
- (void)_stateMachineTimedOutWaitingForServerResponse:(id)a3;
- (void)_submitNoLastFromStorageMetricForService:(id)a3;
- (void)_unpersistSSMForTopic:(id)a3;
- (void)_unpersistStateForTopic:(id)a3;
- (void)_unpersistTopic:(id)a3;
- (void)clearSSMForTopic:(id)a3;
- (void)clearSSMRequestCountForTopic:(id)a3;
- (void)dealloc;
- (void)deliveredBatchFromServerStorageForTopic:(id)a3 ssm:(id)a4;
- (void)extendClientAckTimeoutTimerForTopic:(id)a3;
- (void)incomingStorageRequestForTopic:(id)a3 primary:(BOOL)a4 messageContext:(id)a5 sendReasonPathID:(int64_t)a6;
- (void)logCurrentStateForTopic:(id)a3;
- (void)noteReceivedSSMForTopic:(id)a3 ssm:(id)a4;
- (void)receivedBatchProcessedForTopic:(id)a3 ssm:(id)a4;
- (void)receivedLastMessageFromStorageForTopic:(id)a3;
- (void)receivedMessageFromStorageForTopic:(id)a3;
- (void)receivedNoStorageResponseForTopic:(id)a3 messageContext:(id)a4;
- (void)receivedStorageRequestForTopic:(id)a3;
- (void)reissuePersistedRequests;
- (void)sendBatchProcessedForTopic:(id)a3;
- (void)sendSSMProcessedForPersistedTopics;
- (void)startCollectingMetricsForServerStorageStateMachineFor:(id)a3 isPrimary:(BOOL)a4;
- (void)stopCollectingMetricsForServerStorageStateMachineFor:(id)a3;
- (void)terminateStateMachineForTopic:(id)a3 withReason:(int64_t)a4;
- (void)updateSSMForTopic:(id)a3 ssm:(id)a4;
- (void)updateStateForTopic:(id)a3 newState:(unint64_t)a4;
@end

@implementation IDSServerStorageStateMachine

+ (id)sharedInstance
{
  if (qword_100CBD698 != -1)
  {
    sub_100927D58();
  }

  v3 = qword_100CBD6A0;

  return v3;
}

- (IDSServerStorageStateMachine)init
{
  v3 = +[IDSDeliveryController sharedInstance];
  v4 = +[IMUserDefaults sharedDefaults];
  v5 = [IDSServerBag sharedInstanceForBagType:0];
  v6 = [(IDSServerStorageStateMachine *)self initWithDeliveryController:v3 userDefaults:v4 idsServerBag:v5];

  return v6;
}

- (IDSServerStorageStateMachine)initWithDeliveryController:(id)a3 userDefaults:(id)a4 idsServerBag:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v34.receiver = self;
  v34.super_class = IDSServerStorageStateMachine;
  v11 = [(IDSServerStorageStateMachine *)&v34 init];
  v12 = v11;
  if (v11)
  {
    if (!v11->_currentStorageRetriesPerTopic)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      currentStorageRetriesPerTopic = v12->_currentStorageRetriesPerTopic;
      v12->_currentStorageRetriesPerTopic = Mutable;
    }

    if (!v12->_deathTimerToTopicMap)
    {
      v15 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      deathTimerToTopicMap = v12->_deathTimerToTopicMap;
      v12->_deathTimerToTopicMap = v15;
    }

    if (!v12->_clientAckTimerToTopicMap)
    {
      v17 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      clientAckTimerToTopicMap = v12->_clientAckTimerToTopicMap;
      v12->_clientAckTimerToTopicMap = v17;
    }

    if (!v12->_lastReceivedMessageTimePerTopic)
    {
      v19 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      lastReceivedMessageTimePerTopic = v12->_lastReceivedMessageTimePerTopic;
      v12->_lastReceivedMessageTimePerTopic = v19;
    }

    if (!v12->_lastDeliveredMessageTimePerTopic)
    {
      v21 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      lastDeliveredMessageTimePerTopic = v12->_lastDeliveredMessageTimePerTopic;
      v12->_lastDeliveredMessageTimePerTopic = v21;
    }

    if (!v12->_receivedStorageRequestTimePerTopic)
    {
      v23 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      receivedStorageRequestTimePerTopic = v12->_receivedStorageRequestTimePerTopic;
      v12->_receivedStorageRequestTimePerTopic = v23;
    }

    if (!v12->_pendingStorageRequests)
    {
      v25 = objc_alloc_init(NSMutableSet);
      pendingStorageRequests = v12->_pendingStorageRequests;
      v12->_pendingStorageRequests = v25;
    }

    if (!v12->_topicToStateMap)
    {
      v27 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      topicToStateMap = v12->_topicToStateMap;
      v12->_topicToStateMap = v27;
    }

    if (!v12->_topicToSSMMap)
    {
      v29 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      topicToSSMMap = v12->_topicToSSMMap;
      v12->_topicToSSMMap = v29;
    }

    if (!v12->_ssmRequestCountsPerTopic)
    {
      v31 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      ssmRequestCountsPerTopic = v12->_ssmRequestCountsPerTopic;
      v12->_ssmRequestCountsPerTopic = v31;
    }

    [(IDSServerStorageStateMachine *)v12 setDeliveryController:v8];
    [(IDSServerStorageStateMachine *)v12 setUserDefaults:v9];
    [(IDSServerStorageStateMachine *)v12 setIdsServerBag:v10];
  }

  return v12;
}

- (void)dealloc
{
  v3 = [(NSMutableDictionary *)self->_deathTimerToTopicMap allValues];
  [v3 makeObjectsPerformSelector:"invalidate"];

  v4 = [(NSMutableDictionary *)self->_clientAckTimerToTopicMap allValues];
  [v4 makeObjectsPerformSelector:"invalidate"];

  v5.receiver = self;
  v5.super_class = IDSServerStorageStateMachine;
  [(IDSServerStorageStateMachine *)&v5 dealloc];
}

- (void)updateStateForTopic:(id)a3 newState:(unint64_t)a4
{
  v6 = a3;
  v7 = [NSNumber numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)self->_topicToStateMap setObject:v7 forKeyedSubscript:v6];

  [(IDSServerStorageStateMachine *)self _persistStateForTopic:v6 state:a4];
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100504E14(a4);
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transitioned topic %@ to state %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = sub_100504E14(a4);
    _IDSLogV();
  }
}

- (unint64_t)currentStateForTopic:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_topicToStateMap objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [NSString stringWithFormat:@"%@-%@", @"IDSActiveStorageStateMachineState", v4];
    v7 = [(IDSServerStorageStateMachine *)self userDefaults];
    v5 = [v7 appValueForKey:v6];

    [(NSMutableDictionary *)self->_topicToStateMap setObject:v5 forKeyedSubscript:v4];
  }

  v8 = [v5 integerValue];

  return v8;
}

- (void)clearSSMForTopic:(id)a3
{
  v4 = a3;
  v5 = [(IDSServerStorageStateMachine *)self ssmForTopic:v4];
  [(NSMutableDictionary *)self->_topicToSSMMap removeObjectForKey:v4];
  [(IDSServerStorageStateMachine *)self _unpersistSSMForTopic:v4];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100504E38(v5);
    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removed SSM %@ for topic %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = sub_100504E38(v5);
    _IDSLogV();
  }
}

- (void)updateSSMForTopic:(id)a3 ssm:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSServerStorageStateMachine *)self ssmForTopic:v6];
  [(NSMutableDictionary *)self->_topicToSSMMap setObject:v7 forKeyedSubscript:v6];
  [(IDSServerStorageStateMachine *)self _persistSSMForTopic:v6 ssm:v7];
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_100504E38(v8);
    v11 = sub_100504E38(v7);
    *buf = 138412802;
    v15 = v6;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated SSM for topic %@ from %@ to %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = sub_100504E38(v8);
    v13 = sub_100504E38(v7);
    _IDSLogV();
  }
}

- (id)ssmForTopic:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_topicToSSMMap objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [NSString stringWithFormat:@"%@-%@", @"IDSActiveStorageStateMachineSSM", v4];
    v9 = [(IDSServerStorageStateMachine *)self userDefaults];
    v7 = [v9 appValueForKey:v8];

    [(NSMutableDictionary *)self->_topicToSSMMap setObject:v7 forKeyedSubscript:v4];
  }

  return v7;
}

- (void)incomingStorageRequestForTopic:(id)a3 primary:(BOOL)a4 messageContext:(id)a5 sendReasonPathID:(int64_t)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = [(IDSServerStorageStateMachine *)self currentStateForTopic:v10];
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = sub_100504E14(v12);
    v15 = v14;
    v16 = @"NO";
    *buf = 138412802;
    v28 = v10;
    v29 = 2112;
    if (v8)
    {
      v16 = @"YES";
    }

    v30 = v14;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received incoming storage request for topic: %@ currentState: %@ isPrimary: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v17 = sub_100504E14(v12);
    v18 = v17;
    v19 = @"NO";
    if (v8)
    {
      v19 = @"YES";
    }

    v25 = v17;
    v26 = v19;
    v24 = v10;
    _IDSLogV();
  }

  if (v12 - 1 >= 5)
  {
    if (!v12)
    {
      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "This is the first request for topic %@, kicking off a storage request response message for it", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v24 = v10;
        _IDSLogV();
      }

      [(IDSServerStorageStateMachine *)self updateStateForTopic:v10 newState:1, v24, v25, v26];
      [(IDSServerStorageStateMachine *)self _persistTopic:v10];
      [(IDSServerStorageStateMachine *)self startCollectingMetricsForServerStorageStateMachineFor:v10 isPrimary:v8];
      [(IDSServerStorageStateMachine *)self _sendServerStorageMessageForTopic:v10 retryCount:0 ssm:0 sendReasonPathID:a6];
      [(IDSServerStorageStateMachine *)self _incrementRoundCountForTopic:v10];
    }
  }

  else
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "We already have an inflight request for topic %@, checking if we have a backup", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v24 = v10;
      _IDSLogV();
    }

    if ([(NSMutableSet *)self->_pendingStorageRequests containsObject:v10, v24, v25, v26])
    {
      v21 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "We already have a backup request for topic %@, throwing this request away", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
LABEL_21:
        _IDSLogV();
      }
    }

    else
    {
      [(NSMutableSet *)self->_pendingStorageRequests addObject:v10];
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "We already have an inflight request for this topic %@, adding it to the backup queue", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        goto LABEL_21;
      }
    }
  }
}

- (void)_sendServerStorageMessageForTopic:(id)a3 retryCount:(int)a4 ssm:(id)a5 sendReasonPathID:(int64_t)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a5;
  if (![(IDSServerStorageStateMachine *)self _hasExceededMaxRequestsWithSSMForTopic:v10 retryCount:v8 ssm:v11])
  {
    [(IDSServerStorageStateMachine *)self updateStateForTopic:v10 newState:2];
    v14 = objc_alloc_init(IDSPendingOfflineMessageResponse);
    v15 = +[NSString stringGUID];
    [v14 setMessageIdentifier:v15];
    v16 = [NSNumber numberWithInt:v8];
    [v14 setRetryCount:v16];

    [v14 setSsm:v11];
    v17 = [[IDSSendReason alloc] initWithReason:5 subreason:2 pathID:a6];
    v18 = [IDSSendReasonContainer createWithReason:v17];
    [v14 setSendReasonContainer:v18];

    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v10;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending storage request response for topic: %@ (%@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v22 = v10;
      v23 = v14;
      _IDSLogV();
    }

    v20 = [(IDSServerStorageStateMachine *)self deliveryController:v22];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1005061E4;
    v24[3] = &unk_100BDF220;
    v25 = v15;
    v26 = v10;
    v27 = self;
    v28 = v11;
    v21 = v15;
    [v20 sendIDSMessage:v14 service:0 topic:v26 completionBlock:v24];

    goto LABEL_13;
  }

  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_100504E38(v11);
    *buf = 138412546;
    v30 = v10;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Server storage message on the topic: %@ for ssm: %@ has exceeded maximum requests - ignoring", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = sub_100504E38(v11);
    _IDSLogV();
LABEL_13:
  }
}

- (void)receivedNoStorageResponseForTopic:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We received a 165 from the server for topic %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v9 = v6;
    _IDSLogV();
  }

  [(IDSServerStorageStateMachine *)self terminateStateMachineForTopic:v6 withReason:2, v9];
}

- (void)noteReceivedSSMForTopic:(id)a3 ssm:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl() && [v7 length])
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_100504E38(v7);
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Noting received ssm: %@ from server storage for topic %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v10 = sub_100504E38(v7);
      v11 = v6;
      _IDSLogV();
    }

    [(IDSServerStorageStateMachine *)self updateSSMForTopic:v6 ssm:v7, v10, v11];
  }
}

- (void)deliveredBatchFromServerStorageForTopic:(id)a3 ssm:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    if (self->_didTimeOutWaitingForClientAck)
    {
      self->_didTimeOutWaitingForClientAck = 0;
    }

    [(IDSServerStorageStateMachine *)self _invalidateServerResponseTimerForTopic:v6];
    lastDeliveredMessageTimePerTopic = self->_lastDeliveredMessageTimePerTopic;
    v9 = +[NSDate date];
    [(NSMutableDictionary *)lastDeliveredMessageTimePerTopic setObject:v9 forKey:v6];

    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_100504E38(v7);
      *buf = 138412546;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "We've delivered the batch with ssm: %@ from server storage for topic %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v15 = sub_100504E38(v7);
      v17 = v6;
      _IDSLogV();
    }

    v12 = [(IDSServerStorageStateMachine *)self currentStateForTopic:v6, v15, v17];
    if (v12 - 2 >= 3)
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_100504E14(v12);
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "State machine not in expected state - rejecting { currentState: %@ }", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v16 = sub_100504E14(v12);
        _IDSLogV();
      }
    }

    else
    {
      [(IDSServerStorageStateMachine *)self updateStateForTopic:v6 newState:4];
      [(IDSServerStorageStateMachine *)self updateSSMForTopic:v6 ssm:v7];
      [(IDSServerStorageStateMachine *)self _startClientAckTimeoutTimerForTopic:v6];
    }
  }
}

- (void)_handleBatchProcessedForTopic:(id)a3 clientSSM:(id)a4 isClientAck:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (_os_feature_enabled_impl())
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_100504E38(v9);
      v12 = v11;
      v13 = @"NO";
      *buf = 138412802;
      v27 = v8;
      v28 = 2112;
      if (v5)
      {
        v13 = @"YES";
      }

      v29 = v13;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_handleBatchProcessedForTopic for topic: %@ isClientAck: %@ clientSSM: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      if (v5)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      sub_100504E38(v9);
      v25 = v23 = v14;
      v22 = v8;
      _IDSLogV();
    }

    v15 = [(IDSServerStorageStateMachine *)self ssmForTopic:v8, v22, v23, v25];
    if (v15)
    {
      if (v9 && v5 && ([v9 isEqualToData:v15] & 1) == 0)
      {
        v18 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = sub_100504E38(v9);
          v20 = sub_100504E38(v15);
          *buf = 138412546;
          v27 = v19;
          v28 = 2112;
          v29 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Given clientSSM: %@ is different from what we have in progress: %@ - aborting", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v21 = sub_100504E38(v9);
          v24 = sub_100504E38(v15);
          _IDSLogV();
        }
      }

      else
      {
        [(IDSServerStorageStateMachine *)self _invalidateClientAckTimerForTopic:v8];
        [(IDSServerStorageStateMachine *)self updateStateForTopic:v8 newState:5];
        [(IDSServerStorageStateMachine *)self clearSSMForTopic:v8];
        [(IDSServerStorageStateMachine *)self _incrementRoundCountForTopic:v8];
        if (v5)
        {
          v16 = 27;
        }

        else
        {
          v16 = 28;
        }

        [(IDSServerStorageStateMachine *)self _sendServerStorageMessageForTopic:v8 retryCount:0 ssm:v15 sendReasonPathID:v16];
      }
    }

    else
    {
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No ssm in progress - aborting", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

- (void)receivedBatchProcessedForTopic:(id)a3 ssm:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_100504E38(v7);
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "receivedBatchProcessedForTopic called - topic %@ ssm %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      sub_100504E38(v7);
      v11 = v10 = v6;
      _IDSLogV();
    }

    [(IDSServerStorageStateMachine *)self _handleBatchProcessedForTopic:v6 clientSSM:v7 isClientAck:1, v10, v11];
  }
}

- (void)sendBatchProcessedForTopic:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sendBatchProcessedForTopic called - topic %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v6 = v4;
      _IDSLogV();
    }

    [(IDSServerStorageStateMachine *)self _handleBatchProcessedForTopic:v4 clientSSM:0 isClientAck:0, v6];
  }
}

- (void)sendSSMProcessedForPersistedTopics
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(IDSServerStorageStateMachine *)self _persistedTopics];
    v4 = [v3 copy];

    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sendSSMProcessedForPersistedTopics called - topics %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v10 = v4;
      _IDSLogV();
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [(IDSServerStorageStateMachine *)self _handleBatchProcessedForTopic:*(*(&v11 + 1) + 8 * v9) clientSSM:0 isClientAck:0, v10];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)receivedLastMessageFromStorageForTopic:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "We received a last from storage from the server for topic %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = v4;
    _IDSLogV();
  }

  v6 = [(IDSServerStorageStateMachine *)self ssmForTopic:v4, v8];
  if (v6 && _os_feature_enabled_impl())
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "We received LFS but still have ssm in progress: {%@} - letting that finish", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else
  {
    [(IDSServerStorageStateMachine *)self terminateStateMachineForTopic:v4 withReason:1];
  }
}

- (void)receivedMessageFromStorageForTopic:(id)a3
{
  lastReceivedMessageTimePerTopic = self->_lastReceivedMessageTimePerTopic;
  v6 = a3;
  v5 = +[NSDate date];
  [(NSMutableDictionary *)lastReceivedMessageTimePerTopic setObject:v5 forKey:v6];

  [(IDSServerStorageStateMachine *)self _incrementMessagesFromStorageForTopic:v6];
}

- (void)terminateStateMachineForTopic:(id)a3 withReason:(int64_t)a4
{
  v6 = a3;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Told to terminate state machine for topic %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v9 = v6;
    _IDSLogV();
  }

  [(IDSServerStorageStateMachine *)self updateStateForTopic:v6 newState:0, v9];
  [(IDSServerStorageStateMachine *)self clearSSMForTopic:v6];
  [(IDSServerStorageStateMachine *)self clearSSMRequestCountForTopic:v6];
  [(IDSServerStorageStateMachine *)self _invalidateTimeoutTimersForTopic:v6];
  [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic removeObjectForKey:v6];
  [(IDSServerStorageStateMachine *)self _setTerminationReasonForTopic:v6 reason:a4];
  [(IDSServerStorageStateMachine *)self stopCollectingMetricsForServerStorageStateMachineFor:v6];
  if ([(NSMutableSet *)self->_pendingStorageRequests containsObject:v6])
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We terminated our state machine for %@, however we have another backed up, kicking off another state machine", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v10 = v6;
      _IDSLogV();
    }

    [(NSMutableSet *)self->_pendingStorageRequests removeObject:v6, v10];
    [(IDSServerStorageStateMachine *)self incomingStorageRequestForTopic:v6 primary:0 messageContext:0 sendReasonPathID:24];
  }

  else
  {
    [(IDSServerStorageStateMachine *)self _cleanupPersistedStateForTopic:v6];
  }
}

- (void)_cleanupPersistedStateForTopic:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleaning up persisted state for topic %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = v4;
    _IDSLogV();
  }

  [(IDSServerStorageStateMachine *)self _unpersistTopic:v4, v6];
  [(IDSServerStorageStateMachine *)self _unpersistStateForTopic:v4];
  [(IDSServerStorageStateMachine *)self _unpersistSSMForTopic:v4];
}

- (void)_invalidateTimeoutTimersForTopic:(id)a3
{
  v4 = a3;
  [(IDSServerStorageStateMachine *)self _invalidateServerResponseTimerForTopic:v4];
  [(IDSServerStorageStateMachine *)self _invalidateClientAckTimerForTopic:v4];
}

- (void)_invalidateServerResponseTimerForTopic:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_deathTimerToTopicMap objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMutableDictionary *)self->_deathTimerToTopicMap removeObjectForKey:v6];
  }
}

- (void)_startServerResponseTimeoutTimerForTopic:(id)a3 ssm:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(IDSServerStorageStateMachine *)self _invalidateServerResponseTimerForTopic:v7];
  v8 = [IMDispatchTimer alloc];
  v9 = im_primary_queue();
  v10 = [(IDSServerStorageStateMachine *)self _serverResponseTimeoutIntervalForTopic:v7];
  v11 = [NSDictionary dictionaryWithObjectsAndKeys:v7, @"topic", v6, @"ssm", 0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100507B88;
  v13[3] = &unk_100BD9268;
  v13[4] = self;
  v12 = [v8 initWithQueue:v9 interval:v10 repeats:0 userInfo:v11 handlerBlock:v13];

  [(NSMutableDictionary *)self->_deathTimerToTopicMap setObject:v12 forKey:v7];
}

- (void)_startExtendedServerResponseTimeoutTimerForTopic:(id)a3 ssm:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(IDSServerStorageStateMachine *)self _invalidateServerResponseTimerForTopic:v7];
  v8 = [IMDispatchTimer alloc];
  v9 = im_primary_queue();
  v10 = [(IDSServerStorageStateMachine *)self _extendedServerResponseTimeoutIntervalForTopic:v7];
  v11 = [NSDictionary dictionaryWithObjectsAndKeys:v7, @"topic", v6, @"ssm", 0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100507CDC;
  v13[3] = &unk_100BD9268;
  v13[4] = self;
  v12 = [v8 initWithQueue:v9 interval:v10 repeats:0 userInfo:v11 handlerBlock:v13];

  [(NSMutableDictionary *)self->_deathTimerToTopicMap setObject:v12 forKey:v7];
}

- (BOOL)_shouldExtendServerResponseTimeoutForTopic:(id)a3
{
  v4 = a3;
  v5 = [(IDSServerStorageStateMachine *)self lastReceivedMessageTimeForTopic:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  [v5 timeIntervalSinceNow];
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  if (v7 < 10.0)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Topic %@ has recently received a message from storage.  Starting a new extended timer for retry.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v9 = 1;
  }

  else
  {
LABEL_11:
    v9 = 0;
  }

  return v9;
}

- (void)_stateMachineTimedOutWaitingForServerResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 _stringForKey:@"topic"];
  v7 = [v5 _dataForKey:@"ssm"];
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Topic %@, has timed out waiting for server response", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = v6;
    _IDSLogV();
  }

  [(IDSServerStorageStateMachine *)self _incrementServerTimeoutCountForTopic:v6, v11];
  if ([(IDSServerStorageStateMachine *)self _shouldExtendServerResponseTimeoutForTopic:v6])
  {
    [(IDSServerStorageStateMachine *)self _startExtendedServerResponseTimeoutTimerForTopic:v6 ssm:v7];
  }

  else if ([(NSMutableSet *)self->_pendingStorageRequests containsObject:v6])
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "We timed out with our request for %@ however we have one in the pending queue, Not retrying and instead letting that take over", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v12 = v6;
      _IDSLogV();
    }

    [(IDSServerStorageStateMachine *)self terminateStateMachineForTopic:v6 withReason:5, v12];
    [(IDSServerStorageStateMachine *)self _submitNoLastFromStorageMetricForService:v6];
  }

  else if ([(IDSServerStorageStateMachine *)self _shouldSkipRetryForTopic:v6])
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "The topic %@ is a pass-through-message service. Not retrying.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v12 = v6;
      _IDSLogV();
    }

    [(IDSServerStorageStateMachine *)self terminateStateMachineForTopic:v6 withReason:6, v12];
    [(IDSServerStorageStateMachine *)self _submitNoLastFromStorageMetricForService:v6];
  }

  else
  {
    [(IDSServerStorageStateMachine *)self _attemptRetryForTopic:v6 withSSM:v7];
  }
}

- (void)_invalidateClientAckTimerForTopic:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_clientAckTimerToTopicMap objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMutableDictionary *)self->_clientAckTimerToTopicMap removeObjectForKey:v6];
  }
}

- (void)_startClientAckTimeoutTimerForTopic:(id)a3
{
  v4 = a3;
  v5 = [(IDSServerStorageStateMachine *)self _clientAckTimeoutIntervalForTopic:v4];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v4;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting client ack timeout timer for topic %@, timeout in %ld seconds", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = v4;
    v12 = v5;
    _IDSLogV();
  }

  [(IDSServerStorageStateMachine *)self _invalidateClientAckTimerForTopic:v4, v11, v12];
  v7 = [IMDispatchTimer alloc];
  v8 = im_primary_queue();
  v9 = [NSDictionary dictionaryWithObjectsAndKeys:v4, @"topic", 0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100508434;
  v13[3] = &unk_100BD9268;
  v13[4] = self;
  v10 = [v7 initWithQueue:v8 interval:v5 repeats:0 userInfo:v9 handlerBlock:v13];

  [(NSMutableDictionary *)self->_clientAckTimerToTopicMap setObject:v10 forKey:v4];
}

- (void)extendClientAckTimeoutTimerForTopic:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(NSMutableDictionary *)self->_clientAckTimerToTopicMap objectForKey:v4];
    v6 = [(IDSServerStorageStateMachine *)self currentStateForTopic:v4];
    if (v5 && v6 == 4)
    {
      v7 = [(IDSServerStorageStateMachine *)self _extendedClientAckTimeoutIntervalForTopic:v4];
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = v4;
        v18 = 2048;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting extended client ack timeout timer for topic %@, timeout in %ld seconds", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v13 = v4;
        v14 = v7;
        _IDSLogV();
      }

      [(IDSServerStorageStateMachine *)self _invalidateClientAckTimerForTopic:v4, v13, v14];
      v9 = [IMDispatchTimer alloc];
      v10 = im_primary_queue();
      v11 = [NSDictionary dictionaryWithObjectsAndKeys:v4, @"topic", 0];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1005086A8;
      v15[3] = &unk_100BD9268;
      v15[4] = self;
      v12 = [v9 initWithQueue:v10 interval:v7 repeats:0 userInfo:v11 handlerBlock:v15];

      [(NSMutableDictionary *)self->_clientAckTimerToTopicMap setObject:v12 forKey:v4];
    }
  }
}

- (void)_stateMachineTimedOutWaitingForClientAck:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"topic"];
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Topic %@, has timed out waiting for client ack", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = v6;
    _IDSLogV();
  }

  self->_didTimeOutWaitingForClientAck = 1;
  [(IDSServerStorageStateMachine *)self _incrementClientTimeoutCountForTopic:v6, v10];
  if ([(IDSServerStorageStateMachine *)self currentStateForTopic:v6]== 4)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We timed out waiting for client ack for topic %@, sending batch processed on their behalf", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v11 = v6;
      _IDSLogV();
    }

    [(IDSServerStorageStateMachine *)self sendBatchProcessedForTopic:v6, v11];
  }

  if (+[IDSAutoBugCapture isSupported])
  {
    v9 = [NSString stringWithFormat:@"(%@)", v6];
    [IDSAutoBugCapture triggerCaptureWithEvent:213 context:v9 completion:&stru_100BDF240];
  }
}

- (BOOL)_shouldSkipRetryForTopic:(id)a3
{
  v4 = a3;
  v5 = +[IDSDServiceController sharedInstance];
  v6 = [v5 serviceWithPushTopic:v4];

  v7 = [NSString stringWithFormat:@"%@-force-server-storage-retry", v4];

  v8 = [(IDSServerStorageStateMachine *)self idsServerBag];
  v9 = [v8 objectForKey:v7];
  v10 = [v9 BOOLValue];

  LOBYTE(v8) = [v6 skipServerStorageRetry];
  return v8 & (v10 ^ 1);
}

- (void)_attemptRetryForTopic:(id)a3 withSSM:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic _numberForKey:v6];
  v9 = [v8 intValue];

  if (v9 >= [(IDSServerStorageStateMachine *)self _retryLimitForTopic:v6])
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "We have used up all available retries for topic %@: Terminating state machine", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v19 = v6;
      _IDSLogV();
    }

    [(IDSServerStorageStateMachine *)self terminateStateMachineForTopic:v6 withReason:4, v19];
    [(IDSServerStorageStateMachine *)self _submitNoLastFromStorageMetricForService:v6];
  }

  else
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic _numberForKey:v6];
      *buf = 138412802;
      v23 = v6;
      v24 = 1024;
      v25 = [v11 intValue];
      v26 = 1024;
      v27 = 2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "We have not used up our remaining retries on topic %@: Used: %d Available: %d", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v12 = [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic _numberForKey:v6];
      v20 = [v12 intValue];
      v21 = 2;
      v19 = v6;
      _IDSLogV();
    }

    [(IDSServerStorageStateMachine *)self _invalidateServerResponseTimerForTopic:v6, v19, v20, v21];
    v13 = [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic _numberForKey:v6];
    v14 = [v13 integerValue];

    currentStorageRetriesPerTopic = self->_currentStorageRetriesPerTopic;
    v16 = [NSNumber numberWithInteger:v14 + 1];
    [(NSMutableDictionary *)currentStorageRetriesPerTopic setObject:v16 forKey:v6];

    v17 = [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic _numberForKey:v6];
    -[IDSServerStorageStateMachine _sendServerStorageMessageForTopic:retryCount:ssm:sendReasonPathID:](self, "_sendServerStorageMessageForTopic:retryCount:ssm:sendReasonPathID:", v6, [v17 intValue], v7, 22);
  }
}

- (int)_serverResponseTimeoutIntervalForTopic:(id)a3
{
  v4 = [NSString stringWithFormat:@"%@-retry-timeout", a3];
  v5 = [(IDSServerStorageStateMachine *)self idsServerBag];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 intValue];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 60;
  }

  return v8;
}

- (int)_extendedServerResponseTimeoutIntervalForTopic:(id)a3
{
  v4 = [NSString stringWithFormat:@"%@-extend-retry-timeout", a3];
  v5 = [(IDSServerStorageStateMachine *)self idsServerBag];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 intValue];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 20;
  }

  return v8;
}

- (int)_clientAckTimeoutIntervalForTopic:(id)a3
{
  v4 = [NSString stringWithFormat:@"%@-client-ack-timeout", a3];
  v5 = [(IDSServerStorageStateMachine *)self idsServerBag];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 intValue];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 60;
  }

  return v8;
}

- (int)_extendedClientAckTimeoutIntervalForTopic:(id)a3
{
  v4 = [NSString stringWithFormat:@"%@-extend-client-ack-timeout", a3];
  v5 = [(IDSServerStorageStateMachine *)self idsServerBag];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 intValue];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 60;
  }

  return v8;
}

- (void)receivedStorageRequestForTopic:(id)a3
{
  v4 = a3;
  v5 = +[IDSCurrentServerTime sharedInstance];
  v6 = [v5 currentServerTimeDate];

  [(NSMutableDictionary *)self->_receivedStorageRequestTimePerTopic setObject:v6 forKey:v4];
}

- (int)_retryLimitForTopic:(id)a3
{
  v4 = [NSString stringWithFormat:@"%@-storage-state-machine-retry-limit", a3];
  v5 = [(IDSServerStorageStateMachine *)self idsServerBag];
  v6 = [v5 objectForKey:v4];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 intValue];
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

- (int)_maxRequestsPerSSMForTopic:(id)a3
{
  v4 = [NSString stringWithFormat:@"%@-ssm-request-limit", a3];
  v5 = [(IDSServerStorageStateMachine *)self idsServerBag];
  v6 = [v5 objectForKey:v4];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 intValue];
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

- (BOOL)_hasExceededMaxRequestsWithSSMForTopic:(id)a3 retryCount:(int)a4 ssm:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  v10 = _os_feature_enabled_impl();
  v11 = 0;
  if (v9 && v10)
  {
    v12 = sub_100504E38(v9);
    v13 = [NSString stringWithFormat:@"%@-%@-%d", v8, v12, v6];

    v14 = [(IDSServerStorageStateMachine *)self ssmRequestCountsPerTopic];
    v15 = [v14 objectForKeyedSubscript:v13];
    v16 = [v15 integerValue];

    v17 = [(IDSServerStorageStateMachine *)self _maxRequestsPerSSMForTopic:v8];
    v11 = v16 >= v17;
    if (v16 < v17)
    {
      v18 = v16 + 1;
      v19 = [NSNumber numberWithInteger:v18];
      v20 = [(IDSServerStorageStateMachine *)self ssmRequestCountsPerTopic];
      [v20 setObject:v19 forKeyedSubscript:v13];

      v21 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v24 = v8;
        v25 = 2112;
        v26 = v13;
        v27 = 2048;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Incremented ssm request count for topic: %@ identifier: %@ to: %ld", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  return v11;
}

- (void)clearSSMRequestCountForTopic:(id)a3
{
  v4 = a3;
  v5 = [(IDSServerStorageStateMachine *)self ssmRequestCountsPerTopic];
  v6 = [v5 allKeys];
  v7 = [v6 copy];

  v8 = [NSString stringWithFormat:@"%@-", v4];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 hasPrefix:v8])
        {
          v14 = [(IDSServerStorageStateMachine *)self ssmRequestCountsPerTopic];
          [v14 removeObjectForKey:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cleared SSM request count for topic %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

- (id)currentMetricCollectorForTopic:(id)a3
{
  v4 = a3;
  metricCollectors = self->_metricCollectors;
  if (!metricCollectors)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = self->_metricCollectors;
    self->_metricCollectors = Mutable;

    metricCollectors = self->_metricCollectors;
  }

  v8 = [(NSMutableDictionary *)metricCollectors objectForKey:v4];

  return v8;
}

- (void)startCollectingMetricsForServerStorageStateMachineFor:(id)a3 isPrimary:(BOOL)a4
{
  v4 = a4;
  key = a3;
  v6 = [[IDSServerStorageMetricCollector alloc] initWithTopic:key isPrimary:v4];
  if (!self->_metricCollectors)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    metricCollectors = self->_metricCollectors;
    self->_metricCollectors = Mutable;
  }

  if (v6)
  {
    CFDictionarySetValue(self->_metricCollectors, key, v6);
  }

  v9 = _IDSStorageCheckVersionNumber();
  [(IDSServerStorageStateMachine *)self _setStorageCheckVersion:v9 forTopic:key];
}

- (void)stopCollectingMetricsForServerStorageStateMachineFor:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:v4];
    [v6 endCollector];
    [v6 reportMetric];
    [(NSMutableDictionary *)self->_metricCollectors removeObjectForKey:v4];
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Was told to stop, but we didnt have one in progress...", v8, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_incrementMessagesFromStorageForTopic:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:v4];
    [v6 incrementMessageCount];
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Told about a message from server storage, but we dont have an ongoing metric for it, not able to increment", v8, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_incrementRoundCountForTopic:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:?];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:v6];
    [v5 incrementRoundCount];
  }
}

- (void)_incrementServerTimeoutCountForTopic:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:?];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:v6];
    [v5 incrementServerTimeoutCount];
  }
}

- (void)_incrementClientTimeoutCountForTopic:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:?];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:v6];
    [v5 incrementClientTimeoutCount];
  }
}

- (void)_setTerminationReasonForTopic:(id)a3 reason:(int64_t)a4
{
  v8 = a3;
  v6 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:?];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:v8];
    [v7 setTerminationReason:a4];
  }
}

- (void)_setStorageCheckVersion:(id)a3 forTopic:(id)a4
{
  v8 = a3;
  v6 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:a4];
  v7 = v6;
  if (v6)
  {
    [v6 setStorageCheckVersion:v8];
  }
}

- (void)_submitNoLastFromStorageMetricForService:(id)a3
{
  v3 = a3;
  v4 = [[IDSMissingMessageMetric alloc] initWithReason:705 guid:0 service:v3 additionalInformation:0];

  [IDSMissingMessageMetricReporter sendMetric:v4];
}

- (void)reissuePersistedRequests
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(IDSServerStorageStateMachine *)self _persistedTopics];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [(IDSServerStorageStateMachine *)self currentStateForTopic:v7, v12];
        v9 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = sub_100504E14(v8);
          *buf = 138412290;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Reissuing persisted requests, loaded current server storage state machine state: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v12 = sub_100504E14(v8);
          _IDSLogV();
        }

        if (v8 - 1 >= 3)
        {
          if (v8 == 5)
          {
            v11 = [(IDSServerStorageStateMachine *)self ssmForTopic:v7];
            [(IDSServerStorageStateMachine *)self _sendServerStorageMessageForTopic:v7 retryCount:0 ssm:v11 sendReasonPathID:23];
          }

          else if (!v8)
          {
            [(IDSServerStorageStateMachine *)self _unpersistTopic:v7];
            [(IDSServerStorageStateMachine *)self _unpersistStateForTopic:v7];
          }
        }

        else
        {
          [(IDSServerStorageStateMachine *)self _unpersistStateForTopic:v7];
          [(IDSServerStorageStateMachine *)self incomingStorageRequestForTopic:v7 primary:0 messageContext:0 sendReasonPathID:23];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }
}

- (void)_persistTopic:(id)a3
{
  v7 = a3;
  v4 = [(IDSServerStorageStateMachine *)self _persistedTopics];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_alloc_init(NSMutableArray);
  }

  if (([v5 containsObject:v7] & 1) == 0)
  {
    [v5 addObject:v7];
    v6 = [(IDSServerStorageStateMachine *)self userDefaults];
    [v6 setAppValue:v5 forKey:@"IDSActiveStorageStateMachines"];
  }
}

- (void)_unpersistTopic:(id)a3
{
  v9 = a3;
  v4 = [(IDSServerStorageStateMachine *)self _persistedTopics];
  v5 = [v4 mutableCopy];

  if ([v5 containsObject:v9])
  {
    [v5 removeObject:v9];
    v6 = [v5 count];
    v7 = [(IDSServerStorageStateMachine *)self userDefaults];
    v8 = v7;
    if (v6)
    {
      [v7 setAppValue:v5 forKey:@"IDSActiveStorageStateMachines"];
    }

    else
    {
      [v7 removeAppValueForKey:@"IDSActiveStorageStateMachines"];
    }
  }
}

- (id)_persistedTopics
{
  v2 = [(IDSServerStorageStateMachine *)self userDefaults];
  v3 = [v2 appValueForKey:@"IDSActiveStorageStateMachines"];

  return v3;
}

- (void)_persistStateForTopic:(id)a3 state:(unint64_t)a4
{
  v8 = [NSString stringWithFormat:@"%@-%@", @"IDSActiveStorageStateMachineState", a3];
  v6 = [(IDSServerStorageStateMachine *)self userDefaults];
  v7 = [NSNumber numberWithUnsignedInteger:a4];
  [v6 setAppValue:v7 forKey:v8];
}

- (void)_unpersistStateForTopic:(id)a3
{
  v5 = [NSString stringWithFormat:@"%@-%@", @"IDSActiveStorageStateMachineState", a3];
  v4 = [(IDSServerStorageStateMachine *)self userDefaults];
  [v4 removeAppValueForKey:v5];
}

- (void)_persistSSMForTopic:(id)a3 ssm:(id)a4
{
  v6 = a4;
  v8 = [NSString stringWithFormat:@"%@-%@", @"IDSActiveStorageStateMachineSSM", a3];
  v7 = [(IDSServerStorageStateMachine *)self userDefaults];
  [v7 setAppValue:v6 forKey:v8];
}

- (void)_unpersistSSMForTopic:(id)a3
{
  v5 = [NSString stringWithFormat:@"%@-%@", @"IDSActiveStorageStateMachineSSM", a3];
  v4 = [(IDSServerStorageStateMachine *)self userDefaults];
  [v4 removeAppValueForKey:v5];
}

- (void)logCurrentStateForTopic:(id)a3
{
  v4 = a3;
  v5 = [(IDSServerStorageStateMachine *)self currentStateForTopic:v4];
  v6 = [(IDSServerStorageStateMachine *)self ssmForTopic:v4];
  v7 = [(IDSServerStorageStateMachine *)self lastReceivedMessageTimeForTopic:v4];
  v8 = [(IDSServerStorageStateMachine *)self lastDeliveredMessageTimeForTopic:v4];
  v9 = [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic objectForKey:v4];
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_100504E14(v5);
    v12 = sub_100504E38(v6);
    *buf = 138413570;
    v16 = v4;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] State: %@ ssm: %@ last msg: %@ last delivered: %@ retry: %@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = sub_100504E14(v5);
    v14 = sub_100504E38(v6);
    _IDSLogV();
  }
}

@end