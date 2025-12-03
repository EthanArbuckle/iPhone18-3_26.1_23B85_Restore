@interface IDSDXPCServerMessaging
- (BOOL)_entitledForTopic:(id)topic;
- (IDSDXPCServerMessaging)initWithQueue:(id)queue connection:(id)connection messageDelivery:(id)delivery pushHandler:(id)handler;
- (id)_commands;
- (id)_topics;
- (void)_handlePendingFetchBlocksForIdentifier:(id)identifier topic:(id)topic;
- (void)_recalculateTopics;
- (void)cancelMessageWithIdentifier:(id)identifier onTopic:(id)topic completion:(id)completion;
- (void)dealloc;
- (void)handler:(id)handler didReceiveMessage:(id)message forTopic:(id)topic fromID:(id)d messageContext:(id)context;
- (void)handler:(id)handler receivedNoStorageResponseForTopic:(id)topic identifier:(id)identifier messageContext:(id)context;
- (void)handler:(id)handler receivedOfflineMessagePendingForTopic:(id)topic messageContext:(id)context;
- (void)sendCertifiedDeliveryReceipt:(id)receipt;
- (void)sendMessageData:(id)data onTopic:(id)topic withOptions:(id)options identifier:(id)identifier completion:(id)completion;
- (void)sendServerStorageFetchForTopic:(id)topic completion:(id)completion;
- (void)setupServerMessagingClient:(id)client withUUID:(id)d forTopic:(id)topic commands:(id)commands;
@end

@implementation IDSDXPCServerMessaging

- (IDSDXPCServerMessaging)initWithQueue:(id)queue connection:(id)connection messageDelivery:(id)delivery pushHandler:(id)handler
{
  queueCopy = queue;
  connectionCopy = connection;
  obj = delivery;
  deliveryCopy = delivery;
  handlerCopy = handler;
  v15 = [(IDSDXPCServerMessaging *)connectionCopy valueForEntitlement:kIDSServerMessagingEntitlement];
  v16 = [(IDSDXPCServerMessaging *)connectionCopy valueForEntitlement:kIDSTestToolEntitlement];
  if (!v15)
  {
    v18 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1009296F0();
    }

    goto LABEL_30;
  }

  handlerCopy2 = handler;
  objc_opt_class();
  v17 = (objc_opt_isKindOfClass() & 1) != 0 && [v15 count] != 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [v15 BOOLValue] && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    bOOLValue = [(IDSDXPCServerMessaging *)v16 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  if (((v17 | bOOLValue) & 1) == 0)
  {
    v18 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v44 = connectionCopy;
      v45 = 2112;
      v46 = v15;
      v47 = 2112;
      v48 = v16;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid server messaging entitlement -- failing creation of IDSDXPCServerMessaging collaborator {connection: %@, serverMessagingEntitlementValue: %@, testToolEntitlementValue: %@}", buf, 0x20u);
    }

LABEL_30:

    selfCopy2 = 0;
    goto LABEL_37;
  }

  if (v17)
  {
    selfCopy = self;
    v33 = handlerCopy;
    v34 = deliveryCopy;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v20 = v15;
    v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v39;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(v20);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v29 = +[IDSFoundationLog IDSServerMessaging];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_100929688();
            }

            selfCopy2 = 0;
            handlerCopy = v33;
            deliveryCopy = v34;
            self = selfCopy;
            goto LABEL_37;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    deliveryCopy = v34;
    handlerCopy = v33;
    self = selfCopy;
  }

  v37.receiver = self;
  v37.super_class = IDSDXPCServerMessaging;
  v25 = [(IDSDXPCServerMessaging *)&v37 init];
  if (v25)
  {
    v26 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v44 = v25;
      v45 = 2112;
      v46 = v15;
      v47 = 2112;
      v48 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Created XPCServerMessaging {self: %p, serverMessagingEntitlementValue: %@, connection: %@}", buf, 0x20u);
    }

    objc_storeStrong(&v25->_queue, queue);
    if (bOOLValue)
    {
      v27 = 0;
      v25->_entitledForAllTopics = 1;
    }

    else
    {
      v25->_entitledForAllTopics = 0;
      v27 = v15;
    }

    serverMessagingEntitlements = v25->_serverMessagingEntitlements;
    v25->_serverMessagingEntitlements = v27;

    objc_storeStrong(&v25->_messageDelivery, obj);
    objc_storeStrong(&v25->_pushHandler, handlerCopy2);
  }

  self = v25;
  selfCopy2 = self;
