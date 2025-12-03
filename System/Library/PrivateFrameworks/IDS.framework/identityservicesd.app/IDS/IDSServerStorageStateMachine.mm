@interface IDSServerStorageStateMachine
+ (id)sharedInstance;
- (BOOL)_hasExceededMaxRequestsWithSSMForTopic:(id)topic retryCount:(int)count ssm:(id)ssm;
- (BOOL)_shouldExtendServerResponseTimeoutForTopic:(id)topic;
- (BOOL)_shouldSkipRetryForTopic:(id)topic;
- (IDSServerStorageStateMachine)init;
- (IDSServerStorageStateMachine)initWithDeliveryController:(id)controller userDefaults:(id)defaults idsServerBag:(id)bag;
- (id)_persistedTopics;
- (id)currentMetricCollectorForTopic:(id)topic;
- (id)ssmForTopic:(id)topic;
- (int)_clientAckTimeoutIntervalForTopic:(id)topic;
- (int)_extendedClientAckTimeoutIntervalForTopic:(id)topic;
- (int)_extendedServerResponseTimeoutIntervalForTopic:(id)topic;
- (int)_maxRequestsPerSSMForTopic:(id)topic;
- (int)_retryLimitForTopic:(id)topic;
- (int)_serverResponseTimeoutIntervalForTopic:(id)topic;
- (unint64_t)currentStateForTopic:(id)topic;
- (void)_attemptRetryForTopic:(id)topic withSSM:(id)m;
- (void)_cleanupPersistedStateForTopic:(id)topic;
- (void)_handleBatchProcessedForTopic:(id)topic clientSSM:(id)m isClientAck:(BOOL)ack;
- (void)_incrementClientTimeoutCountForTopic:(id)topic;
- (void)_incrementMessagesFromStorageForTopic:(id)topic;
- (void)_incrementRoundCountForTopic:(id)topic;
- (void)_incrementServerTimeoutCountForTopic:(id)topic;
- (void)_invalidateClientAckTimerForTopic:(id)topic;
- (void)_invalidateServerResponseTimerForTopic:(id)topic;
- (void)_invalidateTimeoutTimersForTopic:(id)topic;
- (void)_persistSSMForTopic:(id)topic ssm:(id)ssm;
- (void)_persistStateForTopic:(id)topic state:(unint64_t)state;
- (void)_persistTopic:(id)topic;
- (void)_sendServerStorageMessageForTopic:(id)topic retryCount:(int)count ssm:(id)ssm sendReasonPathID:(int64_t)d;
- (void)_setStorageCheckVersion:(id)version forTopic:(id)topic;
- (void)_setTerminationReasonForTopic:(id)topic reason:(int64_t)reason;
- (void)_startClientAckTimeoutTimerForTopic:(id)topic;
- (void)_startExtendedServerResponseTimeoutTimerForTopic:(id)topic ssm:(id)ssm;
- (void)_startServerResponseTimeoutTimerForTopic:(id)topic ssm:(id)ssm;
- (void)_stateMachineTimedOutWaitingForClientAck:(id)ack;
- (void)_stateMachineTimedOutWaitingForServerResponse:(id)response;
- (void)_submitNoLastFromStorageMetricForService:(id)service;
- (void)_unpersistSSMForTopic:(id)topic;
- (void)_unpersistStateForTopic:(id)topic;
- (void)_unpersistTopic:(id)topic;
- (void)clearSSMForTopic:(id)topic;
- (void)clearSSMRequestCountForTopic:(id)topic;
- (void)dealloc;
- (void)deliveredBatchFromServerStorageForTopic:(id)topic ssm:(id)ssm;
- (void)extendClientAckTimeoutTimerForTopic:(id)topic;
- (void)incomingStorageRequestForTopic:(id)topic primary:(BOOL)primary messageContext:(id)context sendReasonPathID:(int64_t)d;
- (void)logCurrentStateForTopic:(id)topic;
- (void)noteReceivedSSMForTopic:(id)topic ssm:(id)ssm;
- (void)receivedBatchProcessedForTopic:(id)topic ssm:(id)ssm;
- (void)receivedLastMessageFromStorageForTopic:(id)topic;
- (void)receivedMessageFromStorageForTopic:(id)topic;
- (void)receivedNoStorageResponseForTopic:(id)topic messageContext:(id)context;
- (void)receivedStorageRequestForTopic:(id)topic;
- (void)reissuePersistedRequests;
- (void)sendBatchProcessedForTopic:(id)topic;
- (void)sendSSMProcessedForPersistedTopics;
- (void)startCollectingMetricsForServerStorageStateMachineFor:(id)for isPrimary:(BOOL)primary;
- (void)stopCollectingMetricsForServerStorageStateMachineFor:(id)for;
- (void)terminateStateMachineForTopic:(id)topic withReason:(int64_t)reason;
- (void)updateSSMForTopic:(id)topic ssm:(id)ssm;
- (void)updateStateForTopic:(id)topic newState:(unint64_t)state;
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

- (IDSServerStorageStateMachine)initWithDeliveryController:(id)controller userDefaults:(id)defaults idsServerBag:(id)bag
{
  controllerCopy = controller;
  defaultsCopy = defaults;
  bagCopy = bag;
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

    [(IDSServerStorageStateMachine *)v12 setDeliveryController:controllerCopy];
    [(IDSServerStorageStateMachine *)v12 setUserDefaults:defaultsCopy];
    [(IDSServerStorageStateMachine *)v12 setIdsServerBag:bagCopy];
  }

  return v12;
}

