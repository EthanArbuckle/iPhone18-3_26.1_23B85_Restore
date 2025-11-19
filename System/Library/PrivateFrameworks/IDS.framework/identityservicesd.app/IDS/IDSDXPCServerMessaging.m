@interface IDSDXPCServerMessaging
- (BOOL)_entitledForTopic:(id)a3;
- (IDSDXPCServerMessaging)initWithQueue:(id)a3 connection:(id)a4 messageDelivery:(id)a5 pushHandler:(id)a6;
- (id)_commands;
- (id)_topics;
- (void)_handlePendingFetchBlocksForIdentifier:(id)a3 topic:(id)a4;
- (void)_recalculateTopics;
- (void)cancelMessageWithIdentifier:(id)a3 onTopic:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7;
- (void)handler:(id)a3 receivedNoStorageResponseForTopic:(id)a4 identifier:(id)a5 messageContext:(id)a6;
- (void)handler:(id)a3 receivedOfflineMessagePendingForTopic:(id)a4 messageContext:(id)a5;
- (void)sendCertifiedDeliveryReceipt:(id)a3;
- (void)sendMessageData:(id)a3 onTopic:(id)a4 withOptions:(id)a5 identifier:(id)a6 completion:(id)a7;
- (void)sendServerStorageFetchForTopic:(id)a3 completion:(id)a4;
- (void)setupServerMessagingClient:(id)a3 withUUID:(id)a4 forTopic:(id)a5 commands:(id)a6;
@end

@implementation IDSDXPCServerMessaging

- (IDSDXPCServerMessaging)initWithQueue:(id)a3 connection:(id)a4 messageDelivery:(id)a5 pushHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  obj = a5;
  v13 = a5;
  v14 = a6;
  v15 = [(IDSDXPCServerMessaging *)v12 valueForEntitlement:kIDSServerMessagingEntitlement];
  v16 = [(IDSDXPCServerMessaging *)v12 valueForEntitlement:kIDSTestToolEntitlement];
  if (!v15)
  {
    v18 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1009296F0();
    }

    goto LABEL_30;
  }

  v35 = a6;
  objc_opt_class();
  v17 = (objc_opt_isKindOfClass() & 1) != 0 && [v15 count] != 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [v15 BOOLValue] && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v19 = [(IDSDXPCServerMessaging *)v16 BOOLValue];
  }

  else
  {
    v19 = 0;
  }

  if (((v17 | v19) & 1) == 0)
  {
    v18 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v44 = v12;
      v45 = 2112;
      v46 = v15;
      v47 = 2112;
      v48 = v16;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid server messaging entitlement -- failing creation of IDSDXPCServerMessaging collaborator {connection: %@, serverMessagingEntitlementValue: %@, testToolEntitlementValue: %@}", buf, 0x20u);
    }

LABEL_30:

    v28 = 0;
    goto LABEL_37;
  }

  if (v17)
  {
    v32 = self;
    v33 = v14;
    v34 = v13;
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

            v28 = 0;
            v14 = v33;
            v13 = v34;
            self = v32;
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

    v13 = v34;
    v14 = v33;
    self = v32;
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
      v48 = v12;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Created XPCServerMessaging {self: %p, serverMessagingEntitlementValue: %@, connection: %@}", buf, 0x20u);
    }

    objc_storeStrong(&v25->_queue, a3);
    if (v19)
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
    objc_storeStrong(&v25->_pushHandler, v35);
  }

  self = v25;
  v28 = self;
LABEL_37:

  return v28;
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
        v5 = [(IDSDXPCServerMessaging *)self messagesToCancelOnDeallocByTopic];
        v6 = [v5 objectForKeyedSubscript:v4];

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
                v27 = self;
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