LABEL_37:

  return selfCopy2;
}

- (void)dealloc
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(IDSDXPCServerMessaging *)self messagesToCancelOnDeallocByTopic];
  v15 = [obj countByEnumeratingWithState:&v22 objects:v33 count:16];
  if (v15)
  {
    v14 = *v23;
    do
    {
      v3 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = v3;
        v4 = *(*(&v22 + 1) + 8 * v3);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        messagesToCancelOnDeallocByTopic = [(IDSDXPCServerMessaging *)self messagesToCancelOnDeallocByTopic];
        v6 = [messagesToCancelOnDeallocByTopic objectForKeyedSubscript:v4];

        v7 = [v6 countByEnumeratingWithState:&v18 objects:v32 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v19;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v19 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v18 + 1) + 8 * i);
              v12 = +[IDSFoundationLog IDSServerMessaging];
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218498;
                selfCopy = self;
                v28 = 2112;
                v29 = v11;
                v30 = 2112;
                v31 = v4;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cancelling pending message {self: %p, identifier: %@, topic: %@}", buf, 0x20u);
              }

              [(IDSDXPCServerMessaging *)self cancelMessageWithIdentifier:v11 onTopic:v4 completion:&stru_100BE0878];
            }

            v8 = [v6 countByEnumeratingWithState:&v18 objects:v32 count:16];
          }

          while (v8);
        }

        v3 = v16 + 1;
      }

      while ((v16 + 1) != v15);
      v15 = [obj countByEnumeratingWithState:&v22 objects:v33 count:16];
    }

    while (v15);
  }

  v17.receiver = self;
  v17.super_class = IDSDXPCServerMessaging;
  [(IDSDXPCServerMessaging *)&v17 dealloc];
}

- (BOOL)_entitledForTopic:(id)topic
{
  topicCopy = topic;
  if (-[IDSDXPCServerMessaging entitledForAllTopics](self, "entitledForAllTopics") || (-[IDSDXPCServerMessaging serverMessagingEntitlements](self, "serverMessagingEntitlements"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:topicCopy], v5, (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v8 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100929758(self, topicCopy, v8);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_commands
{
  v3 = [[NSMutableSet alloc] initWithObjects:{&off_100C3CA60, &off_100C3CA78, &off_100C3CA90, &off_100C3CAA8, 0}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(IDSDXPCServerMessaging *)self clientContextByTopic];
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    do
    {
      v4 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v4;
        v5 = *(*(&v28 + 1) + 8 * v4);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        clientContextByTopic = [(IDSDXPCServerMessaging *)self clientContextByTopic];
        v7 = [clientContextByTopic objectForKeyedSubscript:v5];

        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v24 + 1) + 8 * i);
              clientContextByTopic2 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
              v14 = [clientContextByTopic2 objectForKeyedSubscript:v5];
              v15 = [v14 objectForKeyedSubscript:v12];

              commands = [v15 commands];

              if (commands)
              {
                commands2 = [v15 commands];
                [v3 unionSet:commands2];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v9);
        }

        v4 = v23 + 1;
      }

      while ((v23 + 1) != v22);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  v18 = [v3 copy];

  return v18;
}

- (id)_topics
{
  clientContextByTopic = [(IDSDXPCServerMessaging *)self clientContextByTopic];
  allKeys = [clientContextByTopic allKeys];
  __imSetFromArray = [allKeys __imSetFromArray];

  return __imSetFromArray;
}

- (void)_recalculateTopics
{
  clientContextByTopic = [(IDSDXPCServerMessaging *)self clientContextByTopic];
  v4 = [clientContextByTopic count];

  pushHandler = [(IDSDXPCServerMessaging *)self pushHandler];
  if (v4)
  {
    clientContextByTopic2 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
    allKeys = [clientContextByTopic2 allKeys];
    __imSetFromArray = [allKeys __imSetFromArray];
    _commands = [(IDSDXPCServerMessaging *)self _commands];
    queue = [(IDSDXPCServerMessaging *)self queue];
    [pushHandler addListener:self topics:__imSetFromArray commands:_commands queue:queue];
  }

  else
  {
    [pushHandler removeListener:self];
  }
}

- (void)_handlePendingFetchBlocksForIdentifier:(id)identifier topic:(id)topic
{
  identifierCopy = identifier;
  topicCopy = topic;
  pendingFetchMessagesWaiting = [(IDSDXPCServerMessaging *)self pendingFetchMessagesWaiting];
  v9 = [pendingFetchMessagesWaiting objectForKeyedSubscript:topicCopy];

  if ([v9 count])
  {
    v10 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = topicCopy;
      v25 = 2112;
      v26 = identifierCopy;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling pending fetch blocks { topic: %@, identifier: %@, blocks: %@ }", buf, 0x20u);
    }

    if (identifierCopy)
    {
      v11 = [v9 objectForKeyedSubscript:identifierCopy];
      v12 = v11;
      if (v11)
      {
        (*(v11 + 16))(v11);
      }
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v19;
        do
        {
          v16 = 0;
          do
          {
            if (*v19 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [v12 objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * v16), v18}];
            v17[2]();

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v14);
      }
    }
  }
}

