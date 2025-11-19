@interface _IDSConnection
- (BOOL)_isAccountInValidRegistrationStateToAcceptMessages;
- (BOOL)_isDestinationSingleLocalAddress:(id)a3;
- (BOOL)_shouldAcceptIncomingType:(id)a3 forTopic:(id)a4 localURI:(id)a5 remoteURI:(id)a6 validateAliases:(BOOL)a7 guid:(id)a8;
- (BOOL)isActive;
- (BOOL)sendData:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendInvitation:(id)a3 toDestination:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendInvitationUpdate:(id)a3 toDestination:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendMessage:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendProtobuf:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendServerMessage:(id)a3 command:(id)a4;
- (IDSAccount)account;
- (_IDSConnection)initWithAccount:(id)a3 commands:(id)a4 indirectDelegateCallouts:(BOOL)a5 delegateContext:(id)a6;
- (id)_activeDevice;
- (id)_defaultPairedDevice;
- (id)_init;
- (id)_sendWithParameters:(id)a3 options:(id)a4 loggingType:(id)a5 loggingDataSize:(unint64_t)a6;
- (id)daemonListener;
- (void)_callDelegatesRespondingToSelector:(SEL)a3 withPreCallbacksBlock:(id)a4 callbackBlock:(id)a5 postCallbacksBlock:(id)a6 group:(id)a7;
- (void)_connect;
- (void)_handleLastCallForPendingIdentifier:(id)a3 callbackID:(id)a4;
- (void)_replaceSentinelInSendParameters:(id)a3 withCurrentActiveDevice:(id)a4;
- (void)_resendPendingSends;
- (void)_sendMissingMessageMetric:(id)a3;
- (void)_setTemporaryMessageContext:(id)a3;
- (void)accessoryDataReceived:(id)a3 withGUID:(id)a4 forTopic:(id)a5 toURI:(id)a6 fromURI:(id)a7 context:(id)a8;
- (void)accessoryReportMessageReceived:(id)a3 accessoryID:(id)a4 controllerID:(id)a5 withGUID:(id)a6 forTopic:(id)a7 toURI:(id)a8 fromURI:(id)a9 context:(id)a10;
- (void)account:(id)a3 connectedDevicesChanged:(id)a4;
- (void)account:(id)a3 devicesChanged:(id)a4;
- (void)account:(id)a3 isActiveChanged:(BOOL)a4;
- (void)account:(id)a3 nearbyDevicesChanged:(id)a4;
- (void)addDelegate:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)checkTransportLogWithReason:(int64_t)a3;
- (void)connection:(id)a3 incomingAckWithIdentifier:(id)a4 forTopic:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 hasBeenDeliveredWithContext:(id)a8 isAppAck:(BOOL)a9;
- (void)connection:(id)a3 incomingDataFromDirectConnection:(id)a4 withGUID:(id)a5 forTopic:(id)a6 toIdentifier:(id)a7 fromID:(id)a8 context:(id)a9;
- (void)connection:(id)a3 incomingGUIDAckFromDirectConnection:(id)a4;
- (void)connection:(id)a3 incomingMessageFromDirectConnection:(id)a4 withGUID:(id)a5 forTopic:(id)a6 toIdentifier:(id)a7 fromID:(id)a8 context:(id)a9;
- (void)connection:(id)a3 incomingProtobufFromDirectConnection:(id)a4 withGUID:(id)a5 forTopic:(id)a6 toIdentifier:(id)a7 fromID:(id)a8 context:(id)a9;
- (void)connection:(id)a3 messageSendFailed:(id)a4 responseCode:(int64_t)a5;
- (void)createDirectMessageConnectionIfNeeded;
- (void)daemonConnected;
- (void)dataReceived:(id)a3 withGUID:(id)a4 forTopic:(id)a5 toURI:(id)a6 fromURI:(id)a7 context:(id)a8;
- (void)dealloc;
- (void)didCancelMessageWithSuccess:(BOOL)a3 onAccount:(id)a4 error:(id)a5 identifier:(id)a6;
- (void)didFlushCacheForService:(id)a3 remoteURI:(id)a4 fromURI:(id)a5 guid:(id)a6;
- (void)didFlushCacheFromKTPeerUpdateForService:(id)a3 peerURI:(id)a4;
- (void)didSendOpportunisticDataWithIdentifier:(id)a3 onAccount:(id)a4 toIDs:(id)a5;
- (void)incomingInvitation:(id)a3 withGUID:(id)a4 forTopic:(id)a5 toURI:(id)a6 fromURI:(id)a7 context:(id)a8;
- (void)incomingInvitationUpdate:(id)a3 withGUID:(id)a4 forTopic:(id)a5 toURI:(id)a6 fromURI:(id)a7 context:(id)a8;
- (void)inviteDroppedWithPayload:(id)a3 forTopic:(id)a4 sessionID:(id)a5 toIdentifier:(id)a6 fromID:(id)a7 error:(id)a8;
- (void)messageIdentifier:(id)a3 alternateCallbackID:(id)a4 forAccount:(id)a5 willSendToDestinations:(id)a6 skippedDestinations:(id)a7 registrationPropertyToDestinations:(id)a8;
- (void)messageIdentifier:(id)a3 forTopic:(id)a4 toURI:(id)a5 fromURI:(id)a6 hasBeenDeliveredWithContext:(id)a7;
- (void)messageIdentifierInner:(id)a3 alternateCallbackID:(id)a4 forAccount:(id)a5 updatedWithResponseCode:(int64_t)a6 error:(id)a7 lastCall:(BOOL)a8 context:(id)a9 isDirectMessage:(BOOL)a10;
- (void)messageReceived:(id)a3 withGUID:(id)a4 withPayload:(id)a5 forTopic:(id)a6 toURI:(id)a7 fromURI:(id)a8 context:(id)a9;
- (void)opportunisticDataReceived:(id)a3 withIdentifier:(id)a4 fromURI:(id)a5 context:(id)a6;
- (void)pendingIncomingMessageWithGUID:(id)a3 forTopic:(id)a4 toURI:(id)a5 fromURI:(id)a6 context:(id)a7;
- (void)pendingResourceWithMetadata:(id)a3 guid:(id)a4 forTopic:(id)a5 toURI:(id)a6 fromURI:(id)a7 context:(id)a8;
- (void)protobufReceived:(id)a3 withGUID:(id)a4 forTopic:(id)a5 toURI:(id)a6 fromURI:(id)a7 context:(id)a8;
- (void)receivedBatchMessage:(id)a3 forTopic:(id)a4;
- (void)receivedGroupSessionParticipantDataUpdate:(id)a3 forTopic:(id)a4 toIdentifier:(id)a5 fromID:(id)a6;
- (void)receivedGroupSessionParticipantUpdate:(id)a3 forTopic:(id)a4 toIdentifier:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)receivedMetadataForDirectMessaging:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)sessionInvitationReceivedWithPayload:(id)a3 forTopic:(id)a4 sessionID:(id)a5 toIdentifier:(id)a6 fromID:(id)a7 transportType:(id)a8;
- (void)setDelegateCapabilities:(unsigned int)a3;
- (void)xpcObject:(id)a3 objectContext:(id)a4;
@end

@implementation _IDSConnection

- (IDSAccount)account
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2EAF8();
    }
  }

  account = self->_account;

  return account;
}

- (id)_activeDevice
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(_IDSConnection *)self account];
  v3 = [v2 _internal];
  v4 = [v3 devices];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isActive])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)daemonConnected
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F814();
    }
  }

  [(_IDSConnection *)self _resendPendingSends];
}

- (void)_resendPendingSends
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F774();
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_pendingSends;
  v6 = [(IMOrderedMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    *&v7 = 138412802;
    v20 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        [v11 setDaemonDeathResend:{1, v20}];
        v12 = +[IDSLogging IDSConnection];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 identifier];
          v14 = [v11 alternateCallbackID];
          *buf = v20;
          v27 = self;
          v28 = 2112;
          v29 = v13;
          v30 = 2112;
          v31 = v14;
          _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "%@ resending %@ alternate %@ due to daemon disconnection.", buf, 0x20u);
        }

        v15 = [v11 dictionaryRepresentation];
        v16 = [v15 copy];

        v17 = [(_IDSConnection *)self daemonController];
        [v17 setCurXPCMessagePriority:{objc_msgSend(v11, "priority")}];

        v18 = [(_IDSConnection *)self daemonController];
        [v18 sendMessageWithSendParameters:v16];
      }

      v8 = [(IMOrderedMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_connect
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F5E4();
    }
  }

  v6 = [(IDSAccount *)self->_account _internal];
  v7 = [v6 serviceName];

  if (!v7)
  {
    v13 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F6FC(self, &self->_account);
    }

    goto LABEL_12;
  }

  v8 = [(_IDSConnection *)self daemonController];
  v9 = [v8 hasListenerForID:self->_serviceToken];

  if ((v9 & 1) == 0)
  {
    v10 = [(_IDSConnection *)self daemonController];
    serviceToken = self->_serviceToken;
    v12 = [MEMORY[0x1E695DFD8] setWithObject:v7];
    LOBYTE(serviceToken) = [v10 addListenerID:serviceToken services:v12 commands:self->_commands];

    if ((serviceToken & 1) == 0)
    {
      v13 = +[IDSLogging IDSConnection];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_195B2F684(self, &self->_serviceToken);
      }

LABEL_12:
    }
  }
}

- (id)daemonListener
{
  v2 = +[IDSDaemonController sharedInstance];
  v3 = [v2 listener];

  return v3;
}

- (BOOL)_isAccountInValidRegistrationStateToAcceptMessages
{
  v3 = [(_IDSConnection *)self account];
  v4 = [v3 _internal];

  v5 = [v4 isActive];
  if ([v4 isInTransientRegistrationState])
  {
    v6 = [v4 registrationCertificate];
    if (v6)
    {
      v7 = [v4 primaryServiceName];
      v8 = [(_IDSConnection *)self _canServiceNameAcceptMessagesInTransientRegistrationState:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 | v5;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _IDSConnection;
  return [(_IDSConnection *)&v3 init];
}

- (_IDSConnection)initWithAccount:(id)a3 commands:(id)a4 indirectDelegateCallouts:(BOOL)a5 delegateContext:(id)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (_IDSRunningInDaemon())
  {
    v14 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E9C8();
    }

    v15 = 0;
  }

  else
  {
    v16 = +[IDSInternalQueueController sharedInstance];
    v17 = [v16 assertQueueIsCurrent];

    if (v17)
    {
      v18 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_195B2E928();
      }
    }

    v39.receiver = self;
    v39.super_class = _IDSConnection;
    v19 = [(_IDSConnection *)&v39 init];
    if (v19)
    {
      v20 = +[IDSLogging IDSConnection];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v11 _internal];
        v22 = [v21 serviceName];
        *buf = 134218242;
        v41 = v19;
        v42 = 2112;
        v43 = v22;
        _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "_IDSConnection - initing {self: %p, account.serviceName: %@}", buf, 0x16u);
      }

      v19->_indirectDelegateCallouts = a5;
      v23 = [MEMORY[0x1E696AEC0] copyStringGUIDForObject:v19];
      serviceToken = v19->_serviceToken;
      v19->_serviceToken = v23;

      *&v19->_incomingMessageLoggingSequence = 0;
      v25 = [v12 copy];
      commands = v19->_commands;
      v19->_commands = v25;

      objc_storeStrong(&v19->_account, a3);
      v27 = [(IDSAccount *)v19->_account _internal];
      v28 = +[IDSInternalQueueController sharedInstance];
      v29 = [v28 queue];
      [v27 addDelegate:v19 queue:v29];

      v30 = [MEMORY[0x1E6995700] weakRefWithObject:v13];
      delegateContext = v19->_delegateContext;
      v19->_delegateContext = v30;

      v19->_wakingDowngradeCount = 0;
      v32 = [(_IDSConnection *)v19 daemonListener];
      [v32 addHandler:v19];

      [(_IDSConnection *)v19 _connect];
      directMessageConnection = v19->_directMessageConnection;
      v19->_directMessageConnection = 0;

      directMessagingMetadata = v19->_directMessagingMetadata;
      v19->_directMessagingMetadata = 0;

      v35 = [MEMORY[0x1E69A6160] sharedInstance];
      systemMonitor = v19->_systemMonitor;
      v19->_systemMonitor = v35;
    }

    self = v19;
    v15 = self;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_INFO, "Account delegate has been cleaned up via weak references %p", buf, 0xCu);
  }

  v4 = [(_IDSConnection *)self daemonController];
  [v4 removeListenerID:self->_serviceToken];

  v5 = [(_IDSConnection *)self daemonListener];
  [v5 removeHandler:self];

  v7.receiver = self;
  v7.super_class = _IDSConnection;
  [(_IDSConnection *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)createDirectMessageConnectionIfNeeded
{
  if (_IDSSupportsDirectMessaging())
  {
    v3 = +[IDSInternalQueueController sharedInstance];
    v4 = [v3 assertQueueIsCurrent];

    if (v4)
    {
      v5 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_195B2EA58();
      }
    }

    if (!self->_directMessageConnection)
    {
      v6 = [IDSDirectMessageConnection alloc];
      v7 = [(IDSAccount *)self->_account _internal];
      v8 = [v7 serviceName];
      v9 = +[IDSInternalQueueController sharedInstance];
      v10 = [v9 queue];
      v11 = [(IDSDirectMessageConnection *)v6 initWithServiceName:v8 queue:v10 delegate:self];
      directMessageConnection = self->_directMessageConnection;
      self->_directMessageConnection = v11;

      directMessagingMetadata = self->_directMessagingMetadata;
      if (!directMessagingMetadata || ![(NSDictionary *)directMessagingMetadata count])
      {
        v14 = [(_IDSConnection *)self daemonListener];
        v15 = [v14 getDirectMessagingMetadataDictionary];
        v16 = self->_directMessagingMetadata;
        self->_directMessagingMetadata = v15;
      }

      if ([(NSDictionary *)self->_directMessagingMetadata count])
      {
        [(_IDSConnection *)self receivedMetadataForDirectMessaging:self->_directMessagingMetadata];
      }

      v17 = self->_directMessageConnection;
      v18 = [(IDSAccount *)self->_account _internal];
      v19 = [v18 connectedDevices];
      [(IDSDirectMessageConnection *)v17 updateConnectedDevices:v19];
    }
  }
}

- (BOOL)isActive
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2EB98();
    }
  }

  v6 = [(IDSAccount *)self->_account _internal];
  v7 = [v6 isActive];

  return v7;
}

