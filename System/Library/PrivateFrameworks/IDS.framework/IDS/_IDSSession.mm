@interface _IDSSession
- (BOOL)getAudioEnabled;
- (BOOL)getMuted;
- (BOOL)sendData:(id)data error:(id *)error;
- (BOOL)shouldUseSocketForTransport;
- (IDSLinkSelectionStrategy)linkSelectionStrategy;
- (NSString)uniqueID;
- (_IDSSession)initWithAccount:(id)account destinations:(id)destinations options:(id)options delegateContext:(id)context;
- (_IDSSession)initWithAccount:(id)account destinations:(id)destinations transportType:(int64_t)type delegateContext:(id)context;
- (_IDSSession)initWithAccount:(id)account destinations:(id)destinations transportType:(int64_t)type uniqueID:(id)d delegateContext:(id)context;
- (id)_initWithAccount:(id)account destinations:(id)destinations options:(id)options delegateContext:(id)context;
- (id)_initWithAccount:(id)account destinations:(id)destinations transportType:(int64_t)type connectionCountHint:(unint64_t)hint needsToWaitForPreConnectionData:(BOOL)data uniqueID:(id)d delegateContext:(id)context;
- (id)daemonListener;
- (id)getPreferences;
- (int)socket;
- (int64_t)inviteTimeout;
- (unint64_t)MTUForAddressFamily:(unint64_t)family;
- (unsigned)sessionEndedReason;
- (void)_broadcastNewSessionToDaemon;
- (void)_callDelegateWithBlock:(id)block;
- (void)_cleanupSocketPairConnections;
- (void)_setupSocketPairToDaemon;
- (void)_setupUnreliableSocketPairConnection;
- (void)acceptInvitation;
- (void)acceptInvitationWithData:(id)data;
- (void)allocationDone:(id)done sessionInfo:(id)info;
- (void)cancelInvitation;
- (void)cancelInvitationWithData:(id)data;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)daemonDisconnected;
- (void)dealloc;
- (void)declineInvitation;
- (void)declineInvitationWithData:(id)data;
- (void)endSession;
- (void)endSessionWithData:(id)data;
- (void)reconnectSession;
- (void)sendAllocationRequest:(id)request;
- (void)sendInvitationWithOptions:(id)options;
- (void)sendSessionMessage:(id)message;
- (void)sendSessionMessage:(id)message toDestinations:(id)destinations;
- (void)session:(id)session audioEnabled:(BOOL)enabled;
- (void)session:(id)session didReceiveReport:(id)report;
- (void)session:(id)session invitationSentToTokens:(id)tokens shouldBreakBeforeMake:(BOOL)make;
- (void)session:(id)session muted:(BOOL)muted;
- (void)sessionAcceptReceived:(id)received fromID:(id)d withData:(id)data;
- (void)sessionCancelReceived:(id)received fromID:(id)d withData:(id)data;
- (void)sessionDeclineReceived:(id)received fromID:(id)d withData:(id)data;
- (void)sessionEndReceived:(id)received fromID:(id)d withData:(id)data;
- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)sessionMessageReceived:(id)received fromID:(id)d withData:(id)data;
- (void)sessionStarted:(id)started;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setInviteTimeout:(int64_t)timeout;
- (void)setLinkSelectionStrategy:(id)strategy;
- (void)setPreferences:(id)preferences;
- (void)xpcObject:(id)object objectContext:(id)context;
@end

@implementation _IDSSession

- (id)daemonListener
{
  v2 = +[IDSDaemonController sharedInstance];
  listener = [v2 listener];

  return listener;
}

