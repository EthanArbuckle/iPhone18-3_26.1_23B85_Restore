@interface IDSDGroupStatusNotificationControllerBroadcaster
- (void)broadcastGroupSessionParticipantDataUpdate:(id)a3 onTopic:(id)a4 toURI:(id)a5 fromURI:(id)a6;
- (void)broadcastGroupSessionParticipantUpdate:(id)a3 onTopic:(id)a4 toURI:(id)a5 fromURI:(id)a6 context:(id)a7;
@end

@implementation IDSDGroupStatusNotificationControllerBroadcaster

- (void)broadcastGroupSessionParticipantUpdate:(id)a3 onTopic:(id)a4 toURI:(id)a5 fromURI:(id)a6 context:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v33 = v12;
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v15;
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
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v19 = kIDSSessionEntitlement;
  v20 = kIDSListenerCapConsumesLaunchOnDemandGroupSessionParticipantUpdates;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  v25 = v11;
  [v18 enqueueBroadcast:v26 forTopic:v24 entitlement:v19 command:0 capabilities:v20 messageContext:v17];
}

- (void)broadcastGroupSessionParticipantDataUpdate:(id)a3 onTopic:(id)a4 toURI:(id)a5 fromURI:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v10;
    v29 = 2112;
    v30 = v9;
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
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v16 = kIDSSessionEntitlement;
  v17 = kIDSListenerCapConsumesLaunchOnDemandGroupSessionParticipantUpdates;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v21 = v9;
  [v15 enqueueBroadcast:v22 forTopic:v20 entitlement:v16 command:0 capabilities:v17 messageContext:v14];
}

@end