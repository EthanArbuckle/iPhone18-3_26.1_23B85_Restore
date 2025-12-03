@interface GTMTLDiagnosticsServiceXPCProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (GTMTLDiagnosticsServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (unint64_t)registerObserver:(id)observer;
- (void)deregisterObserver:(unint64_t)observer;
- (void)raiseRuntimeIssue:(id)issue;
@end

@implementation GTMTLDiagnosticsServiceXPCProxy

- (GTMTLDiagnosticsServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v21.receiver = self;
  v21.super_class = GTMTLDiagnosticsServiceXPCProxy;
  v8 = [(GTMTLDiagnosticsServiceXPCProxy *)&v21 init];
  if (v8)
  {
    v9 = &unk_2860EC420;
    v10 = [GTServiceConnection alloc];
    deviceUDID = [propertiesCopy deviceUDID];
    v12 = -[GTServiceConnection initWithConnection:device:port:](v10, "initWithConnection:device:port:", connectionCopy, deviceUDID, [propertiesCopy servicePort]);
    connection = v8->_connection;
    v8->_connection = v12;

    v14 = [GTServiceProperties protocolMethods:v9];
    protocolMethods = [propertiesCopy protocolMethods];
    v16 = newSetWithArrayMinusArray(v14, protocolMethods);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v16;

    v18 = [MEMORY[0x277CBEC10] mutableCopy];
    observerIdToPort = v8->_observerIdToPort;
    v8->_observerIdToPort = v18;
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
    v9.super_class = GTMTLDiagnosticsServiceXPCProxy;
    v7 = [(GTMTLDiagnosticsServiceXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (unint64_t)registerObserver:(id)observer
{
  observerCopy = observer;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v8 = [[GTMTLDiagnosticsServiceReplyStream alloc] initWithObserver:observerCopy];

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

- (void)raiseRuntimeIssue:(id)issue
{
  issueCopy = issue;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  if (issueCopy)
  {
    xpc_dictionary_set_string(empty, "messagePrefix", [issueCopy UTF8String]);
  }

  [(GTServiceConnection *)self->_connection sendMessage:empty];
}

@end