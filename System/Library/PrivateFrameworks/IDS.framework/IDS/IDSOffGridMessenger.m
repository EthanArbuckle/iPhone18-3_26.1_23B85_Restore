@interface IDSOffGridMessenger
- (IDSOffGridMessenger)initWithService:(id)a3 queue:(id)a4 error:(id *)a5;
- (IDSOffGridMessenger)initWithServiceType:(int64_t)a3 queue:(id)a4 daemonController:(id)a5 error:(id *)a6;
- (IDSOffGridMessenger)initWithServiceType:(int64_t)a3 queue:(id)a4 error:(id *)a5;
- (IDSOffGridMessengerDelegate)delegate;
- (NSSet)handles;
- (id)_commandsForServiceType:(int64_t)a3;
- (id)_serviceNameForServiceType:(int64_t)a3;
- (int64_t)_serviceTypeForServiceName:(id)a3;
- (void)_handleIncomingDeliveryReceiptMessage:(id)a3 fromID:(id)a4 context:(id)a5;
- (void)_handleIncomingServiceUpdateMessage:(id)a3 fromID:(id)a4 context:(id)a5;
- (void)_handleIncomingTextMessage:(id)a3 fromID:(id)a4 context:(id)a5;
- (void)_setupInterruptionHandler;
- (void)_setupXPC;
- (void)decryptOffGridMessage:(id)a3 completion:(id)a4;
- (void)donateHandlesForMessagingKeys:(id)a3 fromURI:(id)a4 options:(id)a5 completion:(id)a6;
- (void)encryptAndSendOffGridMessage:(id)a3 options:(id)a4 completion:(id)a5;
- (void)encryptOffGridMessage:(id)a3 completion:(id)a4;
- (void)incomingOffGridMessage:(id)a3 messageContext:(id)a4 completion:(id)a5;
- (void)incomingOffGridSummaryMessage:(id)a3 messageContext:(id)a4 completion:(id)a5;
- (void)resultsForDestinationURIs:(id)a3 senderURI:(id)a4 options:(id)a5 completion:(id)a6;
- (void)sendEncryptedOffGridMessage:(id)a3 options:(id)a4 completion:(id)a5;
- (void)sendFetchRequestForHandles:(id)a3 completions:(id)a4;
- (void)sendServerMessage:(id)a3 options:(id)a4 completion:(id)a5;
- (void)sendServiceUpdateMessage:(id)a3 options:(id)a4 completion:(id)a5;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)setDelegate:(id)a3;
@end

@implementation IDSOffGridMessenger

- (IDSOffGridMessenger)initWithService:(id)a3 queue:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(IDSOffGridMessenger *)self _serviceTypeForServiceName:a3];
  if (_os_feature_enabled_impl())
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  v11 = [(IDSOffGridMessenger *)self initWithServiceType:v10 queue:v8 error:a5];

  return v11;
}

- (IDSOffGridMessenger)initWithServiceType:(int64_t)a3 queue:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (!_os_feature_enabled_impl())
  {
    a3 = 1;
  }

  v9 = +[IDSXPCDaemonController weakSharedInstance];
  v10 = [(IDSOffGridMessenger *)self initWithServiceType:a3 queue:v8 daemonController:v9 error:a5];

  return v10;
}

- (IDSOffGridMessenger)initWithServiceType:(int64_t)a3 queue:(id)a4 daemonController:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v15 = objc_alloc(MEMORY[0x1E695DF20]);
    v16 = [v15 initWithObjectsAndKeys:{@"The queue specified is nil.", *MEMORY[0x1E696A578], 0}];
    *a6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IDSOffGridDeliveryErrorDomain" code:3 userInfo:v16];

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
    v21 = self;
    v25 = a3;
    v22 = v10;
    v23 = v11;
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
    *a6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IDSOffGridDeliveryErrorDomain" code:1 userInfo:v18];

    _Block_object_dispose(&v26, 8);
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

LABEL_6:
  self = v12;
  v14 = self;
LABEL_10:

  return v14;
}

- (id)_serviceNameForServiceType:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = IDSServiceNameiMessageLite;
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_6;
    }

    v4 = IDSServiceNameiMessageLiteRelay;
  }

  self = *v4;
LABEL_6:

  return self;
}

