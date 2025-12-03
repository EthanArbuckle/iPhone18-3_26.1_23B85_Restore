@interface IDSDGroupStatusNotificationControllerBroadcaster
- (void)broadcastGroupSessionParticipantDataUpdate:(id)update onTopic:(id)topic toURI:(id)i fromURI:(id)rI;
- (void)broadcastGroupSessionParticipantUpdate:(id)update onTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context;
@end

@implementation IDSDGroupStatusNotificationControllerBroadcaster

- (void)broadcastGroupSessionParticipantUpdate:(id)update onTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context
{
  updateCopy = update;
  topicCopy = topic;
  iCopy = i;
  rICopy = rI;
  contextCopy = context;
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v33 = topicCopy;
    v34 = 2112;
    v35 = updateCopy;
    v36 = 2112;
    v37 = contextCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting receivedGroupSessionParticipantUpdate:forTopic: {topic: %@, update: %@, context: %@}", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v17 = objc_alloc_init(IMMessageContext);
  [v17 setShouldBoost:1];
  v18 = +[IDSDaemon sharedInstance];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1003E3DE8;
  v26[3] = &unk_100BDA870;
  v27 = updateCopy;
  v28 = topicCopy;
  v29 = iCopy;
  v30 = rICopy;
  v31 = contextCopy;
  v19 = kIDSSessionEntitlement;
  v20 = kIDSListenerCapConsumesLaunchOnDemandGroupSessionParticipantUpdates;
  v21 = contextCopy;
  v22 = rICopy;
  v23 = iCopy;
  v24 = topicCopy;
  v25 = updateCopy;
  [v18 enqueueBroadcast:v26 forTopic:v24 entitlement:v19 command:0 capabilities:v20 messageContext:v17];
}

- (void)broadcastGroupSessionParticipantDataUpdate:(id)update onTopic:(id)topic toURI:(id)i fromURI:(id)rI
{
  updateCopy = update;
  topicCopy = topic;
  iCopy = i;
  rICopy = rI;
  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = topicCopy;
    v29 = 2112;
    v30 = updateCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Broadcasting receivedGroupSessionParticipantDataUpdate:forTopic: {topic: %@, update: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v14 = objc_alloc_init(IMMessageContext);
  [v14 setShouldBoost:1];
  v15 = +[IDSDaemon sharedInstance];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1003E41D8;
  v22[3] = &unk_100BDA898;
  v23 = updateCopy;
  v24 = topicCopy;
  v25 = iCopy;
  v26 = rICopy;
  v16 = kIDSSessionEntitlement;
  v17 = kIDSListenerCapConsumesLaunchOnDemandGroupSessionParticipantUpdates;
  v18 = rICopy;
  v19 = iCopy;
  v20 = topicCopy;
  v21 = updateCopy;
  [v15 enqueueBroadcast:v22 forTopic:v20 entitlement:v16 command:0 capabilities:v17 messageContext:v14];
}

@end