- (void)dealloc
{
  allValues = [(NSMutableDictionary *)self->_deathTimerToTopicMap allValues];
  [allValues makeObjectsPerformSelector:"invalidate"];

  allValues2 = [(NSMutableDictionary *)self->_clientAckTimerToTopicMap allValues];
  [allValues2 makeObjectsPerformSelector:"invalidate"];

  v5.receiver = self;
  v5.super_class = IDSServerStorageStateMachine;
  [(IDSServerStorageStateMachine *)&v5 dealloc];
}

- (void)updateStateForTopic:(id)topic newState:(unint64_t)state
{
  topicCopy = topic;
  v7 = [NSNumber numberWithUnsignedInteger:state];
  [(NSMutableDictionary *)self->_topicToStateMap setObject:v7 forKeyedSubscript:topicCopy];

  [(IDSServerStorageStateMachine *)self _persistStateForTopic:topicCopy state:state];
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100504E14(state);
    *buf = 138412546;
    v12 = topicCopy;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transitioned topic %@ to state %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = sub_100504E14(state);
    _IDSLogV();
  }
}

- (unint64_t)currentStateForTopic:(id)topic
{
  topicCopy = topic;
  v5 = [(NSMutableDictionary *)self->_topicToStateMap objectForKeyedSubscript:topicCopy];
  if (!v5)
  {
    topicCopy = [NSString stringWithFormat:@"%@-%@", @"IDSActiveStorageStateMachineState", topicCopy];
    userDefaults = [(IDSServerStorageStateMachine *)self userDefaults];
    v5 = [userDefaults appValueForKey:topicCopy];

    [(NSMutableDictionary *)self->_topicToStateMap setObject:v5 forKeyedSubscript:topicCopy];
  }

  integerValue = [v5 integerValue];

  return integerValue;
}

- (void)clearSSMForTopic:(id)topic
{
  topicCopy = topic;
  v5 = [(IDSServerStorageStateMachine *)self ssmForTopic:topicCopy];
  [(NSMutableDictionary *)self->_topicToSSMMap removeObjectForKey:topicCopy];
  [(IDSServerStorageStateMachine *)self _unpersistSSMForTopic:topicCopy];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100504E38(v5);
    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = topicCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removed SSM %@ for topic %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = sub_100504E38(v5);
    _IDSLogV();
  }
}

- (void)updateSSMForTopic:(id)topic ssm:(id)ssm
{
  topicCopy = topic;
  ssmCopy = ssm;
  v8 = [(IDSServerStorageStateMachine *)self ssmForTopic:topicCopy];
  [(NSMutableDictionary *)self->_topicToSSMMap setObject:ssmCopy forKeyedSubscript:topicCopy];
  [(IDSServerStorageStateMachine *)self _persistSSMForTopic:topicCopy ssm:ssmCopy];
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_100504E38(v8);
    v11 = sub_100504E38(ssmCopy);
    *buf = 138412802;
    v15 = topicCopy;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated SSM for topic %@ from %@ to %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = sub_100504E38(v8);
    v13 = sub_100504E38(ssmCopy);
    _IDSLogV();
  }
}

- (id)ssmForTopic:(id)topic
{
  topicCopy = topic;
  v5 = [(NSMutableDictionary *)self->_topicToSSMMap objectForKeyedSubscript:topicCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    topicCopy = [NSString stringWithFormat:@"%@-%@", @"IDSActiveStorageStateMachineSSM", topicCopy];
    userDefaults = [(IDSServerStorageStateMachine *)self userDefaults];
    v7 = [userDefaults appValueForKey:topicCopy];

    [(NSMutableDictionary *)self->_topicToSSMMap setObject:v7 forKeyedSubscript:topicCopy];
  }

  return v7;
}

- (void)incomingStorageRequestForTopic:(id)topic primary:(BOOL)primary messageContext:(id)context sendReasonPathID:(int64_t)d
{
  primaryCopy = primary;
  topicCopy = topic;
  contextCopy = context;
  v12 = [(IDSServerStorageStateMachine *)self currentStateForTopic:topicCopy];
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = sub_100504E14(v12);
    v15 = v14;
    v16 = @"NO";
    *buf = 138412802;
    v28 = topicCopy;
    v29 = 2112;
    if (primaryCopy)
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
    if (primaryCopy)
    {
      v19 = @"YES";
    }

    v25 = v17;
    v26 = v19;
    v24 = topicCopy;
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
        v28 = topicCopy;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "This is the first request for topic %@, kicking off a storage request response message for it", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v24 = topicCopy;
        _IDSLogV();
      }

      [(IDSServerStorageStateMachine *)self updateStateForTopic:topicCopy newState:1, v24, v25, v26];
      [(IDSServerStorageStateMachine *)self _persistTopic:topicCopy];
      [(IDSServerStorageStateMachine *)self startCollectingMetricsForServerStorageStateMachineFor:topicCopy isPrimary:primaryCopy];
      [(IDSServerStorageStateMachine *)self _sendServerStorageMessageForTopic:topicCopy retryCount:0 ssm:0 sendReasonPathID:d];
      [(IDSServerStorageStateMachine *)self _incrementRoundCountForTopic:topicCopy];
    }
  }

  else
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = topicCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "We already have an inflight request for topic %@, checking if we have a backup", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v24 = topicCopy;
      _IDSLogV();
    }

    if ([(NSMutableSet *)self->_pendingStorageRequests containsObject:topicCopy, v24, v25, v26])
    {
      v21 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = topicCopy;
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
      [(NSMutableSet *)self->_pendingStorageRequests addObject:topicCopy];
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = topicCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "We already have an inflight request for this topic %@, adding it to the backup queue", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        goto LABEL_21;
      }
    }
  }
}