- (id)_defaultPairedDevice
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(_IDSConnection *)self account];
  v3 = [v2 _internal];
  v4 = [v3 devices];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isDefaultPairedDevice])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)addDelegate:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSInternalQueueController sharedInstance];
  v12 = [v11 assertQueueIsCurrent];

  if (v12)
  {
    v13 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B2EC38();
    }
  }

  if (v8 && v9)
  {
    v14 = [(NSMapTable *)self->_delegateToInfo objectForKey:v8];

    if (!v14)
    {
      if (!self->_delegateToInfo)
      {
        v15 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        delegateToInfo = self->_delegateToInfo;
        self->_delegateToInfo = v15;
      }

      v17 = objc_alloc_init(MEMORY[0x1E69A5228]);
      [v17 setQueue:v9];
      [(NSMapTable *)self->_delegateToInfo setObject:v17 forKey:v8];
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A71978;
    v20[3] = &unk_1E7440DE8;
    v20[4] = self;
    v18 = MEMORY[0x19A8BBEF0](v20);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 16))(v18, v10);
    }

    else if (v10)
    {
      v10[2](v10);
    }
  }
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMapTable *)self->_delegateToInfo removeObjectForKey:v4];
    if (![(NSMapTable *)self->_delegateToInfo count])
    {
      delegateToInfo = self->_delegateToInfo;
      self->_delegateToInfo = 0;
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_callDelegatesRespondingToSelector:(SEL)a3 withPreCallbacksBlock:(id)a4 callbackBlock:(id)a5 postCallbacksBlock:(id)a6 group:(id)a7
{
  v67 = *MEMORY[0x1E69E9840];
  v50 = a4;
  v12 = a5;
  v49 = a6;
  v13 = a7;
  v14 = v13;
  v51 = v12;
  if (v12)
  {
    group = v13;
    v15 = +[IDSInternalQueueController sharedInstance];
    v16 = [v15 assertQueueIsCurrent];

    if (v16)
    {
      v17 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_195B2ECD8();
      }
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    context = objc_autoreleasePoolPush();
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v20 = self->_delegateToInfo;
    v21 = [(NSMapTable *)v20 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v63;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v63 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v62 + 1) + 8 * i);
          v26 = [(NSMapTable *)self->_delegateToInfo objectForKey:v25];
          v27 = v26;
          if (v25)
          {
            v28 = v26 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (!v28 && (!a3 || (objc_opt_respondsToSelector() & 1) != 0))
          {
            [v18 addObject:v25];
            [v19 addObject:v27];
          }
        }

        v22 = [(NSMapTable *)v20 countByEnumeratingWithState:&v62 objects:v66 count:16];
      }

      while (v22);
    }

    objc_autoreleasePoolPop(context);
    v14 = group;
    if ([v18 count])
    {
      v29 = 1;
      do
      {
        v30 = objc_autoreleasePoolPush();
        v31 = [v18 objectAtIndex:0];
        v32 = [v19 objectAtIndex:0];
        [v18 removeObjectAtIndex:0];
        [v19 removeObjectAtIndex:0];
        objc_autoreleasePoolPop(v30);
        v33 = [v18 count];
        v34 = [v32 queue];
        if (v14)
        {
          dispatch_group_enter(v14);
        }

        v35 = +[IDSInternalQueueController sharedInstance];
        v36 = [v35 queue];

        if (v34 == v36)
        {
          if (a3)
          {
            v14 = group;
            if (v50 != 0 && (v29 & 1) != 0)
            {
              v50[2](v50, 1);
            }

            (v51)[2](v51, v31);
            if (v49 && !v33)
            {
              v49[2](v49, 1);
            }
          }

          else
          {
            (v51)[2](v51, v31);
            v14 = group;
          }

          v43 = objc_opt_self();
          v44 = objc_opt_self();
          if (!v14)
          {
            goto LABEL_42;
          }
        }

        else if (v34)
        {
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = sub_195A72124;
          v53[3] = &unk_1E7440E10;
          v59 = a3;
          v60 = v29 & 1;
          v56 = v50;
          v57 = v51;
          v54 = v31;
          v61 = v33 == 0;
          v58 = v49;
          v55 = v32;
          v37 = MEMORY[0x19A8BBEF0](v53);
          v38 = v37;
          if (v34 == MEMORY[0x1E69E96A0])
          {
            v39 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v37);
          }

          else
          {
            v39 = [v37 copy];
          }

          v42 = v39;

          v14 = group;
          if (group)
          {
            dispatch_group_async(group, v34, v42);
          }

          else
          {
            dispatch_async(v34, v42);
          }

          if (!group)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v40 = objc_opt_self();
          v41 = objc_opt_self();
          v14 = group;
          if (!group)
          {
            goto LABEL_42;
          }
        }

        dispatch_group_leave(v14);
LABEL_42:

        v29 = 0;
      }

      while ([v18 count]);
    }

    v45 = objc_opt_self();
    v46 = objc_opt_self();
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (void)setDelegateCapabilities:(unsigned int)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2ED78();
    }
  }

  self->_delegateCapabilities = a3;
}

- (id)_sendWithParameters:(id)a3 options:(id)a4 loggingType:(id)a5 loggingDataSize:(unint64_t)a6
{
  v216 = a6;
  v243 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AEC0] stringGUID];
  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v232 = v12;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
  }

  v14 = [v10 objectForKey:@"IDSSendMessageOptionUUID"];
  if (v14)
  {
    v15 = v14;
    v16 = JWUUIDPushObjectToString();

    v12 = v16;
  }

  else
  {
    v15 = IDSGetUUIDData();
  }

  if (_IDSSupportsDirectMessaging() && [IDSDirectMessageConnection isDirectMessagingRequested:v10]&& !self->_directMessageConnection)
  {
    [(_IDSConnection *)self createDirectMessageConnectionIfNeeded];
  }

  directMessageConnection = self->_directMessageConnection;
  if (directMessageConnection)
  {
    v18 = [(_IDSConnection *)self _activeDevice];
    v19 = [(IDSDirectMessageConnection *)directMessageConnection isMessageEligible:v9 options:v10 destinationDevice:v18];

    if (v19)
    {
      v20 = [(IDSAccount *)self->_account _internal];
      v21 = [v20 uniqueID];

      v225 = v21;
      [v9 setAccountUUID:v21];
      v22 = [v10 objectForKey:@"IDSSendMessageOptionWantsClientAcknowledgement"];
      [v9 setWantsAppAck:{objc_msgSend(v22, "BOOLValue")}];

      v23 = [v10 objectForKey:@"IDSSendMessageOptionExpectsPeerResponse"];
      [v9 setExpectsPeerResponse:{objc_msgSend(v23, "BOOLValue")}];

      [v9 setMessageUUID:v15];
      [v9 setIdentifier:v12];
      v24 = [v10 objectForKey:@"IDSSendMessageOptionPeerResponseIdentifier"];
      [v9 setPeerResponseIdentifier:v24];

      v25 = [v10 objectForKey:@"IDSSendMessageOptionQueueOneIdentifier"];
      [v9 setQueueOneIdentifier:v25];

      v26 = [v10 objectForKey:@"IDSSendMessageOptionTopLevelDictionary"];
      [v9 setUseDictAsTopLevel:{objc_msgSend(v26, "BOOLValue")}];

      v27 = [v10 objectForKey:@"IDSSendMessageOptionRequireBluetooth"];
      [v9 setRequireBluetooth:{objc_msgSend(v27, "BOOLValue")}];

      [(IDSDirectMessageConnection *)self->_directMessageConnection sendMessageWithParameters:v9 options:v10];
      v28 = v12;
      goto LABEL_172;
    }
  }

  v223 = v15;
  v219 = v11;
  v29 = objc_alloc(MEMORY[0x1E69A5408]);
  v227 = self;
  v30 = [(_IDSConnection *)self account];
  v31 = [v30 _internal];
  v32 = [v31 serviceName];
  v33 = [v29 initWithServiceIdentifier:v32];

  if (CUTIsInternalInstall())
  {
    v34 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v232 = v12;
      _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendMessage - Inspecting message {%@} payload for security issues", buf, 0xCu);
    }

    v35 = MEMORY[0x1E69A5358];
    v36 = [v9 message];
    [v35 inspectPayload:v36 messageGuid:v12];
  }

  v37 = [v10 objectForKey:?];
  [v9 setDataToEncrypt:v37];

  v38 = [v10 objectForKey:@"IDSSendMessageOptionWantsResponse"];
  [v9 setWantsResponse:{objc_msgSend(v38, "BOOLValue")}];

  v39 = [v10 objectForKey:@"IDSSendMessageOptionWantsProgress"];
  [v9 setWantsProgress:{objc_msgSend(v39, "BOOLValue")}];

  v40 = [v10 objectForKey:@"IDSSendMessageOptionFromID"];
  [v9 setFromID:v40];

  [v10 objectForKey:@"IDSSendMessageOptionTimeout"];
  v41 = [v10 objectForKey:@"IDSSendMessageOptionTimeout"];
  v226 = v12;
  v222 = v41;
  if (v41)
  {
    [v41 doubleValue];
  }

  else
  {
    v42 = 180.0;
  }

  [v9 setTimeout:v42];
  v43 = MEMORY[0x19A8BACA0](@"allowlistedidsservices");
  objc_opt_class();
  v225 = v33;
  v215 = v43;
  if (objc_opt_isKindOfClass())
  {
    v44 = [(_IDSConnection *)v227 account];
    v45 = [v44 _internal];
    v46 = [v45 pushTopic];
    v47 = [v43 containsObject:v46];

    v48 = [v10 objectForKey:@"IDSSendMessageOptionNonWaking"];
    [v9 setNonWaking:{objc_msgSend(v48, "BOOLValue")}];

    if (v47)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v49 = [v10 objectForKey:@"IDSSendMessageOptionNonWaking"];
    [v9 setNonWaking:{objc_msgSend(v49, "BOOLValue")}];
  }

  v50 = [v9 destinations];
  v51 = [(_IDSConnection *)v227 _isDestinationSingleLocalAddress:v50];

  if (v51)
  {
    if ([v9 priority] == 300 && (objc_msgSend(v33, "allowUrgentMessages") & 1) == 0)
    {
      [v9 setPriority:200];
      v52 = +[IDSTransportLog IDSConnection];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [(_IDSConnection *)v227 account];
        v54 = [v53 _internal];
        v55 = [v54 pushTopic];
        *buf = 138412546;
        *v232 = v12;
        *&v232[8] = 2112;
        *v233 = v55;
        _os_log_impl(&dword_1959FF000, v52, OS_LOG_TYPE_DEFAULT, "Downgrading priority of message with GUID %@ to Default from Urgent, The client %@ is not configured to send urgent messages", buf, 0x16u);
      }
    }

    if (([v33 allowWakingMessages] & 1) == 0)
    {
      [(_IDSConnection *)v227 setWakingDowngradeCount:[(_IDSConnection *)v227 wakingDowngradeCount]+ 1];
      v56 = +[IDSTransportLog IDSConnection];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = [(_IDSConnection *)v227 account];
        v58 = [v57 _internal];
        v59 = [v58 pushTopic];
        v60 = [(_IDSConnection *)v227 wakingDowngradeCount];
        *buf = 138412802;
        *v232 = v12;
        *&v232[8] = 2112;
        *v233 = v59;
        *&v233[8] = 1024;
        LODWORD(v234) = v60;
        _os_log_impl(&dword_1959FF000, v56, OS_LOG_TYPE_DEFAULT, "Downgrading waking status of message with GUID %@ to non-waking, the client %@ is not configured to send waking messages.  Total messages downgraded: %u", buf, 0x1Cu);
      }

      [v9 setNonWaking:1];
    }
  }

LABEL_34:
  v61 = [v10 objectForKey:@"IDSSendMessageOptionEnforceRemoteTimeouts"];

  if (v61)
  {
    v61 = [v10 objectForKey:@"IDSSendMessageOptionEnforceRemoteTimeouts"];
    v62 = [v61 BOOLValue];

    LODWORD(v61) = v62 ^ 1;
  }

  else
  {
    v62 = 0;
  }

  v63 = [v33 blockRemoteTimeouts];
  if (v222)
  {
    v64 = v63;
  }

  else
  {
    v64 = 1;
  }

  if (((v64 | v61) & 1) == 0 || v62)
  {
    [v9 setEnforceRemoteTimeouts:1];
  }

  v65 = [v10 objectForKey:@"IDSSendMessageOptionAccessToken"];

  if (v65)
  {
    v66 = [v10 objectForKey:@"IDSSendMessageOptionAccessToken"];
    [v9 setAccessToken:v66];
  }

  v67 = [v10 objectForKey:@"IDSSendMessageOptionHomeKitMessage"];
  v68 = [v67 BOOLValue];

  if (v68)
  {
    [v9 setHomeKitPayload:1];
  }

  v69 = [v10 objectForKey:@"IDSSendMessageOptionSubServiceKey"];
  if ([v69 length])
  {
    [v9 setSubService:v69];
  }

  v213 = v69;
  v70 = [v10 objectForKey:@"IDSSendMessageOptionFakeMessage"];
  [v9 setFakeMessage:{objc_msgSend(v70, "BOOLValue")}];

  v71 = [v10 objectForKey:@"IDSSendMessageOptionDisableAliasValidation"];
  [v9 setDisableAliasValidation:{objc_msgSend(v71, "BOOLValue")}];

  v218 = [v10 objectForKey:@"IDSSendMessageOptionCommand"];
  [v9 setCommand:?];
  v72 = [v10 objectForKey:@"IDSSendMessageOptionWantsClientAcknowledgement"];
  [v9 setWantsAppAck:{objc_msgSend(v72, "BOOLValue")}];

  v73 = [v10 objectForKey:@"IDSSendMessageOptionWantsDeliveryStatus"];
  [v9 setWantsDeliveryStatus:{objc_msgSend(v73, "BOOLValue")}];

  v74 = [v10 objectForKey:@"IDSSendMessageOptionWantsCertifiedDelivery"];
  [v9 setWantsCertifiedDelivery:{objc_msgSend(v74, "BOOLValue")}];

  v75 = [v10 objectForKey:@"IDSSendMessageOptionDeliveryStatusContext"];
  [v9 setDeliveryStatusContext:v75];

  [v9 setMessageUUID:v223];
  v76 = [v10 objectForKey:@"IDSSendMessageOptionAlternateCallbackIdentifier"];
  [v9 setAlternateCallbackID:v76];

  v77 = [v10 objectForKey:@"IDSSendMessageOptionOriginalTimestampKey"];
  [v9 setOriginalTimestamp:v77];

  v78 = [v10 objectForKey:@"IDSSendMessageOptionEncryptPayload"];
  [v9 setEncryptPayload:{objc_msgSend(v78, "BOOLValue")}];

  v79 = [v10 objectForKey:@"IDSSendMessageOptionCompressPayload"];
  v212 = v79;
  if (v79)
  {
    v80 = [v79 BOOLValue];
  }

  else
  {
    v80 = 1;
  }

  [v9 setCompressPayload:v80];
  v81 = [v10 objectForKey:@"IDSSendMessageOptionForceLocalDelivery"];
  if ([v81 BOOLValue])
  {
    v82 = 1;
  }

  else
  {
    v83 = [v10 objectForKey:@"IDSSendMessageOptionLocalDelivery"];
    if ([v83 BOOLValue])
    {
      v82 = 1;
    }

    else
    {
      v84 = [v10 objectForKey:@"IDSSendMessageOptionRequireBluetooth"];
      v82 = [v84 BOOLValue];
    }
  }

  [v9 setLocalDelivery:v82];
  v85 = [v10 objectForKey:@"IDSSendMessageOptionAllowCloudDeliveryKey"];
  [v9 setAllowCloudDelivery:{objc_msgSend(v85, "BOOLValue")}];

  v86 = [v10 objectForKey:@"IDSSendMessageOptionRequireBluetooth"];
  [v9 setRequireBluetooth:{objc_msgSend(v86, "BOOLValue")}];

  v87 = [v10 objectForKey:@"IDSSendMessageOptionRequireLocalWiFi"];
  [v9 setRequireLocalWiFi:{objc_msgSend(v87, "BOOLValue")}];

  v88 = [v10 objectForKey:@"IDSSendMessageOptionTopLevelDictionary"];
  [v9 setUseDictAsTopLevel:{objc_msgSend(v88, "BOOLValue")}];

  v89 = [v10 objectForKey:@"IDSSendMessageOptionExpectsPeerResponse"];
  [v9 setExpectsPeerResponse:{objc_msgSend(v89, "BOOLValue")}];

  v90 = [v10 objectForKey:@"IDSSendMessageOptionPeerResponseIdentifier"];
  [v9 setPeerResponseIdentifier:v90];

  v91 = [v10 objectForKey:@"IDSSendMessageOptionAlwaysSkipSelfKey"];
  [v9 setAlwaysSkipSelf:{objc_msgSend(v91, "BOOLValue")}];

  v92 = [v10 objectForKey:@"IDSSendMessageOptionForceQuery"];
  [v9 setForceQuery:{objc_msgSend(v92, "integerValue")}];

  v93 = [v10 objectForKey:@"IDSSendMessageOptionAlwaysIncludeSelfKey"];
  [v9 setAlwaysIncludeSelf:{objc_msgSend(v93, "BOOLValue")}];

  v94 = [v10 objectForKey:@"IDSSendMessageOptionWantsFirewallDonation"];
  [v9 setWantsFirewallDonation:{objc_msgSend(v94, "BOOLValue")}];

  v224 = [v10 objectForKey:@"IDSSendMessageOptionPushPriority"];
  if (v224)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v224 integerValue], (_IDSIsValidPushPriority()))
    {
      [v9 setPushPriority:v224];
    }

    else
    {
      v95 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
      {
        sub_195B2EE18();
      }
    }
  }

  v96 = [v10 objectForKey:@"IDSSendMessageOptionDeliveryMinimumTimeDelayKey"];
  if (v96)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v96 longLongValue] < 0)
    {
      v98 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v98, OS_LOG_TYPE_FAULT))
      {
        sub_195B2EE18();
      }
    }

    else
    {
      v97 = [v96 unsignedLongLongValue];
      v98 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v97];
      [v9 setDeliveryMinimumTimeDelay:v98];
    }
  }

  v99 = [v10 objectForKey:@"IDSSendMessageOptionDeliveryMinimumTimeKey"];
  if (v99)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v99 longLongValue] < 0)
    {
      v101 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
      {
        sub_195B2EE18();
      }
    }

    else
    {
      [v99 doubleValue];
      v101 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(v100 * 1000.0)];
      [v9 setDeliveryMinimumTime:v101];
    }
  }

  v220 = [v10 objectForKey:@"IDSSendMessageOptionSendModeKey"];
  if (v220)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v220 integerValue], (_IDSIsValidSendMode()))
    {
      [v9 setSendMode:v220];
    }

    else
    {
      v102 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
      {
        sub_195B2EE18();
      }
    }
  }

  v103 = [v10 objectForKey:@"IDSSendMessageOptionPublicMessageIntent"];
  if (v103)
  {
    [v9 setCommandContext:v103];
  }

  v211 = v103;
  v221 = [v10 objectForKey:@"IDSSendMessageOptionSendReasonKey"];
  if ([v221 length])
  {
    v104 = [MEMORY[0x1E69A53E8] createWithReasonString:v221];
    if (v104)
    {
      [v9 setSendReasonContainer:v104];
    }

    else
    {
      v105 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
      {
        sub_195B2EE18();
      }
    }
  }

  v106 = [v225 identifier];
  if ([v106 isEqualToString:@"com.apple.madrid"] && objc_msgSend(v218, "isEqualToNumber:", &unk_1F0A29900))
  {
    v107 = [v9 message];

    if (!v107)
    {
      goto LABEL_100;
    }

    v106 = [v10 objectForKey:@"IDSSendMessageOptionSendMetricsKey"];
    v108 = objc_alloc(MEMORY[0x1E69A5328]);
    v109 = [v225 identifier];
    v110 = [v108 initWithType:0 guid:v12 service:v109 clientMetrics:v106];

    [v9 setSendMetric:v110];
  }

