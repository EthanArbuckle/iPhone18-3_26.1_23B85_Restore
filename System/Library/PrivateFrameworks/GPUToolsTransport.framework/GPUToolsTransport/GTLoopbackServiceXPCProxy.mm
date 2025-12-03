@interface GTLoopbackServiceXPCProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (GTLoopbackServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (id)echo:(id)echo;
- (void)echo:(id)echo completionHandler:(id)handler;
- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback;
- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback complete:(id)complete;
@end

@implementation GTLoopbackServiceXPCProxy

- (GTLoopbackServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v18.receiver = self;
  v18.super_class = GTLoopbackServiceXPCProxy;
  v8 = [(GTLoopbackServiceXPCProxy *)&v18 init];
  if (v8)
  {
    v9 = [GTServiceConnection alloc];
    deviceUDID = [propertiesCopy deviceUDID];
    v11 = -[GTServiceConnection initWithConnection:device:port:](v9, "initWithConnection:device:port:", connectionCopy, deviceUDID, [propertiesCopy servicePort]);
    connection = v8->_connection;
    v8->_connection = v11;

    v13 = [GTServiceProperties protocolMethods:&unk_2860F1078];
    protocolMethods = [propertiesCopy protocolMethods];
    v15 = newSetWithArrayMinusArray(v13, protocolMethods);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v15;
  }

  return v8;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  ignoreMethods = self->_ignoreMethods;
  v6 = NSStringFromSelector(selector);
  if ([(NSSet *)ignoreMethods containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GTLoopbackServiceXPCProxy;
    v7 = [(GTLoopbackServiceXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (id)echo:(id)echo
{
  echoCopy = echo;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "data", echoCopy);

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

- (void)echo:(id)echo completionHandler:(id)handler
{
  handlerCopy = handler;
  echoCopy = echo;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "data", echoCopy);

  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__GTLoopbackServiceXPCProxy_echo_completionHandler___block_invoke;
  v13[3] = &unk_279661050;
  v14 = handlerCopy;
  v12 = handlerCopy;
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

- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback
{
  callbackCopy = callback;
  echoCopy = echo;
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_nsobject(xdict, "data", echoCopy);

  xpc_dictionary_set_uint64(xdict, "repeat", repeat);
  v12 = [[GTLoopbackReplyStream alloc] initWithCallback:callbackCopy];

  [(GTLoopbackReplyStream *)v12 setDispatcherId:[(GTServiceConnection *)self->_connection registerDispatcher:v12]];
  [(GTServiceConnection *)self->_connection sendMessage:xdict withReplyStreamId:[(GTLoopbackReplyStream *)v12 dispatcherId]];
}

- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback complete:(id)complete
{
  completeCopy = complete;
  callbackCopy = callback;
  echoCopy = echo;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "data", echoCopy);

  xpc_dictionary_set_uint64(empty, "repeat", repeat);
  v16 = [[GTLoopbackReplyStream alloc] initWithCallback:callbackCopy];

  [(GTLoopbackReplyStream *)v16 setDispatcherId:[(GTServiceConnection *)self->_connection registerDispatcher:v16]];
  connection = self->_connection;
  dispatcherId = [(GTLoopbackReplyStream *)v16 dispatcherId];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__GTLoopbackServiceXPCProxy_echo_repeat_callback_complete___block_invoke;
  v21[3] = &unk_279661AE8;
  v22 = v16;
  v23 = completeCopy;
  v21[4] = self;
  v19 = v16;
  v20 = completeCopy;
  [(GTServiceConnection *)connection sendMessage:empty withReplyStreamId:dispatcherId replyHandler:v21];
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