- (void)setupServerMessagingClient:(id)client withUUID:(id)d forTopic:(id)topic commands:(id)commands
{
  clientCopy = client;
  dCopy = d;
  topicCopy = topic;
  commandsCopy = commands;
  if ([(IDSDXPCServerMessaging *)self _entitledForTopic:topicCopy])
  {
    if (clientCopy)
    {
      remoteObjectProxy = [clientCopy remoteObjectProxy];
      v15 = +[IDSFoundationLog IDSServerMessaging];
      v16 = v15;
      if (remoteObjectProxy)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 134218498;
          selfCopy3 = self;
          v36 = 2112;
          v37 = dCopy;
          v38 = 2112;
          v39 = topicCopy;
          _os_log_impl(&_mh_execute_header, &v16->super, OS_LOG_TYPE_DEFAULT, "Adding server messaging client {self: %p, uuid: %@, topic: %@}", &v34, 0x20u);
        }

        clientContextByTopic = [(IDSDXPCServerMessaging *)self clientContextByTopic];

        if (!clientContextByTopic)
        {
          v18 = objc_alloc_init(NSMutableDictionary);
          [(IDSDXPCServerMessaging *)self setClientContextByTopic:v18];
        }

        clientContextByTopic2 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
        v20 = [clientContextByTopic2 objectForKeyedSubscript:topicCopy];

        if (!v20)
        {
          v21 = objc_alloc_init(NSMutableDictionary);
          clientContextByTopic3 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
          [clientContextByTopic3 setObject:v21 forKeyedSubscript:topicCopy];
        }

        v16 = objc_alloc_init(IDSXPCServerMessagingClientContext);
        [(IDSXPCServerMessagingClientContext *)v16 setClient:remoteObjectProxy];
        [(IDSXPCServerMessagingClientContext *)v16 setCommands:commandsCopy];
        clientContextByTopic4 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
        v24 = [clientContextByTopic4 objectForKeyedSubscript:topicCopy];
        [v24 setObject:v16 forKeyedSubscript:dCopy];

        [(IDSDXPCServerMessaging *)self _recalculateTopics];
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v34 = 134218498;
        selfCopy3 = self;
        v36 = 2112;
        v37 = dCopy;
        v38 = 2112;
        v39 = topicCopy;
        _os_log_error_impl(&_mh_execute_header, &v16->super, OS_LOG_TYPE_ERROR, "Error creating proxy for server messaging client {self: %p, uuid: %@, topic: %@}", &v34, 0x20u);
      }
    }

    else
    {
      v25 = +[IDSFoundationLog IDSServerMessaging];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 134218498;
        selfCopy3 = self;
        v36 = 2112;
        v37 = dCopy;
        v38 = 2112;
        v39 = topicCopy;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Removing server messaging client {self: %p, uuid: %@, topic: %@}", &v34, 0x20u);
      }

      clientContextByTopic5 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
      v27 = [clientContextByTopic5 objectForKeyedSubscript:topicCopy];
      [v27 setObject:0 forKeyedSubscript:dCopy];

      clientContextByTopic6 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
      v29 = [clientContextByTopic6 objectForKeyedSubscript:topicCopy];
      v30 = [v29 count];

      if (!v30)
      {
        clientContextByTopic7 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
        [clientContextByTopic7 setObject:0 forKeyedSubscript:topicCopy];
      }

      clientContextByTopic8 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
      v33 = [clientContextByTopic8 count];

      if (!v33)
      {
        [(IDSDXPCServerMessaging *)self setClientContextByTopic:0];
      }

      [(IDSDXPCServerMessaging *)self _recalculateTopics];
    }
  }
}