- (BOOL)_entitledForTopic:(id)a3
{
  v4 = a3;
  if (-[IDSDXPCServerMessaging entitledForAllTopics](self, "entitledForAllTopics") || (-[IDSDXPCServerMessaging serverMessagingEntitlements](self, "serverMessagingEntitlements"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:v4], v5, (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v8 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100929758(self, v4, v8);
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
        v6 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
        v7 = [v6 objectForKeyedSubscript:v5];

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
              v13 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
              v14 = [v13 objectForKeyedSubscript:v5];
              v15 = [v14 objectForKeyedSubscript:v12];

              v16 = [v15 commands];

              if (v16)
              {
                v17 = [v15 commands];
                [v3 unionSet:v17];
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
  v2 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
  v3 = [v2 allKeys];
  v4 = [v3 __imSetFromArray];

  return v4;
}

- (void)_recalculateTopics
{
  v3 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
  v4 = [v3 count];

  v10 = [(IDSDXPCServerMessaging *)self pushHandler];
  if (v4)
  {
    v5 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
    v6 = [v5 allKeys];
    v7 = [v6 __imSetFromArray];
    v8 = [(IDSDXPCServerMessaging *)self _commands];
    v9 = [(IDSDXPCServerMessaging *)self queue];
    [v10 addListener:self topics:v7 commands:v8 queue:v9];
  }

  else
  {
    [v10 removeListener:self];
  }
}

- (void)_handlePendingFetchBlocksForIdentifier:(id)a3 topic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSDXPCServerMessaging *)self pendingFetchMessagesWaiting];
  v9 = [v8 objectForKeyedSubscript:v7];

  if ([v9 count])
  {
    v10 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = v7;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling pending fetch blocks { topic: %@, identifier: %@, blocks: %@ }", buf, 0x20u);
    }

    if (v6)
    {
      v11 = [v9 objectForKeyedSubscript:v6];
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

- (void)setupServerMessagingClient:(id)a3 withUUID:(id)a4 forTopic:(id)a5 commands:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(IDSDXPCServerMessaging *)self _entitledForTopic:v12])
  {
    if (v10)
    {
      v14 = [v10 remoteObjectProxy];
      v15 = +[IDSFoundationLog IDSServerMessaging];
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 134218498;
          v35 = self;
          v36 = 2112;
          v37 = v11;
          v38 = 2112;
          v39 = v12;
          _os_log_impl(&_mh_execute_header, &v16->super, OS_LOG_TYPE_DEFAULT, "Adding server messaging client {self: %p, uuid: %@, topic: %@}", &v34, 0x20u);
        }

        v17 = [(IDSDXPCServerMessaging *)self clientContextByTopic];

        if (!v17)
        {
          v18 = objc_alloc_init(NSMutableDictionary);
          [(IDSDXPCServerMessaging *)self setClientContextByTopic:v18];
        }

        v19 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
        v20 = [v19 objectForKeyedSubscript:v12];

        if (!v20)
        {
          v21 = objc_alloc_init(NSMutableDictionary);
          v22 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
          [v22 setObject:v21 forKeyedSubscript:v12];
        }

        v16 = objc_alloc_init(IDSXPCServerMessagingClientContext);
        [(IDSXPCServerMessagingClientContext *)v16 setClient:v14];
        [(IDSXPCServerMessagingClientContext *)v16 setCommands:v13];
        v23 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
        v24 = [v23 objectForKeyedSubscript:v12];
        [v24 setObject:v16 forKeyedSubscript:v11];

        [(IDSDXPCServerMessaging *)self _recalculateTopics];
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v34 = 134218498;
        v35 = self;
        v36 = 2112;
        v37 = v11;
        v38 = 2112;
        v39 = v12;
        _os_log_error_impl(&_mh_execute_header, &v16->super, OS_LOG_TYPE_ERROR, "Error creating proxy for server messaging client {self: %p, uuid: %@, topic: %@}", &v34, 0x20u);
      }
    }

    else
    {
      v25 = +[IDSFoundationLog IDSServerMessaging];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 134218498;
        v35 = self;
        v36 = 2112;
        v37 = v11;
        v38 = 2112;
        v39 = v12;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Removing server messaging client {self: %p, uuid: %@, topic: %@}", &v34, 0x20u);
      }

      v26 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
      v27 = [v26 objectForKeyedSubscript:v12];
      [v27 setObject:0 forKeyedSubscript:v11];

      v28 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
      v29 = [v28 objectForKeyedSubscript:v12];
      v30 = [v29 count];

      if (!v30)
      {
        v31 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
        [v31 setObject:0 forKeyedSubscript:v12];
      }

      v32 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
      v33 = [v32 count];

      if (!v33)
      {
        [(IDSDXPCServerMessaging *)self setClientContextByTopic:0];
      }

      [(IDSDXPCServerMessaging *)self _recalculateTopics];
    }
  }
}

