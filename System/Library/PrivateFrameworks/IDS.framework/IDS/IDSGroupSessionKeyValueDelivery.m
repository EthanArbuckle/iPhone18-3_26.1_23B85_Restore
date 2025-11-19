@interface IDSGroupSessionKeyValueDelivery
+ (void)createWithSessionID:(id)a3 completionHandler:(id)a4;
- (IDSGroupSessionKeyValueDelivery)initWithCoder:(id)a3;
- (IDSGroupSessionKeyValueDelivery)initWithSessionID:(id)a3 completionHandler:(id)a4;
- (void)_setUpXPC;
- (void)addDeliveryHandler:(id)a3;
- (void)dealloc;
- (void)removeDeliveryHandler:(id)a3;
- (void)requestDataForKey:(unsigned int)a3 participantID:(unint64_t)a4;
- (void)sendData:(id)a3 forKey:(unsigned int)a4 encryption:(unsigned int)a5 capability:(id)a6 completionHandler:(id)a7;
- (void)test_receiveData:(id)a3 forKey:(unsigned int)a4 fromParticipant:(unint64_t)a5;
@end

@implementation IDSGroupSessionKeyValueDelivery

+ (void)createWithSessionID:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_195A007D4;
  v20 = sub_195A03D90;
  v21 = 0;
  v7 = [IDSGroupSessionKeyValueDelivery alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195ADECB4;
  v12[3] = &unk_1E74425B8;
  v13 = v5;
  v14 = v6;
  v15 = &v16;
  v8 = v5;
  v9 = v6;
  v10 = [(IDSGroupSessionKeyValueDelivery *)v7 initWithSessionID:v8 completionHandler:v12];
  v11 = v17[5];
  v17[5] = v10;

  _Block_object_dispose(&v16, 8);
}

- (IDSGroupSessionKeyValueDelivery)initWithSessionID:(id)a3 completionHandler:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = IDSGroupSessionKeyValueDelivery;
  v9 = [(IDSGroupSessionKeyValueDelivery *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionID, a3);
    if (!v10->_deliveryHandlers)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      deliveryHandlers = v10->_deliveryHandlers;
      v10->_deliveryHandlers = v11;
    }

    v13 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x19A8BBEF0](v8);
      *buf = 138412546;
      v26 = v7;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "IDSGroupSessionKeyValueDelivery init: %@ with completionHandler: %@", buf, 0x16u);
    }

    v15 = MEMORY[0x19A8BBEF0](v8);
    setupXPCCompletionHandler = v10->_setupXPCCompletionHandler;
    v10->_setupXPCCompletionHandler = v15;

    ids_monotonic_time();
    v10->_setupTime = v17;
    v18 = +[IDSInternalQueueController sharedInstance];
    v19 = [v18 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ADEFF4;
    block[3] = &unk_1E743E878;
    v23 = v10;
    dispatch_sync(v19, block);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)dealloc
{
  sessionID = self->_sessionID;
  self->_sessionID = 0;

  xpc = self->_xpc;
  self->_xpc = 0;

  v5.receiver = self;
  v5.super_class = IDSGroupSessionKeyValueDelivery;
  [(IDSGroupSessionKeyValueDelivery *)&v5 dealloc];
}

- (void)_setUpXPC
{
  v3 = self->_sessionID;
  v4 = [IDSXPCConnectionRemoteObjectPromise alloc];
  v5 = +[IDSXPCGroupSessionKeyValueDeliveryInterface interface];
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 queue];
  v8 = [(IDSXPCConnectionRemoteObjectPromise *)v4 initWithInterface:v5 queue:v7];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195ADF1A0;
  v13[3] = &unk_1E7442608;
  v14 = v3;
  v15 = self;
  v16 = v8;
  v9 = v8;
  v10 = v3;
  [IDSXPCDaemonController performDaemonControllerTask:v13];
  v11 = [(IDSXPCConnectionRemoteObjectPromise *)v9 remoteObjectProxy];
  xpc = self->_xpc;
  self->_xpc = v11;
}

- (void)addDeliveryHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195ADF754;
  v8[3] = &unk_1E743EA30;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)removeDeliveryHandler:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195ADF8B0;
  v8[3] = &unk_1E743EA30;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)requestDataForKey:(unsigned int)a3 participantID:(unint64_t)a4
{
  v7 = +[IDSInternalQueueController sharedInstance];
  v8 = [v7 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195ADFB38;
  block[3] = &unk_1E7442630;
  v10 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(v8, block);
}

- (void)sendData:(id)a3 forKey:(unsigned int)a4 encryption:(unsigned int)a5 capability:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = +[IDSInternalQueueController sharedInstance];
  v16 = [v15 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195ADFD94;
  block[3] = &unk_1E7441C08;
  v21 = v12;
  v22 = v13;
  v23 = self;
  v24 = v14;
  v25 = a4;
  v26 = a5;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  dispatch_async(v16, block);
}

- (void)test_receiveData:(id)a3 forKey:(unsigned int)a4 fromParticipant:(unint64_t)a5
{
  v8 = a3;
  v9 = +[IDSInternalQueueController sharedInstance];
  v10 = [v9 queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195AE0190;
  v12[3] = &unk_1E7442680;
  v12[4] = self;
  v13 = v8;
  v15 = a4;
  v14 = a5;
  v11 = v8;
  dispatch_async(v10, v12);
}

- (IDSGroupSessionKeyValueDelivery)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = IDSGroupSessionKeyValueDelivery;
  v3 = a3;
  v4 = [(IDSGroupSessionKeyValueDelivery *)&v8 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"sessionID", v8.receiver, v8.super_class}];

  if (v5)
  {
    v4 = [(IDSGroupSessionKeyValueDelivery *)v4 _initWithSessionID:v5];
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end