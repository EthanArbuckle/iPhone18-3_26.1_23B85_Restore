@interface PKIDSService
- (PKIDSService)initWithService:(id)service;
- (PKIDSService)initWithServiceName:(id)name;
- (void)_enumerateDelegatesWithBlock:(id)block;
- (void)_receivedMessage:(id)message isRequest:(BOOL)request service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)_setProtobufAction:(SEL)action target:(id)target messageType:(unsigned __int16)type isRequest:(BOOL)request queue:(id)queue;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)executeWhenAccountsReadyAndDevicesSet:(id)set timeoutSeconds:(int64_t)seconds;
- (void)registerListenerForMessageType:(unsigned __int16)type isRequest:(BOOL)request referenceObject:(id)object queue:(id)queue onMessageReceived:(id)received;
- (void)removeDelegate:(id)delegate;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)unregisterListenersForTarget:(id)target;
@end

@implementation PKIDSService

- (PKIDSService)initWithServiceName:(id)name
{
  v4 = MEMORY[0x1E69A48A8];
  nameCopy = name;
  v6 = [[v4 alloc] initWithService:nameCopy];

  v7 = [(PKIDSService *)self initWithService:v6];
  return v7;
}

- (PKIDSService)initWithService:(id)service
{
  result = service;
  if (result)
  {
    v6 = result;
    v21.receiver = self;
    v21.super_class = PKIDSService;
    v7 = [(PKIDSService *)&v21 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_underlyingService, service);
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      listeners = v8->_listeners;
      v8->_listeners = v9;

      pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
      delegates = v8->_delegates;
      v8->_delegates = pk_weakObjectsHashTableUsingPointerPersonality;

      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      pendingAccountDevicesReadyCompletions = v8->_pendingAccountDevicesReadyCompletions;
      v8->_pendingAccountDevicesReadyCompletions = v13;

      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      pendingAccountDevicesReadyTimers = v8->_pendingAccountDevicesReadyTimers;
      v8->_pendingAccountDevicesReadyTimers = v15;

      v8->_lock._os_unfair_lock_opaque = 0;
      v17 = dispatch_queue_create("com.apple.passd.idsservice.internal", 0);
      internalQueue = v8->_internalQueue;
      v8->_internalQueue = v17;

      v19 = dispatch_queue_create("com.apple.passd.idsservice.reply", 0);
      replyQueue = v8->_replyQueue;
      v8->_replyQueue = v19;
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)dealloc
{
  [(IDSService *)self->_underlyingService removeDelegate:self];
  v3.receiver = self;
  v3.super_class = PKIDSService;
  [(PKIDSService *)&v3 dealloc];
}

- (void)_setProtobufAction:(SEL)action target:(id)target messageType:(unsigned __int16)type isRequest:(BOOL)request queue:(id)queue
{
  requestCopy = request;
  typeCopy = type;
  targetCopy = target;
  queueCopy = queue;
  objc_initWeak(&location, targetCopy);
  objc_initWeak(&from, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__PKIDSService__setProtobufAction_target_messageType_isRequest_queue___block_invoke;
  v14[3] = &unk_1E79D0AA8;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(v16, &from);
  v16[1] = action;
  [(PKIDSService *)self registerListenerForMessageType:typeCopy isRequest:requestCopy referenceObject:targetCopy queue:queueCopy onMessageReceived:v14];
  objc_destroyWeak(v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __70__PKIDSService__setProtobufAction_target_messageType_isRequest_queue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = v10;
  if (WeakRetained && v10)
  {
    v12 = MEMORY[0x1E695DF50];
    v13 = [WeakRetained methodSignatureForSelector:{*(a1 + 48), v15, v16, v17, v18}];
    v14 = [v12 invocationWithMethodSignature:v13];

    [v14 setSelector:*(a1 + 48)];
    [v14 setTarget:WeakRetained];
    [v14 setArgument:&v18 atIndex:2];
    [v14 setArgument:v11 + 64 atIndex:3];
    [v14 setArgument:&v17 atIndex:4];
    [v14 setArgument:&v16 atIndex:5];
    [v14 setArgument:&v15 atIndex:6];
    [v14 invoke];
  }
}

- (void)registerListenerForMessageType:(unsigned __int16)type isRequest:(BOOL)request referenceObject:(id)object queue:(id)queue onMessageReceived:(id)received
{
  requestCopy = request;
  typeCopy = type;
  receivedCopy = received;
  queueCopy = queue;
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  v15 = [[PKIDSServiceListenerRegistrationKey alloc] initWithMessageType:typeCopy isRequest:requestCopy];
  v16 = [(NSMutableDictionary *)self->_listeners objectForKeyedSubscript:v15];
  if (v16)
  {
    v17 = v16;
    v18 = [[PKIDSServiceListener alloc] initWithReferenceObject:objectCopy onMessageReceived:receivedCopy];

    [(PKIDSServiceListener *)v18 setReplyQueue:queueCopy];
    [v17 addObject:v18];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_listeners setObject:v19 forKeyedSubscript:v15];
    v20 = [[PKIDSServiceListener alloc] initWithReferenceObject:objectCopy onMessageReceived:receivedCopy];

    [(PKIDSServiceListener *)v20 setReplyQueue:queueCopy];
    [v19 addObject:v20];

    os_unfair_lock_unlock(&self->_lock);
    underlyingService = self->_underlyingService;
    if (requestCopy)
    {

      [(IDSService *)underlyingService setProtobufAction:sel__receivedRequestMessage_service_account_fromID_context_ forIncomingRequestsOfType:typeCopy];
    }

    else
    {

      [(IDSService *)underlyingService setProtobufAction:sel__receivedResponseMessage_service_account_fromID_context_ forIncomingResponsesOfType:typeCopy];
    }
  }
}

- (void)_receivedMessage:(id)message isRequest:(BOOL)request service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  requestCopy = request;
  v40 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  accountCopy = account;
  dCopy = d;
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  v17 = -[PKIDSServiceListenerRegistrationKey initWithMessageType:isRequest:]([PKIDSServiceListenerRegistrationKey alloc], "initWithMessageType:isRequest:", [messageCopy type], requestCopy);
  v18 = [(NSMutableDictionary *)self->_listeners objectForKeyedSubscript:v17];
  v19 = [v18 pk_objectsPassingTest:&__block_literal_global_80];
  v20 = [v19 mutableCopy];

  [(NSMutableDictionary *)self->_listeners setObject:v20 forKeyedSubscript:v17];
  v21 = [v20 copy];

  os_unfair_lock_unlock(&self->_lock);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v21;
  v22 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v35 + 1) + 8 * i);
        replyQueue = [v26 replyQueue];
        if (replyQueue)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __74__PKIDSService__receivedMessage_isRequest_service_account_fromID_context___block_invoke_2;
          block[3] = &unk_1E79C7D80;
          block[4] = v26;
          v31 = messageCopy;
          v32 = accountCopy;
          v33 = dCopy;
          v34 = contextCopy;
          dispatch_async(replyQueue, block);
        }

        else
        {
          onMessageReceived = [v26 onMessageReceived];
          (onMessageReceived)[2](onMessageReceived, messageCopy, accountCopy, dCopy, contextCopy);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v23);
  }
}

