@interface XPCServiceConnection
- (XPCServiceConnection)initWithServiceName:(id)name client:(id)client queue:(id)queue;
- (XPCServiceConnectionDelegate)delegate;
- (XPCServiceListener)serviceListener;
- (id)debugDescription;
- (void)resume;
- (void)sendMessage:(id)message withHandler:(id)handler;
- (void)shutDownCompletionBlock:(id)block;
- (void)workQueueHandleIncomingMessage:(id)message;
- (void)workQueueShutDown;
@end

@implementation XPCServiceConnection

- (XPCServiceListener)serviceListener
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceListener);

  return WeakRetained;
}

- (XPCServiceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)shutDownCompletionBlock:(id)block
{
  blockCopy = block;
  workQueue = [(XPCServiceConnection *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__XPCServiceConnection_shutDownCompletionBlock___block_invoke;
  v7[3] = &unk_2798A5170;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

void __48__XPCServiceConnection_shutDownCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) workQueueShutDown];
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) workQueue];
    dispatch_async(v2, *(a1 + 40));
  }
}

- (void)sendMessage:(id)message withHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    __assert_rtn("[XPCServiceConnection sendMessage:withHandler:]", "XPCKitBasic.m", 338, "handler");
  }

  v8 = handlerCopy;
  if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    _XPCLog(6, @"%@: Scheduling message to be sent to the client.", v9, v10, v11, v12, v13, v14, self);
  }

  workQueue = [(XPCServiceConnection *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__XPCServiceConnection_sendMessage_withHandler___block_invoke;
  block[3] = &unk_2798A51E8;
  v19 = messageCopy;
  v20 = v8;
  block[4] = self;
  v16 = messageCopy;
  v17 = v8;
  dispatch_async(workQueue, block);
}

void __48__XPCServiceConnection_sendMessage_withHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    if (_shouldLogBlock)
    {
      if ((*(_shouldLogBlock + 16))())
      {
        _XPCLog(7, @"%@: Sending message.", v2, v3, v4, v5, v6, v7, *(a1 + 32));
      }

      if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 7))
      {
        v8 = MEMORY[0x259C89D80](*(a1 + 40));
        if (_shouldLogBlock)
        {
          if ((*(_shouldLogBlock + 16))(_shouldLogBlock, 7))
          {
            _XPCLog(7, @"Message: %s", v9, v10, v11, v12, v13, v14, v8);
          }
        }

        free(v8);
      }
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = v15[3];
    v18 = [v15 workQueue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __48__XPCServiceConnection_sendMessage_withHandler___block_invoke_2;
    handler[3] = &unk_2798A51C0;
    handler[4] = *(a1 + 32);
    v28 = *(a1 + 48);
    v27 = *(a1 + 40);
    xpc_connection_send_message_with_reply(v17, v16, v18, handler);
  }

  else
  {
    if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
    {
      _XPCLog(6, @"%@: Client has been torn down. Not sending message.", v19, v20, v21, v22, v23, v24, *(a1 + 32));
    }

    v25 = *(*(a1 + 48) + 16);

    v25();
  }
}

void __48__XPCServiceConnection_sendMessage_withHandler___block_invoke_2(uint64_t *a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (_shouldLogBlock)
  {
    if ((*(_shouldLogBlock + 16))())
    {
      _XPCLog(7, @"%@: Message sent.", v4, v5, v6, v7, v8, v9, a1[4]);
    }

    v3 = xdict;
    if (_shouldLogBlock)
    {
      v10 = (*(_shouldLogBlock + 16))(_shouldLogBlock, 7);
      v3 = xdict;
      if (v10)
      {
        v11 = MEMORY[0x259C89D80](xdict);
        if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 7))
        {
          _XPCLog(7, @"Reply: %s", v12, v13, v14, v15, v16, v17, v11);
        }

        free(v11);
        v3 = xdict;
      }
    }
  }

  v18 = MEMORY[0x259C89E20](v3);
  if (v18 == MEMORY[0x277D86480])
  {
    if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 3))
    {
      v27 = a1[4];
      xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
      _XPCLog(3, @"%@: Received an error when receiving reply. Error: %s", v28, v29, v30, v31, v32, v33, v27);
    }

    if (xdict == MEMORY[0x277D863F8])
    {
      if (_shouldLogBlock)
      {
        if ((*(_shouldLogBlock + 16))(_shouldLogBlock, 6))
        {
          _XPCLog(6, @"%@: Connection invalid.", v47, v48, v49, v50, v51, v52, a1[4]);
        }

        goto LABEL_36;
      }
    }

    else if (xdict == MEMORY[0x277D863F0])
    {
      if (_shouldLogBlock)
      {
        if ((*(_shouldLogBlock + 16))(_shouldLogBlock, 6))
        {
          _XPCLog(6, @"%@: Connection interrupted.", v53, v54, v55, v56, v57, v58, a1[4]);
        }

        goto LABEL_36;
      }
    }

    else if (_shouldLogBlock)
    {
      if ((*(_shouldLogBlock + 16))(_shouldLogBlock, 3))
      {
        v34 = a1[4];
        xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
        _XPCLog(3, @"%@: Unknown XPC error: %s", v35, v36, v37, v38, v39, v40, v34);
      }

LABEL_36:
      if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 3))
      {
        _XPCLog(3, @"%@: Message send failed. Not retrying.", v59, v60, v61, v62, v63, v64, a1[4]);
      }
    }

    v65 = a1[5];
    v26 = *(a1[6] + 16);
    goto LABEL_40;
  }

  if (v18 == MEMORY[0x277D86468])
  {
    if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 7))
    {
      _XPCLog(7, @"%@ Handling reply for message.", v41, v42, v43, v44, v45, v46, a1[4]);
    }

    v26 = *(a1[6] + 16);
  }

  else
  {
    v19 = MEMORY[0x259C89D80](xdict);
    if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 3))
    {
      _XPCLog(3, @"%@ Received unknown XPC event type: %s", v20, v21, v22, v23, v24, v25, a1[4]);
    }

    free(v19);
    v26 = *(a1[6] + 16);
  }

