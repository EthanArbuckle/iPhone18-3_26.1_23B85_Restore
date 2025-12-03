@interface IDSOffGridMessenger
- (IDSOffGridMessenger)initWithService:(id)service queue:(id)queue error:(id *)error;
- (IDSOffGridMessenger)initWithServiceType:(int64_t)type queue:(id)queue daemonController:(id)controller error:(id *)error;
- (IDSOffGridMessenger)initWithServiceType:(int64_t)type queue:(id)queue error:(id *)error;
- (IDSOffGridMessengerDelegate)delegate;
- (NSSet)handles;
- (id)_commandsForServiceType:(int64_t)type;
- (id)_serviceNameForServiceType:(int64_t)type;
- (int64_t)_serviceTypeForServiceName:(id)name;
- (void)_handleIncomingDeliveryReceiptMessage:(id)message fromID:(id)d context:(id)context;
- (void)_handleIncomingServiceUpdateMessage:(id)message fromID:(id)d context:(id)context;
- (void)_handleIncomingTextMessage:(id)message fromID:(id)d context:(id)context;
- (void)_setupInterruptionHandler;
- (void)_setupXPC;
- (void)decryptOffGridMessage:(id)message completion:(id)completion;
- (void)donateHandlesForMessagingKeys:(id)keys fromURI:(id)i options:(id)options completion:(id)completion;
- (void)encryptAndSendOffGridMessage:(id)message options:(id)options completion:(id)completion;
- (void)encryptOffGridMessage:(id)message completion:(id)completion;
- (void)incomingOffGridMessage:(id)message messageContext:(id)context completion:(id)completion;
- (void)incomingOffGridSummaryMessage:(id)message messageContext:(id)context completion:(id)completion;
- (void)resultsForDestinationURIs:(id)is senderURI:(id)i options:(id)options completion:(id)completion;
- (void)sendEncryptedOffGridMessage:(id)message options:(id)options completion:(id)completion;
- (void)sendFetchRequestForHandles:(id)handles completions:(id)completions;
- (void)sendServerMessage:(id)message options:(id)options completion:(id)completion;
- (void)sendServiceUpdateMessage:(id)message options:(id)options completion:(id)completion;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)setDelegate:(id)delegate;
@end

@implementation IDSOffGridMessenger

- (IDSOffGridMessenger)initWithService:(id)service queue:(id)queue error:(id *)error
{
  queueCopy = queue;
  v9 = [(IDSOffGridMessenger *)self _serviceTypeForServiceName:service];
  if (_os_feature_enabled_impl())
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  v11 = [(IDSOffGridMessenger *)self initWithServiceType:v10 queue:queueCopy error:error];

  return v11;
}

- (IDSOffGridMessenger)initWithServiceType:(int64_t)type queue:(id)queue error:(id *)error
{
  queueCopy = queue;
  if (!_os_feature_enabled_impl())
  {
    type = 1;
  }

  v9 = +[IDSXPCDaemonController weakSharedInstance];
  v10 = [(IDSOffGridMessenger *)self initWithServiceType:type queue:queueCopy daemonController:v9 error:error];

  return v10;
}

- (IDSOffGridMessenger)initWithServiceType:(int64_t)type queue:(id)queue daemonController:(id)controller error:(id *)error
{
  queueCopy = queue;
  controllerCopy = controller;
  if (!queueCopy)
  {
    v15 = objc_alloc(MEMORY[0x1E695DF20]);
    v16 = [v15 initWithObjectsAndKeys:{@"The queue specified is nil.", *MEMORY[0x1E696A578], 0}];
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IDSOffGridDeliveryErrorDomain" code:3 userInfo:v16];

    goto LABEL_9;
  }

  v30.receiver = self;
  v30.super_class = IDSOffGridMessenger;
  v12 = [(IDSOffGridMessenger *)&v30 init];
  if (v12)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = -86;
    v13 = +[IDSInternalQueueController sharedInstance];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A25384;
    v20[3] = &unk_1E743F0A0;
    self = v12;
    selfCopy = self;
    typeCopy = type;
    v22 = queueCopy;
    v23 = controllerCopy;
    v24 = &v26;
    [v13 performBlock:v20 waitUntilDone:1];

    if (self->_service && (v27[3] & 1) != 0)
    {
      [(IDSOffGridMessenger *)self _setupInterruptionHandler];
      [(IDSOffGridMessenger *)self _setupXPC];

      _Block_object_dispose(&v26, 8);
      goto LABEL_6;
    }

    v17 = objc_alloc(MEMORY[0x1E695DF20]);
    v18 = [v17 initWithObjectsAndKeys:{@"Invalid service name provided", *MEMORY[0x1E696A578], 0}];
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IDSOffGridDeliveryErrorDomain" code:1 userInfo:v18];

    _Block_object_dispose(&v26, 8);
LABEL_9:
    selfCopy2 = 0;
    goto LABEL_10;
  }