LABEL_100:
  v111 = [v10 objectForKey:@"IDSSendMessageOptionDuet"];
  if ([v111 BOOLValue])
  {
    v112 = 1;
  }

  else
  {
    v113 = [v10 objectForKey:@"IDSSendMessageOptionNSURLSession"];
    if ([v113 BOOLValue])
    {
      v112 = 1;
    }

    else
    {
      [v10 objectForKey:@"IDSSendMessageOptionBypassDuet"];
      v115 = v114 = v96;
      v112 = [v115 BOOLValue];

      v96 = v114;
    }
  }

  v116 = [v10 objectForKey:@"IDSSendMessageOptionSockPuppet"];
  if ([v116 BOOLValue])
  {
    v117 = [v9 priority] == 200;

    v112 |= v117;
  }

  else
  {
  }

  v118 = [v10 objectForKey:@"IDSSendMessageOptionAllowCloudDeliveryKey"];
  if ([v118 BOOLValue])
  {
    v119 = [v9 priority] == 200;

    v112 |= v119;
  }

  else
  {
  }

  v120 = [v10 objectForKey:@"IDSSendMessageOptionAllowCloudDeliveryKey"];
  v121 = [v120 BOOLValue];

  if (v121)
  {
    v122 = [(_IDSConnection *)v227 _activeDevice];
    v123 = v122;
    if (v122 && ([v122 isConnected] & 1) == 0 && (objc_msgSend(v123, "isCloudConnected") & 1) == 0)
    {
      v197 = v96;
      v124 = objc_alloc(MEMORY[0x1E695DF20]);
      v125 = [(_IDSConnection *)v227 account];
      v126 = [v125 _internal];
      v127 = [v126 pushTopic];
      v128 = [v124 initWithObjectsAndKeys:{v127, @"IDSClientBringsUpCloudMessaging", 0}];

      IDSPowerLogDictionary();
      v129 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
      {
        v130 = [(_IDSConnection *)v227 account];
        v131 = [v130 _internal];
        v132 = [v131 pushTopic];
        *buf = 138412546;
        *v232 = v132;
        *&v232[8] = 2112;
        *v233 = v226;
        _os_log_impl(&dword_1959FF000, v129, OS_LOG_TYPE_DEFAULT, "Client %@ is forcing QR for Cloud Message with GUID %@", buf, 0x16u);
      }

      v96 = v197;
    }
  }

  [v9 setBypassDuet:v112 & 1];
  v133 = [v10 objectForKey:@"IDSSendMessageOptionNonCloudWakingKey"];
  [v9 setNonCloudWaking:{objc_msgSend(v133, "BOOLValue")}];

  v134 = [v10 objectForKey:@"IDSSendMessageOptionLiveMessageDelivery"];
  [v9 setLiveMessageDelivery:{objc_msgSend(v134, "BOOLValue")}];

  v135 = [v10 objectForKey:@"IDSSendMessageOptionDropMessageIndicator"];
  [v9 setDropMessageIndicatorCommand:v135];

  v136 = [v10 objectForKey:@"IDSSendMessageOptionFireAndForget"];
  v137 = [v136 BOOLValue];

  [v9 setFireAndForget:v137];
  if ((v137 & 1) != 0 || ([v10 objectForKey:@"IDSSendMessageOptionMapTile"], v138 = objc_claimAutoreleasedReturnValue(), v139 = objc_msgSend(v138, "BOOLValue"), v138, v139))
  {
    [v9 setBypassStorage:1];
  }

  v140 = [v10 objectForKey:@"IDSSendMessageOptionQueueOneIdentifier"];
  if (v140)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v141 = +[IDSLogging IDSConnection];
      if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
      {
        sub_195B2EE80();
      }

      v140 = 0;
    }
  }

  v142 = [v10 objectForKey:@"IDSSendMessageOptionActivityContinuation"];
  v143 = [v142 BOOLValue];

  if (v143)
  {
    [v9 setActivityContinuation:1];
    if (!v140)
    {
      v140 = @"IDSActivityContinuationIdentifier";
    }
  }

  v144 = [v10 objectForKey:@"IDSSendMessageOptionTethering"];
  v145 = [v144 BOOLValue];

  if (v145)
  {
    [v9 setLocalDelivery:1];
  }

  v146 = [v10 objectForKey:@"IDSSendMessageOptionOpportunisticDuet"];
  v147 = [v146 BOOLValue];

  if (v147)
  {
    [v9 setNonWaking:1];
    [v9 setLocalDelivery:1];
    if (!v140)
    {
      v140 = @"IDSOpportunisticDuetIdentifier";
    }

    goto LABEL_138;
  }

  if (v140)
  {
LABEL_138:
    [v9 setQueueOneIdentifier:v140];
  }

  v148 = [v10 objectForKey:@"IDSSendMessageOptionForceEncryptionOff"];
  [v9 setForceEncryptionOff:{objc_msgSend(v148, "BOOLValue")}];

  v149 = [v10 objectForKey:@"IDSSendMessageOptionKTVerificationUUIDKey"];
  if (v149)
  {
    [v9 setKeyTransparencyURIVerificationMap:v149];
  }

  v210 = v149;
  v150 = [v10 objectForKey:@"IDSSendMessageOptionGoupUUIDKey"];
  v151 = [v10 objectForKey:@"IDSSendMessageOptionTimestampKey"];
  v152 = [v151 stringValue];

  if (v150 && v152)
  {
    [v9 setGroupSessionUUID:v150];
    [v9 setDedupeTimestamp:v152];
  }

  v208 = v152;
  v209 = v150;
  v153 = [v10 objectForKey:@"IDSSendMessageOptionDuetIdentifiersOverride"];
  v154 = [v153 allObjects];
  [v9 setDuetIdentifiersOverride:v154];

  v155 = [v10 objectForKey:@"IDSSendMessageOptionMetricReportIdentifier"];
  if (!v155)
  {
    v156 = [v153 allObjects];
    v157 = [v156 sortedArrayUsingComparator:&unk_1F09E6140];

    v155 = [v157 firstObject];
  }

  v207 = v153;
  [v9 setMetricReportIdentifier:v155];
  v205 = [v10 objectForKey:@"IDSSendMessageOptionInterestingRegistrationProperties"];
  v158 = [v205 allObjects];
  [v9 setInterestingRegistrationProperties:v158];

  v204 = [v10 objectForKey:@"IDSSendMessageOptionRequireAllRegistrationProperties"];
  v159 = [v204 allObjects];
  [v9 setRequireAllRegistrationProperties:v159];

  v203 = [v10 objectForKey:@"IDSSendMessageOptionRequireLackOfRegistrationProperties"];
  v160 = [v203 allObjects];
  [v9 setRequireLackOfRegistrationProperties:v160];

  [v9 setIdentifier:v226];
  v161 = [(IDSAccount *)v227->_account _internal];
  v162 = [v161 uniqueID];

  v202 = v162;
  [v9 setAccountUUID:v162];
  v163 = [(_IDSConnection *)v227 _activeDevice];
  v164 = [v9 destinations];
  v165 = [v164 destinationURIs];
  LODWORD(v162) = [v165 containsObject:*MEMORY[0x1E69A4B50]];

  if (v162 && v163 && ([v163 relationship] & 2) == 0)
  {
    [(_IDSConnection *)v227 _replaceSentinelInSendParameters:v9 withCurrentActiveDevice:v163];
  }

  v217 = [v9 destinations];
  v200 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  [v9 setGroupData:?];
  [v9 setDestinations:0];
  if (!v227->_pendingSends)
  {
    v166 = objc_alloc_init(MEMORY[0x1E69A6120]);
    pendingSends = v227->_pendingSends;
    v227->_pendingSends = v166;
  }

  v168 = [v9 alternateCallbackID];
  v169 = v168;
  if (v168)
  {
    v170 = v168;
  }

  else
  {
    v170 = [v9 identifier];
  }

  v201 = v163;

  if (v9)
  {
    [(IMOrderedMutableDictionary *)v227->_pendingSends setOrderedObject:v9 forKey:v170];
  }

  v199 = v170;
  v171 = +[IDSLogging GUIDTRACE];
  if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
  {
    v172 = [(IDSAccount *)v227->_account _internal];
    v173 = [v172 serviceName];
    *buf = 138412546;
    *v232 = v226;
    *&v232[8] = 2112;
    *v233 = v173;
    _os_log_impl(&dword_1959FF000, v171, OS_LOG_TYPE_DEFAULT, "OUTGOING-CLIENT_REQUEST:%@ SERVICE:%@", buf, 0x16u);
  }

  v206 = v155;

  v174 = [v10 mutableCopy];
  [v174 removeObjectForKey:@"IDSSendMessageOptionDataToEncrypt"];
  v175 = +[IDSTransportLog IDSConnection];
  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
  {
    v214 = v99;
    v198 = v96;
    if (v219)
    {
      v176 = v219;
    }

    else
    {
      v176 = @"unknown type";
    }

    v177 = [(IDSAccount *)v227->_account _internal];
    v178 = [v177 serviceName];
    v179 = [v9 deliveryMinimumTime];
    v180 = @"YES";
    if (!v179)
    {
      v196 = [v9 deliveryMinimumTimeDelay];
      if (!v196)
      {
        v180 = @"NO";
      }
    }

    v181 = [(IMOrderedMutableDictionary *)v227->_pendingSends count];
    *buf = 138414082;
    *v232 = v176;
    *&v232[8] = 2114;
    *v233 = v178;
    *&v233[8] = 2114;
    v234 = v226;
    *v235 = 2112;
    *&v235[2] = v217;
    *v236 = 2112;
    *&v236[2] = v180;
    v237 = 2112;
    v238 = v174;
    v239 = 1024;
    v240 = v216;
    v241 = 2048;
    v242 = v181;
    _os_log_impl(&dword_1959FF000, v175, OS_LOG_TYPE_DEFAULT, "Client request to send %@ on service: %{public}@   guid: %{public}@   to destinations: %@  isScheduled? : %@  options: %@    size: %d] (%lu pending)", buf, 0x4Eu);
    if (!v179)
    {
    }

    v96 = v198;
    v99 = v214;
  }

  v230[0] = 0xAAAAAAAAAAAAAAAALL;
  v230[1] = 0xAAAAAAAAAAAAAAAALL;
  v182 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v226];
  [v182 getUUIDBytes:v230];

  v183 = [MEMORY[0x1E69A5270] CrossLayerLogging];
  if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
  {
    v184 = [(IDSAccount *)v227->_account _internal];
    [v184 serviceName];
    v186 = v185 = v96;
    outgoingMessageLoggingSequence = v227->_outgoingMessageLoggingSequence;
    v227->_outgoingMessageLoggingSequence = outgoingMessageLoggingSequence + 1;
    *buf = 67110658;
    *v232 = 120;
    *&v232[4] = 1024;
    *&v232[6] = 255;
    *v233 = 2112;
    *&v233[2] = v186;
    v234 = 0x832000000100412;
    *v235 = v230;
    *&v235[8] = 1024;
    *v236 = v216;
    *&v236[4] = 1024;
    *&v236[6] = outgoingMessageLoggingSequence;
    _os_log_impl(&dword_1959FF000, v183, OS_LOG_TYPE_DEFAULT, "5 {curProtocol: %hhu, prevProtocol: %hhu, prevBundleID: %@, curUUID: %{public,uuid_t}.16P, curPktLen: %u, logSeqn: %hhu}", buf, 0x34u);

    v96 = v185;
  }

  v188 = [v9 dictionaryRepresentation];
  v189 = [v188 copy];

  v190 = [(_IDSConnection *)v227 daemonController];
  [v190 setCurXPCMessagePriority:{objc_msgSend(v9, "priority")}];

  v191 = [(_IDSConnection *)v227 daemonController];
  v228[0] = MEMORY[0x1E69E9820];
  v228[1] = 3221225472;
  v228[2] = sub_195A7419C;
  v228[3] = &unk_1E7440E58;
  v192 = v189;
  v229 = v192;
  [v191 forwardMethodWithBoostedPriority:v228];

  v12 = v226;
  v193 = v226;

  v11 = v219;
  v15 = v223;
LABEL_172:

  v194 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)_isDestinationSingleLocalAddress:(id)a3
{
  v4 = a3;
  v5 = [(_IDSConnection *)self account];
  v6 = [v5 accountType];

  if (v6 == 2 && ([v4 destinationURIs], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 == 1))
  {
    v9 = [v4 destinationURIs];
    if ([v9 containsObject:*MEMORY[0x1E69A4B50]])
    {
      v10 = 1;
    }

    else
    {
      v11 = [v4 destinationURIs];
      v12 = [(_IDSConnection *)self _activeDevice];
      v13 = IDSCopyIDForDevice(v12);
      v10 = [v11 containsObject:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_replaceSentinelInSendParameters:(id)a3 withCurrentActiveDevice:(id)a4
{
  v5 = MEMORY[0x1E695DFA8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v7 destinations];
  v10 = [v9 destinationURIs];
  v13 = [v8 initWithSet:v10];

  v11 = IDSCopyIDForDevice(v6);
  [v13 removeObject:*MEMORY[0x1E69A4B50]];
  [v13 addObject:v11];
  v12 = [MEMORY[0x1E69A5240] destinationWithStrings:v13];
  [v7 setDestinations:v12];
}

- (BOOL)sendProtobuf:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v66 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = +[IDSInternalQueueController sharedInstance];
  v16 = [v15 assertQueueIsCurrent];

  if (v16)
  {
    v17 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_195B2EF38();
    }
  }

  v53 = a8;
  v18 = [v14 objectForKey:@"IDSSendMessageOptionSkipPayloadCheck"];
  v19 = [v18 BOOLValue];

  v20 = [v13 destinationURIs];
  v21 = [v20 count];

  v56 = v14;
  v52 = self;
  if (v21)
  {
    v22 = [(IDSAccount *)self->_account _internal];
    v23 = [v22 isActive];

    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = 8;
    }

    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = @"Cannot send with an inactive account";
    }

    if (!(v19 & 1 | ((v23 & 1) == 0)))
    {
      v26 = [v12 data];
      v27 = [v26 length];

      if (v27 <= 0x500000)
      {
        v24 = 0;
      }

      else
      {
        v24 = 18;
      }

      if (v27 <= 0x500000)
      {
        v25 = 0;
      }

      else
      {
        v25 = @"Cannot send payload of this size";
      }
    }
  }

  else
  {
    v25 = @"Cannot send to empty destination set";
    v24 = 1;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = v13;
  v28 = [v13 destinationURIs];
  v29 = [v28 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v58;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v58 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v57 + 1) + 8 * i);
        if ((_IDSDestinationHasValidPrefix() & 1) == 0)
        {
          v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid address: %@", v33];

          v24 = 21;
          v25 = v34;
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v30);
  }

  if (v25)
  {
    v35 = 0;
    v37 = a7;
    v36 = v55;
    if (!a7)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v44 = [(IDSAccount *)v52->_account _internal];
  v45 = [v44 uniqueID];

  v37 = a7;
  v36 = v55;
  if (v45)
  {
    v46 = objc_alloc_init(MEMORY[0x1E69A53E0]);
    [v46 setPriority:a5];
    [v46 setDestinations:v55];
    v47 = [v12 dictionaryRepresentation];
    [v46 setProtobuf:v47];

    v48 = [v12 data];
    v35 = -[_IDSConnection _sendWithParameters:options:loggingType:loggingDataSize:](v52, "_sendWithParameters:options:loggingType:loggingDataSize:", v46, v56, @"protobuf", [v48 length]);
    v49 = v35;

    v25 = 0;
  }

  else
  {
    v46 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      account = v52->_account;
      *buf = 138412546;
      v62 = v52;
      v63 = 2112;
      v64 = account;
      _os_log_impl(&dword_1959FF000, v46, OS_LOG_TYPE_DEFAULT, "sendPayload - could not find account uniqueID! self: %@ account: %@", buf, 0x16u);
    }

    v35 = 0;
    v25 = @"Could not find account uniqueID!";
    v24 = 7;
  }

  if (a7)
  {
LABEL_31:
    v38 = v35;
    *v37 = v35;
  }

