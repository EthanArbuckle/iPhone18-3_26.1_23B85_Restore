@interface IDSGroupSessionKeyValueDelivery
+ (void)createWithSessionID:(id)d completionHandler:(id)handler;
- (IDSGroupSessionKeyValueDelivery)initWithCoder:(id)coder;
- (IDSGroupSessionKeyValueDelivery)initWithSessionID:(id)d completionHandler:(id)handler;
- (void)_setUpXPC;
- (void)addDeliveryHandler:(id)handler;
- (void)dealloc;
- (void)removeDeliveryHandler:(id)handler;
- (void)requestDataForKey:(unsigned int)key participantID:(unint64_t)d;
- (void)sendData:(id)data forKey:(unsigned int)key encryption:(unsigned int)encryption capability:(id)capability completionHandler:(id)handler;
- (void)test_receiveData:(id)data forKey:(unsigned int)key fromParticipant:(unint64_t)participant;
@end

@implementation IDSGroupSessionKeyValueDelivery

+ (void)createWithSessionID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
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
  v13 = dCopy;
  v14 = handlerCopy;
  v15 = &v16;
  v8 = dCopy;
  v9 = handlerCopy;
  v10 = [(IDSGroupSessionKeyValueDelivery *)v7 initWithSessionID:v8 completionHandler:v12];
  v11 = v17[5];
  v17[5] = v10;

  _Block_object_dispose(&v16, 8);
}

- (IDSGroupSessionKeyValueDelivery)initWithSessionID:(id)d completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = IDSGroupSessionKeyValueDelivery;
  v9 = [(IDSGroupSessionKeyValueDelivery *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionID, d);
    if (!v10->_deliveryHandlers)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      deliveryHandlers = v10->_deliveryHandlers;
      v10->_deliveryHandlers = v11;
    }

    groupSessionKeyValueDelivery = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
    if (os_log_type_enabled(groupSessionKeyValueDelivery, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x19A8BBEF0](handlerCopy);
      *buf = 138412546;
      v26 = dCopy;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_1959FF000, groupSessionKeyValueDelivery, OS_LOG_TYPE_DEFAULT, "IDSGroupSessionKeyValueDelivery init: %@ with completionHandler: %@", buf, 0x16u);
    }

    v15 = MEMORY[0x19A8BBEF0](handlerCopy);
    setupXPCCompletionHandler = v10->_setupXPCCompletionHandler;
    v10->_setupXPCCompletionHandler = v15;

    ids_monotonic_time();
    v10->_setupTime = v17;
    v18 = +[IDSInternalQueueController sharedInstance];
    queue = [v18 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ADEFF4;
    block[3] = &unk_1E743E878;
    v23 = v10;
    dispatch_sync(queue, block);
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
  queue = [v6 queue];
  v8 = [(IDSXPCConnectionRemoteObjectPromise *)v4 initWithInterface:v5 queue:queue];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195ADF1A0;
  v13[3] = &unk_1E7442608;
  v14 = v3;
  selfCopy = self;
  v16 = v8;
  v9 = v8;
  v10 = v3;
  [IDSXPCDaemonController performDaemonControllerTask:v13];
  remoteObjectProxy = [(IDSXPCConnectionRemoteObjectPromise *)v9 remoteObjectProxy];
  xpc = self->_xpc;
  self->_xpc = remoteObjectProxy;
}

- (void)addDeliveryHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSInternalQueueController sharedInstance];
  queue = [v5 queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195ADF754;
  v8[3] = &unk_1E743EA30;
  v9 = handlerCopy;
  selfCopy = self;
  v7 = handlerCopy;
  dispatch_async(queue, v8);
}

- (void)removeDeliveryHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[IDSInternalQueueController sharedInstance];
  queue = [v5 queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195ADF8B0;
  v8[3] = &unk_1E743EA30;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(queue, v8);
}

- (void)requestDataForKey:(unsigned int)key participantID:(unint64_t)d
{
  v7 = +[IDSInternalQueueController sharedInstance];
  queue = [v7 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195ADFB38;
  block[3] = &unk_1E7442630;
  keyCopy = key;
  block[4] = self;
  block[5] = d;
  dispatch_async(queue, block);
}

- (void)sendData:(id)data forKey:(unsigned int)key encryption:(unsigned int)encryption capability:(id)capability completionHandler:(id)handler
{
  dataCopy = data;
  capabilityCopy = capability;
  handlerCopy = handler;
  v15 = +[IDSInternalQueueController sharedInstance];
  queue = [v15 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195ADFD94;
  block[3] = &unk_1E7441C08;
  v21 = dataCopy;
  v22 = capabilityCopy;
  selfCopy = self;
  v24 = handlerCopy;
  keyCopy = key;
  encryptionCopy = encryption;
  v17 = handlerCopy;
  v18 = capabilityCopy;
  v19 = dataCopy;
  dispatch_async(queue, block);
}

- (void)test_receiveData:(id)data forKey:(unsigned int)key fromParticipant:(unint64_t)participant
{
  dataCopy = data;
  v9 = +[IDSInternalQueueController sharedInstance];
  queue = [v9 queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195AE0190;
  v12[3] = &unk_1E7442680;
  v12[4] = self;
  v13 = dataCopy;
  keyCopy = key;
  participantCopy = participant;
  v11 = dataCopy;
  dispatch_async(queue, v12);
}

- (IDSGroupSessionKeyValueDelivery)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = IDSGroupSessionKeyValueDelivery;
  coderCopy = coder;
  v4 = [(IDSGroupSessionKeyValueDelivery *)&v8 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"sessionID", v8.receiver, v8.super_class}];

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