LABEL_6:
  self = v12;
  selfCopy2 = self;
LABEL_10:

  return selfCopy2;
}

- (id)_serviceNameForServiceType:(int64_t)type
{
  if (type == 1)
  {
    v4 = IDSServiceNameiMessageLite;
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_6;
    }

    v4 = IDSServiceNameiMessageLiteRelay;
  }

  self = *v4;
LABEL_6:

  return self;
}

- (id)_commandsForServiceType:(int64_t)type
{
  if (type == 2)
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F0A297B0, &unk_1F0A297C8, &unk_1F0A297E0, &unk_1F0A297F8, &unk_1F0A29810, &unk_1F0A29828, 0}];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F0A297B0, &unk_1F0A297C8, &unk_1F0A297E0, 0, v4, v5, v6}];
  }
  self = ;
LABEL_6:

  return self;
}

- (int64_t)_serviceTypeForServiceName:(id)name
{
  if ([name isEqualToIgnoringCase:@"com.apple.madrid.lite.relay"])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_setupInterruptionHandler
{
  objc_initWeak(&location, self);
  daemonController = self->_daemonController;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A256B4;
  v4[3] = &unk_1E743EE18;
  objc_copyWeak(&v5, &location);
  [(IDSXPCDaemonController *)daemonController addInterruptionHandler:v4 forTarget:self];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_setupXPC
{
  v11 = *MEMORY[0x1E69E9840];
  iDSOffGridMessenger = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(IDSOffGridMessenger *)self uuid];
    *buf = 138412290;
    v10 = uuid;
    _os_log_impl(&dword_1959FF000, iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT, "Setting up xpc for client %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  daemonController = self->_daemonController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A258F8;
  v7[3] = &unk_1E743F0E8;
  objc_copyWeak(&v8, buf);
  [(IDSXPCDaemonController *)daemonController performTask:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x1E69E9840];
}

- (NSSet)handles
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = +[IDSDaemonController sharedInstance];
  [v4 blockUntilConnected];

  v5 = +[IDSInternalQueueController sharedInstance];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = sub_195A25AF4;
  v12 = &unk_1E743EA30;
  selfCopy = self;
  v14 = v3;
  v6 = v3;
  [v5 performBlock:&v9 waitUntilDone:1];

  v7 = [v6 copy];

  return v7;
}

- (void)donateHandlesForMessagingKeys:(id)keys fromURI:(id)i options:(id)options completion:(id)completion
{
  keysCopy = keys;
  iCopy = i;
  optionsCopy = options;
  completionCopy = completion;
  daemonController = self->_daemonController;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195A25DC8;
  v19[3] = &unk_1E743F1B0;
  v22 = optionsCopy;
  v23 = completionCopy;
  v19[4] = self;
  v20 = keysCopy;
  v21 = iCopy;
  v15 = optionsCopy;
  v16 = iCopy;
  v17 = keysCopy;
  v18 = completionCopy;
  [(IDSXPCDaemonController *)daemonController performTask:v19];
}

- (void)resultsForDestinationURIs:(id)is senderURI:(id)i options:(id)options completion:(id)completion
{
  isCopy = is;
  iCopy = i;
  optionsCopy = options;
  completionCopy = completion;
  daemonController = self->_daemonController;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195A261E8;
  v19[3] = &unk_1E743F1B0;
  v22 = optionsCopy;
  v23 = completionCopy;
  v19[4] = self;
  v20 = isCopy;
  v21 = iCopy;
  v15 = optionsCopy;
  v16 = iCopy;
  v17 = isCopy;
  v18 = completionCopy;
  [(IDSXPCDaemonController *)daemonController performTask:v19];
}

- (void)encryptOffGridMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  [messageCopy setService:self->_serviceName];
  senderURI = [messageCopy senderURI];

  if (!senderURI)
  {
    handles = [(IDSOffGridMessenger *)self handles];
    anyObject = [handles anyObject];
    [messageCopy setSenderURI:anyObject];
  }

  daemonController = self->_daemonController;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A26690;
  v14[3] = &unk_1E743F278;
  v15 = messageCopy;
  v16 = completionCopy;
  v14[4] = self;
  v12 = messageCopy;
  v13 = completionCopy;
  [(IDSXPCDaemonController *)daemonController performTask:v14];
}