- (id)_initWithAccount:(id)account destinations:(id)destinations transportType:(int64_t)type connectionCountHint:(unint64_t)hint needsToWaitForPreConnectionData:(BOOL)data uniqueID:(id)d delegateContext:(id)context
{
  v60 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  destinationsCopy = destinations;
  dCopy = d;
  contextCopy = context;
  if (_IDSRunningInDaemon())
  {
    v18 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E9C8();
    }

    selfCopy = 0;
  }

  else
  {
    v20 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v20 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B421E0();
      }
    }

    v58.receiver = self;
    v58.super_class = _IDSSession;
    v23 = [(_IDSSession *)&v58 init];
    if (v23)
    {
      hintCopy = hint;
      if ([dCopy length])
      {
        stringGUID = dCopy;
      }

      else
      {
        stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
      }

      uniqueID = v23->_uniqueID;
      v23->_uniqueID = stringGUID;
      dataCopy = data;

      _internal = [accountCopy _internal];
      uniqueID = [_internal uniqueID];
      accountID = v23->_accountID;
      v23->_accountID = uniqueID;

      v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v53 = destinationsCopy;
      v30 = destinationsCopy;
      v31 = [v30 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v55;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v55 != v33)
            {
              objc_enumerationMutation(v30);
            }

            destinationURIs = [*(*(&v54 + 1) + 8 * i) destinationURIs];
            [(NSSet *)v29 unionSet:destinationURIs];
          }

          v32 = [v30 countByEnumeratingWithState:&v54 objects:v59 count:16];
        }

        while (v32);
      }

      destinations = v23->_destinations;
      v23->_destinations = v29;
      v37 = v29;

      v38 = [MEMORY[0x1E6995700] weakRefWithObject:contextCopy];
      delegateContext = v23->_delegateContext;
      v23->_delegateContext = v38;

      queue = v23->_queue;
      v23->_queue = 0;

      delegate = v23->_delegate;
      v23->_delegate = 0;

      v23->_state = 0;
      v23->_transportType = 0;
      v23->_isAudioEnabled = 0;
      v23->_sessionEndedReason = 0;
      v23->_socket = -1;
      v23->_connectionCountHint = hintCopy;
      v23->_needsToWaitForPreConnectionData = dataCopy;
      _internal2 = [accountCopy _internal];
      serviceName = [_internal2 serviceName];
      v44 = [serviceName isEqualToIgnoringCase:@"com.apple.private.alloy.screensharing"];

      v23->_isLegacy = v44;
      _internal3 = [accountCopy _internal];
      serviceName2 = [_internal3 serviceName];
      v47 = [serviceName2 isEqualToIgnoringCase:@"com.apple.private.alloy.phonecontinuity"];

      if (v47)
      {
        v23->_shouldUseSocketForTransport = 1;
      }

      daemonListener = [(_IDSSession *)v23 daemonListener];
      [daemonListener addHandler:v23];

      destinationsCopy = v53;
    }

    self = v23;
    selfCopy = self;
  }

  v49 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)_initWithAccount:(id)account destinations:(id)destinations options:(id)options delegateContext:(id)context
{
  v75 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  contextCopy = context;
  if (_IDSRunningInDaemon())
  {
    v14 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E9C8();
    }

    selfCopy = 0;
  }

  else
  {
    v16 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v16 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B42280();
      }
    }

    v73.receiver = self;
    v73.super_class = _IDSSession;
    v19 = [(_IDSSession *)&v73 init];
    if (v19)
    {
      v20 = [optionsCopy objectForKey:*MEMORY[0x1E69A5160]];
      v66 = v20;
      if ([v20 length])
      {
        stringGUID = v20;
      }

      else
      {
        stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
      }

      uniqueID = v19->_uniqueID;
      v19->_uniqueID = stringGUID;

      _internal = [accountCopy _internal];
      uniqueID = [_internal uniqueID];
      accountID = v19->_accountID;
      v19->_accountID = uniqueID;

      v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v68 = destinationsCopy;
      v27 = destinationsCopy;
      v28 = [v27 countByEnumeratingWithState:&v69 objects:v74 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v70;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v70 != v30)
            {
              objc_enumerationMutation(v27);
            }

            destinationURIs = [*(*(&v69 + 1) + 8 * i) destinationURIs];
            [v26 unionSet:destinationURIs];
          }

          v29 = [v27 countByEnumeratingWithState:&v69 objects:v74 count:16];
        }

        while (v29);
      }

      objc_storeStrong(&v19->_destinations, v26);
      v33 = [MEMORY[0x1E6995700] weakRefWithObject:contextCopy];
      delegateContext = v19->_delegateContext;
      v19->_delegateContext = v33;

      queue = v19->_queue;
      v19->_queue = 0;

      delegate = v19->_delegate;
      v19->_delegate = 0;

      v19->_state = 0;
      v19->_isAudioEnabled = 0;
      v19->_sessionEndedReason = 0;
      v19->_socket = -1;
      v37 = [optionsCopy objectForKey:*MEMORY[0x1E69A5158]];
      v19->_transportType = [v37 integerValue];

      v38 = [optionsCopy objectForKey:*MEMORY[0x1E69A50E0]];
      v19->_connectionCountHint = [v38 unsignedIntegerValue];

      v39 = [optionsCopy objectForKey:*MEMORY[0x1E69A5100]];
      v19->_disallowCellularInterface = [v39 BOOLValue];

      v40 = [optionsCopy objectForKey:*MEMORY[0x1E69A5108]];
      v19->_disallowWifiInterface = [v40 BOOLValue];

      v41 = [optionsCopy objectForKey:*MEMORY[0x1E69A5148]];
      v19->_preferredAddressFamily = [v41 unsignedIntegerValue];

      v42 = [optionsCopy objectForKey:*MEMORY[0x1E69A5140]];
      v19->_preferCellularForCallSetup = [v42 BOOLValue];

      v43 = [optionsCopy objectForKey:*MEMORY[0x1E69A50D8]];
      clientUUID = v19->_clientUUID;
      v19->_clientUUID = v43;

      v45 = [optionsCopy objectForKey:*MEMORY[0x1E69A50F8]];
      v19->_disableEncryption = [v45 BOOLValue];

      v46 = [optionsCopy objectForKey:*MEMORY[0x1E69A5150]];
      v19->_enableSingleChannelDirectMode = [v46 BOOLValue];

      v47 = [optionsCopy objectForKey:*MEMORY[0x1E69A50C8]];
      v19->_alwaysSkipSelf = [v47 BOOLValue];

      defaultStrategy = [MEMORY[0x1E69A52F8] defaultStrategy];
      linkSelectionStrategy = v19->_linkSelectionStrategy;
      v19->_linkSelectionStrategy = defaultStrategy;

      v50 = *MEMORY[0x1E69A5168];
      v51 = [optionsCopy objectForKey:*MEMORY[0x1E69A5168]];

      v52 = *MEMORY[0x1E69A5130];
      if (v51)
      {
        v53 = v50;
      }

      else
      {
        v53 = *MEMORY[0x1E69A5130];
      }

      v54 = [optionsCopy objectForKey:{v53, v66}];
      v19->_needsToWaitForPreConnectionData = [v54 BOOLValue];

      _internal2 = [accountCopy _internal];
      serviceName = [_internal2 serviceName];
      v57 = [serviceName isEqualToIgnoringCase:@"com.apple.private.alloy.screensharing"];

      v19->_isLegacy = v57;
      _internal3 = [accountCopy _internal];
      serviceName2 = [_internal3 serviceName];
      v60 = [serviceName2 isEqualToIgnoringCase:@"com.apple.private.alloy.phonecontinuity"];

      if (v60)
      {
        v19->_shouldUseSocketForTransport = 1;
      }

      daemonListener = [(_IDSSession *)v19 daemonListener];
      [daemonListener addHandler:v19];

      v62 = [optionsCopy mutableCopy];
      sessionConfig = v19->_sessionConfig;
      v19->_sessionConfig = v62;

      destinationsCopy = v68;
    }

    self = v19;
    selfCopy = self;
  }

  v64 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (_IDSSession)initWithAccount:(id)account destinations:(id)destinations transportType:(int64_t)type uniqueID:(id)d delegateContext:(id)context
{
  accountCopy = account;
  destinationsCopy = destinations;
  dCopy = d;
  contextCopy = context;
  if (_IDSRunningInDaemon())
  {
    v16 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E9C8();
    }

    selfCopy = 0;
  }

  else
  {
    v18 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v18 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B42320();
      }
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v16 = dictionary;
    if (dCopy)
    {
      CFDictionarySetValue(dictionary, *MEMORY[0x1E69A5160], dCopy);
    }

    v22 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    if (v22)
    {
      CFDictionarySetValue(v16, *MEMORY[0x1E69A5158], v22);
    }

    CFDictionarySetValue(v16, *MEMORY[0x1E69A50E0], &unk_1F0A29CA8);
    CFDictionarySetValue(v16, *MEMORY[0x1E69A5168], MEMORY[0x1E695E110]);
    self = [(_IDSSession *)self _initWithAccount:accountCopy destinations:destinationsCopy options:v16 delegateContext:contextCopy];
    selfCopy = self;
  }

  return selfCopy;
}

