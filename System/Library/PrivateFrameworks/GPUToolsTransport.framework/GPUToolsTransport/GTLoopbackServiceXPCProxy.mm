@interface GTLoopbackServiceXPCProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (GTLoopbackServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4;
- (id)echo:(id)a3;
- (void)echo:(id)a3 completionHandler:(id)a4;
- (void)echo:(id)a3 repeat:(unint64_t)a4 callback:(id)a5;
- (void)echo:(id)a3 repeat:(unint64_t)a4 callback:(id)a5 complete:(id)a6;
@end

@implementation GTLoopbackServiceXPCProxy

- (GTLoopbackServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = GTLoopbackServiceXPCProxy;
  v8 = [(GTLoopbackServiceXPCProxy *)&v18 init];
  if (v8)
  {
    v9 = [GTServiceConnection alloc];
    v10 = [v7 deviceUDID];
    v11 = -[GTServiceConnection initWithConnection:device:port:](v9, "initWithConnection:device:port:", v6, v10, [v7 servicePort]);
    connection = v8->_connection;
    v8->_connection = v11;

    v13 = [GTServiceProperties protocolMethods:&unk_2860F1078];
    v14 = [v7 protocolMethods];
    v15 = newSetWithArrayMinusArray(v13, v14);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v15;
  }

  return v8;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  ignoreMethods = self->_ignoreMethods;
  v6 = NSStringFromSelector(a3);
  if ([(NSSet *)ignoreMethods containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GTLoopbackServiceXPCProxy;
    v7 = [(GTLoopbackServiceXPCProxy *)&v9 respondsToSelector:a3];
  }

  return v7;
}

- (id)echo:(id)a3
{
  v5 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "data", v5);

  v8 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  v9 = v8;
  if (v8)
  {
    nsdictionary_any = xpc_dictionary_get_nsdictionary_any(v8, "data");
  }

  else
  {
    nsdictionary_any = 0;
  }

  return nsdictionary_any;
}

- (void)echo:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "data", v8);

  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__GTLoopbackServiceXPCProxy_echo_completionHandler___block_invoke;
  v13[3] = &unk_279661050;
  v14 = v7;
  v12 = v7;
  [(GTServiceConnection *)connection sendMessage:empty replyHandler:v13];
}

void __52__GTLoopbackServiceXPCProxy_echo_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    nsdictionary_any = xpc_dictionary_get_nsdictionary_any(a2, "data");
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (void)echo:(id)a3 repeat:(unint64_t)a4 callback:(id)a5
{
  v9 = a5;
  v10 = a3;
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_nsobject(xdict, "data", v10);

  xpc_dictionary_set_uint64(xdict, "repeat", a4);
  v12 = [[GTLoopbackReplyStream alloc] initWithCallback:v9];

  [(GTLoopbackReplyStream *)v12 setDispatcherId:[(GTServiceConnection *)self->_connection registerDispatcher:v12]];
  [(GTServiceConnection *)self->_connection sendMessage:xdict withReplyStreamId:[(GTLoopbackReplyStream *)v12 dispatcherId]];
}

- (void)echo:(id)a3 repeat:(unint64_t)a4 callback:(id)a5 complete:(id)a6
{
  v11 = a6;
  v12 = a5;
  v13 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "data", v13);

  xpc_dictionary_set_uint64(empty, "repeat", a4);
  v16 = [[GTLoopbackReplyStream alloc] initWithCallback:v12];

  [(GTLoopbackReplyStream *)v16 setDispatcherId:[(GTServiceConnection *)self->_connection registerDispatcher:v16]];
  connection = self->_connection;
  v18 = [(GTLoopbackReplyStream *)v16 dispatcherId];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__GTLoopbackServiceXPCProxy_echo_repeat_callback_complete___block_invoke;
  v21[3] = &unk_279661AE8;
  v22 = v16;
  v23 = v11;
  v21[4] = self;
  v19 = v16;
  v20 = v11;
  [(GTServiceConnection *)connection sendMessage:empty withReplyStreamId:v18 replyHandler:v21];
}

void __59__GTLoopbackServiceXPCProxy_echo_repeat_callback_complete___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    nsdictionary_any = xpc_dictionary_get_nsdictionary_any(a2, "result");
    (*(*(a1 + 48) + 16))();
    [*(*(a1 + 32) + 8) deregisterDispatcher:{objc_msgSend(*(a1 + 40), "dispatcherId")}];
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

@end