- (void)decryptOffGridMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  daemonController = self->_daemonController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A26A8C;
  v11[3] = &unk_1E743F278;
  v12 = messageCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = messageCopy;
  v10 = completionCopy;
  [(IDSXPCDaemonController *)daemonController performTask:v11];
}

- (void)sendEncryptedOffGridMessage:(id)message options:(id)options completion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  optionsCopy = options;
  completionCopy = completion;
  [messageCopy setService:self->_serviceName];
  [optionsCopy setServiceType:self->_serviceType];
  if ([optionsCopy transportType])
  {
    [optionsCopy setDefaultOptionsForTransportType:{objc_msgSend(optionsCopy, "transportType")}];
    [optionsCopy setEncryptPayload:0];
    identifier = [messageCopy identifier];
    [optionsCopy setIdentifier:identifier];

    iDSOffGridMessenger = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [messageCopy identifier];
      dictionaryRepresentation = [messageCopy dictionaryRepresentation];
      *buf = 138412802;
      v40 = identifier2;
      v41 = 2112;
      v42 = dictionaryRepresentation;
      v43 = 2048;
      transportType = [optionsCopy transportType];
      _os_log_impl(&dword_1959FF000, iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - Sending outgoing encrypted OffGrid message - %@, Message %@, transportType %ld", buf, 0x20u);
    }

    transportType2 = [optionsCopy transportType];
    if (transportType2 == 1)
    {
      v24 = +[IDSDaemonController sharedInstance];
      [v24 blockUntilConnected];

      v25 = +[IDSInternalQueueController sharedInstance];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_195A27558;
      v27[3] = &unk_1E743F318;
      v27[4] = self;
      v28 = messageCopy;
      v29 = optionsCopy;
      v30 = completionCopy;
      [v25 performBlock:v27 waitUntilDone:0];

      v17 = v28;
      goto LABEL_11;
    }

    if (transportType2 == 2)
    {
      daemonController = self->_daemonController;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_195A27210;
      v31[3] = &unk_1E743F2F0;
      v34 = completionCopy;
      v31[4] = self;
      v32 = messageCopy;
      v33 = optionsCopy;
      [(IDSXPCDaemonController *)daemonController performTask:v31];

      v17 = v34;
LABEL_11:
    }
  }

  else
  {
    iDSOffGridMessenger2 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(iDSOffGridMessenger2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, iDSOffGridMessenger2, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - Fatal Error - Transport not set", buf, 2u);
    }

    v19 = objc_alloc(MEMORY[0x1E695DF20]);
    v20 = [v19 initWithObjectsAndKeys:{@"Invalid OffGrid delivery options. transport type not set", *MEMORY[0x1E696A578], 0}];
    v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IDSOffGridDeliveryErrorDomain" code:2 userInfo:v20];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A271F4;
    block[3] = &unk_1E743F1D8;
    v38 = completionCopy;
    v36 = messageCopy;
    v37 = v21;
    v23 = v21;
    dispatch_async(queue, block);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)encryptAndSendOffGridMessage:(id)message options:(id)options completion:(id)completion
{
  messageCopy = message;
  optionsCopy = options;
  completionCopy = completion;
  v11 = +[IDSInternalQueueController sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A27818;
  v15[3] = &unk_1E743F318;
  v15[4] = self;
  v16 = messageCopy;
  v17 = optionsCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = optionsCopy;
  v14 = messageCopy;
  [v11 performBlock:v15];
}

- (void)sendFetchRequestForHandles:(id)handles completions:(id)completions
{
  handlesCopy = handles;
  completionsCopy = completions;
  handles = [(IDSOffGridMessenger *)self handles];
  anyObject = [handles anyObject];

  if (!anyObject)
  {
    iDSOffGridMessenger = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(iDSOffGridMessenger, OS_LOG_TYPE_ERROR))
    {
      sub_195B28804(iDSOffGridMessenger, v26, v27, v28, v29, v30, v31, v32);
    }

    v33 = objc_alloc(MEMORY[0x1E695DF20]);
    v11 = [v33 initWithObjectsAndKeys:{@"No active sender handle found.", *MEMORY[0x1E696A578], 0}];
    v34 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IDSOffGridDeliveryErrorDomain" code:7 userInfo:v11];
    queue = self->_queue;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_195A27D38;
    v44[3] = &unk_1E743F1D8;
    v47 = completionsCopy;
    v45 = handlesCopy;
    v46 = v34;
    v23 = v34;
    dispatch_async(queue, v44);

    v24 = v47;
    goto LABEL_11;
  }

  if (!handlesCopy || ![handlesCopy count])
  {
    iDSOffGridMessenger2 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(iDSOffGridMessenger2, OS_LOG_TYPE_ERROR))
    {
      sub_195B287CC(iDSOffGridMessenger2, v13, v14, v15, v16, v17, v18, v19);
    }

    v20 = objc_alloc(MEMORY[0x1E695DF20]);
    v11 = [v20 initWithObjectsAndKeys:{@"No handles specified.", *MEMORY[0x1E696A578], 0}];
    v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IDSOffGridDeliveryErrorDomain" code:11 userInfo:v11];
    v22 = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A27D50;
    block[3] = &unk_1E743F1D8;
    v43 = completionsCopy;
    v41 = handlesCopy;
    v42 = v21;
    v23 = v21;
    dispatch_async(v22, block);

    v24 = v43;
LABEL_11:

    goto LABEL_12;
  }

  daemonController = self->_daemonController;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_195A27D68;
  v36[3] = &unk_1E743F2F0;
  v39 = completionsCopy;
  v36[4] = self;
  v37 = handlesCopy;
  v38 = anyObject;
  [(IDSXPCDaemonController *)daemonController performTask:v36];

  v11 = v39;