- (void)sendMessageData:(id)data onTopic:(id)topic withOptions:(id)options identifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  topicCopy = topic;
  optionsCopy = options;
  identifierCopy = identifier;
  completionCopy = completion;
  LOBYTE(completion) = [(IDSDXPCServerMessaging *)self _entitledForTopic:topicCopy];
  v17 = +[IDSFoundationLog IDSServerMessaging];
  v18 = v17;
  if (completion)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v53 = identifierCopy;
      v54 = 2112;
      v55 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "daemon requested sendMessageData { guid: %@, options: %@ }", buf, 0x16u);
    }

    v19 = objc_alloc_init(IDSServerMessagingMessage);
    v45 = dataCopy;
    [v19 setMessageData:dataCopy];
    timeout = [optionsCopy timeout];

    if (timeout)
    {
      timeout2 = [optionsCopy timeout];
      [timeout2 doubleValue];
      v22 = [NSDate dateWithTimeIntervalSinceNow:?];

      [v19 setExpirationDate:v22];
    }

    [v19 setMessageID:identifierCopy];
    [v19 setTopic:topicCopy];
    command = [optionsCopy command];
    [v19 setUserSpecifiedCommand:command];

    pushHandler = [(IDSDXPCServerMessaging *)self pushHandler];
    pushToken = [pushHandler pushToken];
    [v19 setPushToken:pushToken];

    additionalTopLevelFields = [optionsCopy additionalTopLevelFields];
    [v19 setUserDefinedTopLevelFields:additionalTopLevelFields];

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10057CB00;
    v46[3] = &unk_100BE08A0;
    v51 = completionCopy;
    v27 = optionsCopy;
    v47 = v27;
    selfCopy = self;
    v28 = topicCopy;
    v49 = v28;
    v29 = identifierCopy;
    v50 = v29;
    [v19 setCompletionBlock:v46];
    v30 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v53 = v19;
      v54 = 2112;
      v55 = v29;
      v56 = 2112;
      v57 = v28;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Sending server message { guid: %@, topic: %@, message: %@ } ", buf, 0x20u);
    }

    messageDelivery = [(IDSDXPCServerMessaging *)self messageDelivery];
    [messageDelivery sendMessage:v19];

    cancelOnClientCrash = [v27 cancelOnClientCrash];
    bOOLValue = [cancelOnClientCrash BOOLValue];

    if (bOOLValue)
    {
      messagesToCancelOnDeallocByTopic = [(IDSDXPCServerMessaging *)self messagesToCancelOnDeallocByTopic];

      if (!messagesToCancelOnDeallocByTopic)
      {
        v35 = objc_alloc_init(NSMutableDictionary);
        [(IDSDXPCServerMessaging *)self setMessagesToCancelOnDeallocByTopic:v35];
      }

      messagesToCancelOnDeallocByTopic2 = [(IDSDXPCServerMessaging *)self messagesToCancelOnDeallocByTopic];
      v37 = [messagesToCancelOnDeallocByTopic2 objectForKeyedSubscript:v28];

      if (!v37)
      {
        v38 = objc_alloc_init(NSMutableSet);
        messagesToCancelOnDeallocByTopic3 = [(IDSDXPCServerMessaging *)self messagesToCancelOnDeallocByTopic];
        [messagesToCancelOnDeallocByTopic3 setObject:v38 forKeyedSubscript:v28];
      }

      messagesToCancelOnDeallocByTopic4 = [(IDSDXPCServerMessaging *)self messagesToCancelOnDeallocByTopic];
      v41 = [messagesToCancelOnDeallocByTopic4 objectForKeyedSubscript:v28];
      [v41 addObject:v29];
    }

    dataCopy = v45;
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100929814();
    }

    v42 = IDSServerMessagingErrorDomain;
    v58 = NSUnderlyingErrorKey;
    v43 = [IDSXPCConnection errorForMissingEntitlement:kIDSServerMessagingEntitlement];
    v59 = v43;
    v44 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v19 = [NSError errorWithDomain:v42 code:1 userInfo:v44];

    (*(completionCopy + 2))(completionCopy, 0, v19);
  }
}

