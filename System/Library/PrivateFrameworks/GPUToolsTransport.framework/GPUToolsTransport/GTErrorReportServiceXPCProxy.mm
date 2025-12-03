@interface GTErrorReportServiceXPCProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (GTErrorReportServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (id)returnRejectedConnections:(id *)connections;
- (unint64_t)registerObserver:(id)observer;
- (void)deregisterObserver:(unint64_t)observer;
- (void)fetchRejectedConnections:(id)connections;
@end

@implementation GTErrorReportServiceXPCProxy

- (GTErrorReportServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v21.receiver = self;
  v21.super_class = GTErrorReportServiceXPCProxy;
  v8 = [(GTErrorReportServiceXPCProxy *)&v21 init];
  if (v8)
  {
    if (!propertiesCopy)
    {
      v19 = 0;
      goto LABEL_6;
    }

    v9 = [GTServiceConnection alloc];
    deviceUDID = [propertiesCopy deviceUDID];
    v11 = -[GTServiceConnection initWithConnection:device:port:](v9, "initWithConnection:device:port:", connectionCopy, deviceUDID, [propertiesCopy servicePort]);
    connection = v8->_connection;
    v8->_connection = v11;

    v13 = [GTServiceProperties protocolMethods:&unk_2860EAD90];
    protocolMethods = [propertiesCopy protocolMethods];
    v15 = newSetWithArrayMinusArray(v13, protocolMethods);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v15;

    v17 = [MEMORY[0x277CBEC10] mutableCopy];
    observerIdToPort = v8->_observerIdToPort;
    v8->_observerIdToPort = v17;
  }

  v19 = v8;
LABEL_6:

  return v19;
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
    v9.super_class = GTErrorReportServiceXPCProxy;
    v7 = [(GTErrorReportServiceXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (unint64_t)registerObserver:(id)observer
{
  observerCopy = observer;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v8 = [[GTErrorReportServiceReplyStream alloc] initWithObserver:observerCopy];

  v9 = [(GTServiceConnection *)self->_connection registerDispatcher:v8];
  v10 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty replyStreamId:v9 error:0];
  v11 = v10;
  if (v10)
  {
    uint64 = xpc_dictionary_get_uint64(v10, "observerId");
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
    observerIdToPort = self->_observerIdToPort;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
    [(NSMutableDictionary *)observerIdToPort setObject:v13 forKeyedSubscript:v15];
  }

  else
  {
    uint64 = 0;
  }

  return uint64;
}

- (void)deregisterObserver:(unint64_t)observer
{
  observerIdToPort = self->_observerIdToPort;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v8 = [(NSMutableDictionary *)observerIdToPort objectForKeyedSubscript:v7];
  unsignedLongValue = [v8 unsignedLongValue];

  v10 = self->_observerIdToPort;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:observer];
  [(NSMutableDictionary *)v10 removeObjectForKey:v11];

  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "observerId", observer);
  v13 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:xdict error:0];
  [(GTServiceConnection *)self->_connection deregisterDispatcher:unsignedLongValue];
}

- (void)fetchRejectedConnections:(id)connections
{
  connectionsCopy = connections;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__GTErrorReportServiceXPCProxy_fetchRejectedConnections___block_invoke;
  v10[3] = &unk_279661050;
  v11 = connectionsCopy;
  v9 = connectionsCopy;
  [(GTServiceConnection *)connection sendMessage:empty replyHandler:v10];
}

void __57__GTErrorReportServiceXPCProxy_fetchRejectedConnections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    nserror = xpc_dictionary_get_nserror(v3, "error");
    v5 = objc_opt_class();
    nsarray = xpc_dictionary_get_nsarray(v7, "response", v5);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)returnRejectedConnections:(id *)connections
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__GTErrorReportServiceXPCProxy_returnRejectedConnections___block_invoke;
  v9[3] = &unk_279661078;
  v11 = &v19;
  v12 = &v13;
  v10 = v5;
  v6 = v5;
  [(GTErrorReportServiceXPCProxy *)self fetchRejectedConnections:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if (connections)
  {
    *connections = v14[5];
  }

  v7 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

void __58__GTErrorReportServiceXPCProxy_returnRejectedConnections___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

@end