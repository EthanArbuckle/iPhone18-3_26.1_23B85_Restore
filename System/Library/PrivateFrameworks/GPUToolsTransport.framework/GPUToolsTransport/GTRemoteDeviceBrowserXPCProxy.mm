@interface GTRemoteDeviceBrowserXPCProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (GTRemoteDeviceBrowserXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (id)allDevices;
- (unint64_t)registerObserver:(id)observer;
- (void)deregisterObserver:(unint64_t)observer;
@end

@implementation GTRemoteDeviceBrowserXPCProxy

- (GTRemoteDeviceBrowserXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v21.receiver = self;
  v21.super_class = GTRemoteDeviceBrowserXPCProxy;
  v8 = [(GTRemoteDeviceBrowserXPCProxy *)&v21 init];
  if (v8)
  {
    v9 = &unk_2860EF1A8;
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
    v9.super_class = GTRemoteDeviceBrowserXPCProxy;
    v7 = [(GTRemoteDeviceBrowserXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (id)allDevices
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v6 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  if (v6)
  {
    v7 = objc_opt_class();
    nsarray = xpc_dictionary_get_nsarray(v6, "returnValue", v7);
  }

  else
  {
    nsarray = 0;
  }

  return nsarray;
}

- (unint64_t)registerObserver:(id)observer
{
  observerCopy = observer;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v8 = [[GTRemoteDeviceBrowserReplyStream alloc] initWithObserver:observerCopy];

  v9 = [(GTServiceConnection *)self->_connection registerDispatcher:v8];
  connection = self->_connection;
  v19 = 0;
  v11 = [(GTServiceConnection *)connection sendMessageWithReplySync:empty replyStreamId:v9 error:&v19];
  v12 = v19;
  if (v11)
  {
    uint64 = xpc_dictionary_get_uint64(v11, "observerId");
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
    observerIdToPort = self->_observerIdToPort;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
    [(NSMutableDictionary *)observerIdToPort setObject:v14 forKeyedSubscript:v16];
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v14 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(GTRemoteDeviceBrowserXPCProxy *)v12 registerObserver:v14];
      }
    }

    else
    {
      v17 = *MEMORY[0x277D85DF8];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to register observer %@", v12];
      fprintf(v17, "%s\n", [v14 UTF8String]);
    }

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

- (void)registerObserver:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24DBC9000, a2, OS_LOG_TYPE_ERROR, "Failed to register observer %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end