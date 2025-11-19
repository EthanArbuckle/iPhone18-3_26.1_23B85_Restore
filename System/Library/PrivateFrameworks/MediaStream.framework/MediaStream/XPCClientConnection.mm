@interface XPCClientConnection
- (XPCClientConnection)initWithServiceName:(id)a3 delegate:(id)a4;
- (id)debugDescription;
- (void)_handleConnectionEvent:(id)a3;
- (void)_handleIncomingMessage:(id)a3;
- (void)_reallySendMessage:(id)a3 handler:(id)a4 sequence:(unint64_t)a5 retryCount:(unint64_t)a6;
- (void)sendMessage:(id)a3 withHandler:(id)a4;
- (void)shutDownCompletionBlock:(id)a3;
@end

@implementation XPCClientConnection

- (void)shutDownCompletionBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__XPCClientConnection_shutDownCompletionBlock___block_invoke;
  v7[3] = &unk_2798A5170;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __47__XPCClientConnection_shutDownCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    xpc_connection_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(*(a1 + 32) + 24);

      dispatch_async(v6, v5);
    }
  }
}

- (XPCClientConnection)initWithServiceName:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = XPCClientConnection;
  v8 = [(XPCClientConnection *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    serviceName = v8->_serviceName;
    v8->_serviceName = v9;

    v8->_delegate = v7;
    v11 = [v6 stringByAppendingString:@".queue"];
    v12 = dispatch_queue_create([v11 UTF8String], 0);
    queue = v8->_queue;
    v8->_queue = v12;
  }

  return v8;
}

- (void)sendMessage:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    _XPCLog(7, @"%@ Scheduling message for sending.", v8, v9, v10, v11, v12, v13, self);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__XPCClientConnection_sendMessage_withHandler___block_invoke;
  block[3] = &unk_2798A51E8;
  block[4] = self;
  v18 = v6;
  v19 = v7;
  v15 = v7;
  v16 = v6;
  dispatch_async(queue, block);
}

- (void)_reallySendMessage:(id)a3 handler:(id)a4 sequence:(unint64_t)a5 retryCount:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (!v11)
  {
    __assert_rtn("[XPCClientConnection _reallySendMessage:handler:sequence:retryCount:]", "XPCKitBasic.m", 136, "handler");
  }

  v12 = v11;
  if (self->_connection)
  {
    if (a5)
    {
LABEL_4:
      if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 6))
      {
        _XPCLog(6, @"%@: Redriving message with sequence %llu", v13, v14, v15, v16, v17, v18, self);
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 6))
    {
      serviceName = self->_serviceName;
      _XPCLog(6, @"%@: Creating connection to service %@", v19, v20, v21, v22, v23, v24, self);
    }

    mach_service = xpc_connection_create_mach_service([(NSString *)self->_serviceName UTF8String], self->_queue, 0);
    connection = self->_connection;
    self->_connection = mach_service;

    objc_initWeak(&location, self);
    v27 = self->_connection;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __70__XPCClientConnection__reallySendMessage_handler_sequence_retryCount___block_invoke;
    handler[3] = &unk_2798A5120;
    objc_copyWeak(&v58, &location);
    xpc_connection_set_event_handler(v27, handler);
    xpc_connection_resume(self->_connection);
    objc_destroyWeak(&v58);
    objc_destroyWeak(&location);
    if (a5)
    {
      goto LABEL_4;
    }
  }

  a5 = _reallySendMessage_handler_sequence_retryCount__currentMessageSequence++;
  if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 7))
  {
    _XPCLog(7, @"%@: Setting sequence number to %llu", v28, v29, v30, v31, v32, v33, self);
  }

LABEL_14:
  xpc_dictionary_set_uint64(v10, "__xpcseq", a5);
  if (_shouldLogBlock)
  {
    if ((*(_shouldLogBlock + 16))(_shouldLogBlock, 6))
    {
      _XPCLog(6, @"%@: Sending message.", v34, v35, v36, v37, v38, v39, self);
    }

    if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 7))
    {
      v40 = MEMORY[0x259C89D80](v10);
      if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 7))
      {
        _XPCLog(7, @"Message: %s", v41, v42, v43, v44, v45, v46, v40);
      }

      free(v40);
    }
  }

  v47 = self->_connection;
  queue = self->_queue;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __70__XPCClientConnection__reallySendMessage_handler_sequence_retryCount___block_invoke_2;
  v52[3] = &unk_2798A5148;
  v54 = v12;
  v55 = a5;
  v52[4] = self;
  v53 = v10;
  v56 = a6;
  v49 = v10;
  v50 = v12;
  xpc_connection_send_message_with_reply(v47, v49, queue, v52);
}

void __70__XPCClientConnection__reallySendMessage_handler_sequence_retryCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionEvent:v3];
}

uint64_t __70__XPCClientConnection__reallySendMessage_handler_sequence_retryCount___block_invoke_2(uint64_t *a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (_shouldLogBlock)
  {
    if ((*(_shouldLogBlock + 16))())
    {
      v75 = a1[7];
      _XPCLog(7, @"%@: Message sent: sequence: %llu.", v4, v5, v6, v7, v8, v9, a1[4]);
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
  if (v18 != MEMORY[0x277D86480])
  {
    if (v18 == MEMORY[0x277D86468])
    {
      xpc_dictionary_get_uint64(xdict, "__xpcseq");
      if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 7))
      {
        _XPCLog(7, @"%@ Handling reply for message with sequence %llu.", v50, v51, v52, v53, v54, v55, a1[4]);
      }

      v56 = a1[8];
      v27 = *(a1[6] + 16);
    }

    else
    {
      v19 = MEMORY[0x259C89D80](xdict);
      if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 3))
      {
        _XPCLog(3, @"%@ Received unknown XPC event type: %s", v20, v21, v22, v23, v24, v25, a1[4]);
      }

      free(v19);
      v26 = a1[8];
      v27 = *(a1[6] + 16);
    }