LABEL_12:
}

- (void)sendServiceUpdateMessage:(id)message options:(id)options completion:(id)completion
{
  messageCopy = message;
  optionsCopy = options;
  completionCopy = completion;
  v11 = +[IDSDaemonController sharedInstance];
  [v11 blockUntilConnected];

  v12 = +[IDSInternalQueueController sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A281A8;
  v16[3] = &unk_1E743F318;
  v16[4] = self;
  v17 = messageCopy;
  v18 = optionsCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = optionsCopy;
  v15 = messageCopy;
  [v12 performBlock:v16 waitUntilDone:0];
}

- (void)sendServerMessage:(id)message options:(id)options completion:(id)completion
{
  messageCopy = message;
  optionsCopy = options;
  completionCopy = completion;
  if (messageCopy && optionsCopy && [optionsCopy command] > 0)
  {
    v11 = +[IDSDaemonController sharedInstance];
    [v11 blockUntilConnected];

    v12 = +[IDSInternalQueueController sharedInstance];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_195A285E4;
    v28[3] = &unk_1E743F318;
    v28[4] = self;
    v29 = messageCopy;
    v30 = optionsCopy;
    v31 = completionCopy;
    v13 = completionCopy;
    v14 = messageCopy;
    [v12 performBlock:v28 waitUntilDone:0];
  }

  else
  {
    iDSOffGridMessenger = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(iDSOffGridMessenger, OS_LOG_TYPE_ERROR))
    {
      sub_195B2883C(iDSOffGridMessenger, v16, v17, v18, v19, v20, v21, v22);
    }

    v23 = objc_alloc(MEMORY[0x1E695DF20]);
    v14 = [v23 initWithObjectsAndKeys:{@"Invalid parameters", *MEMORY[0x1E696A578], 0}];
    v24 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IDSOffGridDeliveryErrorDomain" code:11 userInfo:v14];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A285C0;
    block[3] = &unk_1E743F1D8;
    v34 = v24;
    v35 = completionCopy;
    v33 = messageCopy;
    v26 = completionCopy;
    v27 = messageCopy;
    v13 = v24;
    dispatch_async(queue, block);
  }
}