- (void)cancelMessageWithIdentifier:(id)identifier onTopic:(id)topic completion:(id)completion
{
  identifierCopy = identifier;
  topicCopy = topic;
  completionCopy = completion;
  selfCopy = self;
  v11 = [(IDSDXPCServerMessaging *)self _entitledForTopic:topicCopy];
  v12 = +[IDSFoundationLog IDSServerMessaging];
  v13 = v12;
  if (v11)
  {
    v33 = completionCopy;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v40 = identifierCopy;
      v41 = 2112;
      v42 = topicCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "daemon requested cancelMessageWithIdentifier { identifier: %@, topic: %@ }", buf, 0x16u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    messageDelivery = [(IDSDXPCServerMessaging *)self messageDelivery];
    queuedMessages = [messageDelivery queuedMessages];
    _copyForEnumerating = [queuedMessages _copyForEnumerating];

    v17 = [_copyForEnumerating countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(_copyForEnumerating);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v21;
            topic = [v22 topic];
            v24 = [topic isEqualToString:topicCopy];

            if (v24)
            {
              messageID = [v22 messageID];
              v26 = [messageID isEqualToString:identifierCopy];

              if (v26)
              {
                v27 = +[IDSFoundationLog IDSServerMessaging];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v40 = v22;
                  v41 = 2112;
                  v42 = identifierCopy;
                  v43 = 2112;
                  v44 = topicCopy;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Cancelling server message { guid: %@, topic: %@, message: %@ } ", buf, 0x20u);
                }

                messageDelivery2 = [(IDSDXPCServerMessaging *)selfCopy messageDelivery];
                [messageDelivery2 cancelMessage:v22];
              }
            }
          }
        }

        v18 = [_copyForEnumerating countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v18);
    }

    completionCopy = v33;
    if (v33)
    {
      v33[2](v33, 1, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1009298E4();
    }

    v29 = IDSServerMessagingErrorDomain;
    v46 = NSUnderlyingErrorKey;
    v30 = [IDSXPCConnection errorForMissingEntitlement:kIDSServerMessagingEntitlement];
    v47 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v32 = [NSError errorWithDomain:v29 code:1 userInfo:v31];

    completionCopy[2](completionCopy, 0, v32);
  }
}

- (void)sendCertifiedDeliveryReceipt:(id)receipt
{
  receiptCopy = receipt;
  if (!receiptCopy)
  {
    v5 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10092994C(v5);
    }
  }

  service = [receiptCopy service];
  if ([(IDSDXPCServerMessaging *)self _entitledForTopic:service])
  {
    v7 = [[IDSCertifiedDeliveryReceiptMessage alloc] initWithCertifiedDeliveryContext:receiptCopy];
    service2 = [receiptCopy service];
    [v7 setTopic:service2];

    v9 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      originalGUID = [receiptCopy originalGUID];
      v12 = 138412802;
      v13 = service;
      v14 = 2112;
      v15 = originalGUID;
      v16 = 2112;
      v17 = receiptCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending certified delivery receipt to server { topic: %@, guid: %@, context: %@ }", &v12, 0x20u);
    }

    messageDelivery = [(IDSDXPCServerMessaging *)self messageDelivery];
    [messageDelivery sendMessage:v7];
  }

  else
  {
    v7 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100929990();
    }
  }
}