- (id)_commandsForServiceType:(int64_t)a3
{
  if (a3 == 2)
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F0A297B0, &unk_1F0A297C8, &unk_1F0A297E0, &unk_1F0A297F8, &unk_1F0A29810, &unk_1F0A29828, 0}];
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F0A297B0, &unk_1F0A297C8, &unk_1F0A297E0, 0, v4, v5, v6}];
  }
  self = ;
LABEL_6:

  return self;
}

- (int64_t)_serviceTypeForServiceName:(id)a3
{
  if ([a3 isEqualToIgnoringCase:@"com.apple.madrid.lite.relay"])
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
  v3 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSOffGridMessenger *)self uuid];
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Setting up xpc for client %@", buf, 0xCu);
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
  v13 = self;
  v14 = v3;
  v6 = v3;
  [v5 performBlock:&v9 waitUntilDone:1];

  v7 = [v6 copy];

  return v7;
}

- (void)donateHandlesForMessagingKeys:(id)a3 fromURI:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  daemonController = self->_daemonController;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195A25DC8;
  v19[3] = &unk_1E743F1B0;
  v22 = v12;
  v23 = v13;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  [(IDSXPCDaemonController *)daemonController performTask:v19];
}

- (void)resultsForDestinationURIs:(id)a3 senderURI:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  daemonController = self->_daemonController;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195A261E8;
  v19[3] = &unk_1E743F1B0;
  v22 = v12;
  v23 = v13;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  [(IDSXPCDaemonController *)daemonController performTask:v19];
}

- (void)encryptOffGridMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setService:self->_serviceName];
  v8 = [v6 senderURI];

  if (!v8)
  {
    v9 = [(IDSOffGridMessenger *)self handles];
    v10 = [v9 anyObject];
    [v6 setSenderURI:v10];
  }

  daemonController = self->_daemonController;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A26690;
  v14[3] = &unk_1E743F278;
  v15 = v6;
  v16 = v7;
  v14[4] = self;
  v12 = v6;
  v13 = v7;
  [(IDSXPCDaemonController *)daemonController performTask:v14];
}

- (void)decryptOffGridMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  daemonController = self->_daemonController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A26A8C;
  v11[3] = &unk_1E743F278;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(IDSXPCDaemonController *)daemonController performTask:v11];
}

- (void)sendEncryptedOffGridMessage:(id)a3 options:(id)a4 completion:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 setService:self->_serviceName];
  [v9 setServiceType:self->_serviceType];
  if ([v9 transportType])
  {
    [v9 setDefaultOptionsForTransportType:{objc_msgSend(v9, "transportType")}];
    [v9 setEncryptPayload:0];
    v11 = [v8 identifier];
    [v9 setIdentifier:v11];

    v12 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 identifier];
      v14 = [v8 dictionaryRepresentation];
      *buf = 138412802;
      v40 = v13;
      v41 = 2112;
      v42 = v14;
      v43 = 2048;
      v44 = [v9 transportType];
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - Sending outgoing encrypted OffGrid message - %@, Message %@, transportType %ld", buf, 0x20u);
    }

    v15 = [v9 transportType];
    if (v15 == 1)
    {
      v24 = +[IDSDaemonController sharedInstance];
      [v24 blockUntilConnected];

      v25 = +[IDSInternalQueueController sharedInstance];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_195A27558;
      v27[3] = &unk_1E743F318;
      v27[4] = self;
      v28 = v8;
      v29 = v9;
      v30 = v10;
      [v25 performBlock:v27 waitUntilDone:0];

      v17 = v28;
      goto LABEL_11;
    }

    if (v15 == 2)
    {
      daemonController = self->_daemonController;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_195A27210;
      v31[3] = &unk_1E743F2F0;
      v34 = v10;
      v31[4] = self;
      v32 = v8;
      v33 = v9;
      [(IDSXPCDaemonController *)daemonController performTask:v31];

      v17 = v34;
LABEL_11:
    }
  }

  else
  {
    v18 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - Fatal Error - Transport not set", buf, 2u);
    }

    v19 = objc_alloc(MEMORY[0x1E695DF20]);
    v20 = [v19 initWithObjectsAndKeys:{@"Invalid OffGrid delivery options. transport type not set", *MEMORY[0x1E696A578], 0}];
    v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IDSOffGridDeliveryErrorDomain" code:2 userInfo:v20];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A271F4;
    block[3] = &unk_1E743F1D8;
    v38 = v10;
    v36 = v8;
    v37 = v21;
    v23 = v21;
    dispatch_async(queue, block);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)encryptAndSendOffGridMessage:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSInternalQueueController sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A27818;
  v15[3] = &unk_1E743F318;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performBlock:v15];
}