- (void)_sendServerStorageMessageForTopic:(id)topic retryCount:(int)count ssm:(id)ssm sendReasonPathID:(int64_t)d
{
  v8 = *&count;
  topicCopy = topic;
  ssmCopy = ssm;
  if (![(IDSServerStorageStateMachine *)self _hasExceededMaxRequestsWithSSMForTopic:topicCopy retryCount:v8 ssm:ssmCopy])
  {
    [(IDSServerStorageStateMachine *)self updateStateForTopic:topicCopy newState:2];
    v14 = objc_alloc_init(IDSPendingOfflineMessageResponse);
    v15 = +[NSString stringGUID];
    [v14 setMessageIdentifier:v15];
    v16 = [NSNumber numberWithInt:v8];
    [v14 setRetryCount:v16];

    [v14 setSsm:ssmCopy];
    v17 = [[IDSSendReason alloc] initWithReason:5 subreason:2 pathID:d];
    v18 = [IDSSendReasonContainer createWithReason:v17];
    [v14 setSendReasonContainer:v18];

    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = topicCopy;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending storage request response for topic: %@ (%@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v22 = topicCopy;
      v23 = v14;
      _IDSLogV();
    }

    v20 = [(IDSServerStorageStateMachine *)self deliveryController:v22];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1005061E4;
    v24[3] = &unk_100BDF220;
    v25 = v15;
    v26 = topicCopy;
    selfCopy = self;
    v28 = ssmCopy;
    v21 = v15;
    [v20 sendIDSMessage:v14 service:0 topic:v26 completionBlock:v24];

    goto LABEL_13;
  }

  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_100504E38(ssmCopy);
    *buf = 138412546;
    v30 = topicCopy;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Server storage message on the topic: %@ for ssm: %@ has exceeded maximum requests - ignoring", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = sub_100504E38(ssmCopy);
    _IDSLogV();
LABEL_13:
  }
}

- (void)receivedNoStorageResponseForTopic:(id)topic messageContext:(id)context
{
  topicCopy = topic;
  contextCopy = context;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = topicCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We received a 165 from the server for topic %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v9 = topicCopy;
    _IDSLogV();
  }

  [(IDSServerStorageStateMachine *)self terminateStateMachineForTopic:topicCopy withReason:2, v9];
}

- (void)noteReceivedSSMForTopic:(id)topic ssm:(id)ssm
{
  topicCopy = topic;
  ssmCopy = ssm;
  if (_os_feature_enabled_impl() && [ssmCopy length])
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_100504E38(ssmCopy);
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = topicCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Noting received ssm: %@ from server storage for topic %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v10 = sub_100504E38(ssmCopy);
      v11 = topicCopy;
      _IDSLogV();
    }

    [(IDSServerStorageStateMachine *)self updateSSMForTopic:topicCopy ssm:ssmCopy, v10, v11];
  }
}

- (void)deliveredBatchFromServerStorageForTopic:(id)topic ssm:(id)ssm
{
  topicCopy = topic;
  ssmCopy = ssm;
  if (_os_feature_enabled_impl())
  {
    if (self->_didTimeOutWaitingForClientAck)
    {
      self->_didTimeOutWaitingForClientAck = 0;
    }

    [(IDSServerStorageStateMachine *)self _invalidateServerResponseTimerForTopic:topicCopy];
    lastDeliveredMessageTimePerTopic = self->_lastDeliveredMessageTimePerTopic;
    v9 = +[NSDate date];
    [(NSMutableDictionary *)lastDeliveredMessageTimePerTopic setObject:v9 forKey:topicCopy];

    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_100504E38(ssmCopy);
      *buf = 138412546;
      v19 = v11;
      v20 = 2112;
      v21 = topicCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "We've delivered the batch with ssm: %@ from server storage for topic %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v15 = sub_100504E38(ssmCopy);
      v17 = topicCopy;
      _IDSLogV();
    }

    v12 = [(IDSServerStorageStateMachine *)self currentStateForTopic:topicCopy, v15, v17];
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
      [(IDSServerStorageStateMachine *)self updateStateForTopic:topicCopy newState:4];
      [(IDSServerStorageStateMachine *)self updateSSMForTopic:topicCopy ssm:ssmCopy];
      [(IDSServerStorageStateMachine *)self _startClientAckTimeoutTimerForTopic:topicCopy];
    }
  }
}