- (void)sendServerStorageFetchForTopic:(id)topic completion:(id)completion
{
  topicCopy = topic;
  completionCopy = completion;
  if ([(IDSDXPCServerMessaging *)self _entitledForTopic:topicCopy])
  {
    v8 = +[NSUUID UUID];
    uUIDString = [v8 UUIDString];

    if (completionCopy)
    {
      pendingFetchMessagesWaiting = [(IDSDXPCServerMessaging *)self pendingFetchMessagesWaiting];

      if (!pendingFetchMessagesWaiting)
      {
        v11 = objc_alloc_init(NSMutableDictionary);
        [(IDSDXPCServerMessaging *)self setPendingFetchMessagesWaiting:v11];
      }

      pendingFetchMessagesWaiting2 = [(IDSDXPCServerMessaging *)self pendingFetchMessagesWaiting];
      v13 = [pendingFetchMessagesWaiting2 objectForKeyedSubscript:topicCopy];

      if (!v13)
      {
        v14 = objc_alloc_init(NSMutableDictionary);
        pendingFetchMessagesWaiting3 = [(IDSDXPCServerMessaging *)self pendingFetchMessagesWaiting];
        [pendingFetchMessagesWaiting3 setObject:v14 forKeyedSubscript:topicCopy];
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10057D728;
      v26[3] = &unk_100BD7270;
      v27 = completionCopy;
      v16 = objc_retainBlock(v26);
      pendingFetchMessagesWaiting4 = [(IDSDXPCServerMessaging *)self pendingFetchMessagesWaiting];
      v18 = [pendingFetchMessagesWaiting4 objectForKeyedSubscript:topicCopy];
      [v18 setObject:v16 forKeyedSubscript:uUIDString];
    }

    v19 = objc_alloc_init(IDSPendingOfflineMessageResponse);
    [v19 setTopic:topicCopy];
    [v19 setMessageIdentifier:uUIDString];
    v20 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = topicCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Client triggered sending pending offline to server in IDSServerMessaging { topic: %@ }", buf, 0xCu);
    }

    messageDelivery = [(IDSDXPCServerMessaging *)self messageDelivery];
    [messageDelivery sendMessage:v19];
  }

  else
  {
    v22 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1009299F8();
    }

    v23 = IDSServerMessagingErrorDomain;
    v30 = NSUnderlyingErrorKey;
    v24 = [IDSXPCConnection errorForMissingEntitlement:kIDSServerMessagingEntitlement];
    v31 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    uUIDString = [NSError errorWithDomain:v23 code:1 userInfo:v25];

    (*(completionCopy + 2))(completionCopy, 0, uUIDString);
  }
}

- (void)handler:(id)handler didReceiveMessage:(id)message forTopic:(id)topic fromID:(id)d messageContext:(id)context
{
  messageCopy = message;
  topicCopy = topic;
  dCopy = d;
  v12 = [messageCopy objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [messageCopy objectForKey:@"U"];
    v14 = [NSData _IDSDataFromBase64String:v13];
LABEL_5:
    v15 = v14;
    v87 = JWUUIDPushObjectToString();

    goto LABEL_7;
  }

  v13 = [messageCopy objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [messageCopy objectForKey:@"U"];
    goto LABEL_5;
  }

  v87 = JWUUIDPushObjectToString();
LABEL_7:

  v16 = +[IDSFoundationLog IDSServerMessaging];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v96 = v87;
    v97 = 2112;
    v98 = topicCopy;
    v99 = 2112;
    v100 = dCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received incoming server message over push in IDSDXPCServerMessaging { guid: %@, topic: %@, fromID: %@ }", buf, 0x20u);
  }

  v17 = IDSPayloadKey;
  v18 = [messageCopy objectForKey:IDSPayloadKey];
  objc_opt_class();
  v77 = dCopy;
  v81 = v17;
  if (objc_opt_isKindOfClass())
  {
    v19 = [messageCopy objectForKey:v17];
    v20 = [NSData _IDSDataFromBase64String:v19];
LABEL_13:
    v84 = v20;
    goto LABEL_15;
  }

  v19 = [messageCopy objectForKey:v17];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [messageCopy objectForKey:v17];
    goto LABEL_13;
  }

  v84 = 0;
