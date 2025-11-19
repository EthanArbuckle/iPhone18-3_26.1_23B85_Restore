@interface DYXPCTransport
- (BOOL)_packMessage:(id)a3 error:(id *)a4;
- (DYXPCTransport)initWithAMDIdentifier:(id)a3;
- (id)connect;
- (int64_t)_sendMessage:(id)a3 error:(id *)a4;
- (void)_invalidate;
- (void)process_message_from_compat_daemon:(id)a3;
@end

@implementation DYXPCTransport

- (DYXPCTransport)initWithAMDIdentifier:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = DYXPCTransport;
  v6 = [(DYTransport *)&v8 init];
  if (v6)
  {
    [v5 UTF8String];
    objc_storeStrong(&v6->_amdIdentifier, a3);
  }

  return v6;
}

- (id)connect
{
  if ([(DYXPCTransport *)self connected])
  {
    v3 = +[DYFuture future];
    [(DYFuture *)v3 setResult:MEMORY[0x277CBEC38]];
  }

  else
  {
    future = self->_future;
    if (future)
    {
      v3 = future;
    }

    else
    {
      v5 = objc_opt_new();
      v6 = self->_future;
      self->_future = v5;

      v7 = xpc_connection_create("com.apple.gputools.GPUToolsCompatService", self->super._queue);
      connection = self->_connection;
      self->_connection = v7;

      xpc_connection_set_target_queue(self->_connection, self->super._queue);
      v9 = self->_connection;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __25__DYXPCTransport_connect__block_invoke;
      handler[3] = &unk_27930CFE8;
      handler[4] = self;
      xpc_connection_set_event_handler(v9, handler);
      xpc_connection_activate(self->_connection);
      v10 = xpc_connection_create("com.apple.gputools.GPUToolsAgentService", self->super._queue);
      xpc_connection_set_event_handler(v10, &__block_literal_global_9);
      xpc_connection_activate(v10);
      v11 = xpc_endpoint_create(v10);
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_value(empty, "main_agent_endpoint", v11);
      v13 = self->_connection;
      if (v13)
      {
        xpc_connection_send_message(v13, empty);

        v10 = xpc_dictionary_create_empty();
        xpc_dictionary_set_string(v10, "_cmd", "connect");
        amdIdentifier = self->_amdIdentifier;
        if (amdIdentifier)
        {
          xpc_dictionary_set_string(v10, "amdIdentifier", [(NSString *)amdIdentifier UTF8String]);
        }

        v15 = self->_connection;
        if (v15)
        {
          queue = self->super._queue;
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __25__DYXPCTransport_connect__block_invoke_3;
          v20[3] = &unk_27930CFE8;
          v20[4] = self;
          xpc_connection_send_message_with_reply(v15, v10, queue, v20);
          v3 = self->_future;
        }

        else
        {
          v18 = self->_future;
          self->_future = 0;

          v3 = +[DYFuture future];
          [(DYFuture *)v3 setResult:MEMORY[0x277CBEC28]];
        }
      }

      else
      {
        v17 = self->_future;
        self->_future = 0;

        v3 = +[DYFuture future];
        [(DYFuture *)v3 setResult:MEMORY[0x277CBEC28]];
      }
    }
  }

  return v3;
}

void __25__DYXPCTransport_connect__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 128) & 1) == 0)
  {
    v11 = v3;
    v4 = MEMORY[0x253031920]();
    if (v4 != MEMORY[0x277D86480] && v4 == MEMORY[0x277D86468])
    {
      nserror = xpc_dictionary_get_nserror(v11, "_error");
      *(*(a1 + 32) + 128) = nserror == 0;
      v8 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 128)];
      [*(*(a1 + 32) + 120) setResult:v8];

      v9 = *(a1 + 32);
      v10 = *(v9 + 120);
      *(v9 + 120) = 0;
    }

    else
    {
      *(*(a1 + 32) + 128) = 0;
      v5 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 128)];
      [*(*(a1 + 32) + 120) setResult:v5];

      v6 = *(a1 + 32);
      nserror = *(v6 + 120);
      *(v6 + 120) = 0;
    }

    v3 = v11;
  }
}