- (void)_handleBatchProcessedForTopic:(id)topic clientSSM:(id)m isClientAck:(BOOL)ack
{
  ackCopy = ack;
  topicCopy = topic;
  mCopy = m;
  if (_os_feature_enabled_impl())
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_100504E38(mCopy);
      v12 = v11;
      v13 = @"NO";
      *buf = 138412802;
      v27 = topicCopy;
      v28 = 2112;
      if (ackCopy)
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
      if (ackCopy)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      sub_100504E38(mCopy);
      v25 = v23 = v14;
      v22 = topicCopy;
      _IDSLogV();
    }

    v15 = [(IDSServerStorageStateMachine *)self ssmForTopic:topicCopy, v22, v23, v25];
    if (v15)
    {
      if (mCopy && ackCopy && ([mCopy isEqualToData:v15] & 1) == 0)
      {
        v18 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = sub_100504E38(mCopy);
          v20 = sub_100504E38(v15);
          *buf = 138412546;
          v27 = v19;
          v28 = 2112;
          v29 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Given clientSSM: %@ is different from what we have in progress: %@ - aborting", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v21 = sub_100504E38(mCopy);
          v24 = sub_100504E38(v15);
          _IDSLogV();
        }
      }

      else
      {
        [(IDSServerStorageStateMachine *)self _invalidateClientAckTimerForTopic:topicCopy];
        [(IDSServerStorageStateMachine *)self updateStateForTopic:topicCopy newState:5];
        [(IDSServerStorageStateMachine *)self clearSSMForTopic:topicCopy];
        [(IDSServerStorageStateMachine *)self _incrementRoundCountForTopic:topicCopy];
        if (ackCopy)
        {
          v16 = 27;
        }

        else
        {
          v16 = 28;
        }

        [(IDSServerStorageStateMachine *)self _sendServerStorageMessageForTopic:topicCopy retryCount:0 ssm:v15 sendReasonPathID:v16];
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

- (void)receivedBatchProcessedForTopic:(id)topic ssm:(id)ssm
{
  topicCopy = topic;
  ssmCopy = ssm;
  if (_os_feature_enabled_impl())
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_100504E38(ssmCopy);
      *buf = 138412546;
      v13 = topicCopy;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "receivedBatchProcessedForTopic called - topic %@ ssm %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      sub_100504E38(ssmCopy);
      v11 = v10 = topicCopy;
      _IDSLogV();
    }

    [(IDSServerStorageStateMachine *)self _handleBatchProcessedForTopic:topicCopy clientSSM:ssmCopy isClientAck:1, v10, v11];
  }
}

- (void)sendBatchProcessedForTopic:(id)topic
{
  topicCopy = topic;
  if (_os_feature_enabled_impl())
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = topicCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sendBatchProcessedForTopic called - topic %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v6 = topicCopy;
      _IDSLogV();
    }

    [(IDSServerStorageStateMachine *)self _handleBatchProcessedForTopic:topicCopy clientSSM:0 isClientAck:0, v6];
  }
}

- (void)sendSSMProcessedForPersistedTopics
{
  if (_os_feature_enabled_impl())
  {
    _persistedTopics = [(IDSServerStorageStateMachine *)self _persistedTopics];
    v4 = [_persistedTopics copy];

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

- (void)receivedLastMessageFromStorageForTopic:(id)topic
{
  topicCopy = topic;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = topicCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "We received a last from storage from the server for topic %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = topicCopy;
    _IDSLogV();
  }

  v6 = [(IDSServerStorageStateMachine *)self ssmForTopic:topicCopy, v8];
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
    [(IDSServerStorageStateMachine *)self terminateStateMachineForTopic:topicCopy withReason:1];
  }
}

- (void)receivedMessageFromStorageForTopic:(id)topic
{
  lastReceivedMessageTimePerTopic = self->_lastReceivedMessageTimePerTopic;
  topicCopy = topic;
  v5 = +[NSDate date];
  [(NSMutableDictionary *)lastReceivedMessageTimePerTopic setObject:v5 forKey:topicCopy];

  [(IDSServerStorageStateMachine *)self _incrementMessagesFromStorageForTopic:topicCopy];
}

- (void)terminateStateMachineForTopic:(id)topic withReason:(int64_t)reason
{
  topicCopy = topic;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = topicCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Told to terminate state machine for topic %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v9 = topicCopy;
    _IDSLogV();
  }

  [(IDSServerStorageStateMachine *)self updateStateForTopic:topicCopy newState:0, v9];
  [(IDSServerStorageStateMachine *)self clearSSMForTopic:topicCopy];
  [(IDSServerStorageStateMachine *)self clearSSMRequestCountForTopic:topicCopy];
  [(IDSServerStorageStateMachine *)self _invalidateTimeoutTimersForTopic:topicCopy];
  [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic removeObjectForKey:topicCopy];
  [(IDSServerStorageStateMachine *)self _setTerminationReasonForTopic:topicCopy reason:reason];
  [(IDSServerStorageStateMachine *)self stopCollectingMetricsForServerStorageStateMachineFor:topicCopy];
  if ([(NSMutableSet *)self->_pendingStorageRequests containsObject:topicCopy])
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = topicCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We terminated our state machine for %@, however we have another backed up, kicking off another state machine", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v10 = topicCopy;
      _IDSLogV();
    }

    [(NSMutableSet *)self->_pendingStorageRequests removeObject:topicCopy, v10];
    [(IDSServerStorageStateMachine *)self incomingStorageRequestForTopic:topicCopy primary:0 messageContext:0 sendReasonPathID:24];
  }

  else
  {
    [(IDSServerStorageStateMachine *)self _cleanupPersistedStateForTopic:topicCopy];
  }
}