- (_IDSSession)initWithAccount:(id)account destinations:(id)destinations transportType:(int64_t)type delegateContext:(id)context
{
  accountCopy = account;
  destinationsCopy = destinations;
  contextCopy = context;
  if (_IDSRunningInDaemon())
  {
    dictionary = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E9C8();
    }

    selfCopy = 0;
  }

  else
  {
    v15 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v15 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B423C0();
      }
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    if (v18)
    {
      CFDictionarySetValue(dictionary, *MEMORY[0x1E69A5158], v18);
    }

    CFDictionarySetValue(dictionary, *MEMORY[0x1E69A50E0], &unk_1F0A29CA8);
    CFDictionarySetValue(dictionary, *MEMORY[0x1E69A5168], MEMORY[0x1E695E110]);
    self = [(_IDSSession *)self _initWithAccount:accountCopy destinations:destinationsCopy options:dictionary delegateContext:contextCopy];
    [(_IDSSession *)self _broadcastNewSessionToDaemon];
    selfCopy = self;
  }

  return selfCopy;
}

- (_IDSSession)initWithAccount:(id)account destinations:(id)destinations options:(id)options delegateContext:(id)context
{
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  contextCopy = context;
  if (_IDSRunningInDaemon())
  {
    v14 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E9C8();
    }

    selfCopy = 0;
  }

  else
  {
    v16 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v16 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B42460();
      }
    }

    self = [(_IDSSession *)self _initWithAccount:accountCopy destinations:destinationsCopy options:optionsCopy delegateContext:contextCopy];
    [(_IDSSession *)self _broadcastNewSessionToDaemon];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  daemonController = [(_IDSSession *)self daemonController];
  v4 = self->_uniqueID;
  v5 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B18674;
  v11[3] = &unk_1E743EA30;
  v12 = daemonController;
  v6 = v4;
  v13 = v6;
  v7 = daemonController;
  [v5 performBlock:v11];

  socket = self->_socket;
  if ((socket & 0x80000000) == 0)
  {
    close(socket);
    self->_socket = -1;
  }

  [(_IDSSession *)self _cleanupSocketPairConnections];
  daemonListener = [(_IDSSession *)self daemonListener];
  [daemonListener removeHandler:self];

  v10.receiver = self;
  v10.super_class = _IDSSession;
  [(_IDSSession *)&v10 dealloc];
}

- (void)daemonDisconnected
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B42500();
    }
  }

  if ([(NSString *)self->_uniqueID length])
  {
    v6 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      v9 = 138412290;
      v10 = uniqueID;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Disconnected from daemon, notifying client of session %@", &v9, 0xCu);
    }

    [(_IDSSession *)self sessionEnded:self->_uniqueID withReason:16 error:0];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_broadcastNewSessionToDaemon
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B425A0();
    }
  }

  if (![(NSString *)self->_uniqueID length])
  {
    v6 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B42640(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (![(NSString *)self->_accountID length])
  {
    v14 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B426B8(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (![(NSSet *)self->_destinations count])
  {
    v22 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_195B42730(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  accountID = self->_accountID;
  if (accountID)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50C0], accountID);
  }

  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5160], uniqueID);
  }

  allObjects = [(NSSet *)self->_destinations allObjects];
  if (allObjects)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50F0], allObjects);
  }

  v33 = [MEMORY[0x1E696AD98] numberWithInteger:self->_transportType];
  if (v33)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5158], v33);
  }

  daemonController = [(_IDSSession *)self daemonController];
  listenerID = [daemonController listenerID];

  if (listenerID)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50D0], listenerID);
  }

  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_connectionCountHint];
  if (v36)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50E0], v36);
  }

  v37 = [MEMORY[0x1E696AD98] numberWithBool:self->_needsToWaitForPreConnectionData];
  if (v37)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5168], v37);
  }

  v38 = [MEMORY[0x1E696AD98] numberWithBool:self->_disallowCellularInterface];
  if (v38)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5100], v38);
  }

  v39 = [MEMORY[0x1E696AD98] numberWithBool:self->_disallowWifiInterface];
  if (v39)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5108], v39);
  }

  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_preferredAddressFamily];
  if (v40)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5148], v40);
  }

  v41 = [MEMORY[0x1E696AD98] numberWithBool:self->_preferCellularForCallSetup];
  if (v41)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5140], v41);
  }

  clientUUID = self->_clientUUID;
  if (clientUUID)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50D8], clientUUID);
  }

  v43 = [MEMORY[0x1E696AD98] numberWithBool:self->_disableEncryption];
  if (v43)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50F8], v43);
  }

  v44 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableSingleChannelDirectMode];
  if (v44)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5150], v44);
  }

  v45 = [MEMORY[0x1E696AD98] numberWithBool:self->_alwaysSkipSelf];
  if (v45)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50C8], v45);
  }

  daemonController2 = [(_IDSSession *)self daemonController];
  [daemonController2 setupNewSessionWithConfiguration:self->_sessionConfig];

  sessionConfig = self->_sessionConfig;
  self->_sessionConfig = 0;
}