- (void)sendFetchRequestForHandles:(id)a3 completions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSOffGridMessenger *)self handles];
  v9 = [v8 anyObject];

  if (!v9)
  {
    v25 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_195B28804(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    v33 = objc_alloc(MEMORY[0x1E695DF20]);
    v11 = [v33 initWithObjectsAndKeys:{@"No active sender handle found.", *MEMORY[0x1E696A578], 0}];
    v34 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IDSOffGridDeliveryErrorDomain" code:7 userInfo:v11];
    queue = self->_queue;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_195A27D38;
    v44[3] = &unk_1E743F1D8;
    v47 = v7;
    v45 = v6;
    v46 = v34;
    v23 = v34;
    dispatch_async(queue, v44);

    v24 = v47;
    goto LABEL_11;
  }

  if (!v6 || ![v6 count])
  {
    v12 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B287CC(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    v20 = objc_alloc(MEMORY[0x1E695DF20]);
    v11 = [v20 initWithObjectsAndKeys:{@"No handles specified.", *MEMORY[0x1E696A578], 0}];
    v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IDSOffGridDeliveryErrorDomain" code:11 userInfo:v11];
    v22 = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A27D50;
    block[3] = &unk_1E743F1D8;
    v43 = v7;
    v41 = v6;
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
  v39 = v7;
  v36[4] = self;
  v37 = v6;
  v38 = v9;
  [(IDSXPCDaemonController *)daemonController performTask:v36];

  v11 = v39;
LABEL_12:
}

- (void)sendServiceUpdateMessage:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSDaemonController sharedInstance];
  [v11 blockUntilConnected];

  v12 = +[IDSInternalQueueController sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A281A8;
  v16[3] = &unk_1E743F318;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [v12 performBlock:v16 waitUntilDone:0];
}

- (void)sendServerMessage:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9 && [v9 command] > 0)
  {
    v11 = +[IDSDaemonController sharedInstance];
    [v11 blockUntilConnected];

    v12 = +[IDSInternalQueueController sharedInstance];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_195A285E4;
    v28[3] = &unk_1E743F318;
    v28[4] = self;
    v29 = v8;
    v30 = v9;
    v31 = v10;
    v13 = v10;
    v14 = v8;
    [v12 performBlock:v28 waitUntilDone:0];
  }

  else
  {
    v15 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_195B2883C(v15, v16, v17, v18, v19, v20, v21, v22);
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
    v35 = v10;
    v33 = v8;
    v26 = v10;
    v27 = v8;
    v13 = v24;
    dispatch_async(queue, block);
  }
}