- (void)_cleanupPersistedStateForTopic:(id)topic
{
  topicCopy = topic;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = topicCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleaning up persisted state for topic %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = topicCopy;
    _IDSLogV();
  }

  [(IDSServerStorageStateMachine *)self _unpersistTopic:topicCopy, v6];
  [(IDSServerStorageStateMachine *)self _unpersistStateForTopic:topicCopy];
  [(IDSServerStorageStateMachine *)self _unpersistSSMForTopic:topicCopy];
}

- (void)_invalidateTimeoutTimersForTopic:(id)topic
{
  topicCopy = topic;
  [(IDSServerStorageStateMachine *)self _invalidateServerResponseTimerForTopic:topicCopy];
  [(IDSServerStorageStateMachine *)self _invalidateClientAckTimerForTopic:topicCopy];
}

- (void)_invalidateServerResponseTimerForTopic:(id)topic
{
  topicCopy = topic;
  v4 = [(NSMutableDictionary *)self->_deathTimerToTopicMap objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMutableDictionary *)self->_deathTimerToTopicMap removeObjectForKey:topicCopy];
  }
}

- (void)_startServerResponseTimeoutTimerForTopic:(id)topic ssm:(id)ssm
{
  ssmCopy = ssm;
  topicCopy = topic;
  [(IDSServerStorageStateMachine *)self _invalidateServerResponseTimerForTopic:topicCopy];
  v8 = [IMDispatchTimer alloc];
  v9 = im_primary_queue();
  v10 = [(IDSServerStorageStateMachine *)self _serverResponseTimeoutIntervalForTopic:topicCopy];
  v11 = [NSDictionary dictionaryWithObjectsAndKeys:topicCopy, @"topic", ssmCopy, @"ssm", 0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100507B88;
  v13[3] = &unk_100BD9268;
  v13[4] = self;
  v12 = [v8 initWithQueue:v9 interval:v10 repeats:0 userInfo:v11 handlerBlock:v13];

  [(NSMutableDictionary *)self->_deathTimerToTopicMap setObject:v12 forKey:topicCopy];
}

- (void)_startExtendedServerResponseTimeoutTimerForTopic:(id)topic ssm:(id)ssm
{
  ssmCopy = ssm;
  topicCopy = topic;
  [(IDSServerStorageStateMachine *)self _invalidateServerResponseTimerForTopic:topicCopy];
  v8 = [IMDispatchTimer alloc];
  v9 = im_primary_queue();
  v10 = [(IDSServerStorageStateMachine *)self _extendedServerResponseTimeoutIntervalForTopic:topicCopy];
  v11 = [NSDictionary dictionaryWithObjectsAndKeys:topicCopy, @"topic", ssmCopy, @"ssm", 0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100507CDC;
  v13[3] = &unk_100BD9268;
  v13[4] = self;
  v12 = [v8 initWithQueue:v9 interval:v10 repeats:0 userInfo:v11 handlerBlock:v13];

  [(NSMutableDictionary *)self->_deathTimerToTopicMap setObject:v12 forKey:topicCopy];
}

- (BOOL)_shouldExtendServerResponseTimeoutForTopic:(id)topic
{
  topicCopy = topic;
  v5 = [(IDSServerStorageStateMachine *)self lastReceivedMessageTimeForTopic:topicCopy];
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
      v12 = topicCopy;
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

- (void)_stateMachineTimedOutWaitingForServerResponse:(id)response
{
  responseCopy = response;
  userInfo = [responseCopy userInfo];
  v6 = [userInfo _stringForKey:@"topic"];
  v7 = [userInfo _dataForKey:@"ssm"];
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

- (void)_invalidateClientAckTimerForTopic:(id)topic
{
  topicCopy = topic;
  v4 = [(NSMutableDictionary *)self->_clientAckTimerToTopicMap objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMutableDictionary *)self->_clientAckTimerToTopicMap removeObjectForKey:topicCopy];
  }
}

- (void)_startClientAckTimeoutTimerForTopic:(id)topic
{
  topicCopy = topic;
  v5 = [(IDSServerStorageStateMachine *)self _clientAckTimeoutIntervalForTopic:topicCopy];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = topicCopy;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting client ack timeout timer for topic %@, timeout in %ld seconds", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = topicCopy;
    v12 = v5;
    _IDSLogV();
  }

  [(IDSServerStorageStateMachine *)self _invalidateClientAckTimerForTopic:topicCopy, v11, v12];
  v7 = [IMDispatchTimer alloc];
  v8 = im_primary_queue();
  v9 = [NSDictionary dictionaryWithObjectsAndKeys:topicCopy, @"topic", 0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100508434;
  v13[3] = &unk_100BD9268;
  v13[4] = self;
  v10 = [v7 initWithQueue:v8 interval:v5 repeats:0 userInfo:v9 handlerBlock:v13];

  [(NSMutableDictionary *)self->_clientAckTimerToTopicMap setObject:v10 forKey:topicCopy];
}

- (void)extendClientAckTimeoutTimerForTopic:(id)topic
{
  topicCopy = topic;
  if (_os_feature_enabled_impl())
  {
    v5 = [(NSMutableDictionary *)self->_clientAckTimerToTopicMap objectForKey:topicCopy];
    v6 = [(IDSServerStorageStateMachine *)self currentStateForTopic:topicCopy];
    if (v5 && v6 == 4)
    {
      v7 = [(IDSServerStorageStateMachine *)self _extendedClientAckTimeoutIntervalForTopic:topicCopy];
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = topicCopy;
        v18 = 2048;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting extended client ack timeout timer for topic %@, timeout in %ld seconds", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v13 = topicCopy;
        v14 = v7;
        _IDSLogV();
      }

      [(IDSServerStorageStateMachine *)self _invalidateClientAckTimerForTopic:topicCopy, v13, v14];
      v9 = [IMDispatchTimer alloc];
      v10 = im_primary_queue();
      v11 = [NSDictionary dictionaryWithObjectsAndKeys:topicCopy, @"topic", 0];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1005086A8;
      v15[3] = &unk_100BD9268;
      v15[4] = self;
      v12 = [v9 initWithQueue:v10 interval:v7 repeats:0 userInfo:v11 handlerBlock:v15];

      [(NSMutableDictionary *)self->_clientAckTimerToTopicMap setObject:v12 forKey:topicCopy];
    }
  }
}

- (void)_stateMachineTimedOutWaitingForClientAck:(id)ack
{
  ackCopy = ack;
  userInfo = [ackCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"topic"];
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

- (BOOL)_shouldSkipRetryForTopic:(id)topic
{
  topicCopy = topic;
  v5 = +[IDSDServiceController sharedInstance];
  v6 = [v5 serviceWithPushTopic:topicCopy];

  topicCopy = [NSString stringWithFormat:@"%@-force-server-storage-retry", topicCopy];

  idsServerBag = [(IDSServerStorageStateMachine *)self idsServerBag];
  v9 = [idsServerBag objectForKey:topicCopy];
  bOOLValue = [v9 BOOLValue];

  LOBYTE(idsServerBag) = [v6 skipServerStorageRetry];
  return idsServerBag & (bOOLValue ^ 1);
}

- (void)_attemptRetryForTopic:(id)topic withSSM:(id)m
{
  topicCopy = topic;
  mCopy = m;
  v8 = [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic _numberForKey:topicCopy];
  intValue = [v8 intValue];

  if (intValue >= [(IDSServerStorageStateMachine *)self _retryLimitForTopic:topicCopy])
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = topicCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "We have used up all available retries for topic %@: Terminating state machine", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v19 = topicCopy;
      _IDSLogV();
    }

    [(IDSServerStorageStateMachine *)self terminateStateMachineForTopic:topicCopy withReason:4, v19];
    [(IDSServerStorageStateMachine *)self _submitNoLastFromStorageMetricForService:topicCopy];
  }

  else
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic _numberForKey:topicCopy];
      *buf = 138412802;
      v23 = topicCopy;
      v24 = 1024;
      intValue2 = [v11 intValue];
      v26 = 1024;
      v27 = 2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "We have not used up our remaining retries on topic %@: Used: %d Available: %d", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v12 = [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic _numberForKey:topicCopy];
      intValue3 = [v12 intValue];
      v21 = 2;
      v19 = topicCopy;
      _IDSLogV();
    }

    [(IDSServerStorageStateMachine *)self _invalidateServerResponseTimerForTopic:topicCopy, v19, intValue3, v21];
    v13 = [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic _numberForKey:topicCopy];
    integerValue = [v13 integerValue];

    currentStorageRetriesPerTopic = self->_currentStorageRetriesPerTopic;
    v16 = [NSNumber numberWithInteger:integerValue + 1];
    [(NSMutableDictionary *)currentStorageRetriesPerTopic setObject:v16 forKey:topicCopy];

    v17 = [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic _numberForKey:topicCopy];
    -[IDSServerStorageStateMachine _sendServerStorageMessageForTopic:retryCount:ssm:sendReasonPathID:](self, "_sendServerStorageMessageForTopic:retryCount:ssm:sendReasonPathID:", topicCopy, [v17 intValue], mCopy, 22);
  }
}