BOOL __74__PKIDSService__receivedMessage_isRequest_service_account_fromID_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 referenceObject];
  v3 = v2 != 0;

  return v3;
}

void __74__PKIDSService__receivedMessage_isRequest_service_account_fromID_context___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) onMessageReceived];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

- (void)unregisterListenersForTarget:(id)target
{
  v22 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  os_unfair_lock_lock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(NSMutableDictionary *)self->_listeners allKeys];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_listeners objectForKeyedSubscript:v9];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __45__PKIDSService_unregisterListenersForTarget___block_invoke;
        v15[3] = &unk_1E79D0AF0;
        v16 = targetCopy;
        v11 = [v10 pk_objectsPassingTest:v15];
        v12 = [v11 mutableCopy];

        if ([v12 count])
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        [(NSMutableDictionary *)self->_listeners setObject:v13 forKeyedSubscript:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
}

BOOL __45__PKIDSService_unregisterListenersForTarget___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 referenceObject];
  v4 = v3 != *(a1 + 32);

  return v4;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_delegates addObject:delegateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_delegates removeObject:delegateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v18 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  changedCopy = changed;
  v8 = PKLogFacilityTypeGetObject(0x22uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v17 = changedCopy;
    _os_log_debug_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEBUG, "IDSService: devicesChanged: %{private}@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__PKIDSService_service_devicesChanged___block_invoke;
  v13[3] = &unk_1E79D0B18;
  v14 = serviceCopy;
  v15 = changedCopy;
  v9 = changedCopy;
  v10 = serviceCopy;
  [(PKIDSService *)self _enumerateDelegatesWithBlock:v13];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PKIDSService_service_devicesChanged___block_invoke_2;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __39__PKIDSService_service_devicesChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 service:*(a1 + 32) devicesChanged:*(a1 + 40)];
  }
}

void __39__PKIDSService_service_devicesChanged___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 48) count])
  {
    v2 = [*(*(a1 + 32) + 56) copy];
    [v2 enumerateObjectsUsingBlock:&__block_literal_global_81_1];
    [*(*(a1 + 32) + 56) removeAllObjects];
    v3 = [*(*(a1 + 32) + 48) copy];
    v4 = PKLogFacilityTypeGetObject(0x22uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = [v3 count];
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "IDSService: devicesChanged, notifying %lu pending completions", buf, 0xCu);
    }

    [*(*(a1 + 32) + 48) removeAllObjects];
    v5 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PKIDSService_service_devicesChanged___block_invoke_82;
    block[3] = &unk_1E79C4E28;
    v8 = v3;
    v6 = v3;
    dispatch_async(v5, block);
  }
}