LABEL_32:
  if (v25)
  {
    v39 = objc_alloc(MEMORY[0x1E695DF20]);
    v40 = [v39 initWithObjectsAndKeys:{v25, *MEMORY[0x1E696A578], 0}];
    v41 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:v24 userInfo:v40];
    if (v53)
    {
      v41 = v41;
      *v53 = v41;
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return v25 == 0;
}

- (BOOL)sendMessage:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v69 = *MEMORY[0x1E69E9840];
  v54 = a3;
  v10 = a4;
  v55 = a6;
  v11 = +[IDSInternalQueueController sharedInstance];
  v12 = [v11 assertQueueIsCurrent];

  if (v12)
  {
    v13 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B2EFD8();
    }
  }

  v53 = [v55 objectForKey:@"IDSSendMessageOptionTopLevelDictionary"];
  v14 = [v10 destinationURIs];
  v15 = [v14 count] == 0;

  if (v15)
  {
    v20 = @"Cannot send to empty destination set";
    v19 = 1;
  }

  else if (([v53 BOOLValue] & 1) != 0 || objc_msgSend(v54, "count"))
  {
    v16 = [(_IDSConnection *)self account];
    v17 = [v16 _internal];
    v18 = [v17 isActive];

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = 8;
    }

    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = @"Cannot send with an inactive account";
    }
  }

  else
  {
    v20 = @"Cannot send empty message";
    v19 = 5;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v21 = [v10 destinationURIs];
  v22 = [v21 countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v22)
  {
    v23 = *v57;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v57 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v56 + 1) + 8 * i);
        if ((_IDSDestinationHasValidPrefix() & 1) == 0)
        {
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid address: %@", v25];

          v19 = 21;
          v20 = v26;
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v56 objects:v68 count:16];
    }

    while (v22);
  }

  if (v20)
  {
    v27 = 0;
    goto LABEL_48;
  }

  v28 = [(_IDSConnection *)self account];
  v29 = [v28 _internal];
  v30 = [v29 uniqueID];

  if (!v30)
  {
    v33 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      account = self->_account;
      *buf = 138412546;
      v61 = self;
      v62 = 2112;
      v63 = account;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "sendPayload - could not find account uniqueID! self: %@ account: %@", buf, 0x16u);
    }

    v27 = 0;
    v20 = @"Could not find account uniqueID!";
    v19 = 7;
    goto LABEL_47;
  }

  v31 = [v55 objectForKey:@"IDSSendMessageOptionSkipPayloadCheck"];
  v32 = [v31 BOOLValue];

  if ((v32 & 1) == 0)
  {
    v33 = [MEMORY[0x1E696AE40] dataWithPropertyList:v54 format:200 options:0 error:0];
    if ([v33 length]<= 0x500000)
    {
      if (v33)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }

    v33 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "sendPayload - could not plist serialize dictionary.", buf, 2u);
    }

    v27 = 0;
    v20 = @"Could not plist serialize dictionary or otherwise empty payload";
    v19 = 6;
    goto LABEL_47;
  }

  v33 = 0;
LABEL_36:
  v35 = [v55 mutableCopy];
  [v35 removeObjectForKey:@"IDSSendMessageOptionDataToEncrypt"];
  v36 = +[IDSTransportLog IDSConnection];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = @"Sync";
    if (a5 == 200)
    {
      v37 = @"Default";
    }

    if (a5 == 300)
    {
      v38 = @"URGENT";
    }

    else
    {
      v38 = v37;
    }

    v39 = [(IDSAccount *)self->_account _internal];
    v40 = [v39 serviceName];
    *buf = 138544130;
    v61 = v38;
    v62 = 2114;
    v63 = v40;
    v64 = 2112;
    v65 = v10;
    v66 = 2112;
    v67 = v35;
    _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "Client request to send %{public}@ message (dictionary) service: %{public}@  to destinations: %@   options: %@]", buf, 0x2Au);
  }

  v41 = objc_alloc_init(MEMORY[0x1E69A53E0]);
  [v41 setPriority:a5];
  [v41 setDestinations:v10];
  [v41 setMessage:v54];
  v27 = -[_IDSConnection _sendWithParameters:options:loggingType:loggingDataSize:](self, "_sendWithParameters:options:loggingType:loggingDataSize:", v41, v55, @"message (dictionary)", [v54 count]);
  v42 = v27;

  v20 = 0;
LABEL_47:

LABEL_48:
  if (a7)
  {
    v43 = v27;
    *a7 = v27;
  }

  if (v20)
  {
    v44 = objc_alloc(MEMORY[0x1E695DF20]);
    v45 = [v44 initWithObjectsAndKeys:{v20, *MEMORY[0x1E696A578], 0}];
    v46 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:v19 userInfo:v45];
    if (a8)
    {
      v46 = v46;
      *a8 = v46;
    }
  }

  v47 = *MEMORY[0x1E69E9840];
  return v20 == 0;
}

- (BOOL)sendData:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v64 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = +[IDSInternalQueueController sharedInstance];
  v16 = [v15 assertQueueIsCurrent];

  if (v16)
  {
    v17 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F0E4();
    }
  }

  v51 = a8;
  v54 = v14;
  v18 = [v14 objectForKey:@"IDSSendMessageOptionSkipPayloadCheck"];
  v19 = [v18 BOOLValue];

  v20 = [v13 destinationURIs];
  v21 = [v20 count];

  v50 = self;
  if (v21)
  {
    v22 = [(IDSAccount *)self->_account _internal];
    v23 = [v22 isActive];

    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = 8;
    }

    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = @"Cannot send with an inactive account";
    }

    if (!(v19 & 1 | ((v23 & 1) == 0)))
    {
      v26 = [v12 length];
      if (v26 <= 0x500000)
      {
        v24 = 0;
      }

      else
      {
        v24 = 18;
      }

      if (v26 <= 0x500000)
      {
        v25 = 0;
      }

      else
      {
        v25 = @"Cannot send payload of this size";
      }
    }
  }

  else
  {
    v25 = @"Cannot send to empty destination set";
    v24 = 1;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = v13;
  v27 = [v13 destinationURIs];
  v28 = [v27 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v56;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v56 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v55 + 1) + 8 * i);
        if ((_IDSDestinationHasValidPrefix() & 1) == 0)
        {
          v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid address: %@", v32];

          v24 = 21;
          v25 = v33;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v29);
  }

  if (v25)
  {
    v34 = 0;
    v35 = v53;
    v36 = v14;
    v37 = a7;
    if (!a7)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v44 = [(IDSAccount *)v50->_account _internal];
  v45 = [v44 uniqueID];

  v37 = a7;
  v35 = v53;
  if (v45)
  {
    v46 = objc_alloc_init(MEMORY[0x1E69A53E0]);
    [v46 setPriority:a5];
    [v46 setDestinations:v53];
    [v46 setData:v12];
    v34 = -[_IDSConnection _sendWithParameters:options:loggingType:loggingDataSize:](v50, "_sendWithParameters:options:loggingType:loggingDataSize:", v46, v54, @"data", [v12 length]);
    v47 = v34;
    v25 = 0;
  }

  else
  {
    v46 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      account = v50->_account;
      *buf = 138412546;
      v60 = v50;
      v61 = 2112;
      v62 = account;
      _os_log_impl(&dword_1959FF000, v46, OS_LOG_TYPE_DEFAULT, "sendPayload - could not find account uniqueID! self: %@ account: %@", buf, 0x16u);
    }

    v34 = 0;
    v25 = @"Could not find account uniqueID!";
    v24 = 7;
  }

  v36 = v54;
  if (a7)
  {
LABEL_31:
    v38 = v34;
    *v37 = v34;
  }

LABEL_32:
  if (v25)
  {
    v39 = objc_alloc(MEMORY[0x1E695DF20]);
    v40 = [v39 initWithObjectsAndKeys:{v25, *MEMORY[0x1E696A578], 0}];
    v41 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:v24 userInfo:v40];
    if (v51)
    {
      v41 = v41;
      *v51 = v41;
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return v25 == 0;
}

- (BOOL)sendInvitation:(id)a3 toDestination:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v75 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v64 = a6;
  v14 = +[IDSInternalQueueController sharedInstance];
  v15 = [v14 assertQueueIsCurrent];

  if (v15)
  {
    v16 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F184();
    }
  }

  v17 = [v13 destinationURIs];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [(IDSAccount *)self->_account _internal];
    v20 = [v19 isActive];

    if (v20)
    {
      v21 = [MEMORY[0x1E695DF00] now];
      v22 = [(_IDSConnection *)v12 expirationDate];
      v23 = [v21 compare:v22];

      if (v23 == 1)
      {
        v24 = 54;
      }

      else
      {
        v24 = 0;
      }

      if (v23 == 1)
      {
        v25 = @"Invitation has expired";
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = @"Cannot send with an inactive account";
      v24 = 8;
    }
  }

  else
  {
    v25 = @"Cannot send to empty destination set";
    v24 = 1;
  }

  v62 = a8;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v65 = v13;
  v26 = [v13 destinationURIs];
  v27 = [v26 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v67;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v67 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v66 + 1) + 8 * i);
        if ((_IDSDestinationHasValidPrefix() & 1) == 0)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid address: %@", v31];

          v24 = 21;
          v25 = v32;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v28);
  }

  v33 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v71 = v12;
    _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "sendInvitation - preparing to send invitation : %@", buf, 0xCu);
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35 = [(_IDSConnection *)v12 uniqueID];
  v36 = [v35 UUIDString];
  [(IDSAccount *)v34 setValue:v36 forKey:*MEMORY[0x1E69A49E0]];

  v37 = [(_IDSConnection *)v12 context];
  v38 = [v37 payload];
  [(IDSAccount *)v34 setValue:v38 forKey:*MEMORY[0x1E69A49A8]];

  v39 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_IDSConnection state](v12, "state")}];
  [(IDSAccount *)v34 setValue:v39 forKey:*MEMORY[0x1E69A49D8]];

  v40 = [(_IDSConnection *)v12 expirationDate];

  if (v40)
  {
    v41 = MEMORY[0x1E696AD98];
    v42 = [(_IDSConnection *)v12 expirationDate];
    [v42 timeIntervalSince1970];
    v43 = [v41 numberWithDouble:?];
    [(IDSAccount *)v34 setValue:v43 forKey:*MEMORY[0x1E69A49C0]];
  }

  v44 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = [(_IDSConnection *)v12 uniqueID];
    v46 = [v45 UUIDString];
    *buf = 138412546;
    v71 = v46;
    v72 = 2112;
    v73 = v34;
    _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "sendInvitation - invitation payload for id {%@}: %@", buf, 0x16u);
  }

  if (v25)
  {
    v47 = 0;
    v49 = v64;
    v48 = v65;
  }

  else
  {
    v50 = [(IDSAccount *)self->_account _internal];
    v51 = [v50 uniqueID];

    if (v51)
    {
      v52 = objc_alloc_init(MEMORY[0x1E69A53E0]);
      [v52 setPriority:a5];
      v48 = v65;
      [v52 setDestinations:v65];
      [v52 setMessage:v34];
      v49 = v64;
      v47 = [(_IDSConnection *)self _sendWithParameters:v52 options:v64 loggingType:@"invitation (send)" loggingDataSize:[(IDSAccount *)v34 count]];
      v53 = v47;
      v25 = 0;
    }

    else
    {
      v52 = +[IDSLogging IDSConnection];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        account = self->_account;
        *buf = 138412546;
        v71 = self;
        v72 = 2112;
        v73 = account;
        _os_log_impl(&dword_1959FF000, v52, OS_LOG_TYPE_DEFAULT, "sendInvitation - could not find account uniqueID! self: %@ account: %@", buf, 0x16u);
      }

      v47 = 0;
      v25 = @"Could not find account uniqueID!";
      v24 = 7;
      v49 = v64;
      v48 = v65;
    }
  }

  if (a7)
  {
    v55 = v47;
    *a7 = v47;
  }

  if (v25)
  {
    v56 = objc_alloc(MEMORY[0x1E695DF20]);
    v57 = [v56 initWithObjectsAndKeys:{v25, *MEMORY[0x1E696A578], 0}];
    v58 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:v24 userInfo:v57];
    if (v62)
    {
      v58 = v58;
      *v62 = v58;
    }
  }

  v59 = *MEMORY[0x1E69E9840];
  return v25 == 0;
}

- (BOOL)sendInvitationUpdate:(id)a3 toDestination:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v75 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v64 = a6;
  v14 = +[IDSInternalQueueController sharedInstance];
  v15 = [v14 assertQueueIsCurrent];

  if (v15)
  {
    v16 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F224();
    }
  }

  v17 = [v13 destinationURIs];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [(IDSAccount *)self->_account _internal];
    v20 = [v19 isActive];

    if (v20)
    {
      v21 = [MEMORY[0x1E695DF00] now];
      v22 = [(_IDSConnection *)v12 expirationDate];
      v23 = [v21 compare:v22];

      if (v23 == 1)
      {
        v24 = 54;
      }

      else
      {
        v24 = 0;
      }

      if (v23 == 1)
      {
        v25 = @"Invitation has expired";
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = @"Cannot send with an inactive account";
      v24 = 8;
    }
  }

  else
  {
    v25 = @"Cannot send to empty destination set";
    v24 = 1;
  }

  v62 = a8;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v65 = v13;
  v26 = [v13 destinationURIs];
  v27 = [v26 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v67;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v67 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v66 + 1) + 8 * i);
        if ((_IDSDestinationHasValidPrefix() & 1) == 0)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid address: %@", v31];

          v24 = 21;
          v25 = v32;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v28);
  }

  v33 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v71 = v12;
    _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - preparing to send invitation : %@", buf, 0xCu);
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35 = [(_IDSConnection *)v12 uniqueID];
  v36 = [v35 UUIDString];
  [(IDSAccount *)v34 setValue:v36 forKey:*MEMORY[0x1E69A49E0]];

  v37 = [(_IDSConnection *)v12 context];
  v38 = [v37 payload];
  [(IDSAccount *)v34 setValue:v38 forKey:*MEMORY[0x1E69A49A8]];

  v39 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_IDSConnection state](v12, "state")}];
  [(IDSAccount *)v34 setValue:v39 forKey:*MEMORY[0x1E69A49D8]];

  v40 = [(_IDSConnection *)v12 expirationDate];

  if (v40)
  {
    v41 = MEMORY[0x1E696AD98];
    v42 = [(_IDSConnection *)v12 expirationDate];
    [v42 timeIntervalSince1970];
    v43 = [v41 numberWithDouble:?];
    [(IDSAccount *)v34 setValue:v43 forKey:*MEMORY[0x1E69A49C0]];
  }

  v44 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = [(_IDSConnection *)v12 uniqueID];
    v46 = [v45 UUIDString];
    *buf = 138412546;
    v71 = v46;
    v72 = 2112;
    v73 = v34;
    _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - invitation payload for id {%@}: %@", buf, 0x16u);
  }

  if (v25)
  {
    v47 = 0;
    v49 = v64;
    v48 = v65;
  }

  else
  {
    v50 = [(IDSAccount *)self->_account _internal];
    v51 = [v50 uniqueID];

    if (v51)
    {
      v52 = objc_alloc_init(MEMORY[0x1E69A53E0]);
      [v52 setPriority:a5];
      v48 = v65;
      [v52 setDestinations:v65];
      [v52 setMessage:v34];
      v49 = v64;
      v47 = [(_IDSConnection *)self _sendWithParameters:v52 options:v64 loggingType:@"invitation (update)" loggingDataSize:[(IDSAccount *)v34 count]];
      v53 = v47;
      v25 = 0;
    }

    else
    {
      v52 = +[IDSLogging IDSConnection];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        account = self->_account;
        *buf = 138412546;
        v71 = self;
        v72 = 2112;
        v73 = account;
        _os_log_impl(&dword_1959FF000, v52, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - could not find account uniqueID! self: %@ account: %@", buf, 0x16u);
      }

      v47 = 0;
      v25 = @"Could not find account uniqueID!";
      v24 = 7;
      v49 = v64;
      v48 = v65;
    }
  }

  if (a7)
  {
    v55 = v47;
    *a7 = v47;
  }

  if (v25)
  {
    v56 = objc_alloc(MEMORY[0x1E695DF20]);
    v57 = [v56 initWithObjectsAndKeys:{v25, *MEMORY[0x1E696A578], 0}];
    v58 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:v24 userInfo:v57];
    if (v62)
    {
      v58 = v58;
      *v62 = v58;
    }
  }

  v59 = *MEMORY[0x1E69E9840];
  return v25 == 0;
}