- (void)sendMessageData:(id)a3 onTopic:(id)a4 withOptions:(id)a5 identifier:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  LOBYTE(a7) = [(IDSDXPCServerMessaging *)self _entitledForTopic:v13];
  v17 = +[IDSFoundationLog IDSServerMessaging];
  v18 = v17;
  if (a7)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v53 = v15;
      v54 = 2112;
      v55 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "daemon requested sendMessageData { guid: %@, options: %@ }", buf, 0x16u);
    }

    v19 = objc_alloc_init(IDSServerMessagingMessage);
    v45 = v12;
    [v19 setMessageData:v12];
    v20 = [v14 timeout];

    if (v20)
    {
      v21 = [v14 timeout];
      [v21 doubleValue];
      v22 = [NSDate dateWithTimeIntervalSinceNow:?];

      [v19 setExpirationDate:v22];
    }

    [v19 setMessageID:v15];
    [v19 setTopic:v13];
    v23 = [v14 command];
    [v19 setUserSpecifiedCommand:v23];

    v24 = [(IDSDXPCServerMessaging *)self pushHandler];
    v25 = [v24 pushToken];
    [v19 setPushToken:v25];

    v26 = [v14 additionalTopLevelFields];
    [v19 setUserDefinedTopLevelFields:v26];

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10057CB00;
    v46[3] = &unk_100BE08A0;
    v51 = v16;
    v27 = v14;
    v47 = v27;
    v48 = self;
    v28 = v13;
    v49 = v28;
    v29 = v15;
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

    v31 = [(IDSDXPCServerMessaging *)self messageDelivery];
    [v31 sendMessage:v19];

    v32 = [v27 cancelOnClientCrash];
    v33 = [v32 BOOLValue];

    if (v33)
    {
      v34 = [(IDSDXPCServerMessaging *)self messagesToCancelOnDeallocByTopic];

      if (!v34)
      {
        v35 = objc_alloc_init(NSMutableDictionary);
        [(IDSDXPCServerMessaging *)self setMessagesToCancelOnDeallocByTopic:v35];
      }

      v36 = [(IDSDXPCServerMessaging *)self messagesToCancelOnDeallocByTopic];
      v37 = [v36 objectForKeyedSubscript:v28];

      if (!v37)
      {
        v38 = objc_alloc_init(NSMutableSet);
        v39 = [(IDSDXPCServerMessaging *)self messagesToCancelOnDeallocByTopic];
        [v39 setObject:v38 forKeyedSubscript:v28];
      }

      v40 = [(IDSDXPCServerMessaging *)self messagesToCancelOnDeallocByTopic];
      v41 = [v40 objectForKeyedSubscript:v28];
      [v41 addObject:v29];
    }

    v12 = v45;
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

    (*(v16 + 2))(v16, 0, v19);
  }
}

- (void)cancelMessageWithIdentifier:(id)a3 onTopic:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v34 = self;
  v11 = [(IDSDXPCServerMessaging *)self _entitledForTopic:v9];
  v12 = +[IDSFoundationLog IDSServerMessaging];
  v13 = v12;
  if (v11)
  {
    v33 = v10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v40 = v8;
      v41 = 2112;
      v42 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "daemon requested cancelMessageWithIdentifier { identifier: %@, topic: %@ }", buf, 0x16u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = [(IDSDXPCServerMessaging *)self messageDelivery];
    v15 = [v14 queuedMessages];
    v16 = [v15 _copyForEnumerating];

    v17 = [v16 countByEnumeratingWithState:&v35 objects:v45 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v21;
            v23 = [v22 topic];
            v24 = [v23 isEqualToString:v9];

            if (v24)
            {
              v25 = [v22 messageID];
              v26 = [v25 isEqualToString:v8];

              if (v26)
              {
                v27 = +[IDSFoundationLog IDSServerMessaging];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v40 = v22;
                  v41 = 2112;
                  v42 = v8;
                  v43 = 2112;
                  v44 = v9;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Cancelling server message { guid: %@, topic: %@, message: %@ } ", buf, 0x20u);
                }

                v28 = [(IDSDXPCServerMessaging *)v34 messageDelivery];
                [v28 cancelMessage:v22];
              }
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v18);
    }

    v10 = v33;
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

    v10[2](v10, 0, v32);
  }
}

- (void)sendCertifiedDeliveryReceipt:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10092994C(v5);
    }
  }

  v6 = [v4 service];
  if ([(IDSDXPCServerMessaging *)self _entitledForTopic:v6])
  {
    v7 = [[IDSCertifiedDeliveryReceiptMessage alloc] initWithCertifiedDeliveryContext:v4];
    v8 = [v4 service];
    [v7 setTopic:v8];

    v9 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 originalGUID];
      v12 = 138412802;
      v13 = v6;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending certified delivery receipt to server { topic: %@, guid: %@, context: %@ }", &v12, 0x20u);
    }

    v11 = [(IDSDXPCServerMessaging *)self messageDelivery];
    [v11 sendMessage:v7];
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