- (void)_callDelegateWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v5 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B427A8();
      }
    }

    object = [(CUTWeakReference *)self->_delegate object];
    v9 = object;
    queue = self->_queue;
    if (queue && object)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_195B18CF8;
      v11[3] = &unk_1E743F110;
      v13 = blockCopy;
      v12 = v9;
      dispatch_async(queue, v11);
    }
  }
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  v18 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B42848();
    }
  }

  v11 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = delegateCopy;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Setting up session delegate %p", buf, 0xCu);
  }

  if (self->_delegate != delegateCopy)
  {
    v12 = [MEMORY[0x1E6995700] weakRefWithObject:delegateCopy];
    delegate = self->_delegate;
    self->_delegate = v12;
  }

  objc_storeStrong(&self->_queue, queue);
  if (self->_state == 2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195B18EE8;
    v15[3] = &unk_1E7443418;
    v15[4] = self;
    [(_IDSSession *)self _callDelegateWithBlock:v15];
  }

  else if (self->_isLegacy)
  {
    [(_IDSSession *)self _setupSocketPairToDaemon];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (int)socket
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B428E8();
    }
  }

  if (self->_state == 1)
  {
    return self->_socket;
  }

  else
  {
    return -1;
  }
}

- (NSString)uniqueID
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B42988();
    }
  }

  uniqueID = self->_uniqueID;

  return uniqueID;
}

- (void)_setupUnreliableSocketPairConnection
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B42A28();
    }
  }

  unreliableSocketPairConnection = self->_unreliableSocketPairConnection;
  v7 = +[IDSLogging _IDSSession];
  v8 = v7;
  if (unreliableSocketPairConnection)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B42AC8(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Setting up socket pair to daemon", v21, 2u);
    }

    v16 = objc_alloc(MEMORY[0x1E69A51E0]);
    socket = self->_socket;
    v8 = +[IDSInternalQueueController sharedInstance];
    queue = [v8 queue];
    v19 = [v16 initWithSocket:socket queue:queue delegate:self];
    v20 = self->_unreliableSocketPairConnection;
    self->_unreliableSocketPairConnection = v19;
  }
}

