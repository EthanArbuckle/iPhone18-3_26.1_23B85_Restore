@interface GTMTLTelemetryServiceXPCDispatcher
- (GTMTLTelemetryServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4 notifyConnection:(id)a5;
- (void)broadcastDisconnect:(id)a3 replyConnection:(id)a4;
- (void)deregisterObserver_:(id)a3 replyConnection:(id)a4;
- (void)query_:(id)a3 replyConnection:(id)a4;
- (void)registerObserver_:(id)a3 replyConnection:(id)a4;
- (void)update_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTMTLTelemetryServiceXPCDispatcher

- (GTMTLTelemetryServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4 notifyConnection:(id)a5
{
  v8 = a3;
  v9 = [a4 protocolMethods];
  v10 = [v9 mutableCopy];

  [v10 addObject:@"broadcastDisconnect"];
  v14.receiver = self;
  v14.super_class = GTMTLTelemetryServiceXPCDispatcher;
  v11 = [(GTXPCDispatcher *)&v14 initWithProtocolMethods:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_implInstance, a3);
  }

  return v12;
}

- (void)registerObserver_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(GTServiceObserver *)[GTMTLTelemetryServiceObserver alloc] initWithMessage:v7 notifyConnection:v6];
  v8 = [(GTMTLTelemetryService *)self->_implInstance registerObserver:v10];
  v9 = gt_xpc_dictionary_create_reply(v7);

  xpc_dictionary_set_uint64(v9, "observerId", v8);
  [v6 sendMessage:v9];
}

- (void)deregisterObserver_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GTMTLTelemetryService *)self->_implInstance deregisterObserver:xpc_dictionary_get_uint64(v7, "observerId")];
  v8 = gt_xpc_dictionary_create_reply(v7);

  [v6 sendMessage:v8];
}

- (void)broadcastDisconnect:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = xpc_dictionary_get_array(a3, "_pathHistory");
  [(GTMTLTelemetryService *)self->_implInstance deregisterObserversForConnection:v6 path:v7];
}

- (void)update_:(id)a3 replyConnection:(id)a4
{
  v6 = DispatchTelemetryBatchRequest(a4, a3);
  v5 = [(GTMTLTelemetryService *)self->_implInstance update:v6];
}

- (void)query_:(id)a3 replyConnection:(id)a4
{
  v6 = DispatchTelemetryBatchRequest(a4, a3);
  v5 = [(GTMTLTelemetryService *)self->_implInstance query:v6];
}

@end