- (BOOL)sendServerMessage:(id)a3 command:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F2C4();
    }
  }

  if (v7 && [v6 count])
  {
    v11 = [(IDSAccount *)self->_account _internal];
    v12 = [v11 uniqueID];

    v13 = [(_IDSConnection *)self daemonController];
    [v13 sendServerMessage:v6 command:v7 usingAccountWithUniqueID:v12];

    v14 = 1;
  }

  else
  {
    v12 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412802;
      v18 = self;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_error_impl(&dword_1959FF000, v12, OS_LOG_TYPE_ERROR, "%@ asked to send server message %@ with command %@ - invalid value!", &v17, 0x20u);
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)connection:(id)a3 incomingAckWithIdentifier:(id)a4 forTopic:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 hasBeenDeliveredWithContext:(id)a8 isAppAck:(BOOL)a9
{
  v31 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (self->_directMessageConnection == v15)
  {
    v21 = +[IDSLogging IDSConnection];
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (a9)
    {
      if (v22)
      {
        *buf = 138412546;
        v28 = v15;
        v29 = 2112;
        v30 = v16;
        _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "incomingAppLevelAckFromDirectConnection: %@ guid %@", buf, 0x16u);
      }

      v23 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v18];
      v24 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v19];
      [(_IDSConnection *)self messageIdentifier:v16 forTopic:v17 toURI:v23 fromURI:v24 hasBeenDeliveredWithContext:v20];
    }

    else
    {
      if (v22)
      {
        *buf = 138412546;
        v28 = v15;
        v29 = 2112;
        v30 = v16;
        _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "incomingAckFromDirectConnection: %@ guid %@", buf, 0x16u);
      }

      v23 = [(IDSAccount *)self->_account _internal];
      v24 = [v23 uniqueID];
      LOBYTE(v26) = 1;
      [(_IDSConnection *)self messageIdentifierInner:v16 alternateCallbackID:0 forAccount:v24 updatedWithResponseCode:0 error:0 lastCall:1 context:v20 isDirectMessage:v26];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingDataFromDirectConnection:(id)a4 withGUID:(id)a5 forTopic:(id)a6 toIdentifier:(id)a7 fromID:(id)a8 context:(id)a9
{
  v30 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a5;
  if (self->_directMessageConnection == v15)
  {
    v17 = a9;
    v18 = a8;
    v19 = a7;
    v20 = a6;
    v21 = a4;
    v22 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "incomingDataFromDirectConnection: %@ guid %@", &v26, 0x16u);
    }

    v23 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v19];

    v24 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v18];

    [(_IDSConnection *)self dataReceived:v21 withGUID:v16 forTopic:v20 toURI:v23 fromURI:v24 context:v17];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingMessageFromDirectConnection:(id)a4 withGUID:(id)a5 forTopic:(id)a6 toIdentifier:(id)a7 fromID:(id)a8 context:(id)a9
{
  v28 = *MEMORY[0x1E69E9840];
  v15 = a3;
  if (self->_directMessageConnection == v15)
  {
    v16 = a9;
    v17 = a8;
    v18 = a7;
    v19 = a6;
    v20 = a5;
    v21 = a4;
    v22 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v15;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "incomingMessageFromDirectConnection: %@", buf, 0xCu);
    }

    v23 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v18];

    v24 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v17];

    [(_IDSConnection *)self messageReceived:0 withGUID:v20 withPayload:v21 forTopic:v19 toURI:v23 fromURI:v24 context:v16];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingProtobufFromDirectConnection:(id)a4 withGUID:(id)a5 forTopic:(id)a6 toIdentifier:(id)a7 fromID:(id)a8 context:(id)a9
{
  v28 = *MEMORY[0x1E69E9840];
  v15 = a3;
  if (self->_directMessageConnection == v15)
  {
    v16 = a9;
    v17 = a8;
    v18 = a7;
    v19 = a6;
    v20 = a5;
    v21 = a4;
    v22 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v15;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "incomingProtobufFromDirectConnection: %@", &v26, 0xCu);
    }

    v23 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v18];

    v24 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v17];

    [(_IDSConnection *)self protobufReceived:v21 withGUID:v20 forTopic:v19 toURI:v23 fromURI:v24 context:v16];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingGUIDAckFromDirectConnection:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "incomingGUIDAckFromDirectConnection: %@/%@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 messageSendFailed:(id)a4 responseCode:(int64_t)a5
{
  if (self->_directMessageConnection == a3)
  {
    account = self->_account;
    v9 = a4;
    v14 = [(IDSAccount *)account _internal];
    v10 = [v14 uniqueID];
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = [v11 initWithDomain:*MEMORY[0x1E69A5098] code:a5 userInfo:0];
    LOBYTE(v13) = 1;
    [(_IDSConnection *)self messageIdentifierInner:v9 alternateCallbackID:0 forAccount:v10 updatedWithResponseCode:a5 error:v12 lastCall:1 context:0 isDirectMessage:v13];
  }
}

- (void)account:(id)a3 isActiveChanged:(BOOL)a4
{
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F364();
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A76ACC;
  v9[3] = &unk_1E7440E80;
  v9[4] = self;
  v10 = a4;
  [(_IDSConnection *)self _callDelegatesWithBlock:v9];
}

- (void)account:(id)a3 devicesChanged:(id)a4
{
  v5 = a4;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F404();
    }
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_195A76C50;
  v14 = &unk_1E7440EA8;
  v15 = self;
  v9 = v5;
  v16 = v9;
  [(_IDSConnection *)self _callDelegatesWithBlock:&v11];
  directMessageConnection = self->_directMessageConnection;
  if (directMessageConnection)
  {
    [(IDSDirectMessageConnection *)directMessageConnection updateConnectedDevices:v9, v11, v12, v13, v14, v15];
  }
}

- (void)account:(id)a3 nearbyDevicesChanged:(id)a4
{
  v5 = a4;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F4A4();
    }
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_195A76DD4;
  v14 = &unk_1E7440EA8;
  v15 = self;
  v9 = v5;
  v16 = v9;
  [(_IDSConnection *)self _callDelegatesWithBlock:&v11];
  directMessageConnection = self->_directMessageConnection;
  if (directMessageConnection)
  {
    [(IDSDirectMessageConnection *)directMessageConnection updateConnectedDevices:v9, v11, v12, v13, v14, v15];
  }
}

- (void)account:(id)a3 connectedDevicesChanged:(id)a4
{
  v5 = a4;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F544();
    }
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_195A76F58;
  v14 = &unk_1E7440EA8;
  v15 = self;
  v9 = v5;
  v16 = v9;
  [(_IDSConnection *)self _callDelegatesWithBlock:&v11];
  directMessageConnection = self->_directMessageConnection;
  if (directMessageConnection)
  {
    [(IDSDirectMessageConnection *)directMessageConnection updateConnectedDevices:v9, v11, v12, v13, v14, v15];
  }
}

- (void)_handleLastCallForPendingIdentifier:(id)a3 callbackID:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    [(IMOrderedMutableDictionary *)self->_pendingSends removeOrderedObjectForKey:v8];
  }

  if (v6)
  {
    [(IMOrderedMutableDictionary *)self->_pendingSends removeOrderedObjectForKey:v6];
  }

  if (![(IMOrderedMutableDictionary *)self->_pendingSends count])
  {
    pendingSends = self->_pendingSends;
    self->_pendingSends = 0;
  }
}

- (void)messageIdentifierInner:(id)a3 alternateCallbackID:(id)a4 forAccount:(id)a5 updatedWithResponseCode:(int64_t)a6 error:(id)a7 lastCall:(BOOL)a8 context:(id)a9 isDirectMessage:(BOOL)a10
{
  v10 = a8;
  v90 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v63 = a7;
  v19 = a9;
  v20 = +[IDSInternalQueueController sharedInstance];
  v21 = [v20 assertQueueIsCurrent];

  if (v21)
  {
    v22 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F8B4();
    }
  }

  v23 = [(IDSAccount *)self->_account _internal];
  v24 = [v23 uniqueID];
  v25 = IMAreObjectsLogicallySame();

  if (v25)
  {
    v61 = v17;
    v26 = 0x1E743D000uLL;
    v27 = +[IDSLogging GUIDTRACE];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = @"NO";
      *buf = 138412802;
      v73 = v16;
      if (v10)
      {
        v28 = @"YES";
      }

      v74 = 2048;
      v75 = a6;
      v76 = 2112;
      v77 = v28;
      _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "OUTGOING-UPDATE:%@ CODE:%ld LASTCALL:%@", buf, 0x20u);
    }

    v60 = self->_messageContext;
    v62 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:v19 boostContext:v60];
    v29 = 0x1E743D000uLL;
    v30 = +[IDSTransportLog IDSConnection];
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (a6 == 29)
    {
      if (v31)
      {
        v32 = [v19 objectForKey:*MEMORY[0x1E69A4E80]];
        v33 = [v19 objectForKey:*MEMORY[0x1E69A4E78]];
        v34 = [v19 objectForKey:*MEMORY[0x1E69A4E88]];
        v35 = v34;
        *buf = 138414338;
        v36 = @"NO";
        v73 = self;
        v74 = 2114;
        if (v10)
        {
          v36 = @"YES";
        }

        v75 = v16;
        v76 = 2112;
        v77 = v61;
        v78 = 2048;
        v79 = 29;
        v80 = 2114;
        v81 = v63;
        v82 = 2114;
        v83 = v32;
        v84 = 2114;
        v85 = v33;
        v86 = 2114;
        v87 = v34;
        v88 = 2112;
        v89 = v36;
        _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "%@ outgoing message guid response: %{public}@  callbackID: %@  response code: %ld   error: %{public}@  WiProx error: Error Domain=%{public}@ Code=%{public}@ %{public}@  lastCall: %@", buf, 0x5Cu);

        v29 = 0x1E743D000;
        v26 = 0x1E743D000;
      }
    }

    else if (v31)
    {
      if (v10)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v38 = [v62 endpointState];
      *buf = 138413826;
      v73 = self;
      v74 = 2114;
      v75 = v16;
      v76 = 2112;
      v77 = v17;
      v78 = 2048;
      v79 = a6;
      v80 = 2114;
      v81 = v63;
      v82 = 2112;
      v83 = v37;
      v29 = 0x1E743D000uLL;
      v84 = 2048;
      v85 = v38;
      _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "%@ outgoing message guid response: %{public}@  callbackID: %@  response code: %ld   error: %{public}@   lastCall: %@  endpointState: %ld", buf, 0x48u);
    }

    if (a6 != 11 && !v10)
    {
      goto LABEL_22;
    }

    v17 = v61;
    [(_IDSConnection *)self _handleLastCallForPendingIdentifier:v16 callbackID:v61];
    if (a6 == 11)
    {
      goto LABEL_35;
    }

    [v62 originalCommand];
    v57 = v56 = v29;
    v58 = [v57 isEqualToNumber:&unk_1F0A29918];

    v29 = v56;
    if (v58)
    {
      [_IDSConnection didCancelMessageWithSuccess:"didCancelMessageWithSuccess:onAccount:error:identifier:" onAccount:(a6 | v63) == 0 error:v18 identifier:?];
    }

    else
    {
LABEL_22:
      v39 = [*(v29 + 1456) IDSConnection];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v62 serverReceivedTime];
        [v62 serverTimestamp];
        v42 = v41 = v26;
        *buf = 138412546;
        v73 = v40;
        v74 = 2112;
        v75 = v42;
        _os_log_impl(&dword_1959FF000, v39, OS_LOG_TYPE_DEFAULT, "Server Timestamp for UpdatedWithResponseCode? { serverReceivedTime: %@, serverTimestamp: %@}", buf, 0x16u);

        v26 = v41;
      }

      v59 = a6 == 0;
      v43 = sub_195A0AAB0(v63);
      v44 = v43;
      v45 = !v10;
      if (a6 && (v45 & 1) == 0 && !v43)
      {
        v46 = [*(v26 + 1160) IDSConnection];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_195B2F954(v46);
        }

        v47 = objc_alloc(MEMORY[0x1E695DF20]);
        v48 = [v47 initWithObjectsAndKeys:{@"Unknown error", *MEMORY[0x1E696A578], 0}];
        v44 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:200 userInfo:v48];
      }

      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = sub_195A77778;
      v64[3] = &unk_1E7440ED0;
      v64[4] = self;
      v49 = v16;
      v65 = v49;
      v50 = v61;
      v66 = v50;
      v69 = a6;
      v51 = v44;
      v67 = v51;
      v70 = v10;
      v68 = v62;
      v71 = v59;
      [(_IDSConnection *)self _callDelegatesWithBlock:v64];
      if (((v45 | a10) & 1) == 0)
      {
        v52 = [(_IDSConnection *)self daemonController];
        v53 = [(IDSAccount *)self->_account _internal];
        v54 = [v53 uniqueID];
        [v52 acknowledgeOutgoingMessageWithGUID:v49 alternateCallbackID:v50 forAccountWithUniqueID:v54];
      }
    }

    v17 = v61;
LABEL_35:
  }

  v55 = *MEMORY[0x1E69E9840];
}