- (void)_setupSocketPairToDaemon
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B42B40();
    }
  }

  *v39 = 0xAAAAAAAAAAAAAAAALL;
  if (socketpair(1, 2, 0, v39) < 0)
  {
    v6 = *__error();
    v7 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B42BE8();
    }

    if ((v39[0] & 0x80000000) == 0)
    {
      close(v39[0]);
      v39[0] = -1;
    }

    if ((v39[1] & 0x80000000) == 0)
    {
      close(v39[1]);
      v39[1] = -1;
    }

    [(_IDSSession *)self endSession];
  }

  v8 = fcntl(v39[0], 3, 0);
  if (v8 < 0)
  {
    v9 = *__error();
    v10 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B42C80();
    }

    if ((v39[0] & 0x80000000) == 0)
    {
      close(v39[0]);
      v39[0] = -1;
    }

    if ((v39[1] & 0x80000000) == 0)
    {
      close(v39[1]);
      v39[1] = -1;
    }

    [(_IDSSession *)self endSession];
  }

  if (fcntl(v39[0], 4, v8 | 4u) < 0)
  {
    v11 = *__error();
    v12 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B42D18();
    }

    if ((v39[0] & 0x80000000) == 0)
    {
      close(v39[0]);
      v39[0] = -1;
    }

    if ((v39[1] & 0x80000000) == 0)
    {
      close(v39[1]);
      v39[1] = -1;
    }

    [(_IDSSession *)self endSession];
  }

  v13 = fcntl(v39[1], 3, 0);
  if (v13 < 0)
  {
    v14 = *__error();
    v15 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_195B42DB0();
    }

    if ((v39[0] & 0x80000000) == 0)
    {
      close(v39[0]);
      v39[0] = -1;
    }

    if ((v39[1] & 0x80000000) == 0)
    {
      close(v39[1]);
      v39[1] = -1;
    }

    [(_IDSSession *)self endSession];
  }

  if (fcntl(v39[1], 4, v13 | 4u) < 0)
  {
    v16 = *__error();
    v17 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_195B42E48();
    }

    if ((v39[0] & 0x80000000) == 0)
    {
      close(v39[0]);
      v39[0] = -1;
    }

    if ((v39[1] & 0x80000000) == 0)
    {
      close(v39[1]);
      v39[1] = -1;
    }

    [(_IDSSession *)self endSession];
  }

  v38 = 1;
  if (setsockopt(v39[0], 0xFFFF, 4130, &v38, 4u) < 0)
  {
    v18 = *__error();
    v19 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_195B42EE0();
    }

    if ((v39[0] & 0x80000000) == 0)
    {
      close(v39[0]);
      v39[0] = -1;
    }

    if ((v39[1] & 0x80000000) == 0)
    {
      close(v39[1]);
      v39[1] = -1;
    }

    [(_IDSSession *)self endSession];
  }

  if (setsockopt(v39[1], 0xFFFF, 4130, &v38, 4u) < 0)
  {
    v20 = *__error();
    v21 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_195B42F78();
    }

    if ((v39[0] & 0x80000000) == 0)
    {
      close(v39[0]);
      v39[0] = -1;
    }

    if ((v39[1] & 0x80000000) == 0)
    {
      close(v39[1]);
      v39[1] = -1;
    }

    [(_IDSSession *)self endSession];
  }

  v37 = 0x40000;
  if (setsockopt(v39[0], 0xFFFF, 4097, &v37, 4u) < 0)
  {
    v22 = *__error();
    v23 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_195B43010();
    }

    if ((v39[0] & 0x80000000) == 0)
    {
      close(v39[0]);
      v39[0] = -1;
    }

    if ((v39[1] & 0x80000000) == 0)
    {
      close(v39[1]);
      v39[1] = -1;
    }

    [(_IDSSession *)self endSession];
  }

  if (setsockopt(v39[1], 0xFFFF, 4097, &v37, 4u) < 0)
  {
    v24 = *__error();
    v25 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_195B430A8();
    }

    if ((v39[0] & 0x80000000) == 0)
    {
      close(v39[0]);
      v39[0] = -1;
    }

    if ((v39[1] & 0x80000000) == 0)
    {
      close(v39[1]);
      v39[1] = -1;
    }

    [(_IDSSession *)self endSession];
  }

  if (setsockopt(v39[0], 0xFFFF, 4098, &v37, 4u) < 0)
  {
    v26 = *__error();
    v27 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_195B43140();
    }

    if ((v39[0] & 0x80000000) == 0)
    {
      close(v39[0]);
      v39[0] = -1;
    }

    if ((v39[1] & 0x80000000) == 0)
    {
      close(v39[1]);
      v39[1] = -1;
    }

    [(_IDSSession *)self endSession];
  }

  if (setsockopt(v39[1], 0xFFFF, 4098, &v37, 4u) < 0)
  {
    v28 = *__error();
    v29 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_195B431D8();
    }

    if ((v39[0] & 0x80000000) == 0)
    {
      close(v39[0]);
      v39[0] = -1;
    }

    if ((v39[1] & 0x80000000) == 0)
    {
      close(v39[1]);
      v39[1] = -1;
    }

    [(_IDSSession *)self endSession];
  }

  v30 = v39[1];
  self->_socket = v39[0];
  v31 = xpc_fd_create(v30);
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v32 setObject:@"socket" forKey:@"object-type"];
  [v32 setObject:@"session-socket" forKey:@"socket-type"];
  [v32 setObject:self->_uniqueID forKey:@"sessionID"];
  object = [(CUTWeakReference *)self->_delegate object];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v32 setObject:v34 forKey:@"raw-socket"];
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController sendXPCObject:v31 objectContext:v32];

  if (v31)
  {
  }

  close(v30);

  v36 = *MEMORY[0x1E69E9840];
}

- (void)_cleanupSocketPairConnections
{
  [(IDSBaseSocketPairConnection *)self->_unreliableSocketPairConnection endSession];
  unreliableSocketPairConnection = self->_unreliableSocketPairConnection;
  self->_unreliableSocketPairConnection = 0;
}

- (void)sendAllocationRequest:(id)request
{
  v13 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43270();
    }
  }

  v8 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = requestCopy;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Sending allocation request with options %@", &v11, 0xCu);
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController sendAllocationRequest:self->_uniqueID options:requestCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sendInvitationWithOptions:(id)options
{
  v13 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43310();
    }
  }

  v8 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = optionsCopy;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Sending Session Invitation with options %@", &v11, 0xCu);
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController sendInvitation:self->_uniqueID withOptions:optionsCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)cancelInvitation
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43450();
    }
  }

  v6 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Sending Session Invitation Cancel", v8, 2u);
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController cancelInvitation:self->_uniqueID];
}

- (void)cancelInvitationWithData:(id)data
{
  v13 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B434F0();
    }
  }

  v8 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = [dataCopy length];
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Sending Session Invitation Cancel with data (%lu bytes)", &v11, 0xCu);
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController cancelInvitation:self->_uniqueID withData:dataCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)acceptInvitation
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43630();
    }
  }

  v6 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Sending Session Invitation Accept", v8, 2u);
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController acceptInvitation:self->_uniqueID];
}

- (void)acceptInvitationWithData:(id)data
{
  v13 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B436D0();
    }
  }

  v8 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = [dataCopy length];
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Sending Session Invitation Accept with data (%lu bytes)", &v11, 0xCu);
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController acceptInvitation:self->_uniqueID withData:dataCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)declineInvitation
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43770();
    }
  }

  v6 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Sending Session Invitation Decline", v8, 2u);
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController declineInvitation:self->_uniqueID];
}

- (void)declineInvitationWithData:(id)data
{
  v13 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43810();
    }
  }

  v8 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = [dataCopy length];
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Sending Session Invitation Decline with data (%lu bytes)", &v11, 0xCu);
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController declineInvitation:self->_uniqueID withData:dataCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)reconnectSession
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B438B0();
    }
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController reconnectSessionWithUniqueID:self->_uniqueID];
}

- (void)endSession
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43950();
    }
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController endSession:self->_uniqueID];

  [(_IDSSession *)self _cleanupSocketPairConnections];
  self->_state = 2;
}

- (void)endSessionWithData:(id)data
{
  dataCopy = data;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B439F0();
    }
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController endSession:self->_uniqueID withData:dataCopy];
}