- (void)sendServerStorageFetchForTopic:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IDSDXPCServerMessaging *)self _entitledForTopic:v6])
  {
    v8 = +[NSUUID UUID];
    v9 = [v8 UUIDString];

    if (v7)
    {
      v10 = [(IDSDXPCServerMessaging *)self pendingFetchMessagesWaiting];

      if (!v10)
      {
        v11 = objc_alloc_init(NSMutableDictionary);
        [(IDSDXPCServerMessaging *)self setPendingFetchMessagesWaiting:v11];
      }

      v12 = [(IDSDXPCServerMessaging *)self pendingFetchMessagesWaiting];
      v13 = [v12 objectForKeyedSubscript:v6];

      if (!v13)
      {
        v14 = objc_alloc_init(NSMutableDictionary);
        v15 = [(IDSDXPCServerMessaging *)self pendingFetchMessagesWaiting];
        [v15 setObject:v14 forKeyedSubscript:v6];
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10057D728;
      v26[3] = &unk_100BD7270;
      v27 = v7;
      v16 = objc_retainBlock(v26);
      v17 = [(IDSDXPCServerMessaging *)self pendingFetchMessagesWaiting];
      v18 = [v17 objectForKeyedSubscript:v6];
      [v18 setObject:v16 forKeyedSubscript:v9];
    }

    v19 = objc_alloc_init(IDSPendingOfflineMessageResponse);
    [v19 setTopic:v6];
    [v19 setMessageIdentifier:v9];
    v20 = +[IDSFoundationLog IDSServerMessaging];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Client triggered sending pending offline to server in IDSServerMessaging { topic: %@ }", buf, 0xCu);
    }

    v21 = [(IDSDXPCServerMessaging *)self messageDelivery];
    [v21 sendMessage:v19];
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
    v9 = [NSError errorWithDomain:v23 code:1 userInfo:v25];

    (*(v7 + 2))(v7, 0, v9);
  }
}

- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v9 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v9 objectForKey:@"U"];
    v14 = [NSData _IDSDataFromBase64String:v13];
LABEL_5:
    v15 = v14;
    v87 = JWUUIDPushObjectToString();

    goto LABEL_7;
  }

  v13 = [v9 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v9 objectForKey:@"U"];
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
    v98 = v10;
    v99 = 2112;
    v100 = v11;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received incoming server message over push in IDSDXPCServerMessaging { guid: %@, topic: %@, fromID: %@ }", buf, 0x20u);
  }

  v17 = IDSPayloadKey;
  v18 = [v9 objectForKey:IDSPayloadKey];
  objc_opt_class();
  v77 = v11;
  v81 = v17;
  if (objc_opt_isKindOfClass())
  {
    v19 = [v9 objectForKey:v17];
    v20 = [NSData _IDSDataFromBase64String:v19];
LABEL_13:
    v84 = v20;
    goto LABEL_15;
  }

  v19 = [v9 objectForKey:v17];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v9 objectForKey:v17];
    goto LABEL_13;
  }

  v84 = 0;
LABEL_15:
  v21 = v9;

  v22 = objc_opt_class();
  v23 = sub_10001B74C(v22, v9, @"H");
  v24 = objc_opt_class();
  v88 = sub_10001B74C(v24, v9, @"c");
  v80 = [v23 unsignedIntValue];
  v76 = v23;
  v25 = [v23 unsignedIntValue];
  v26 = IDSTokenKey;
  v27 = [v9 objectForKey:IDSTokenKey];
  objc_opt_class();
  v86 = v10;
  if (objc_opt_isKindOfClass())
  {
    v28 = [v9 objectForKey:v26];
    v29 = [NSData _IDSDataFromBase64String:v28];
LABEL_19:
    v78 = v29;
    goto LABEL_21;
  }

  v28 = [v9 objectForKey:v26];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [v9 objectForKey:v26];
    goto LABEL_19;
  }

  v78 = 0;