LABEL_32:
    v57 = v27();
    goto LABEL_33;
  }

  if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 3))
  {
    v28 = a1[4];
    xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
    _XPCLog(3, @"%@: Received an error when receiving reply. Error: %s", v29, v30, v31, v32, v33, v34, v28);
  }

  if (xdict == MEMORY[0x277D863F8])
  {
    if (_shouldLogBlock && ((*(_shouldLogBlock + 16))(_shouldLogBlock, 6) & 1) != 0)
    {
      v64 = @"%@: Connection invalid.";
LABEL_42:
      _XPCLog(6, v64, v58, v59, v60, v61, v62, v63, a1[4]);
    }
  }

  else
  {
    if (xdict != MEMORY[0x277D863F0])
    {
      if (_shouldLogBlock)
      {
        if ((*(_shouldLogBlock + 16))(_shouldLogBlock, 3))
        {
          v35 = a1[4];
          xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
          _XPCLog(3, @"%@: Unknown XPC error: %s", v36, v37, v38, v39, v40, v41, v35);
        }

        if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 3))
        {
          _XPCLog(3, @"%@: Message send failed. Not retrying.", v42, v43, v44, v45, v46, v47, a1[4]);
        }
      }

      v48 = a1[5];
      v49 = a1[8];
      v27 = *(a1[6] + 16);
      goto LABEL_32;
    }

    if (_shouldLogBlock && ((*(_shouldLogBlock + 16))(_shouldLogBlock, 6) & 1) != 0)
    {
      v64 = @"%@: Connection interrupted.";
      goto LABEL_42;
    }
  }

  v65 = a1[5];
  v66 = a1[8];
  v67 = (*(a1[6] + 16))();
  v57 = _shouldLogBlock;
  if (!_shouldLogBlock)
  {
    if ((v67 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_48;
  }

  v57 = (*(_shouldLogBlock + 16))(_shouldLogBlock, 6);
  if (v67)
  {
    if (v57)
    {
      _XPCLog(6, @"%@: Trying to resend last message.", v68, v69, v70, v71, v72, v73, a1[4]);
    }

LABEL_48:
    v57 = [a1[4] _reallySendMessage:a1[5] handler:a1[6] sequence:a1[7] retryCount:a1[8] + 1];
    goto LABEL_33;
  }

  if (v57)
  {
    _XPCLog(6, @"%@: Did not want to retry sending the last message. Message send failed.", xdict, v69, v70, v71, v72, v73, a1[4]);
  }

LABEL_33:

  return MEMORY[0x2821F9730](v57);
}

- (void)_handleIncomingMessage:(id)a3
{
  v4 = a3;
  v5 = [[XPCRequest alloc] initWithMessage:v4 sequence:0 connection:self->_connection];

  [(XPCClientConnectionDelegate *)self->_delegate XPCClientConnection:self didReceiveRequest:v5];
}

- (void)_handleConnectionEvent:(id)a3
{
  v4 = a3;
  xdict = v4;
  if (_shouldLogBlock)
  {
    v5 = (*(_shouldLogBlock + 16))();
    v4 = xdict;
    if (v5)
    {
      xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430]);
      _XPCLog(7, @"%@: Connection event handler received event: %s", v6, v7, v8, v9, v10, v11, self);
      v4 = xdict;
    }
  }

  v12 = MEMORY[0x259C89E20](v4);
  if (v12 == MEMORY[0x277D86468])
  {
    [(XPCClientConnection *)self _handleIncomingMessage:xdict];
    goto LABEL_21;
  }

  if (v12 != MEMORY[0x277D86480])
  {
    if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 5))
    {
      xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430]);
      _XPCLog(5, @"%@: Connection event handler ignoring unknown XPC event: %s", v13, v14, v15, v16, v17, v18, self);
    }

    goto LABEL_21;
  }

  if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 3))
  {
    xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
    _XPCLog(3, @"%@: Connection event handler received error: %s", v19, v20, v21, v22, v23, v24, self);
  }

  if (xdict == MEMORY[0x277D863F8])
  {
    goto LABEL_19;
  }

  if (xdict != MEMORY[0x277D863F0])
  {
    if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 3))
    {
      xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
      _XPCLog(3, @"%@: Connection event handler found unknown XPC Error: %s", v25, v26, v27, v28, v29, v30, self);
    }

LABEL_19:
    connection = self->_connection;
    if (connection)
    {
      xpc_connection_cancel(connection);
      v32 = self->_connection;
      self->_connection = 0;
    }

    goto LABEL_21;
  }

  if (_shouldLogBlock && (*(_shouldLogBlock + 16))(_shouldLogBlock, 7))
  {
    _XPCLog(7, @"%@: Connection event handler ignoring interrupted connection.", v33, v34, v35, v36, v37, v38, self);
  }

LABEL_21:
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = XPCClientConnection;
  v4 = [(XPCClientConnection *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: name: %@, connection %p, delegate %p, queue %p", v4, self->_serviceName, self->_connection, self->_delegate, self->_queue];

  return v5;
}

@end