- (void)sendSessionMessage:(id)message
{
  messageCopy = message;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43A90();
    }
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController sendSessionMessage:messageCopy toDestinations:self->_destinations forSessionWithUniqueID:self->_uniqueID];
}

- (void)sendSessionMessage:(id)message toDestinations:(id)destinations
{
  v33 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  destinationsCopy = destinations;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43B30();
    }
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = destinationsCopy;
  [MEMORY[0x1E69A5240] destinationWithDestinations:destinationsCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = v27 = 0u;
  destinationURIs = [v21 destinationURIs];
  v12 = [destinationURIs countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(destinationURIs);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if ([(NSSet *)self->_destinations containsObject:v16])
        {
          [v10 addObject:v16];
        }

        else
        {
          v17 = +[IDSLogging _IDSSession];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            destinations = self->_destinations;
            *buf = 138478083;
            v29 = v16;
            v30 = 2113;
            destinationsCopy2 = destinations;
            _os_log_error_impl(&dword_1959FF000, v17, OS_LOG_TYPE_ERROR, "Skipping destination %{private}@, which is not in this session's list of destinations: %{private}@", buf, 0x16u);
          }
        }
      }

      v13 = [destinationURIs countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController sendSessionMessage:messageCopy toDestinations:v10 forSessionWithUniqueID:self->_uniqueID];

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)getAudioEnabled
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43C70();
    }
  }

  return self->_isAudioEnabled;
}

- (BOOL)getMuted
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43DB0();
    }
  }

  return self->_isMuted;
}

- (void)setPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43E50();
    }
  }

  if (self->_preferences != preferencesCopy)
  {
    v8 = [(NSMutableDictionary *)preferencesCopy mutableCopy];
    preferences = self->_preferences;
    self->_preferences = v8;

    daemonController = [(_IDSSession *)self daemonController];
    [daemonController setPreferences:preferencesCopy forSessionWithUniqueID:self->_uniqueID];
  }
}

- (id)getPreferences
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43EF0();
    }
  }

  v6 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:self->_preferences];

  return v6;
}

- (IDSLinkSelectionStrategy)linkSelectionStrategy
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B43F90();
    }
  }

  linkSelectionStrategy = self->_linkSelectionStrategy;

  return linkSelectionStrategy;
}

- (void)setLinkSelectionStrategy:(id)strategy
{
  strategyCopy = strategy;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B44030();
    }
  }

  linkSelectionStrategy = self->_linkSelectionStrategy;
  self->_linkSelectionStrategy = strategyCopy;
  v9 = strategyCopy;

  v13 = 0;
  v10 = [(IDSLinkSelectionStrategy *)v9 jsonWithError:&v13];
  v11 = v13;
  daemonController = [(_IDSSession *)self daemonController];
  [daemonController setLinkSelectionStrategyWithData:v10 forSessionWithUniqueID:self->_uniqueID];
}

- (void)setInviteTimeout:(int64_t)timeout
{
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B440D0();
    }
  }

  daemonController = [(_IDSSession *)self daemonController];
  [daemonController setInviteTimetout:timeout forSessionWithUniqueID:self->_uniqueID];
}

- (int64_t)inviteTimeout
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B44170();
    }
  }

  return self->_inviteTimeout;
}

- (unsigned)sessionEndedReason
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B44210();
    }
  }

  return self->_sessionEndedReason;
}

- (BOOL)shouldUseSocketForTransport
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_shouldUseSocketForTransport)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Asked if shouldUseSocketForTransport %@", &v7, 0xCu);
  }

  result = self->_shouldUseSocketForTransport;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)MTUForAddressFamily:(unint64_t)family
{
  if (family == 1)
  {
    return 1378;
  }

  else
  {
    return 1228;
  }
}

- (BOOL)sendData:(id)data error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B442B0();
    }
  }

  if (self->_state != 1)
  {
    v14 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B44350(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    if (error)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E69A5110];
      v24 = 1;
LABEL_15:
      v13 = 0;
      *error = [v22 initWithDomain:v23 code:v24 userInfo:0];
      goto LABEL_20;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  if (!self->_unreliableSocketPairConnection)
  {
    v25 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_195B44440(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    goto LABEL_19;
  }

  v10 = [dataCopy length];
  v11 = +[IDSLogging _IDSSession];
  v12 = v11;
  if (!v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B443C8(v12, v35, v36, v37, v38, v39, v40, v41);
    }

    if (error)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E69A5110];
      v24 = 2;
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v42 = 134218240;
    v43 = [dataCopy hash];
    v44 = 2048;
    v45 = [dataCopy length];
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_INFO, "Sending data Client -> Daemon  (hash: %lu)  (length: %lu)", &v42, 0x16u);
  }

  [(IDSBaseSocketPairConnection *)self->_unreliableSocketPairConnection sendData:dataCopy];
  v13 = 1;