void __39__PKIDSService_service_devicesChanged___block_invoke_82(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  contextCopy = context;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__PKIDSService_service_account_identifier_hasBeenDeliveredWithContext___block_invoke;
  v18[3] = &unk_1E79D0B60;
  v19 = serviceCopy;
  v20 = accountCopy;
  v21 = identifierCopy;
  v22 = contextCopy;
  v14 = contextCopy;
  v15 = identifierCopy;
  v16 = accountCopy;
  v17 = serviceCopy;
  [(PKIDSService *)self _enumerateDelegatesWithBlock:v18];
}

void __71__PKIDSService_service_account_identifier_hasBeenDeliveredWithContext___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 service:a1[4] account:a1[5] identifier:a1[6] hasBeenDeliveredWithContext:a1[7]];
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __73__PKIDSService_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke;
  v22[3] = &unk_1E79D0B88;
  v23 = serviceCopy;
  v24 = accountCopy;
  v25 = protobufCopy;
  v26 = dCopy;
  v27 = contextCopy;
  v17 = contextCopy;
  v18 = dCopy;
  v19 = protobufCopy;
  v20 = accountCopy;
  v21 = serviceCopy;
  [(PKIDSService *)self _enumerateDelegatesWithBlock:v22];
}

void __73__PKIDSService_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 service:a1[4] account:a1[5] incomingUnhandledProtobuf:a1[6] fromID:a1[7] context:a1[8]];
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __76__PKIDSService_service_account_identifier_didSendWithSuccess_error_context___block_invoke;
  v24[3] = &unk_1E79D0BB0;
  v25 = serviceCopy;
  v26 = accountCopy;
  successCopy = success;
  v27 = identifierCopy;
  v28 = errorCopy;
  v29 = contextCopy;
  v19 = contextCopy;
  v20 = errorCopy;
  v21 = identifierCopy;
  v22 = accountCopy;
  v23 = serviceCopy;
  [(PKIDSService *)self _enumerateDelegatesWithBlock:v24];
}

void __76__PKIDSService_service_account_identifier_didSendWithSuccess_error_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 service:*(a1 + 32) account:*(a1 + 40) identifier:*(a1 + 48) didSendWithSuccess:*(a1 + 72) error:*(a1 + 56)];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 service:*(a1 + 32) account:*(a1 + 40) identifier:*(a1 + 48) didSendWithSuccess:*(a1 + 72) error:*(a1 + 56) context:*(a1 + 64)];
  }
}

- (void)_enumerateDelegatesWithBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_delegates copy];
  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        replyQueue = self->_replyQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45__PKIDSService__enumerateDelegatesWithBlock___block_invoke;
        block[3] = &unk_1E79C44A0;
        v12 = blockCopy;
        block[4] = v10;
        v15 = v12;
        dispatch_async(replyQueue, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)executeWhenAccountsReadyAndDevicesSet:(id)set timeoutSeconds:(int64_t)seconds
{
  setCopy = set;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKIDSService_executeWhenAccountsReadyAndDevicesSet_timeoutSeconds___block_invoke;
  block[3] = &unk_1E79C4EA0;
  block[4] = self;
  v10 = setCopy;
  secondsCopy = seconds;
  v8 = setCopy;
  dispatch_async(internalQueue, block);
}

void __69__PKIDSService_executeWhenAccountsReadyAndDevicesSet_timeoutSeconds___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 accounts];
  v4 = [v3 count];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = *(v5 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__PKIDSService_executeWhenAccountsReadyAndDevicesSet_timeoutSeconds___block_invoke_2;
    block[3] = &unk_1E79C4428;
    v17 = *(a1 + 40);
    dispatch_async(v6, block);
    v7 = v17;
  }

  else
  {
    v8 = *(v5 + 48);
    v9 = [*(a1 + 40) copy];
    v10 = _Block_copy(v9);
    [v8 addObject:v10];

    v11 = PKLogFacilityTypeGetObject(0x22uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "IDSService: No active accounts, waiting for accounts/devices to be set", buf, 2u);
    }

    v12 = MEMORY[0x1E695DFF0];
    v13 = *(a1 + 48);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__PKIDSService_executeWhenAccountsReadyAndDevicesSet_timeoutSeconds___block_invoke_92;
    v18[3] = &unk_1E79D0BD8;
    v14 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v14;
    v15 = [v12 scheduledTimerWithTimeInterval:0 repeats:v18 block:v13];
    [*(*(a1 + 32) + 56) addObject:v15];

    v7 = v19;
  }
}

void __69__PKIDSService_executeWhenAccountsReadyAndDevicesSet_timeoutSeconds___block_invoke_92(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0x22uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "IDSService: timed out waiting for accounts/devices to be set", buf, 2u);
  }

  v5 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKIDSService_executeWhenAccountsReadyAndDevicesSet_timeoutSeconds___block_invoke_93;
  block[3] = &unk_1E79C4428;
  v9 = *(a1 + 40);
  dispatch_async(v5, block);
  v6 = *(*(a1 + 32) + 48);
  v7 = _Block_copy(*(a1 + 40));
  [v6 removeObject:v7];

  [*(*(a1 + 32) + 56) removeObject:v3];
}

@end