@interface GTMTLDiagnosticsServiceXPCDispatcher
- (GTMTLDiagnosticsServiceXPCDispatcher)initWithService:(id)service properties:(id)properties;
- (void)broadcastDisconnect:(id)disconnect replyConnection:(id)connection;
- (void)deregisterObserver_:(id)observer_ replyConnection:(id)connection;
- (void)raiseRuntimeIssue_:(id)issue_ replyConnection:(id)connection;
- (void)registerObserver_:(id)observer_ replyConnection:(id)connection;
@end

@implementation GTMTLDiagnosticsServiceXPCDispatcher

- (GTMTLDiagnosticsServiceXPCDispatcher)initWithService:(id)service properties:(id)properties
{
  serviceCopy = service;
  protocolMethods = [properties protocolMethods];
  v9 = [protocolMethods mutableCopy];

  [v9 addObject:@"broadcastDisconnect"];
  v13.receiver = self;
  v13.super_class = GTMTLDiagnosticsServiceXPCDispatcher;
  v10 = [(GTXPCDispatcher *)&v13 initWithProtocolMethods:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_service, service);
  }

  return v11;
}

- (void)registerObserver_:(id)observer_ replyConnection:(id)connection
{
  connectionCopy = connection;
  observer_Copy = observer_;
  v10 = [(GTServiceObserver *)[GTMTLDiagnosticsServiceObserver alloc] initWithMessage:observer_Copy notifyConnection:connectionCopy];
  v8 = [(GTMTLDiagnosticsService *)self->_service registerObserver:v10];
  v9 = gt_xpc_dictionary_create_reply(observer_Copy);

  xpc_dictionary_set_uint64(v9, "observerId", v8);
  [connectionCopy sendMessage:v9];
}

- (void)deregisterObserver_:(id)observer_ replyConnection:(id)connection
{
  connectionCopy = connection;
  observer_Copy = observer_;
  [(GTMTLDiagnosticsService *)self->_service deregisterObserver:xpc_dictionary_get_uint64(observer_Copy, "observerId")];
  v8 = gt_xpc_dictionary_create_reply(observer_Copy);

  [connectionCopy sendMessage:v8];
}

- (void)broadcastDisconnect:(id)disconnect replyConnection:(id)connection
{
  connectionCopy = connection;
  v7 = xpc_dictionary_get_array(disconnect, "_pathHistory");
  [(GTMTLDiagnosticsService *)self->_service deregisterObserversForConnection:connectionCopy path:v7];
}

- (void)raiseRuntimeIssue_:(id)issue_ replyConnection:(id)connection
{
  string = xpc_dictionary_get_string(issue_, "messagePrefix");
  if (string)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(GTMTLDiagnosticsService *)self->_service raiseRuntimeIssue:v6];
}

@end