- (void)_invalidate
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    self->_connected = 0;
    v4 = self->_connection;
    self->_connection = 0;

    future = self->_future;
    if (future)
    {
      [(DYFuture *)future setResult:MEMORY[0x277CBEC28]];
      v6 = self->_future;
      self->_future = 0;
    }
  }

  v7.receiver = self;
  v7.super_class = DYXPCTransport;
  [(DYTransport *)&v7 _invalidate];
}

- (BOOL)_packMessage:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 attributes];

  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = MEMORY[0x277CCAC58];
  v9 = [v5 attributes];
  v15 = 0;
  v10 = [v8 dataWithPropertyList:v9 format:200 options:0 error:&v15];
  v6 = v15;

  objc_autoreleasePoolPop(v7);
  if (v10)
  {
    [v5 setEncodedAttributes:v10];

    v6 = v10;
LABEL_4:
    LODWORD(a4) = [v6 length];
    v11 = [v5 payload];
    v12 = [v11 length];

    [v5 _setTransportSize:(v12 + a4)];
    LOBYTE(a4) = 1;
    goto LABEL_5;
  }

  if (a4)
  {
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:*MEMORY[0x277CCA7E8]];
    *a4 = [DYError errorWithDomain:@"DYErrorDomain" code:36 userInfo:v14];

    LOBYTE(a4) = 0;
  }

LABEL_5:

  return a4;
}

- (int64_t)_sendMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v9 = empty;
  v10 = v6;
  xpc_dictionary_set_uint64(v9, "kind", [v10 kind]);
  xpc_dictionary_set_uint64(v9, "serial", [v10 serial]);
  xpc_dictionary_set_uint64(v9, "replySerial", [v10 replySerial]);
  v11 = [v10 attributes];

  if (v11)
  {
    v12 = [v10 encodedAttributes];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v15 = MEMORY[0x277CCAC58];
      v16 = [v10 attributes];
      v24 = 0;
      v14 = [v15 dataWithPropertyList:v16 format:200 options:0 error:&v24];
      v17 = v24;
    }

    xpc_dictionary_set_data(v9, "attributes", [v14 bytes], objc_msgSend(v14, "length"));
  }

  v18 = [v10 payload];

  if (v18)
  {
    v19 = [v10 payload];
    v20 = [v19 bytes];
    v21 = [v10 payload];
    xpc_dictionary_set_data(v9, "payload", v20, [v21 length]);
  }

  [v10 setEncodedAttributes:0];
  xpc_connection_send_message(self->_connection, v9);
  v22 = [v10 transportSize];

  return v22;
}

- (void)process_message_from_compat_daemon:(id)a3
{
  v4 = a3;
  if (MEMORY[0x253031920]() == MEMORY[0x277D86468])
  {
    v5 = v4;
    v6 = self;
    uint64 = xpc_dictionary_get_uint64(v5, "kind");
    length = 0;
    data = xpc_dictionary_get_data(v5, "attributes", &length);
    if (data)
    {
      v9 = objc_alloc(MEMORY[0x277CBEA90]);
      v10 = [v9 initWithBytesNoCopy:data length:length freeWhenDone:0];
      v15 = 0;
      data = [MEMORY[0x277CCAC58] propertyListWithData:v10 options:0 format:0 error:&v15];
    }

    length = 0;
    v11 = xpc_dictionary_get_data(v5, "payload", &length);
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277CBEA90]);
      v11 = [v12 initWithBytes:v11 length:length];
    }

    v13 = [DYTransportMessage messageWithKind:uint64 attributes:data payload:v11];
    v14 = xpc_dictionary_get_uint64(v5, "serial");
    [v13 _setSerial:v14 replySerial:xpc_dictionary_get_uint64(v5 transport:{"replySerial"), v6}];

    [(DYTransport *)v6 _dispatchMessage:v13];
  }

  else
  {
    [(DYTransport *)self invalidate];
  }
}

@end