LABEL_20:

  v33 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)sessionAcceptReceived:(id)received fromID:(id)d withData:(id)data
{
  v29 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  dCopy = d;
  dataCopy = data;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B444B8();
    }
  }

  v14 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = dCopy;
    v25 = 2112;
    v26 = receivedCopy;
    v27 = 2112;
    v28 = dataCopy;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Session accept received fromID %@ sessionID %@ with data %@", buf, 0x20u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:receivedCopy]& 1) != 0)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{dCopy, 0}];
    destinations = self->_destinations;
    self->_destinations = v15;

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195B1B6C4;
    v20[3] = &unk_1E7443440;
    v20[4] = self;
    v21 = dCopy;
    v22 = dataCopy;
    [(_IDSSession *)self _callDelegateWithBlock:v20];
  }

  else
  {
    v17 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v24 = uniqueID;
      v25 = 2112;
      v26 = receivedCopy;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring accept, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)sessionDeclineReceived:(id)received fromID:(id)d withData:(id)data
{
  v29 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  dCopy = d;
  dataCopy = data;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B44558();
    }
  }

  v14 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = dCopy;
    v25 = 2112;
    v26 = receivedCopy;
    v27 = 2112;
    v28 = dataCopy;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Session decline received fromID %@ sessionID %@ with data %@", buf, 0x20u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:receivedCopy]& 1) != 0)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{dCopy, 0}];
    destinations = self->_destinations;
    self->_destinations = v15;

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195B1B9DC;
    v20[3] = &unk_1E7443440;
    v20[4] = self;
    v21 = dCopy;
    v22 = dataCopy;
    [(_IDSSession *)self _callDelegateWithBlock:v20];
  }

  else
  {
    v17 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v24 = uniqueID;
      v25 = 2112;
      v26 = receivedCopy;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring decline, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)sessionCancelReceived:(id)received fromID:(id)d withData:(id)data
{
  v29 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  dCopy = d;
  dataCopy = data;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B445F8();
    }
  }

  v14 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = dCopy;
    v25 = 2112;
    v26 = receivedCopy;
    v27 = 2112;
    v28 = dataCopy;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Session cancel received fromID %@ sessionID %@ with data %@", buf, 0x20u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:receivedCopy]& 1) != 0)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{dCopy, 0}];
    destinations = self->_destinations;
    self->_destinations = v15;

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195B1BCF4;
    v20[3] = &unk_1E7443440;
    v20[4] = self;
    v21 = dCopy;
    v22 = dataCopy;
    [(_IDSSession *)self _callDelegateWithBlock:v20];
  }

  else
  {
    v17 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v24 = uniqueID;
      v25 = 2112;
      v26 = receivedCopy;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring cancel, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)sessionMessageReceived:(id)received fromID:(id)d withData:(id)data
{
  v27 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  dCopy = d;
  dataCopy = data;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B44698();
    }
  }

  v14 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = dCopy;
    v23 = 2112;
    v24 = receivedCopy;
    v25 = 2112;
    v26 = dataCopy;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Session message received fromID %@ sessionID %@ with data %@", buf, 0x20u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:receivedCopy]& 1) != 0)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195B1BFDC;
    v18[3] = &unk_1E7443440;
    v18[4] = self;
    v19 = dCopy;
    v20 = dataCopy;
    [(_IDSSession *)self _callDelegateWithBlock:v18];
  }

  else
  {
    v15 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v22 = uniqueID;
      v23 = 2112;
      v24 = receivedCopy;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring message, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)sessionEndReceived:(id)received fromID:(id)d withData:(id)data
{
  v27 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  dCopy = d;
  dataCopy = data;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B44738();
    }
  }

  v14 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = dCopy;
    v23 = 2112;
    v24 = receivedCopy;
    v25 = 2112;
    v26 = dataCopy;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Session end received fromID %@ sessionID %@ with data %@", buf, 0x20u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:receivedCopy]& 1) != 0)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195B1C294;
    v18[3] = &unk_1E7443440;
    v18[4] = self;
    v19 = dCopy;
    v20 = dataCopy;
    [(_IDSSession *)self _callDelegateWithBlock:v18];
  }

  else
  {
    v15 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v22 = uniqueID;
      v23 = 2112;
      v24 = receivedCopy;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring end, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)session invitationSentToTokens:(id)tokens shouldBreakBeforeMake:(BOOL)make
{
  makeCopy = make;
  v27 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  tokensCopy = tokens;
  v10 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v10 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B447D8();
    }
  }

  v13 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    *buf = 138412802;
    v22 = sessionCopy;
    v23 = 2112;
    if (makeCopy)
    {
      v14 = @"YES";
    }

    v24 = tokensCopy;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Session %@ invitation sent to tokens %@ shouldBreakBeforeMake %@", buf, 0x20u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:sessionCopy]& 1) != 0)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195B1C54C;
    v18[3] = &unk_1E7443468;
    v18[4] = self;
    v19 = tokensCopy;
    v20 = makeCopy;
    [(_IDSSession *)self _callDelegateWithBlock:v18];
  }

  else
  {
    v15 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v22 = uniqueID;
      v23 = 2112;
      v24 = sessionCopy;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring session:invitationSentToTokens:, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)allocationDone:(id)done sessionInfo:(id)info
{
  v20 = *MEMORY[0x1E69E9840];
  doneCopy = done;
  infoCopy = info;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B44878();
    }
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:doneCopy]& 1) != 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195B1C7BC;
    v14[3] = &unk_1E7443490;
    v14[4] = self;
    v15 = infoCopy;
    [(_IDSSession *)self _callDelegateWithBlock:v14];
  }

  else
  {
    v11 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v17 = uniqueID;
      v18 = 2112;
      v19 = doneCopy;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring session started, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)sessionStarted:(id)started
{
  v17 = *MEMORY[0x1E69E9840];
  startedCopy = started;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B44918();
    }
  }

  v8 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = startedCopy;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Session started for IDSSessionID: %@", buf, 0xCu);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:startedCopy]& 1) != 0)
  {
    self->_state = 1;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195B1CA20;
    v12[3] = &unk_1E7443418;
    v12[4] = self;
    [(_IDSSession *)self _callDelegateWithBlock:v12];
  }

  else
  {
    v9 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v14 = uniqueID;
      v15 = 2112;
      v16 = startedCopy;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring session started, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  errorCopy = error;
  v10 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v10 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B449B8();
    }
  }

  v13 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = endedCopy;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Session ended %@ with error: %@", buf, 0x16u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:endedCopy]& 1) != 0)
  {
    [(_IDSSession *)self _cleanupSocketPairConnections];
    self->_state = 2;
    if (reason <= 1)
    {
      reasonCopy = 1;
    }

    else
    {
      reasonCopy = reason;
    }

    self->_sessionEndedReason = reasonCopy;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195B1CCD0;
    v18[3] = &unk_1E74434B8;
    v18[4] = self;
    reasonCopy2 = reason;
    v19 = errorCopy;
    [(_IDSSession *)self _callDelegateWithBlock:v18];
  }

  else
  {
    v15 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v22 = uniqueID;
      v23 = 2112;
      v24 = endedCopy;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring session ended, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)session audioEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v19 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B44A58();
    }
  }

  v10 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (enabledCopy)
    {
      v11 = @"YES";
    }

    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Session audio enabled ? %@", &v15, 0xCu);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:sessionCopy]& 1) != 0)
  {
    self->_isAudioEnabled = enabledCopy;
  }

  else
  {
    v12 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      v15 = 138412546;
      v16 = uniqueID;
      v17 = 2112;
      v18 = sessionCopy;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring audioEnabled, session doesn't match %@ vs. %@", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)session muted:(BOOL)muted
{
  mutedCopy = muted;
  v19 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B44AF8();
    }
  }

  v10 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (mutedCopy)
    {
      v11 = @"YES";
    }

    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Session muted ? %@", &v15, 0xCu);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:sessionCopy]& 1) != 0)
  {
    self->_isMuted = mutedCopy;
  }

  else
  {
    v12 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      v15 = 138412546;
      v16 = uniqueID;
      v17 = 2112;
      v18 = sessionCopy;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring muted, session doesn't match %@ vs. %@", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)xpcObject:(id)object objectContext:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  Value = context;
  v8 = Value;
  if (Value)
  {
    v9 = CFDictionaryGetValue(Value, @"object-type");
    Value = CFDictionaryGetValue(v8, @"sessionID");
  }

  else
  {
    v9 = 0;
  }

  v10 = Value;
  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v10]& 1) != 0)
  {
    v11 = [(__CFDictionary *)v8 objectForKey:@"error"];
    v12 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      *v27 = objectCopy;
      *&v27[8] = 2112;
      *&v27[10] = v8;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "xpc object: [%@] context: [%@]", &v26, 0x16u);
    }

    if ([v9 isEqualToIgnoringCase:@"session-device-socket"])
    {
      if (objectCopy)
      {
        v13 = xpc_fd_dup(objectCopy);
      }

      else
      {
        self->_shouldUseSocketForTransport = 0;
        v13 = -1;
      }

      [(_IDSSession *)self _cleanupSocketPairConnections];
      self->_socket = v13;
      v21 = +[IDSLogging _IDSSession];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        socket = self->_socket;
        v26 = 67109378;
        *v27 = socket;
        *&v27[4] = 2112;
        *&v27[6] = v11;
        _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "Received XPC Response/Socket: %d    Error: %@", &v26, 0x12u);
      }

      [(_IDSSession *)self sessionStarted:self->_uniqueID];
      goto LABEL_28;
    }

    if ([v9 isEqualToIgnoringCase:@"session-initial-link-type"])
    {
      if (objectCopy && MEMORY[0x19A8BC560](objectCopy) == MEMORY[0x1E69E9EB0])
      {
        self->_initialLinkType = xpc_int64_get_value(objectCopy);
        v15 = +[IDSLogging _IDSSession];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          initialLinkType = self->_initialLinkType;
          uniqueID = self->_uniqueID;
          v26 = 67109634;
          *v27 = initialLinkType;
          *&v27[4] = 2112;
          *&v27[6] = uniqueID;
          *&v27[14] = 2112;
          *&v27[16] = v11;
          v17 = "Received initial link type %d for session %@ with error %@.";
          v18 = v15;
          v19 = 28;
          goto LABEL_26;
        }
      }

      else
      {
        v15 = +[IDSLogging _IDSSession];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = self->_uniqueID;
          v26 = 138412546;
          *v27 = v16;
          *&v27[8] = 2112;
          *&v27[10] = v11;
          v17 = "Received invalid initial link type xpc object for session %@ with error %@.";
          v18 = v15;
          v19 = 22;
LABEL_26:
          _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, v17, &v26, v19);
        }
      }

      goto LABEL_28;
    }

    v20 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      *v27 = v9;
      _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Received invalid xpc object type: %@.", &v26, 0xCu);
    }
  }

  else
  {
    v11 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_uniqueID;
      v26 = 138412546;
      *v27 = v14;
      *&v27[8] = 2112;
      *&v27[10] = v10;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring xpc object, session doesn't match %@ vs. %@", &v26, 0x16u);
    }
  }

LABEL_28:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)session didReceiveReport:(id)report
{
  v21 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  reportCopy = report;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B44B98();
    }
  }

  v11 = +[IDSLogging _IDSSession];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = sessionCopy;
    v19 = 2112;
    v20 = reportCopy;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Session %@ received the report: %@", buf, 0x16u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:sessionCopy]& 1) != 0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195B1D700;
    v15[3] = &unk_1E7443490;
    v15[4] = self;
    v16 = reportCopy;
    [(_IDSSession *)self _callDelegateWithBlock:v15];
  }

  else
  {
    v12 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v18 = uniqueID;
      v19 = 2112;
      v20 = sessionCopy;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring didReceiveReport, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  dataCopy = data;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B44C38();
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195B1D870;
  v10[3] = &unk_1E7443490;
  v11 = dataCopy;
  selfCopy = self;
  v9 = dataCopy;
  [(_IDSSession *)self _callDelegateWithBlock:v10];
}

@end