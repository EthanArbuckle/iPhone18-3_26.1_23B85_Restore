@interface GTMTLDiagnosticsServiceXPCDispatcher
- (GTMTLDiagnosticsServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4;
- (void)broadcastDisconnect:(id)a3 replyConnection:(id)a4;
- (void)deregisterObserver_:(id)a3 replyConnection:(id)a4;
- (void)raiseRuntimeIssue_:(id)a3 replyConnection:(id)a4;
- (void)registerObserver_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTMTLDiagnosticsServiceXPCDispatcher

- (GTMTLDiagnosticsServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = [a4 protocolMethods];
  v9 = [v8 mutableCopy];

  [v9 addObject:@"broadcastDisconnect"];
  v13.receiver = self;
  v13.super_class = GTMTLDiagnosticsServiceXPCDispatcher;
  v10 = [(GTXPCDispatcher *)&v13 initWithProtocolMethods:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_service, a3);
  }

  return v11;
}

- (void)registerObserver_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(GTServiceObserver *)[GTMTLDiagnosticsServiceObserver alloc] initWithMessage:v7 notifyConnection:v6];
  v8 = [(GTMTLDiagnosticsService *)self->_service registerObserver:v10];
  v9 = gt_xpc_dictionary_create_reply(v7);

  xpc_dictionary_set_uint64(v9, "observerId", v8);
  [v6 sendMessage:v9];
}

- (void)deregisterObserver_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GTMTLDiagnosticsService *)self->_service deregisterObserver:xpc_dictionary_get_uint64(v7, "observerId")];
  v8 = gt_xpc_dictionary_create_reply(v7);

  [v6 sendMessage:v8];
}

- (void)broadcastDisconnect:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = xpc_dictionary_get_array(a3, "_pathHistory");
  [(GTMTLDiagnosticsService *)self->_service deregisterObserversForConnection:v6 path:v7];
}

- (void)raiseRuntimeIssue_:(id)a3 replyConnection:(id)a4
{
  string = xpc_dictionary_get_string(a3, "messagePrefix");
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