- (int)_serverResponseTimeoutIntervalForTopic:(id)topic
{
  topic = [NSString stringWithFormat:@"%@-retry-timeout", topic];
  idsServerBag = [(IDSServerStorageStateMachine *)self idsServerBag];
  v6 = [idsServerBag objectForKey:topic];
  intValue = [v6 intValue];

  if (intValue)
  {
    v8 = intValue;
  }

  else
  {
    v8 = 60;
  }

  return v8;
}

- (int)_extendedServerResponseTimeoutIntervalForTopic:(id)topic
{
  topic = [NSString stringWithFormat:@"%@-extend-retry-timeout", topic];
  idsServerBag = [(IDSServerStorageStateMachine *)self idsServerBag];
  v6 = [idsServerBag objectForKey:topic];
  intValue = [v6 intValue];

  if (intValue)
  {
    v8 = intValue;
  }

  else
  {
    v8 = 20;
  }

  return v8;
}

- (int)_clientAckTimeoutIntervalForTopic:(id)topic
{
  topic = [NSString stringWithFormat:@"%@-client-ack-timeout", topic];
  idsServerBag = [(IDSServerStorageStateMachine *)self idsServerBag];
  v6 = [idsServerBag objectForKey:topic];
  intValue = [v6 intValue];

  if (intValue)
  {
    v8 = intValue;
  }

  else
  {
    v8 = 60;
  }

  return v8;
}