LABEL_15:
  v21 = messageCopy;

  v22 = objc_opt_class();
  v23 = sub_10001B74C(v22, messageCopy, @"H");
  v24 = objc_opt_class();
  v88 = sub_10001B74C(v24, messageCopy, @"c");
  unsignedIntValue = [v23 unsignedIntValue];
  v76 = v23;
  unsignedIntValue2 = [v23 unsignedIntValue];
  v26 = IDSTokenKey;
  v27 = [messageCopy objectForKey:IDSTokenKey];
  objc_opt_class();
  v86 = topicCopy;
  if (objc_opt_isKindOfClass())
  {
    v28 = [messageCopy objectForKey:v26];
    v29 = [NSData _IDSDataFromBase64String:v28];
LABEL_19:
    v78 = v29;
    goto LABEL_21;
  }

  v28 = [messageCopy objectForKey:v26];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [messageCopy objectForKey:v26];
    goto LABEL_19;
  }

  v78 = 0;
LABEL_21:

  v30 = objc_opt_class();
  v74 = IDSCertifiedDeliveryVersionKey;
  v31 = sub_10001B74C(v30, messageCopy, IDSCertifiedDeliveryVersionKey);
  integerValue = [v31 integerValue];

  v32 = IDSCertifiedDeliveryRTSKey;
  v33 = [messageCopy objectForKey:IDSCertifiedDeliveryRTSKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = [messageCopy objectForKey:v32];
    v35 = [NSData _IDSDataFromBase64String:v34];
LABEL_25:
    v79 = v35;
    goto LABEL_27;
  }

  v34 = [messageCopy objectForKey:v32];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = [messageCopy objectForKey:v32];
    goto LABEL_25;
  }

  v79 = 0;
LABEL_27:

  v36 = IDSStorageFetchIdentifierKey;
  v37 = [messageCopy objectForKey:IDSStorageFetchIdentifierKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = [messageCopy objectForKey:v36];
    v39 = [NSData _IDSDataFromBase64String:v38];
    v83 = JWUUIDPushObjectToString();
  }

  else
  {
    v38 = [messageCopy objectForKey:v36];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [messageCopy objectForKey:v36];
      v83 = JWUUIDPushObjectToString();
    }

    else
    {
      v83 = JWUUIDPushObjectToString();
    }
  }

  selfCopy3 = self;
  v42 = v87;

  v43 = [messageCopy mutableCopy];
  v94[0] = v81;
  v94[1] = @"H";
  v94[2] = @"c";
  v94[3] = v26;
  v94[4] = v74;
  v94[5] = v32;
  v44 = [NSArray arrayWithObjects:v94 count:6];
  [v43 removeObjectsForKeys:v44];

  if (v79)
  {
    v45 = v86;
    v46 = [[IDSCertifiedDeliveryContext alloc] initWithGUID:v87 service:v86 certifiedDeliveryVersion:integerValue certifiedDeliveryRTS:v79 senderToken:v78];
  }

  else
  {
    v47 = +[IDSFoundationLog IDSServerMessaging];
    v45 = v86;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_100929A60();
    }

    v46 = 0;
  }

  v73 = v46;
  v75 = v43;
  v82 = [[IDSServerMessagingIncomingContext alloc] initWithFromServerStorage:unsignedIntValue & 1 certifiedDeliveryContext:v46 command:v88 identifier:v87 additionalTopLevelFields:v43];
  clientContextByTopic = [(IDSDXPCServerMessaging *)self clientContextByTopic];
  v49 = [clientContextByTopic objectForKeyedSubscript:v45];
  v50 = [v49 count];

  if (v50)
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    clientContextByTopic2 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
    v52 = [clientContextByTopic2 objectForKeyedSubscript:v45];

    v53 = [v52 countByEnumeratingWithState:&v89 objects:v93 count:16];
    if (!v53)
    {
      v70 = v77;
      goto LABEL_59;
    }

    v54 = v53;
    v71 = messageCopy;
    v55 = *v90;
    while (1)
    {
      for (i = 0; i != v54; i = i + 1)
      {
        if (*v90 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v89 + 1) + 8 * i);
        v58 = +[IDSFoundationLog IDSServerMessaging];
        v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
        if ((unsignedIntValue2 & 2) != 0)
        {
          if (!v59)
          {
            goto LABEL_49;
          }

          *buf = 138412546;
          v96 = v87;
          v97 = 2112;
          v98 = v57;
          v60 = v58;
          v61 = "Giving message to client - and last storage indication { guid: %@, clientUUID: %@ }";
        }

        else
        {
          if (!v59)
          {
            goto LABEL_49;
          }

          *buf = 138412546;
          v96 = v87;
          v97 = 2112;
          v98 = v57;
          v60 = v58;
          v61 = "Giving message to client { guid: %@, clientUUID: %@ }";
        }

        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, v61, buf, 0x16u);