- (void)messageIdentifier:(id)a3 alternateCallbackID:(id)a4 forAccount:(id)a5 willSendToDestinations:(id)a6 skippedDestinations:(id)a7 registrationPropertyToDestinations:(id)a8
{
  v49 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a5;
  v20 = +[IDSInternalQueueController sharedInstance];
  v21 = [v20 assertQueueIsCurrent];

  if (v21)
  {
    v22 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F998();
    }
  }

  v23 = [(IDSAccount *)self->_account _internal];
  v24 = [v23 uniqueID];
  v25 = IMAreObjectsLogicallySame();

  if (v25)
  {
    v26 = +[IDSTransportLog IDSConnection];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
      *buf = 138413570;
      v38 = self;
      v39 = 2112;
      v40 = v14;
      v41 = 2112;
      v42 = v15;
      v43 = 2112;
      v44 = v27;
      v45 = 2112;
      v46 = v28;
      v47 = 2112;
      v48 = v29;
      _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "%@ identifier %@ callbackID %@ willSendToDests count %@ skipped count %@  map count %@", buf, 0x3Eu);
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_195A77C84;
    v31[3] = &unk_1E7440EF8;
    v31[4] = self;
    v32 = v14;
    v33 = v15;
    v34 = v16;
    v35 = v17;
    v36 = v18;
    [(_IDSConnection *)self _callDelegatesWithBlock:v31];
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)messageIdentifier:(id)a3 forTopic:(id)a4 toURI:(id)a5 fromURI:(id)a6 hasBeenDeliveredWithContext:(id)a7
{
  v54 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v37 = a6;
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a5) = [v16 assertQueueIsCurrent];

  if (a5)
  {
    v17 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FA38();
    }
  }

  v18 = self->_messageContext;
  v19 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:v13 boostContext:v18];
  v20 = [v19 outgoingResponseIdentifier];
  v21 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"app-level ack" forTopic:v15 localURI:v14 remoteURI:0 validateAliases:1 guid:v20];

  if (v21)
  {
    v22 = +[IDSTransportLog IDSConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v49 = self;
      v50 = 2112;
      v51 = v12;
      v52 = 2112;
      v53 = v13;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "%@ received app-level ack with identifier %@ context %@", buf, 0x20u);
    }

    v23 = dispatch_group_create();
    dispatch_group_enter(v23);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_195A78190;
    v44[3] = &unk_1E7440F20;
    v44[4] = self;
    v36 = v12;
    v45 = v12;
    v46 = v37;
    v47 = v13;
    [(_IDSConnection *)self _callDelegatesWithBlock:v44 group:v23];
    v24 = [v19 storageGuid];
    v25 = [v19 broadcastTime];

    if (v25)
    {
      v26 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v28 = v27;
      v29 = [v19 broadcastTime];
      [v29 doubleValue];
      v25 = [v26 numberWithDouble:v28 - v30];
    }

    v31 = +[IDSInternalQueueController sharedInstance];
    v32 = [v31 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A78210;
    block[3] = &unk_1E743EF38;
    v39 = v24;
    v40 = v25;
    v41 = self;
    v42 = v20;
    v43 = v19;
    v33 = v25;
    v34 = v24;
    dispatch_group_notify(v23, v32, block);

    dispatch_group_leave(v23);
    v12 = v36;
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)didSendOpportunisticDataWithIdentifier:(id)a3 onAccount:(id)a4 toIDs:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSInternalQueueController sharedInstance];
  v12 = [v11 assertQueueIsCurrent];

  if (v12)
  {
    v13 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FAD8();
    }
  }

  v14 = [(IDSAccount *)self->_account _internal];
  v15 = [v14 uniqueID];
  v16 = IMAreObjectsLogicallySame();

  if (v16)
  {
    v17 = [MEMORY[0x1E69A5270] opportunistic];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v23 = self;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "Recieved did send opportunistic data {connection: %@, identifier: %@, accountID: %@, toIDs: %@}", buf, 0x2Au);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_195A78520;
    v19[3] = &unk_1E7440F48;
    v19[4] = self;
    v20 = v8;
    v21 = v10;
    [(_IDSConnection *)self _callDelegatesWithBlock:v19];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)didCancelMessageWithSuccess:(BOOL)a3 onAccount:(id)a4 error:(id)a5 identifier:(id)a6
{
  v7 = a3;
  v31 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  v11 = +[IDSInternalQueueController sharedInstance];
  v12 = [v11 assertQueueIsCurrent];

  if (v12)
  {
    v13 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FB78();
    }
  }

  v14 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    *buf = 138413058;
    v24 = self;
    if (v7)
    {
      v15 = @"YES";
    }

    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "%@: didCancelMessageWithSuccess: %@ error: %@ identifier %@", buf, 0x2Au);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195A7877C;
  v19[3] = &unk_1E7440F70;
  v22 = v7;
  v19[4] = self;
  v20 = v9;
  v21 = v10;
  v16 = v10;
  v17 = v9;
  [(_IDSConnection *)self _callDelegatesWithBlock:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_setTemporaryMessageContext:(id)a3
{
  v5 = a3;
  messageContext = self->_messageContext;
  p_messageContext = &self->_messageContext;
  if (messageContext != v5)
  {
    v8 = v5;
    objc_storeStrong(p_messageContext, a3);
    v5 = v8;
  }
}

- (BOOL)_shouldAcceptIncomingType:(id)a3 forTopic:(id)a4 localURI:(id)a5 remoteURI:(id)a6 validateAliases:(BOOL)a7 guid:(id)a8
{
  v9 = a7;
  v132 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v99 = self;
  v19 = [(_IDSConnection *)self account];
  v20 = [v19 _internal];
  v21 = [v20 pushTopic];
  v22 = [(__CFString *)v15 isEqualToIgnoringCase:v21];

  if ((v22 & 1) == 0)
  {
    v49 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [(IDSAccount *)v99->_account _internal];
      v51 = [v50 pushTopic];
      *buf = 134218754;
      v115 = v99;
      v116 = 2112;
      v117 = v14;
      v118 = 2112;
      v119 = v15;
      v120 = 2112;
      v121 = v51;
      _os_log_impl(&dword_1959FF000, v49, OS_LOG_TYPE_DEFAULT, "_IDSConnection incoming topic for another connection {self: %p, type: %@, topic: %@, self.topic: %@}", buf, 0x2Au);
    }

    goto LABEL_53;
  }

  if (v9)
  {
    v92 = v18;
    v95 = v14;
    v97 = v15;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v23 = [(_IDSConnection *)v99 account];
    v24 = [v23 _internal];
    v25 = [v24 handles];

    v26 = [v25 countByEnumeratingWithState:&v109 objects:v131 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v110;
      while (2)
      {
        v29 = v17;
        for (i = 0; i != v27; ++i)
        {
          if (*v110 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v31 = [*(*(&v109 + 1) + 8 * i) URI];
          v32 = [v31 unprefixedURI];
          v33 = [(__CFString *)v16 unprefixedURI];
          v34 = [v32 isEqualToString:v33];

          if (v34)
          {

            v14 = v95;
            v15 = v97;
            v17 = v29;
            v18 = v92;
            goto LABEL_24;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v109 objects:v131 count:16];
        v17 = v29;
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v35 = [(__CFString *)v16 prefixedURI];
    v36 = [v35 _appearsToBePseudonymID];

    if (v36)
    {
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v37 = [(_IDSConnection *)v99 account];
      v38 = [v37 _internal];
      v39 = [v38 pseudonyms];

      v40 = [v39 countByEnumeratingWithState:&v105 objects:v130 count:16];
      if (v40)
      {
        v41 = v40;
        v81 = v17;
        v42 = *v106;
        v18 = v92;
        while (2)
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v106 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = [*(*(&v105 + 1) + 8 * j) URI];
            v45 = [v44 prefixedURI];
            v46 = [(__CFString *)v16 unprefixedURI];
            v47 = [v45 isEqualToString:v46];

            if (v47)
            {
              v48 = 1;
              goto LABEL_62;
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v105 objects:v130 count:16];
          if (v41)
          {
            continue;
          }

          break;
        }

        v48 = 0;
LABEL_62:
        v17 = v81;
      }

      else
      {
        v48 = 0;
        v18 = v92;
      }

      v14 = v95;
      v15 = v97;
    }

    else
    {
      v48 = 0;
      v14 = v95;
      v15 = v97;
      v18 = v92;
    }

    if (v16 && (v48 & 1) == 0)
    {
      v49 = +[IDSLogging IDSConnection_oversize];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v96 = [(IDSAccount *)v99->_account _internal];
        v77 = [v96 handles];
        v78 = [(IDSAccount *)v99->_account uniqueID];
        v79 = [(IDSAccount *)v99->_account _internal];
        v80 = [v79 pseudonyms];
        *buf = 134219266;
        v115 = v99;
        v116 = 2112;
        v117 = v14;
        v118 = 2112;
        v119 = v16;
        v120 = 2112;
        v121 = v77;
        v122 = 2112;
        v123 = v78;
        v124 = 2112;
        v125 = v80;
        _os_log_impl(&dword_1959FF000, v49, OS_LOG_TYPE_DEFAULT, "_IDSConnection incoming handle for another connection {self: %p, type: %@, localURI: %@, self.aliases: %@, account.uuid: %@, self.pseudonyms: %@}", buf, 0x3Eu);

        v15 = v97;
      }

LABEL_53:
      v62 = 0;
      goto LABEL_54;
    }
  }

LABEL_24:
  if (![(_IDSConnection *)v99 _isAccountInValidRegistrationStateToAcceptMessages])
  {
    v63 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v91 = [(IDSAccount *)v99->_account _internal];
      v94 = [v91 uniqueID];
      v90 = [(IDSAccount *)v99->_account _internal];
      if ([v90 isActive])
      {
        v64 = @"YES";
      }

      else
      {
        v64 = @"NO";
      }

      v86 = v64;
      v89 = [(IDSAccount *)v99->_account _internal];
      if ([v89 registrationStatus] == 5)
      {
        v65 = @"YES";
      }

      else
      {
        v65 = @"NO";
      }

      v84 = v65;
      v88 = [(IDSAccount *)v99->_account _internal];
      if ([v88 accountType] == 2)
      {
        v66 = @"YES";
      }

      else
      {
        v66 = @"NO";
      }

      v83 = v66;
      v87 = [(IDSAccount *)v99->_account _internal];
      v67 = [v87 primaryServiceName];
      v85 = [(IDSAccount *)v99->_account _internal];
      v68 = v18;
      v69 = v17;
      v70 = [v85 registrationStatus];
      v71 = [(IDSAccount *)v99->_account _internal];
      v72 = [v71 registrationCertificate];
      *buf = 138414082;
      if (v72)
      {
        v73 = @"YES";
      }

      else
      {
        v73 = @"NO";
      }

      v115 = v14;
      v116 = 2112;
      v117 = v94;
      v118 = 2112;
      v119 = v86;
      v120 = 2112;
      v121 = v84;
      v122 = 2112;
      v123 = v83;
      v124 = 2112;
      v125 = v67;
      v126 = 2048;
      v127 = v70;
      v17 = v69;
      v18 = v68;
      v128 = 2112;
      v129 = v73;
      _os_log_impl(&dword_1959FF000, v63, OS_LOG_TYPE_DEFAULT, "Ignoring %@, account is not configured: %@    isActive: %@  isRegistered: %@  isLocal: %@  serviceIdentifier: %@  registrationStatus: %ld  registrationCert: %@", buf, 0x52u);
    }

    v49 = [objc_alloc(MEMORY[0x1E69A5338]) initWithReason:703 guid:v18 service:v15 additionalInformation:0];
    [(_IDSConnection *)v99 _sendMissingMessageMetric:v49];
    goto LABEL_53;
  }

  if (!v17)
  {
    v62 = 1;
    goto LABEL_55;
  }

  v52 = [(__CFString *)v17 unprefixedURI];
  v104 = 0;
  v53 = [v52 _stripPotentialTokenURIWithToken:&v104];
  v49 = v104;

  if (v49 && v53)
  {
    v93 = v18;
    v98 = v15;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v54 = [(IDSAccount *)v99->_account _internal];
    v55 = [v54 suppressedDevices];

    v56 = [v55 countByEnumeratingWithState:&v100 objects:v113 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v101;
      v82 = v17;
      while (2)
      {
        for (k = 0; k != v57; ++k)
        {
          if (*v101 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = [*(*(&v100 + 1) + 8 * k) _internal];
          v61 = [v60 pushToken];

          if ([v61 isEqualToData:v49])
          {
            v76 = +[IDSTransportLog IDSConnection];
            v15 = v98;
            v17 = v82;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v115 = v14;
              v116 = 2112;
              v117 = v98;
              v118 = 2112;
              v119 = v82;
              _os_log_impl(&dword_1959FF000, v76, OS_LOG_TYPE_DEFAULT, "Ignoring %@ for topic %@ because fromID %@ is a suppressed IDSDevice.", buf, 0x20u);
            }

            v62 = 0;
            v18 = v93;
            goto LABEL_54;
          }
        }

        v57 = [v55 countByEnumeratingWithState:&v100 objects:v113 count:16];
        v17 = v82;
        if (v57)
        {
          continue;
        }

        break;
      }
    }

    v15 = v98;
    v18 = v93;
  }

  v62 = 1;
LABEL_54:

LABEL_55:
  v74 = *MEMORY[0x1E69E9840];
  return v62;
}

- (void)opportunisticDataReceived:(id)a3 withIdentifier:(id)a4 fromURI:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x1E69A5320];
  v14 = self->_messageContext;
  v15 = a6;
  v16 = [[v13 alloc] initWithDictionary:v15 boostContext:v14];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195A792D4;
  v21[3] = &unk_1E7440F98;
  v21[4] = self;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v16;
  v17 = v16;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  [(_IDSConnection *)self _callDelegatesWithBlock:v21];
}

- (void)messageReceived:(id)a3 withGUID:(id)a4 withPayload:(id)a5 forTopic:(id)a6 toURI:(id)a7 fromURI:(id)a8 context:(id)a9
{
  v92 = *MEMORY[0x1E69E9840];
  v52 = a3;
  v53 = a4;
  v56 = a5;
  v58 = a6;
  v57 = a7;
  v59 = a8;
  v54 = a9;
  v15 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a7) = [v15 assertQueueIsCurrent];

  if (a7)
  {
    v16 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FC18();
    }
  }

  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v81 = _os_activity_create(&dword_1959FF000, "Connection recieved message", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v81, &state);
  v55 = self->_messageContext;
  v60 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:v54 boostContext:v55];
  v17 = [v60 outgoingResponseIdentifier];
  v18 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"message" forTopic:v58 localURI:v57 remoteURI:v59 validateAliases:1 guid:v17];

  if (v18)
  {
    v19 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v56 count];
      *buf = 138413570;
      *v84 = self;
      *&v84[8] = 2112;
      v85 = v53;
      *v86 = 2112;
      *&v86[2] = v58;
      *v87 = 2112;
      *&v87[2] = v59;
      v88 = 2112;
      v89 = v57;
      v90 = 1024;
      v91 = v20;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "%@ received message: %@  topic %@  from: %@  to: %@  payload items: %d", buf, 0x3Au);
    }

    v51 = v53;
    if ([v51 length])
    {
      v50 = v51;
      if ([v51 length])
      {
LABEL_13:
        v21 = +[IDSLogging GUIDTRACE];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v84 = v50;
          *&v84[8] = 2112;
          v85 = v58;
          _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "INCOMING-CLIENT_MESSAGE:%@ SERVICE:%@", buf, 0x16u);
        }

        v22 = [v56 count];
        v23 = v22;
        if (v22 > 0x7FFE)
        {
          v27 = +[IDSLogging IDSConnection];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v84 = v51;
            _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "Warning! Message with guid %@ exceeds size limitations of MPKL_UUID_NEXT macro.", buf, 0xCu);
          }
        }

        else
        {
          v82[0] = 0xAAAAAAAAAAAAAAAALL;
          v82[1] = 0xAAAAAAAAAAAAAAAALL;
          v24 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v51];
          [v24 getUUIDBytes:v82];

          v25 = [MEMORY[0x1E69A5270] CrossLayerLogging];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            incomingMessageLoggingSequence = self->_incomingMessageLoggingSequence;
            self->_incomingMessageLoggingSequence = incomingMessageLoggingSequence + 1;
            *buf = 67110402;
            *v84 = 120;
            *&v84[4] = 1024;
            *&v84[6] = 255;
            v85 = 0x832000000100412;
            *v86 = v82;
            *&v86[8] = 1024;
            *v87 = v23;
            *&v87[4] = 1024;
            *&v87[6] = incomingMessageLoggingSequence;
            _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "9 {curProtocol: %hhu, nextProtocol: %hhu, curUUID: %{public,uuid_t}.16P, curPktLen: %u, logSeqn: %hhu}", buf, 0x2Au);
          }
        }

        if (self->_indirectDelegateCallouts)
        {
          v28 = 0;
        }

        else
        {
          v28 = dispatch_group_create();
          dispatch_group_enter(v28);
        }

        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 3221225472;
        v77[2] = sub_195A79BA0;
        v77[3] = &unk_1E7440F48;
        v77[4] = self;
        v29 = v56;
        v78 = v29;
        v30 = v59;
        v79 = v30;
        [(_IDSConnection *)self _callDelegatesWithBlock:v77 group:v28];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = sub_195A79C1C;
        v73[3] = &unk_1E7440F20;
        v73[4] = self;
        v74 = v29;
        v31 = v30;
        v75 = v31;
        v32 = v60;
        v76 = v32;
        [(_IDSConnection *)self _callDelegatesWithBlock:v73 group:v28];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = sub_195A79C9C;
        v69[3] = &unk_1E7440F20;
        v69[4] = self;
        v70 = v52;
        v33 = v31;
        v71 = v33;
        v34 = v32;
        v72 = v34;
        [(_IDSConnection *)self _callDelegatesWithBlock:v69 group:v28];
        if (v28)
        {
          v35 = [v34 wantsAppAck];
          v49 = [v34 isDirectMessage];
          v36 = [v34 outgoingResponseIdentifier];
          v37 = [v34 broadcastTime];

          if (v37)
          {
            v38 = MEMORY[0x1E696AD98];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v40 = v39;
            v41 = [v34 broadcastTime];
            [v41 doubleValue];
            v43 = [v38 numberWithDouble:v40 - v42];
          }

          else
          {
            v43 = 0;
          }

          v44 = +[IDSInternalQueueController sharedInstance];
          v45 = [v44 queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_195A79D1C;
          block[3] = &unk_1E7440FC0;
          v67 = v35;
          v68 = v49;
          block[4] = self;
          v62 = v36;
          v63 = v34;
          v64 = v33;
          v65 = v51;
          v66 = v43;
          v46 = v43;
          v47 = v36;
          dispatch_group_notify(v28, v45, block);

          dispatch_group_leave(v28);
        }

        goto LABEL_31;
      }

      v50 = [v60 incomingResponseIdentifier];
    }

    else
    {
      v50 = [v60 outgoingResponseIdentifier];
    }

    goto LABEL_13;
  }

LABEL_31:

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v48 = *MEMORY[0x1E69E9840];
}