- (int)_extendedClientAckTimeoutIntervalForTopic:(id)topic
{
  topic = [NSString stringWithFormat:@"%@-extend-client-ack-timeout", topic];
  idsServerBag = [(IDSServerStorageStateMachine *)self idsServerBag];
  v6 = [idsServerBag objectForKey:topic];
  intValue = [v6 intValue];

  if (intValue)
  {
    v8 = intValue;
  }

  else
  {
    v8 = 60;
  }

  return v8;
}

- (void)receivedStorageRequestForTopic:(id)topic
{
  topicCopy = topic;
  v5 = +[IDSCurrentServerTime sharedInstance];
  currentServerTimeDate = [v5 currentServerTimeDate];

  [(NSMutableDictionary *)self->_receivedStorageRequestTimePerTopic setObject:currentServerTimeDate forKey:topicCopy];
}

- (int)_retryLimitForTopic:(id)topic
{
  topic = [NSString stringWithFormat:@"%@-storage-state-machine-retry-limit", topic];
  idsServerBag = [(IDSServerStorageStateMachine *)self idsServerBag];
  v6 = [idsServerBag objectForKey:topic];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 2;
  }

  return intValue;
}

- (int)_maxRequestsPerSSMForTopic:(id)topic
{
  topic = [NSString stringWithFormat:@"%@-ssm-request-limit", topic];
  idsServerBag = [(IDSServerStorageStateMachine *)self idsServerBag];
  v6 = [idsServerBag objectForKey:topic];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 3;
  }

  return intValue;
}

- (BOOL)_hasExceededMaxRequestsWithSSMForTopic:(id)topic retryCount:(int)count ssm:(id)ssm
{
  v6 = *&count;
  topicCopy = topic;
  ssmCopy = ssm;
  v10 = _os_feature_enabled_impl();
  v11 = 0;
  if (ssmCopy && v10)
  {
    v12 = sub_100504E38(ssmCopy);
    v13 = [NSString stringWithFormat:@"%@-%@-%d", topicCopy, v12, v6];

    ssmRequestCountsPerTopic = [(IDSServerStorageStateMachine *)self ssmRequestCountsPerTopic];
    v15 = [ssmRequestCountsPerTopic objectForKeyedSubscript:v13];
    integerValue = [v15 integerValue];

    v17 = [(IDSServerStorageStateMachine *)self _maxRequestsPerSSMForTopic:topicCopy];
    v11 = integerValue >= v17;
    if (integerValue < v17)
    {
      v18 = integerValue + 1;
      v19 = [NSNumber numberWithInteger:v18];
      ssmRequestCountsPerTopic2 = [(IDSServerStorageStateMachine *)self ssmRequestCountsPerTopic];
      [ssmRequestCountsPerTopic2 setObject:v19 forKeyedSubscript:v13];

      v21 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v24 = topicCopy;
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

- (void)clearSSMRequestCountForTopic:(id)topic
{
  topicCopy = topic;
  ssmRequestCountsPerTopic = [(IDSServerStorageStateMachine *)self ssmRequestCountsPerTopic];
  allKeys = [ssmRequestCountsPerTopic allKeys];
  v7 = [allKeys copy];

  topicCopy = [NSString stringWithFormat:@"%@-", topicCopy];
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
        if ([v13 hasPrefix:topicCopy])
        {
          ssmRequestCountsPerTopic2 = [(IDSServerStorageStateMachine *)self ssmRequestCountsPerTopic];
          [ssmRequestCountsPerTopic2 removeObjectForKey:v13];
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
    v21 = topicCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cleared SSM request count for topic %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

- (id)currentMetricCollectorForTopic:(id)topic
{
  topicCopy = topic;
  metricCollectors = self->_metricCollectors;
  if (!metricCollectors)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = self->_metricCollectors;
    self->_metricCollectors = Mutable;

    metricCollectors = self->_metricCollectors;
  }

  v8 = [(NSMutableDictionary *)metricCollectors objectForKey:topicCopy];

  return v8;
}

- (void)startCollectingMetricsForServerStorageStateMachineFor:(id)for isPrimary:(BOOL)primary
{
  primaryCopy = primary;
  key = for;
  v6 = [[IDSServerStorageMetricCollector alloc] initWithTopic:key isPrimary:primaryCopy];
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

- (void)stopCollectingMetricsForServerStorageStateMachineFor:(id)for
{
  forCopy = for;
  v5 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:forCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:forCopy];
    [v6 endCollector];
    [v6 reportMetric];
    [(NSMutableDictionary *)self->_metricCollectors removeObjectForKey:forCopy];
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

- (void)_incrementMessagesFromStorageForTopic:(id)topic
{
  topicCopy = topic;
  v5 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:topicCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:topicCopy];
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

- (void)_incrementRoundCountForTopic:(id)topic
{
  topicCopy = topic;
  v4 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:?];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:topicCopy];
    [v5 incrementRoundCount];
  }
}

- (void)_incrementServerTimeoutCountForTopic:(id)topic
{
  topicCopy = topic;
  v4 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:?];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:topicCopy];
    [v5 incrementServerTimeoutCount];
  }
}

