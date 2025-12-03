@interface MRDGroupSessionPushMessenger
- (MRDGroupSessionPushMessenger)initWithService:(id)service handle:(id)handle queue:(id)queue messageHandler:(id)handler errorHandler:(id)errorHandler;
- (void)_updateAllowedDestinations:(id)destinations;
- (void)sendMessage:(id)message toDestinations:(id)destinations;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)updateAllowedDestinations:(id)destinations;
@end

@implementation MRDGroupSessionPushMessenger

- (MRDGroupSessionPushMessenger)initWithService:(id)service handle:(id)handle queue:(id)queue messageHandler:(id)handler errorHandler:(id)errorHandler
{
  serviceCopy = service;
  handleCopy = handle;
  queueCopy = queue;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  v30.receiver = self;
  v30.super_class = MRDGroupSessionPushMessenger;
  v18 = [(MRDGroupSessionPushMessenger *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_service, service);
    objc_storeStrong(&v19->_handle, handle);
    objc_storeStrong(&v19->_queue, queue);
    v20 = objc_retainBlock(handlerCopy);
    messageHandler = v19->_messageHandler;
    v19->_messageHandler = v20;

    v22 = objc_retainBlock(errorHandlerCopy);
    errorHandler = v19->_errorHandler;
    v19->_errorHandler = v22;

    v24 = objc_alloc_init(IDSServiceDelegateProperties);
    [v24 setWantsCrossAccountMessaging:1];
    [serviceCopy addDelegate:v19 withDelegateProperties:v24 queue:queueCopy];
    v25 = +[MRUserSettings currentSettings];
    supportGroupSessionOfframp = [v25 supportGroupSessionOfframp];

    if (supportGroupSessionOfframp)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100172C50;
      v28[3] = &unk_1004BFC60;
      v29 = v19;
      [serviceCopy retrieveFirewallWithQueue:queueCopy completion:v28];
    }
  }

  return v19;
}

- (void)sendMessage:(id)message toDestinations:(id)destinations
{
  messageCopy = message;
  destinationsCopy = destinations;
  service = [(MRDGroupSessionPushMessenger *)self service];
  v25 = IDSSendMessageOptionFromIDKey;
  handle = [(MRDGroupSessionPushMessenger *)self handle];
  v26 = handle;
  v10 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v15 = 0;
  v16 = 0;
  [service sendMessage:messageCopy toDestinations:destinationsCopy priority:300 options:v10 identifier:&v16 error:&v15];
  v11 = v16;
  v12 = v15;

  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v18 = messageCopy;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = destinationsCopy;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[MRDGroupSessionPushMessenger] Sent push message: %@ with identifier: %@, to: %@. Error: %@", buf, 0x2Au);
  }

  if (v12)
  {
    errorHandler = [(MRDGroupSessionPushMessenger *)self errorHandler];
    (errorHandler)[2](errorHandler, v12);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 138412802;
    v16 = messageCopy;
    v17 = 2112;
    v18 = contextCopy;
    v19 = 2112;
    v20 = dCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[MRDGroupSessionPushMessenger] Receive push message: %@ with context: %@, from: %@", &v15, 0x20u);
  }

  messageHandler = [(MRDGroupSessionPushMessenger *)self messageHandler];
  (messageHandler)[2](messageHandler, dCopy, messageCopy);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  v15 = _MRLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v17 = 138413058;
    v18 = identifierCopy;
    v19 = 1024;
    v20 = successCopy;
    v21 = 2112;
    v22 = errorCopy;
    v23 = 2112;
    v24 = contextCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[MRDGroupSessionPushMessenger] Sending of: %@ success: %{BOOL}u, error: %@, context: %@", &v17, 0x26u);
  }

  if (errorCopy)
  {
    errorHandler = [(MRDGroupSessionPushMessenger *)self errorHandler];
    (errorHandler)[2](errorHandler, errorCopy);
  }
}

- (void)updateAllowedDestinations:(id)destinations
{
  destinationsCopy = destinations;
  queue = [(MRDGroupSessionPushMessenger *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001731D0;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = destinationsCopy;
  v6 = destinationsCopy;
  dispatch_async(queue, v7);
}

- (void)_updateAllowedDestinations:(id)destinations
{
  destinationsCopy = destinations;
  queue = [(MRDGroupSessionPushMessenger *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MRDGroupSessionPushMessenger *)self setAllowedDestinations:destinationsCopy];
  firewall = [(MRDGroupSessionPushMessenger *)self firewall];

  if (firewall)
  {
    v7 = [destinationsCopy msv_compactMap:&stru_1004BFCA0];
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[MRDGroupSessionPushMessenger] Update firewall entries: %{public}@", buf, 0xCu);
    }

    firewall2 = [(MRDGroupSessionPushMessenger *)self firewall];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001733D8;
    v10[3] = &unk_1004B6FC0;
    v10[4] = self;
    [firewall2 replaceDonatedEntriesWithEntries:v7 withCompletion:v10];
  }
}

@end