LABEL_40:
  v26();
}

- (void)workQueueShutDown
{
  if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    _XPCLog(7, @"%@: Shutting down.", v3, v4, v5, v6, v7, v8, self);
  }

  client = self->_client;
  if (client)
  {
    xpc_connection_cancel(client);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_storeWeak(&self->_delegate, 0);
    v10 = self->_client;
    self->_client = 0;

    serviceName = self->_serviceName;
    self->_serviceName = 0;

    v12 = objc_loadWeakRetained(&self->_serviceListener);
    [v12 serviceConnectionDidDisconnect:self];

    [WeakRetained XPCServiceConnectionDidDisconnect:self];
  }
}

- (void)resume
{
  if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    _XPCLog(6, @"%@: Resuming service connection.", v3, v4, v5, v6, v7, v8, self);
  }

  client = self->_client;

  xpc_connection_resume(client);
}

- (void)workQueueHandleIncomingMessage:(id)message
{
  messageCopy = message;
  uint64 = xpc_dictionary_get_uint64(messageCopy, "__xpcseq");
  v7 = [[XPCRequest alloc] initWithMessage:messageCopy sequence:uint64 connection:self->_client];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained XPCServiceConnection:self didReceiveRequest:v7 sequenceNumber:uint64];
}

- (XPCServiceConnection)initWithServiceName:(id)name client:(id)client queue:(id)queue
{
  nameCopy = name;
  clientCopy = client;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = XPCServiceConnection;
  v12 = [(XPCServiceConnection *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceName, name);
    objc_storeStrong(&v13->_workQueue, queue);
    objc_storeStrong(&v13->_client, client);
    xpc_connection_set_target_queue(clientCopy, v13->_workQueue);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __57__XPCServiceConnection_initWithServiceName_client_queue___block_invoke;
    handler[3] = &unk_2798A5198;
    v14 = v13;
    v18 = v14;
    xpc_connection_set_event_handler(clientCopy, handler);
    v15 = v14;
  }

  return v13;
}

void __57__XPCServiceConnection_initWithServiceName_client_queue___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = MEMORY[0x259C89E20]();
  if (v3 == MEMORY[0x277D86468])
  {
    if (_shouldLogBlock)
    {
      if ((*(_shouldLogBlock + 16))())
      {
        _XPCLog(7, @"%@: Received message.", v11, v12, v13, v14, v15, v16, *(a1 + 32));
      }

      if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 7))
      {
        v17 = MEMORY[0x259C89D80](xdict);
        if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 7))
        {
          _XPCLog(7, @"Message: %s", v18, v19, v20, v21, v22, v23, v17);
        }

        free(v17);
      }
    }

    [*(a1 + 32) workQueueHandleIncomingMessage:xdict];
  }

  else
  {
    if (v3 == MEMORY[0x277D86480])
    {
      if (xdict == MEMORY[0x277D863F8])
      {
        if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
        {
          _XPCLog(6, @"%@: Client disconnected.", v31, v32, v33, v34, v35, v36, *(a1 + 32));
        }
      }

      else if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
      {
        v24 = *(a1 + 32);
        xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
        _XPCLog(7, @"%@: Service connection received XPC Error: %s", v25, v26, v27, v28, v29, v30, v24);
      }
    }

    else if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
    {
      v4 = *(a1 + 32);
      xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430]);
      _XPCLog(3, @"%@: Service connection received unknown XPC event: %s", v5, v6, v7, v8, v9, v10, v4);
    }

    [*(a1 + 32) workQueueShutDown];
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = XPCServiceConnection;
  v4 = [(XPCServiceConnection *)&v10 description];
  serviceName = self->_serviceName;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  client = self->_client;
  v8 = [v3 stringWithFormat:@"%@ name %@, delegate %p, client %p, queue %p", v4, serviceName, WeakRetained, client, self->_workQueue];

  return v8;
}

@end