- (void)_handleIncomingTextMessage:(id)message fromID:(id)d context:(id)context
{
  v45 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  iDSOffGridMessenger = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT))
  {
    originalGUID = [contextCopy originalGUID];
    originalCommand = [contextCopy originalCommand];
    *buf = 138413058;
    v38 = originalGUID;
    v39 = 2112;
    v40 = messageCopy;
    v41 = 2112;
    v42 = dCopy;
    v43 = 2112;
    v44 = originalCommand;
    _os_log_impl(&dword_1959FF000, iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - Incoming text message - %@, Message %@, fromID %@, command %@", buf, 0x2Au);
  }

  v14 = [[IDSOffGridEncryptedMessage alloc] initWithDictionaryMessage:messageCopy];
  v15 = MEMORY[0x1E69A5428];
  fromID = [contextCopy fromID];
  v17 = [v15 URIWithPrefixedURI:fromID];
  tokenFreeURI = [v17 tokenFreeURI];
  [(IDSOffGridEncryptedMessage *)v14 setSenderURI:tokenFreeURI];

  v19 = MEMORY[0x1E69A5428];
  toID = [contextCopy toID];
  v21 = [v19 URIWithPrefixedURI:toID];
  tokenFreeURI2 = [v21 tokenFreeURI];
  [(IDSOffGridEncryptedMessage *)v14 setRecipientURI:tokenFreeURI2];

  v23 = [[IDSOffGridMessageContext alloc] initWithIDSMessageContext:contextCopy];
  [(IDSOffGridMessageContext *)v23 setTransportType:1];
  [(IDSOffGridMessageContext *)v23 setServiceType:[(IDSOffGridMessenger *)self serviceType]];
  queue = self->_queue;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_195A28A7C;
  v31[3] = &unk_1E743EF10;
  v31[4] = self;
  v32 = v14;
  v33 = v23;
  v34 = contextCopy;
  v35 = messageCopy;
  v36 = dCopy;
  v25 = dCopy;
  v26 = messageCopy;
  v27 = contextCopy;
  v28 = v23;
  v29 = v14;
  dispatch_async(queue, v31);

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_handleIncomingDeliveryReceiptMessage:(id)message fromID:(id)d context:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  iDSOffGridMessenger = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT))
  {
    originalGUID = [contextCopy originalGUID];
    *buf = 138412802;
    v27 = originalGUID;
    v28 = 2112;
    v29 = messageCopy;
    v30 = 2112;
    v31 = dCopy;
    _os_log_impl(&dword_1959FF000, iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - Incoming delivery receipt - %@, Message %@, fromID %@", buf, 0x20u);
  }

  v13 = [[IDSOffGridMessageContext alloc] initWithIDSMessageContext:contextCopy];
  [(IDSOffGridMessageContext *)v13 setServiceType:[(IDSOffGridMessenger *)self serviceType]];
  v14 = MEMORY[0x1E69A5428];
  serviceIdentifier = [contextCopy serviceIdentifier];
  v16 = [v14 URIWithPrefixedURI:dCopy withServiceLoggingHint:serviceIdentifier];

  queue = self->_queue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_195A29078;
  v22[3] = &unk_1E743EEE8;
  v22[4] = self;
  v23 = contextCopy;
  v24 = v16;
  v25 = v13;
  v18 = v13;
  v19 = v16;
  v20 = contextCopy;
  dispatch_async(queue, v22);

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_handleIncomingServiceUpdateMessage:(id)message fromID:(id)d context:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  iDSOffGridMessenger = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT))
  {
    originalGUID = [contextCopy originalGUID];
    *buf = 138412802;
    v27 = originalGUID;
    v28 = 2112;
    v29 = messageCopy;
    v30 = 2112;
    v31 = dCopy;
    _os_log_impl(&dword_1959FF000, iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - Incoming service update message - %@, Message %@, fromID %@", buf, 0x20u);
  }

  v13 = [[IDSOffGridServiceUpdateMessage alloc] initWithDictionaryMessage:messageCopy];
  v14 = [[IDSOffGridMessageContext alloc] initWithIDSMessageContext:contextCopy];
  [(IDSOffGridMessageContext *)v14 setServiceType:[(IDSOffGridMessenger *)self serviceType]];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A29334;
  block[3] = &unk_1E743EF38;
  block[4] = self;
  v22 = v13;
  v23 = v14;
  v24 = contextCopy;
  v25 = dCopy;
  v16 = dCopy;
  v17 = contextCopy;
  v18 = v14;
  v19 = v13;
  dispatch_async(queue, block);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  v4 = +[IDSDaemonController sharedInstance];
  [v4 blockUntilConnected];

  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A296D8;
  v6[3] = &unk_1E743E878;
  v6[4] = self;
  [v5 performBlock:v6 waitUntilDone:1];
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  iDSOffGridMessenger = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT))
  {
    originalGUID = [contextCopy originalGUID];
    v20 = 138412802;
    v21 = originalGUID;
    v22 = 2112;
    v23 = messageCopy;
    v24 = 2112;
    v25 = dCopy;
    _os_log_impl(&dword_1959FF000, iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - Incoming message - %@, Message %@, fromID %@", &v20, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    originalCommand = [contextCopy originalCommand];
    integerValue = [originalCommand integerValue];

    if (integerValue <= 127)
    {
      if (integerValue != 100)
      {
        if (integerValue == 101)
        {
          [(IDSOffGridMessenger *)self _handleIncomingDeliveryReceiptMessage:messageCopy fromID:dCopy context:contextCopy];
          goto LABEL_17;
        }

        goto LABEL_14;
      }
    }

    else
    {
      if (integerValue == 128)
      {
        [(IDSOffGridMessenger *)self _handleIncomingServiceUpdateMessage:messageCopy fromID:dCopy context:contextCopy];
        goto LABEL_17;
      }

      if (integerValue != 143 && integerValue != 140)
      {
LABEL_14:
        iDSOffGridMessenger2 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
        if (os_log_type_enabled(iDSOffGridMessenger2, OS_LOG_TYPE_ERROR))
        {
          sub_195B28874(contextCopy, iDSOffGridMessenger2);
        }

        goto LABEL_17;
      }
    }

    [(IDSOffGridMessenger *)self _handleIncomingTextMessage:messageCopy fromID:dCopy context:contextCopy];
  }

LABEL_17:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)incomingOffGridMessage:(id)message messageContext:(id)context completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  contextCopy = context;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    queue = self->_queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_195A29A80;
    v16[3] = &unk_1E743F318;
    v16[4] = self;
    v17 = messageCopy;
    v18 = contextCopy;
    v19 = completionCopy;
    dispatch_async(queue, v16);
  }

  else
  {
    iDSOffGridMessenger = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [contextCopy identifier];
      *buf = 138412546;
      v21 = identifier;
      v22 = 2112;
      v23 = contextCopy;
      _os_log_impl(&dword_1959FF000, iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - incoming iMessage Lite but missing delegate, dropping! {messageContext.identifier: %@, messageContext: %@}", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)incomingOffGridSummaryMessage:(id)message messageContext:(id)context completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  contextCopy = context;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v12 = WeakRetained, v13 = objc_loadWeakRetained(&self->_delegate), v14 = objc_opt_respondsToSelector(), v13, v12, (v14 & 1) != 0))
  {
    queue = self->_queue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_195A29F64;
    v19[3] = &unk_1E743F318;
    v20 = messageCopy;
    v21 = contextCopy;
    selfCopy = self;
    v23 = completionCopy;
    dispatch_async(queue, v19);

    iDSOffGridMessenger = v20;
  }

  else
  {
    iDSOffGridMessenger = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [contextCopy identifier];
      *buf = 138412546;
      v25 = identifier;
      v26 = 2112;
      v27 = contextCopy;
      _os_log_impl(&dword_1959FF000, iDSOffGridMessenger, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - incoming iMessage Lite Summary but missing delegate, dropping! {messageContext.identifier: %@, messageContext: %@}", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (IDSOffGridMessengerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end