- (void)_handleIncomingTextMessage:(id)a3 fromID:(id)a4 context:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 originalGUID];
    v13 = [v10 originalCommand];
    *buf = 138413058;
    v38 = v12;
    v39 = 2112;
    v40 = v8;
    v41 = 2112;
    v42 = v9;
    v43 = 2112;
    v44 = v13;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - Incoming text message - %@, Message %@, fromID %@, command %@", buf, 0x2Au);
  }

  v14 = [[IDSOffGridEncryptedMessage alloc] initWithDictionaryMessage:v8];
  v15 = MEMORY[0x1E69A5428];
  v16 = [v10 fromID];
  v17 = [v15 URIWithPrefixedURI:v16];
  v18 = [v17 tokenFreeURI];
  [(IDSOffGridEncryptedMessage *)v14 setSenderURI:v18];

  v19 = MEMORY[0x1E69A5428];
  v20 = [v10 toID];
  v21 = [v19 URIWithPrefixedURI:v20];
  v22 = [v21 tokenFreeURI];
  [(IDSOffGridEncryptedMessage *)v14 setRecipientURI:v22];

  v23 = [[IDSOffGridMessageContext alloc] initWithIDSMessageContext:v10];
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
  v34 = v10;
  v35 = v8;
  v36 = v9;
  v25 = v9;
  v26 = v8;
  v27 = v10;
  v28 = v23;
  v29 = v14;
  dispatch_async(queue, v31);

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_handleIncomingDeliveryReceiptMessage:(id)a3 fromID:(id)a4 context:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 originalGUID];
    *buf = 138412802;
    v27 = v12;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - Incoming delivery receipt - %@, Message %@, fromID %@", buf, 0x20u);
  }

  v13 = [[IDSOffGridMessageContext alloc] initWithIDSMessageContext:v10];
  [(IDSOffGridMessageContext *)v13 setServiceType:[(IDSOffGridMessenger *)self serviceType]];
  v14 = MEMORY[0x1E69A5428];
  v15 = [v10 serviceIdentifier];
  v16 = [v14 URIWithPrefixedURI:v9 withServiceLoggingHint:v15];

  queue = self->_queue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_195A29078;
  v22[3] = &unk_1E743EEE8;
  v22[4] = self;
  v23 = v10;
  v24 = v16;
  v25 = v13;
  v18 = v13;
  v19 = v16;
  v20 = v10;
  dispatch_async(queue, v22);

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_handleIncomingServiceUpdateMessage:(id)a3 fromID:(id)a4 context:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 originalGUID];
    *buf = 138412802;
    v27 = v12;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - Incoming service update message - %@, Message %@, fromID %@", buf, 0x20u);
  }

  v13 = [[IDSOffGridServiceUpdateMessage alloc] initWithDictionaryMessage:v8];
  v14 = [[IDSOffGridMessageContext alloc] initWithIDSMessageContext:v10];
  [(IDSOffGridMessageContext *)v14 setServiceType:[(IDSOffGridMessenger *)self serviceType]];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A29334;
  block[3] = &unk_1E743EF38;
  block[4] = self;
  v22 = v13;
  v23 = v14;
  v24 = v10;
  v25 = v9;
  v16 = v9;
  v17 = v10;
  v18 = v14;
  v19 = v13;
  dispatch_async(queue, block);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
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

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v12 originalGUID];
    v20 = 138412802;
    v21 = v14;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - Incoming message - %@, Message %@, fromID %@", &v20, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v16 = [v12 originalCommand];
    v17 = [v16 integerValue];

    if (v17 <= 127)
    {
      if (v17 != 100)
      {
        if (v17 == 101)
        {
          [(IDSOffGridMessenger *)self _handleIncomingDeliveryReceiptMessage:v10 fromID:v11 context:v12];
          goto LABEL_17;
        }

        goto LABEL_14;
      }
    }

    else
    {
      if (v17 == 128)
      {
        [(IDSOffGridMessenger *)self _handleIncomingServiceUpdateMessage:v10 fromID:v11 context:v12];
        goto LABEL_17;
      }

      if (v17 != 143 && v17 != 140)
      {
LABEL_14:
        v18 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_195B28874(v12, v18);
        }

        goto LABEL_17;
      }
    }

    [(IDSOffGridMessenger *)self _handleIncomingTextMessage:v10 fromID:v11 context:v12];
  }

LABEL_17:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)incomingOffGridMessage:(id)a3 messageContext:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    queue = self->_queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_195A29A80;
    v16[3] = &unk_1E743F318;
    v16[4] = self;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    dispatch_async(queue, v16);
  }

  else
  {
    v13 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v9 identifier];
      *buf = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - incoming iMessage Lite but missing delegate, dropping! {messageContext.identifier: %@, messageContext: %@}", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)incomingOffGridSummaryMessage:(id)a3 messageContext:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v12 = WeakRetained, v13 = objc_loadWeakRetained(&self->_delegate), v14 = objc_opt_respondsToSelector(), v13, v12, (v14 & 1) != 0))
  {
    queue = self->_queue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_195A29F64;
    v19[3] = &unk_1E743F318;
    v20 = v8;
    v21 = v9;
    v22 = self;
    v23 = v10;
    dispatch_async(queue, v19);

    v16 = v20;
  }

  else
  {
    v16 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v9 identifier];
      *buf = 138412546;
      v25 = v17;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "IDSOffGridMessenger - incoming iMessage Lite Summary but missing delegate, dropping! {messageContext.identifier: %@, messageContext: %@}", buf, 0x16u);
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