- (void)receivedBatchMessage:(id)a3 forTopic:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v32 = a4;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FCBC();
    }
  }

  if ([(_IDSConnection *)self _shouldAcceptIncomingType:@"batch message" forTopic:v32 localURI:0 remoteURI:0 validateAliases:0 guid:0])
  {
    [MEMORY[0x1E695DF70] array];
    v29 = v28 = v5;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v5 messages];
    v9 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          v14 = [v13 messageContext];
          v15 = MEMORY[0x1E69A5428];
          v16 = [v14 toID];
          v17 = [v15 URIWithPrefixedURI:v16];

          v18 = MEMORY[0x1E69A5428];
          v19 = [v14 fromID];
          v20 = [v18 URIWithPrefixedURI:v19];

          v21 = [v14 originalGUID];
          if ([(_IDSConnection *)self _shouldAcceptIncomingType:@"message" forTopic:v32 localURI:v17 remoteURI:v20 validateAliases:1 guid:v21])
          {
            [v29 addObject:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v10);
    }

    v22 = objc_alloc(MEMORY[0x1E69A52C8]);
    v5 = v28;
    v23 = [v28 context];
    v24 = [v22 initWithMessages:v29 service:v32 context:v23];

    v25 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v40 = self;
      v41 = 2112;
      v42 = v24;
      v43 = 2112;
      v44 = v32;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "%@: received batch message: %@ topic: %@", buf, 0x20u);
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_195A7A294;
    v33[3] = &unk_1E7440EA8;
    v33[4] = self;
    v34 = v24;
    v26 = v24;
    [(_IDSConnection *)self _callDelegatesWithBlock:v33];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)dataReceived:(id)a3 withGUID:(id)a4 forTopic:(id)a5 toURI:(id)a6 fromURI:(id)a7 context:(id)a8
{
  v81 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a6) = [v20 assertQueueIsCurrent];

  if (a6)
  {
    v21 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FD5C();
    }
  }

  v22 = self->_messageContext;
  v23 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:v19 boostContext:v22];

  v24 = [v23 outgoingResponseIdentifier];
  if ([(_IDSConnection *)self _shouldAcceptIncomingType:@"data" forTopic:v16 localURI:v17 remoteURI:v18 validateAliases:1 guid:v24])
  {
    v58 = v24;
    v55 = v22;
    v25 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      *v75 = self;
      *&v75[8] = 2112;
      v76 = v15;
      *v77 = 2112;
      *&v77[2] = v16;
      *v78 = 2112;
      *&v78[2] = v18;
      v79 = 2112;
      v80 = v17;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "%@ received data: %@ topic %@  from: %@  to: %@", buf, 0x34u);
    }

    v26 = v15;
    if ([v26 length])
    {
      v59 = v26;
      if ([v26 length])
      {
LABEL_13:
        v54 = v26;
        v28 = +[IDSLogging GUIDTRACE];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v75 = v59;
          *&v75[8] = 2112;
          v76 = v16;
          _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "INCOMING-CLIENT_DATA:%@ SERVICE:%@", buf, 0x16u);
        }

        v29 = [v14 length];
        if (v29 <= 0x7FFE)
        {
          v30 = v29;
          v73[0] = 0xAAAAAAAAAAAAAAAALL;
          v73[1] = 0xAAAAAAAAAAAAAAAALL;
          v31 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v59];
          [v31 getUUIDBytes:v73];

          v32 = [MEMORY[0x1E69A5270] CrossLayerLogging];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            incomingMessageLoggingSequence = self->_incomingMessageLoggingSequence;
            self->_incomingMessageLoggingSequence = incomingMessageLoggingSequence + 1;
            *buf = 67110402;
            *v75 = 120;
            *&v75[4] = 1024;
            *&v75[6] = 255;
            v76 = 0x832000000100412;
            *v77 = v73;
            *&v77[8] = 1024;
            *v78 = v30;
            *&v78[4] = 1024;
            *&v78[6] = incomingMessageLoggingSequence;
            _os_log_impl(&dword_1959FF000, v32, OS_LOG_TYPE_DEFAULT, "9 {curProtocol: %hhu, nextProtocol: %hhu, curUUID: %{public,uuid_t}.16P, curPktLen: %u, logSeqn: %hhu}", buf, 0x2Au);
          }
        }

        v57 = v17;
        if (self->_indirectDelegateCallouts)
        {
          v34 = 0;
        }

        else
        {
          v34 = dispatch_group_create();
          dispatch_group_enter(v34);
        }

        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = sub_195A7A924;
        v69[3] = &unk_1E7440F20;
        v69[4] = self;
        v35 = v14;
        v70 = v35;
        v56 = v18;
        v36 = v18;
        v71 = v36;
        v37 = v23;
        v72 = v37;
        [(_IDSConnection *)self _callDelegatesWithBlock:v69 group:v34];
        if (v34)
        {
          v51 = v16;
          v52 = v15;
          v53 = v14;
          v50 = [v37 wantsAppAck];
          v38 = [v37 isDirectMessage];
          v39 = [v37 broadcastTime];

          if (v39)
          {
            v40 = MEMORY[0x1E696AD98];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v42 = v41;
            v43 = [v37 broadcastTime];
            [v43 doubleValue];
            v45 = [v40 numberWithDouble:v42 - v44];
          }

          else
          {
            v45 = 0;
          }

          v46 = +[IDSInternalQueueController sharedInstance];
          v47 = [v46 queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_195A7A9A4;
          block[3] = &unk_1E7440FE8;
          v67 = v50;
          v68 = v38;
          block[4] = self;
          v61 = v58;
          v62 = v37;
          v63 = v36;
          v64 = v54;
          v65 = v45;
          v66 = v35;
          v48 = v45;
          dispatch_group_notify(v34, v47, block);

          dispatch_group_leave(v34);
          v15 = v52;
          v14 = v53;
          v16 = v51;
        }

        v18 = v56;
        v17 = v57;
        v22 = v55;
        v24 = v58;
        goto LABEL_28;
      }

      v27 = [v23 incomingResponseIdentifier];
    }

    else
    {
      v27 = [v23 outgoingResponseIdentifier];
    }

    v59 = v27;

    goto LABEL_13;
  }

LABEL_28:

  v49 = *MEMORY[0x1E69E9840];
}

- (void)accessoryDataReceived:(id)a3 withGUID:(id)a4 forTopic:(id)a5 toURI:(id)a6 fromURI:(id)a7 context:(id)a8
{
  v72 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v48 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = +[IDSInternalQueueController sharedInstance];
  v20 = [v19 assertQueueIsCurrent];

  if (v20)
  {
    v21 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FDFC();
    }
  }

  v22 = self->_messageContext;
  v23 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:v18 boostContext:v22];

  v24 = [v23 outgoingResponseIdentifier];
  if ([(_IDSConnection *)self _shouldAcceptIncomingType:@"data" forTopic:v15 localURI:v16 remoteURI:v17 validateAliases:0 guid:v24])
  {
    v45 = v15;
    v47 = v14;
    v25 = [(_IDSConnection *)self account];
    v26 = [v25 _internal];
    v27 = [v26 accountType];

    v28 = +[IDSLogging IDSConnection];
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v27 == 1)
    {
      v15 = v45;
      if (v29)
      {
        *buf = 138413314;
        v63 = self;
        v64 = 2112;
        v65 = v48;
        v66 = 2112;
        v67 = v45;
        v68 = 2112;
        v69 = v17;
        v70 = 2112;
        v71 = v16;
        _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "%@ received Accessory data: %@ topic %@  from: %@  to: %@", buf, 0x34u);
      }

      if (self->_indirectDelegateCallouts)
      {
        v28 = 0;
      }

      else
      {
        v28 = dispatch_group_create();
        dispatch_group_enter(v28);
      }

      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = sub_195A7B080;
      v58[3] = &unk_1E7440F20;
      v58[4] = self;
      v30 = v47;
      v59 = v30;
      v44 = v17;
      v60 = v44;
      v31 = v23;
      v61 = v31;
      [(_IDSConnection *)self _callDelegatesWithBlock:v58 group:v28];
      if (v28)
      {
        v43 = v30;
        v42 = [v31 wantsAppAck];
        v32 = [v31 broadcastTime];

        if (v32)
        {
          v33 = MEMORY[0x1E696AD98];
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v35 = v34;
          v36 = [v31 broadcastTime];
          [v36 doubleValue];
          v41 = [v33 numberWithDouble:v35 - v37];

          v15 = v45;
        }

        else
        {
          v41 = 0;
        }

        v46 = +[IDSInternalQueueController sharedInstance];
        v38 = [v46 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_195A7B100;
        block[3] = &unk_1E7441010;
        v57 = v42;
        v50 = v31;
        v51 = self;
        v52 = v24;
        v53 = v44;
        v54 = v48;
        v55 = v41;
        v56 = v43;
        v39 = v41;
        dispatch_group_notify(v28, v38, block);

        dispatch_group_leave(v28);
      }
    }

    else
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "Accessory data commands are only supported on AppleID accounts, This one is not for me.", buf, 2u);
      }

      v15 = v45;
    }

    v14 = v47;
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)accessoryReportMessageReceived:(id)a3 accessoryID:(id)a4 controllerID:(id)a5 withGUID:(id)a6 forTopic:(id)a7 toURI:(id)a8 fromURI:(id)a9 context:(id)a10
{
  v71 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v16 = a4;
  v17 = a5;
  v47 = a6;
  v44 = a7;
  v45 = a8;
  v18 = a9;
  v19 = a10;
  v20 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a6) = [v20 assertQueueIsCurrent];

  if (a6)
  {
    v21 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FE9C();
    }
  }

  v22 = self->_messageContext;
  v23 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:v19 boostContext:v22];

  v24 = [v23 outgoingResponseIdentifier];
  v26 = v44;
  v25 = v45;
  if ([(_IDSConnection *)self _shouldAcceptIncomingType:@"accessoryReportMessage" forTopic:v44 localURI:v45 remoteURI:v18 validateAliases:0 guid:v24])
  {
    v27 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v62 = self;
      v63 = 2112;
      v64 = v47;
      v65 = 2112;
      v66 = v44;
      v67 = 2112;
      v68 = v18;
      v69 = 2112;
      v70 = v45;
      _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "%@ received Accessory Report Message: %@ topic %@  from: %@  to: %@", buf, 0x34u);
    }

    if (self->_indirectDelegateCallouts)
    {
      v28 = 0;
    }

    else
    {
      v28 = dispatch_group_create();
      dispatch_group_enter(v28);
    }

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = sub_195A7B748;
    v56[3] = &unk_1E7440F98;
    v56[4] = self;
    v57 = v46;
    v58 = v16;
    v59 = v17;
    v29 = v23;
    v60 = v29;
    [(_IDSConnection *)self _callDelegatesWithBlock:v56 group:v28];
    if (v28)
    {
      v42 = v17;
      v43 = v16;
      v41 = [v29 wantsAppAck];
      v30 = [v29 broadcastTime];

      if (v30)
      {
        v31 = MEMORY[0x1E696AD98];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v33 = v32;
        v34 = [v29 broadcastTime];
        [v34 doubleValue];
        v36 = [v31 numberWithDouble:v33 - v35];
      }

      else
      {
        v36 = 0;
      }

      v37 = +[IDSInternalQueueController sharedInstance];
      v38 = [v37 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195A7B7C8;
      block[3] = &unk_1E7441038;
      v55 = v41;
      v49 = v29;
      v50 = self;
      v51 = v24;
      v52 = v18;
      v53 = v47;
      v54 = v36;
      v39 = v36;
      dispatch_group_notify(v28, v38, block);

      dispatch_group_leave(v28);
      v17 = v42;
      v16 = v43;
      v26 = v44;
    }

    v25 = v45;
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)incomingInvitation:(id)a3 withGUID:(id)a4 forTopic:(id)a5 toURI:(id)a6 fromURI:(id)a7 context:(id)a8
{
  v30 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a7;
  v15 = self->_messageContext;
  v16 = MEMORY[0x1E69A5320];
  v17 = a8;
  v18 = a6;
  v19 = a5;
  v20 = [[v16 alloc] initWithDictionary:v17 boostContext:v15];

  v21 = [v20 outgoingResponseIdentifier];
  LODWORD(v17) = [(_IDSConnection *)self _shouldAcceptIncomingType:@"message" forTopic:v19 localURI:v18 remoteURI:v14 validateAliases:1 guid:v21];

  if (v17)
  {
    v22 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "incomingInvitation - received incoming invitation message : %@", buf, 0xCu);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_195A7BB88;
    v24[3] = &unk_1E7440F20;
    v24[4] = self;
    v25 = v13;
    v26 = v14;
    v27 = v20;
    [(_IDSConnection *)self _callDelegatesWithBlock:v24];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)incomingInvitationUpdate:(id)a3 withGUID:(id)a4 forTopic:(id)a5 toURI:(id)a6 fromURI:(id)a7 context:(id)a8
{
  v30 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a7;
  v15 = self->_messageContext;
  v16 = MEMORY[0x1E69A5320];
  v17 = a8;
  v18 = a6;
  v19 = a5;
  v20 = [[v16 alloc] initWithDictionary:v17 boostContext:v15];

  v21 = [v20 outgoingResponseIdentifier];
  LODWORD(v17) = [(_IDSConnection *)self _shouldAcceptIncomingType:@"message" forTopic:v19 localURI:v18 remoteURI:v14 validateAliases:1 guid:v21];

  if (v17)
  {
    v22 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "incomingInvitationUpdate - received incoming invitation message : %@", buf, 0xCu);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_195A7BE18;
    v24[3] = &unk_1E7440F20;
    v24[4] = self;
    v25 = v13;
    v26 = v14;
    v27 = v20;
    [(_IDSConnection *)self _callDelegatesWithBlock:v24];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)protobufReceived:(id)a3 withGUID:(id)a4 forTopic:(id)a5 toURI:(id)a6 fromURI:(id)a7 context:(id)a8
{
  v81[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v62 = a7;
  v17 = a8;
  v18 = a6;
  v19 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a5) = [v19 assertQueueIsCurrent];

  if (a5)
  {
    v20 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FF3C();
    }
  }

  v21 = self->_messageContext;
  v22 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:v17 boostContext:v21];
  v23 = [v17 objectForKey:@"IDSMessageContextSequenceNumberKey"];

  [v23 unsignedIntegerValue];
  kdebug_trace();

  v24 = [v22 outgoingResponseIdentifier];
  v25 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"protobuf" forTopic:v16 localURI:v18 remoteURI:v62 validateAliases:1 guid:v24];

  if (v14 && v25)
  {
    v61 = v16;
    v26 = [objc_alloc(MEMORY[0x1E69A5388]) initWithDictionary:v14];
    [v26 setContext:v22];
    v27 = v15;
    if ([v27 length])
    {
      v28 = v27;
      if ([v27 length])
      {
LABEL_12:
        v59 = v27;
        v56 = v21;
        v30 = +[IDSLogging GUIDTRACE];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v77 = v28;
          *&v77[8] = 2112;
          v78 = v61;
          _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "INCOMING-CLIENT_PROTOBUF:%@ SERVICE:%@", buf, 0x16u);
        }

        v60 = v28;

        v31 = [v22 totalBytes];
        v32 = [v31 longValue];

        v57 = v15;
        if (v32 <= 0x7FFE)
        {
          v81[0] = 0xAAAAAAAAAAAAAAAALL;
          v81[1] = 0xAAAAAAAAAAAAAAAALL;
          v33 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v60];
          [v33 getUUIDBytes:v81];

          v34 = [MEMORY[0x1E69A5270] CrossLayerLogging];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            incomingMessageLoggingSequence = self->_incomingMessageLoggingSequence;
            self->_incomingMessageLoggingSequence = incomingMessageLoggingSequence + 1;
            *buf = 67110402;
            *v77 = 120;
            *&v77[4] = 1024;
            *&v77[6] = 255;
            v78 = 0x832000000100412;
            *v79 = v81;
            *&v79[8] = 1024;
            *v80 = v32;
            *&v80[4] = 1024;
            *&v80[6] = incomingMessageLoggingSequence;
            _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "9 {curProtocol: %hhu, nextProtocol: %hhu, curUUID: %{public,uuid_t}.16P, curPktLen: %u, logSeqn: %hhu}", buf, 0x2Au);
          }
        }

        v36 = +[IDSLogging IDSConnection];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          *v77 = v59;
          *&v77[8] = 2112;
          v78 = v61;
          *v79 = 2112;
          *&v79[2] = @"(unknown)";
          *v80 = 2112;
          *&v80[2] = v62;
          _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "Client received protobuf from daemon %@ for topic: %@  messageID: %@  fromID: %@", buf, 0x2Au);
        }

        v58 = v14;

        if (self->_indirectDelegateCallouts)
        {
          v37 = 0;
        }

        else
        {
          v37 = dispatch_group_create();
          dispatch_group_enter(v37);
        }

        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = sub_195A7C58C;
        v72[3] = &unk_1E7440F20;
        v72[4] = self;
        v38 = v26;
        v73 = v38;
        v39 = v62;
        v74 = v39;
        v40 = v22;
        v75 = v40;
        [(_IDSConnection *)self _callDelegatesWithBlock:v72 group:v37];
        if (v37)
        {
          v41 = +[IDSLogging IDSConnection];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v77 = v59;
            _os_log_impl(&dword_1959FF000, v41, OS_LOG_TYPE_DEFAULT, "Ack'ing message %@ to daemon that client got it", buf, 0xCu);
          }

          v55 = [v40 wantsAppAck];
          v54 = [v40 isDirectMessage];
          v42 = [v40 outgoingResponseIdentifier];
          v43 = [v40 broadcastTime];

          if (v43)
          {
            v44 = MEMORY[0x1E696AD98];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v46 = v45;
            v47 = [v40 broadcastTime];
            [v47 doubleValue];
            v43 = [v44 numberWithDouble:v46 - v48];
          }

          v49 = +[IDSInternalQueueController sharedInstance];
          v50 = [v49 queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_195A7C6B8;
          block[3] = &unk_1E7440FE8;
          v70 = v55;
          v71 = v54;
          block[4] = self;
          v64 = v42;
          v65 = v40;
          v66 = v39;
          v67 = v59;
          v68 = v43;
          v69 = v38;
          v51 = v43;
          v52 = v42;
          dispatch_group_notify(v37, v50, block);

          dispatch_group_leave(v37);
        }

        v15 = v57;
        v14 = v58;
        v16 = v61;
        v21 = v56;
        goto LABEL_30;
      }

      v29 = [v22 incomingResponseIdentifier];
    }

    else
    {
      v29 = [v22 outgoingResponseIdentifier];
    }

    v28 = v29;

    goto LABEL_12;
  }