LABEL_49:

        if ([v88 longValue] != 255)
        {
          clientContextByTopic3 = [(IDSDXPCServerMessaging *)selfCopy3 clientContextByTopic];
          v63 = [clientContextByTopic3 objectForKeyedSubscript:v45];
          v64 = [v63 objectForKeyedSubscript:v57];
          client = [v64 client];
          [client handleReceivedIncomingMessageData:v84 identifier:v87 context:v82];

          selfCopy3 = self;
          v45 = v86;
        }

        if ((unsignedIntValue2 & 2) != 0)
        {
          [(IDSDXPCServerMessaging *)selfCopy3 _handlePendingFetchBlocksForIdentifier:v83 topic:v45];
          clientContextByTopic4 = [(IDSDXPCServerMessaging *)selfCopy3 clientContextByTopic];
          v67 = [clientContextByTopic4 objectForKeyedSubscript:v45];
          v68 = [v67 objectForKeyedSubscript:v57];
          client2 = [v68 client];
          [client2 handleReceivedFinalStorageIndication];

          v45 = v86;
          selfCopy3 = self;
        }
      }

      v54 = [v52 countByEnumeratingWithState:&v89 objects:v93 count:16];
      if (!v54)
      {
        v21 = v71;
        v70 = v77;
        v42 = v87;
        goto LABEL_59;
      }
    }
  }

  v52 = +[IDSFoundationLog IDSServerMessaging];
  v70 = v77;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    sub_100929AD4();
  }

LABEL_59:
}

- (void)handler:(id)handler receivedOfflineMessagePendingForTopic:(id)topic messageContext:(id)context
{
  topicCopy = topic;
  v7 = objc_alloc_init(IDSPendingOfflineMessageResponse);
  [v7 setTopic:topicCopy];
  v8 = +[IDSFoundationLog IDSServerMessaging];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = topicCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending pending offline message response to server in IDSServerMessaging { topic: %@ }", &v10, 0xCu);
  }

  messageDelivery = [(IDSDXPCServerMessaging *)self messageDelivery];
  [messageDelivery sendMessage:v7];
}

- (void)handler:(id)handler receivedNoStorageResponseForTopic:(id)topic identifier:(id)identifier messageContext:(id)context
{
  topicCopy = topic;
  identifierCopy = identifier;
  clientContextByTopic = [(IDSDXPCServerMessaging *)self clientContextByTopic];
  v11 = [clientContextByTopic objectForKeyedSubscript:topicCopy];
  v12 = [v11 count];

  if (v12)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    clientContextByTopic2 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
    v14 = [clientContextByTopic2 objectForKeyedSubscript:topicCopy];

    obj = v14;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v25 = identifierCopy;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = +[IDSFoundationLog IDSServerMessaging];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v32 = topicCopy;
            v33 = 2112;
            v34 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Giving no storage response indication to client { topic: %@, clientUUID: %@ }", buf, 0x16u);
          }

          clientContextByTopic3 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
          v22 = [clientContextByTopic3 objectForKeyedSubscript:topicCopy];
          v23 = [v22 objectForKeyedSubscript:v19];
          client = [v23 client];
          [client handleReceivedFinalStorageIndication];
        }

        v16 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v16);
      identifierCopy = v25;
    }
  }

  else
  {
    obj = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_100929BB4();
    }
  }

  [(IDSDXPCServerMessaging *)self _handlePendingFetchBlocksForIdentifier:identifierCopy topic:topicCopy];
}

@end