- (void)_incrementClientTimeoutCountForTopic:(id)topic
{
  topicCopy = topic;
  v4 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:?];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:topicCopy];
    [v5 incrementClientTimeoutCount];
  }
}

- (void)_setTerminationReasonForTopic:(id)topic reason:(int64_t)reason
{
  topicCopy = topic;
  v6 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:?];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:topicCopy];
    [v7 setTerminationReason:reason];
  }
}

- (void)_setStorageCheckVersion:(id)version forTopic:(id)topic
{
  versionCopy = version;
  v6 = [(NSMutableDictionary *)self->_metricCollectors objectForKey:topic];
  v7 = v6;
  if (v6)
  {
    [v6 setStorageCheckVersion:versionCopy];
  }
}

- (void)_submitNoLastFromStorageMetricForService:(id)service
{
  serviceCopy = service;
  v4 = [[IDSMissingMessageMetric alloc] initWithReason:705 guid:0 service:serviceCopy additionalInformation:0];

  [IDSMissingMessageMetricReporter sendMetric:v4];
}

- (void)reissuePersistedRequests
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _persistedTopics = [(IDSServerStorageStateMachine *)self _persistedTopics];
  v4 = [_persistedTopics countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(_persistedTopics);
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

      v4 = [_persistedTopics countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }
}

- (void)_persistTopic:(id)topic
{
  topicCopy = topic;
  _persistedTopics = [(IDSServerStorageStateMachine *)self _persistedTopics];
  v5 = [_persistedTopics mutableCopy];

  if (!v5)
  {
    v5 = objc_alloc_init(NSMutableArray);
  }

  if (([v5 containsObject:topicCopy] & 1) == 0)
  {
    [v5 addObject:topicCopy];
    userDefaults = [(IDSServerStorageStateMachine *)self userDefaults];
    [userDefaults setAppValue:v5 forKey:@"IDSActiveStorageStateMachines"];
  }
}

- (void)_unpersistTopic:(id)topic
{
  topicCopy = topic;
  _persistedTopics = [(IDSServerStorageStateMachine *)self _persistedTopics];
  v5 = [_persistedTopics mutableCopy];

  if ([v5 containsObject:topicCopy])
  {
    [v5 removeObject:topicCopy];
    v6 = [v5 count];
    userDefaults = [(IDSServerStorageStateMachine *)self userDefaults];
    v8 = userDefaults;
    if (v6)
    {
      [userDefaults setAppValue:v5 forKey:@"IDSActiveStorageStateMachines"];
    }

    else
    {
      [userDefaults removeAppValueForKey:@"IDSActiveStorageStateMachines"];
    }
  }
}

- (id)_persistedTopics
{
  userDefaults = [(IDSServerStorageStateMachine *)self userDefaults];
  v3 = [userDefaults appValueForKey:@"IDSActiveStorageStateMachines"];

  return v3;
}

- (void)_persistStateForTopic:(id)topic state:(unint64_t)state
{
  topic = [NSString stringWithFormat:@"%@-%@", @"IDSActiveStorageStateMachineState", topic];
  userDefaults = [(IDSServerStorageStateMachine *)self userDefaults];
  v7 = [NSNumber numberWithUnsignedInteger:state];
  [userDefaults setAppValue:v7 forKey:topic];
}

- (void)_unpersistStateForTopic:(id)topic
{
  topic = [NSString stringWithFormat:@"%@-%@", @"IDSActiveStorageStateMachineState", topic];
  userDefaults = [(IDSServerStorageStateMachine *)self userDefaults];
  [userDefaults removeAppValueForKey:topic];
}

- (void)_persistSSMForTopic:(id)topic ssm:(id)ssm
{
  ssmCopy = ssm;
  topic = [NSString stringWithFormat:@"%@-%@", @"IDSActiveStorageStateMachineSSM", topic];
  userDefaults = [(IDSServerStorageStateMachine *)self userDefaults];
  [userDefaults setAppValue:ssmCopy forKey:topic];
}

- (void)_unpersistSSMForTopic:(id)topic
{
  topic = [NSString stringWithFormat:@"%@-%@", @"IDSActiveStorageStateMachineSSM", topic];
  userDefaults = [(IDSServerStorageStateMachine *)self userDefaults];
  [userDefaults removeAppValueForKey:topic];
}

- (void)logCurrentStateForTopic:(id)topic
{
  topicCopy = topic;
  v5 = [(IDSServerStorageStateMachine *)self currentStateForTopic:topicCopy];
  v6 = [(IDSServerStorageStateMachine *)self ssmForTopic:topicCopy];
  v7 = [(IDSServerStorageStateMachine *)self lastReceivedMessageTimeForTopic:topicCopy];
  v8 = [(IDSServerStorageStateMachine *)self lastDeliveredMessageTimeForTopic:topicCopy];
  v9 = [(NSMutableDictionary *)self->_currentStorageRetriesPerTopic objectForKey:topicCopy];
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_100504E14(v5);
    v12 = sub_100504E38(v6);
    *buf = 138413570;
    v16 = topicCopy;
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