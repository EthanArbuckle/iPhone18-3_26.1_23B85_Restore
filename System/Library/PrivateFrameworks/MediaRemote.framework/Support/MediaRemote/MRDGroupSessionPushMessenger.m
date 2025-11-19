@interface MRDGroupSessionPushMessenger
- (MRDGroupSessionPushMessenger)initWithService:(id)a3 handle:(id)a4 queue:(id)a5 messageHandler:(id)a6 errorHandler:(id)a7;
- (void)_updateAllowedDestinations:(id)a3;
- (void)sendMessage:(id)a3 toDestinations:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)updateAllowedDestinations:(id)a3;
@end

@implementation MRDGroupSessionPushMessenger

- (MRDGroupSessionPushMessenger)initWithService:(id)a3 handle:(id)a4 queue:(id)a5 messageHandler:(id)a6 errorHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v30.receiver = self;
  v30.super_class = MRDGroupSessionPushMessenger;
  v18 = [(MRDGroupSessionPushMessenger *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_service, a3);
    objc_storeStrong(&v19->_handle, a4);
    objc_storeStrong(&v19->_queue, a5);
    v20 = objc_retainBlock(v16);
    messageHandler = v19->_messageHandler;
    v19->_messageHandler = v20;

    v22 = objc_retainBlock(v17);
    errorHandler = v19->_errorHandler;
    v19->_errorHandler = v22;

    v24 = objc_alloc_init(IDSServiceDelegateProperties);
    [v24 setWantsCrossAccountMessaging:1];
    [v13 addDelegate:v19 withDelegateProperties:v24 queue:v15];
    v25 = +[MRUserSettings currentSettings];
    v26 = [v25 supportGroupSessionOfframp];

    if (v26)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100172C50;
      v28[3] = &unk_1004BFC60;
      v29 = v19;
      [v13 retrieveFirewallWithQueue:v15 completion:v28];
    }
  }

  return v19;
}

- (void)sendMessage:(id)a3 toDestinations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDGroupSessionPushMessenger *)self service];
  v25 = IDSSendMessageOptionFromIDKey;
  v9 = [(MRDGroupSessionPushMessenger *)self handle];
  v26 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v15 = 0;
  v16 = 0;
  [v8 sendMessage:v6 toDestinations:v7 priority:300 options:v10 identifier:&v16 error:&v15];
  v11 = v16;
  v12 = v15;

  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v18 = v6;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[MRDGroupSessionPushMessenger] Sent push message: %@ with identifier: %@, to: %@. Error: %@", buf, 0x2Au);
  }

  if (v12)
  {
    v14 = [(MRDGroupSessionPushMessenger *)self errorHandler];
    (v14)[2](v14, v12);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 138412802;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[MRDGroupSessionPushMessenger] Receive push message: %@ with context: %@, from: %@", &v15, 0x20u);
  }

  v14 = [(MRDGroupSessionPushMessenger *)self messageHandler];
  (v14)[2](v14, v11, v10);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v10 = a6;
  v12 = a5;
  v13 = a7;
  v14 = a8;
  v15 = _MRLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v17 = 138413058;
    v18 = v12;
    v19 = 1024;
    v20 = v10;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[MRDGroupSessionPushMessenger] Sending of: %@ success: %{BOOL}u, error: %@, context: %@", &v17, 0x26u);
  }

  if (v13)
  {
    v16 = [(MRDGroupSessionPushMessenger *)self errorHandler];
    (v16)[2](v16, v13);
  }
}

- (void)updateAllowedDestinations:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionPushMessenger *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001731D0;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_updateAllowedDestinations:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionPushMessenger *)self queue];
  dispatch_assert_queue_V2(v5);

  [(MRDGroupSessionPushMessenger *)self setAllowedDestinations:v4];
  v6 = [(MRDGroupSessionPushMessenger *)self firewall];

  if (v6)
  {
    v7 = [v4 msv_compactMap:&stru_1004BFCA0];
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[MRDGroupSessionPushMessenger] Update firewall entries: %{public}@", buf, 0xCu);
    }

    v9 = [(MRDGroupSessionPushMessenger *)self firewall];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001733D8;
    v10[3] = &unk_1004B6FC0;
    v10[4] = self;
    [v9 replaceDonatedEntriesWithEntries:v7 withCompletion:v10];
  }
}

@end