LABEL_21:

  v30 = objc_opt_class();
  v74 = IDSCertifiedDeliveryVersionKey;
  v31 = sub_10001B74C(v30, v9, IDSCertifiedDeliveryVersionKey);
  v72 = [v31 integerValue];

  v32 = IDSCertifiedDeliveryRTSKey;
  v33 = [v9 objectForKey:IDSCertifiedDeliveryRTSKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = [v9 objectForKey:v32];
    v35 = [NSData _IDSDataFromBase64String:v34];
LABEL_25:
    v79 = v35;
    goto LABEL_27;
  }

  v34 = [v9 objectForKey:v32];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = [v9 objectForKey:v32];
    goto LABEL_25;
  }

  v79 = 0;
LABEL_27:

  v36 = IDSStorageFetchIdentifierKey;
  v37 = [v9 objectForKey:IDSStorageFetchIdentifierKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = [v9 objectForKey:v36];
    v39 = [NSData _IDSDataFromBase64String:v38];
    v83 = JWUUIDPushObjectToString();
  }

  else
  {
    v38 = [v9 objectForKey:v36];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [v9 objectForKey:v36];
      v83 = JWUUIDPushObjectToString();
    }

    else
    {
      v83 = JWUUIDPushObjectToString();
    }
  }

  v41 = self;
  v42 = v87;

  v43 = [v9 mutableCopy];
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
    v46 = [[IDSCertifiedDeliveryContext alloc] initWithGUID:v87 service:v86 certifiedDeliveryVersion:v72 certifiedDeliveryRTS:v79 senderToken:v78];
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
  v82 = [[IDSServerMessagingIncomingContext alloc] initWithFromServerStorage:v80 & 1 certifiedDeliveryContext:v46 command:v88 identifier:v87 additionalTopLevelFields:v43];
  v48 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
  v49 = [v48 objectForKeyedSubscript:v45];
  v50 = [v49 count];

  if (v50)
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v51 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
    v52 = [v51 objectForKeyedSubscript:v45];

    v53 = [v52 countByEnumeratingWithState:&v89 objects:v93 count:16];
    if (!v53)
    {
      v70 = v77;
      goto LABEL_59;
    }

    v54 = v53;
    v71 = v9;
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
        if ((v25 & 2) != 0)
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
          v62 = [(IDSDXPCServerMessaging *)v41 clientContextByTopic];
          v63 = [v62 objectForKeyedSubscript:v45];
          v64 = [v63 objectForKeyedSubscript:v57];
          v65 = [v64 client];
          [v65 handleReceivedIncomingMessageData:v84 identifier:v87 context:v82];

          v41 = self;
          v45 = v86;
        }

        if ((v25 & 2) != 0)
        {
          [(IDSDXPCServerMessaging *)v41 _handlePendingFetchBlocksForIdentifier:v83 topic:v45];
          v66 = [(IDSDXPCServerMessaging *)v41 clientContextByTopic];
          v67 = [v66 objectForKeyedSubscript:v45];
          v68 = [v67 objectForKeyedSubscript:v57];
          v69 = [v68 client];
          [v69 handleReceivedFinalStorageIndication];

          v45 = v86;
          v41 = self;
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

- (void)handler:(id)a3 receivedOfflineMessagePendingForTopic:(id)a4 messageContext:(id)a5
{
  v6 = a4;
  v7 = objc_alloc_init(IDSPendingOfflineMessageResponse);
  [v7 setTopic:v6];
  v8 = +[IDSFoundationLog IDSServerMessaging];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending pending offline message response to server in IDSServerMessaging { topic: %@ }", &v10, 0xCu);
  }

  v9 = [(IDSDXPCServerMessaging *)self messageDelivery];
  [v9 sendMessage:v7];
}

- (void)handler:(id)a3 receivedNoStorageResponseForTopic:(id)a4 identifier:(id)a5 messageContext:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
  v11 = [v10 objectForKeyedSubscript:v8];
  v12 = [v11 count];

  if (v12)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
    v14 = [v13 objectForKeyedSubscript:v8];

    obj = v14;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v25 = v9;
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
            v32 = v8;
            v33 = 2112;
            v34 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Giving no storage response indication to client { topic: %@, clientUUID: %@ }", buf, 0x16u);
          }

          v21 = [(IDSDXPCServerMessaging *)self clientContextByTopic];
          v22 = [v21 objectForKeyedSubscript:v8];
          v23 = [v22 objectForKeyedSubscript:v19];
          v24 = [v23 client];
          [v24 handleReceivedFinalStorageIndication];
        }

        v16 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v16);
      v9 = v25;
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

  [(IDSDXPCServerMessaging *)self _handlePendingFetchBlocksForIdentifier:v9 topic:v8];
}

@end