LABEL_30:

  v53 = *MEMORY[0x1E69E9840];
}

- (void)receivedMetadataForDirectMessaging:(id)a3
{
  v5 = a3;
  if (_IDSSupportsDirectMessaging())
  {
    v6 = +[IDSInternalQueueController sharedInstance];
    v7 = [v6 assertQueueIsCurrent];

    if (v7)
    {
      v8 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_195B2FFDC();
      }
    }

    directMessageConnection = self->_directMessageConnection;
    if (directMessageConnection)
    {
      [(IDSDirectMessageConnection *)directMessageConnection updateMetadata:v5];
    }

    objc_storeStrong(&self->_directMessagingMetadata, a3);
  }
}

- (void)xpcObject:(id)a3 objectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_195B3007C();
    }

    if (v7)
    {
      Value = CFDictionaryGetValue(v7, @"object-type");
    }

    else
    {
      Value = 0;
    }

    if ([Value isEqualToIgnoringCase:@"direct-messaging-socket-received"])
    {
      if (self->_directMessageConnection || ([(_IDSConnection *)self createDirectMessageConnectionIfNeeded], self->_directMessageConnection))
      {
        string_ptr = xpc_string_get_string_ptr(v6);
        if (string_ptr)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string_ptr];
          if (v7)
          {
            v12 = CFDictionaryGetValue(v7, @"object-flags");
            v13 = CFDictionaryGetValue(v7, @"object-recipient");
          }

          else
          {
            v12 = 0;
            v13 = 0;
          }

          v14 = v13;
          v15 = +[IDSLogging IDSConnection];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            sub_195B300F0();
          }

          if (v14 && (-[IDSAccount serviceName](self->_account, "serviceName"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v14 isEqualToString:v16], v16, (v17 & 1) != 0))
          {
            v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v18 setObject:v11 forKeyedSubscript:@"streamName"];
            if (v12)
            {
              [v18 setObject:v12 forKeyedSubscript:@"streamFlags"];
            }

            [(IDSDirectMessageConnection *)self->_directMessageConnection receivedDirectMessagingSocketWithContext:v18];
          }

          else
          {
            v18 = +[IDSLogging IDSConnection];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              sub_195B30164(self, v18);
            }
          }
        }
      }
    }
  }
}

- (void)didFlushCacheForService:(id)a3 remoteURI:(id)a4 fromURI:(id)a5 guid:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSInternalQueueController sharedInstance];
  v15 = [v14 assertQueueIsCurrent];

  if (v15)
  {
    v16 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B301FC();
    }
  }

  v17 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v12];
  v18 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"flush cache notification" forTopic:v10 localURI:v17 remoteURI:0 validateAliases:1 guid:v13];

  if (v18)
  {
    v19 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "Client received notification that cache was flushed { service: %@, remoteURI: %@, fromURI: %@, guid: %@ }", buf, 0x2Au);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195A7CDF0;
    v21[3] = &unk_1E7440F20;
    v21[4] = self;
    v22 = v11;
    v23 = v12;
    v24 = v13;
    [(_IDSConnection *)self _callDelegatesWithBlock:v21];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)didFlushCacheFromKTPeerUpdateForService:(id)a3 peerURI:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B3029C();
    }
  }

  v11 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Client received notification that cache was flushed from KT peer update { service: %@, peerURI: %@ }", buf, 0x16u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A7D00C;
  v14[3] = &unk_1E7440EA8;
  v14[4] = self;
  v15 = v7;
  v12 = v7;
  [(_IDSConnection *)self _callDelegatesWithBlock:v14];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)pendingIncomingMessageWithGUID:(id)a3 forTopic:(id)a4 toURI:(id)a5 fromURI:(id)a6 context:(id)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a5;
  v17 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a5) = [v17 assertQueueIsCurrent];

  if (a5)
  {
    v18 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_195B3033C();
    }
  }

  v19 = self->_messageContext;
  v20 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:v15 boostContext:v19];

  v21 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"pending" forTopic:v13 localURI:v16 remoteURI:v14 validateAliases:1 guid:v12];
  if (v21)
  {
    [v20 setOriginalGUID:v12];
    v22 = v12;
    if ([v22 length])
    {
      v23 = v22;
      if ([v22 length])
      {
LABEL_11:
        v25 = +[IDSLogging GUIDTRACE];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v33 = v23;
          v34 = 2112;
          v35 = v13;
          _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "INCOMING-CLIENT_PENDING:%@ SERVICE:%@", buf, 0x16u);
        }

        v26 = +[IDSLogging IDSConnection];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v33 = v22;
          v34 = 2112;
          v35 = v13;
          v36 = 2112;
          v37 = @"(unknown)";
          v38 = 2112;
          v39 = v14;
          _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "Client received pending incoming message from daemon %@ for topic: %@  messageID: %@  fromID: %@", buf, 0x2Au);
        }

        if ([(IMSystemMonitor *)self->_systemMonitor isUnderFirstDataProtectionLock])
        {
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = sub_195A7D3F8;
          v29[3] = &unk_1E7440F48;
          v29[4] = self;
          v30 = v14;
          v31 = v20;
          [(_IDSConnection *)self _callDelegatesWithBlock:v29];
        }

        else
        {
          v27 = +[IDSLogging IDSConnection];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "Device is no longer under first unlock. Not forwarding pending incoming message to the client.", buf, 2u);
          }
        }

        goto LABEL_21;
      }

      v24 = [v20 incomingResponseIdentifier];
    }

    else
    {
      v24 = [v20 outgoingResponseIdentifier];
    }

    v23 = v24;

    goto LABEL_11;
  }

LABEL_21:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)pendingResourceWithMetadata:(id)a3 guid:(id)a4 forTopic:(id)a5 toURI:(id)a6 fromURI:(id)a7 context:(id)a8
{
  v45 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a6;
  v20 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a6) = [v20 assertQueueIsCurrent];

  if (a6)
  {
    v21 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_195B303DC();
    }
  }

  v22 = self->_messageContext;
  v23 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:v18 boostContext:v22];

  v24 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"pending" forTopic:v16 localURI:v19 remoteURI:v17 validateAliases:1 guid:v15];
  if (v24)
  {
    [v23 setOriginalGUID:v15];
    v25 = v15;
    if ([v25 length])
    {
      v30 = v25;
      if ([v25 length])
      {
LABEL_11:
        v27 = +[IDSLogging GUIDTRACE];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v38 = v31;
          v39 = 2112;
          v40 = v16;
          _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "INCOMING-CLIENT_RESOURCE_PENDING:%@ SERVICE:%@", buf, 0x16u);
        }

        v28 = +[IDSLogging IDSConnection];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v38 = v25;
          v39 = 2112;
          v40 = v16;
          v41 = 2112;
          v42 = @"(unknown)";
          v43 = 2112;
          v44 = v17;
          _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "Client received pending resource message from daemon %@ for topic: %@  messageID: %@  fromID: %@", buf, 0x2Au);
        }

        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = sub_195A7D7CC;
        v32[3] = &unk_1E7440F98;
        v32[4] = self;
        v33 = v14;
        v34 = v25;
        v35 = v17;
        v36 = v23;
        [(_IDSConnection *)self _callDelegatesWithBlock:v32];

        goto LABEL_16;
      }

      v26 = [v23 incomingResponseIdentifier];
    }

    else
    {
      v26 = [v23 outgoingResponseIdentifier];
    }

    v30 = v26;

    goto LABEL_11;
  }

LABEL_16:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)sessionInvitationReceivedWithPayload:(id)a3 forTopic:(id)a4 sessionID:(id)a5 toIdentifier:(id)a6 fromID:(id)a7 transportType:(id)a8
{
  v68 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v48 = a8;
  v19 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a5) = [v19 assertQueueIsCurrent];

  if (a5)
  {
    v20 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_195B3047C();
    }
  }

  v21 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v17];
  v22 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v18];
  v23 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"session invitation" forTopic:v15 localURI:v21 remoteURI:v22 validateAliases:1 guid:0];

  if (v23)
  {
    v24 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413570;
      v57 = v14;
      v58 = 2112;
      v59 = v15;
      v60 = 2112;
      v61 = v16;
      v62 = 2112;
      v63 = v17;
      v64 = 2112;
      v65 = v18;
      v66 = 2112;
      v67 = v48;
      _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "Received incoming invitation %@ forTopic %@ sessionID %@ toIdentifier %@ fromID %@ transportType %@", buf, 0x3Eu);
    }

    v25 = v16;
    v47 = v15;

    v26 = *MEMORY[0x1E69A4A00];
    v27 = [v14 objectForKey:*MEMORY[0x1E69A4A00]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = MEMORY[0x1E695DEF0];
      v29 = [v14 objectForKey:v26];
      v30 = [v28 _IDSDataFromBase64String:v29];
    }

    else
    {
      v29 = [v14 objectForKey:v26];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = 0;
        goto LABEL_14;
      }

      v30 = [v14 objectForKey:v26];
    }

    v31 = v30;
LABEL_14:

    objc_opt_class();
    v32 = *MEMORY[0x1E69A4A08];
    v33 = [v14 objectForKey:v32];
    v46 = v17;
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      if (v33)
      {
        v35 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          sub_195B3051C();
        }
      }

      v34 = 0;
    }

    v36 = self->_messageContext;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_195A7DCF0;
    v49[3] = &unk_1E7441060;
    v49[4] = self;
    v37 = v25;
    v38 = v25;
    v50 = v38;
    v51 = v18;
    v52 = v48;
    v53 = v34;
    v54 = v31;
    v55 = v36;
    v39 = v36;
    v40 = v31;
    v41 = v34;
    [(_IDSConnection *)self _callDelegatesWithBlock:v49];
    v42 = [(_IDSConnection *)self daemonController];
    v43 = [(_IDSConnection *)self daemonController];
    v44 = [v43 listenerID];
    [v42 acknowledgeSessionID:v38 clientID:v44];

    v16 = v37;
    v17 = v46;
    v15 = v47;
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)inviteDroppedWithPayload:(id)a3 forTopic:(id)a4 sessionID:(id)a5 toIdentifier:(id)a6 fromID:(id)a7 error:(id)a8
{
  v57 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v41 = a8;
  v19 = +[IDSInternalQueueController sharedInstance];
  v20 = [v19 assertQueueIsCurrent];

  if (v20)
  {
    v21 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_195B30584();
    }
  }

  v22 = v17;
  v23 = v15;
  v24 = *MEMORY[0x1E69A4A00];
  v25 = [v14 objectForKey:*MEMORY[0x1E69A4A00]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = MEMORY[0x1E695DEF0];
    v27 = [v14 objectForKey:v24];
    v28 = [v26 _IDSDataFromBase64String:v27];
LABEL_9:
    v29 = v28;
    goto LABEL_11;
  }

  v27 = [v14 objectForKey:v24];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v14 objectForKey:v24];
    goto LABEL_9;
  }

  v29 = 0;
LABEL_11:

  v30 = +[IDSLogging IDSConnection];
  v31 = v23;
  v32 = v22;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v48 = v14;
    v49 = 2112;
    v50 = v31;
    v51 = 2112;
    v52 = v16;
    v53 = 2112;
    v54 = v22;
    v55 = 2112;
    v56 = v18;
    _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "Received incoming invitation but dropped %@ forTopic %@ sessionID %@ toIdentifier %@ fromID %@", buf, 0x34u);
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_195A7E0DC;
  v42[3] = &unk_1E7440F98;
  v42[4] = self;
  v43 = v16;
  v44 = v18;
  v45 = v29;
  v46 = v41;
  v33 = v41;
  v34 = v29;
  v35 = v18;
  v36 = v16;
  [(_IDSConnection *)self _callDelegatesWithBlock:v42];
  v37 = [(_IDSConnection *)self daemonController];
  v38 = [(_IDSConnection *)self daemonController];
  v39 = [v38 listenerID];
  [v37 acknowledgeSessionID:v36 clientID:v39];

  v40 = *MEMORY[0x1E69E9840];
}

- (void)receivedGroupSessionParticipantUpdate:(id)a3 forTopic:(id)a4 toIdentifier:(id)a5 fromID:(id)a6 context:(id)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a6;
  v17 = +[IDSInternalQueueController sharedInstance];
  v18 = [v17 assertQueueIsCurrent];

  if (v18)
  {
    v19 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_195B30624();
    }
  }

  v20 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v14];
  v21 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v16];

  v22 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"group session participant update" forTopic:v13 localURI:v20 remoteURI:v21 validateAliases:1 guid:0];
  if (v22)
  {
    v23 = self->_messageContext;
    v24 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:v15 boostContext:v23];
    v25 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v13;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "Received incoming group session participant update forTopic %@", buf, 0xCu);
    }

    v26 = [objc_alloc(MEMORY[0x1E69A52A0]) initWithDictionaryRepresentation:v12];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_195A7E3F0;
    v30[3] = &unk_1E7440F48;
    v30[4] = self;
    v31 = v26;
    v32 = v24;
    v27 = v24;
    v28 = v26;
    [(_IDSConnection *)self _callDelegatesWithBlock:v30];
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)receivedGroupSessionParticipantDataUpdate:(id)a3 forTopic:(id)a4 toIdentifier:(id)a5 fromID:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSInternalQueueController sharedInstance];
  v15 = [v14 assertQueueIsCurrent];

  if (v15)
  {
    v16 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B306C4();
    }
  }

  v17 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v12];
  v18 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v13];

  v19 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"group session participant data update" forTopic:v11 localURI:v17 remoteURI:v18 validateAliases:1 guid:0];
  if (v19)
  {
    v20 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v11;
      _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Received incoming group session participant data update forTopic %@", buf, 0xCu);
    }

    v21 = [objc_alloc(MEMORY[0x1E69A52A0]) initWithDictionaryRepresentation:v10];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_195A7E6A8;
    v24[3] = &unk_1E7440EA8;
    v24[4] = self;
    v25 = v21;
    v22 = v21;
    [(_IDSConnection *)self _callDelegatesWithBlock:v24];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)checkTransportLogWithReason:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B30764();
    }
  }

  v8 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = a3;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "checkTransportLog {reason: %ld}", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A7E888;
  v10[3] = &unk_1E7441088;
  v10[4] = self;
  v10[5] = a3;
  [(_IDSConnection *)self _callDelegatesWithBlock:v10];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_sendMissingMessageMetric:(id)a3
{
  v6 = a3;
  if ([v6 shouldReportMetric])
  {
    v4 = [v6 payload];
    v5 = [v6 command];
    [(_IDSConnection *)self sendServerMessage:v4 command:v5];
  }
}

@end