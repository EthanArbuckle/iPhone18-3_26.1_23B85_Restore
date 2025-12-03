@interface GTMTLTelemetryServiceXPCDispatcher
- (GTMTLTelemetryServiceXPCDispatcher)initWithService:(id)service properties:(id)properties notifyConnection:(id)connection;
- (void)broadcastDisconnect:(id)disconnect replyConnection:(id)connection;
- (void)deregisterObserver_:(id)observer_ replyConnection:(id)connection;
- (void)query_:(id)query_ replyConnection:(id)connection;
- (void)registerObserver_:(id)observer_ replyConnection:(id)connection;
- (void)update_:(id)update_ replyConnection:(id)connection;
@end

@implementation GTMTLTelemetryServiceXPCDispatcher

- (GTMTLTelemetryServiceXPCDispatcher)initWithService:(id)service properties:(id)properties notifyConnection:(id)connection
{
  serviceCopy = service;
  protocolMethods = [properties protocolMethods];
  v10 = [protocolMethods mutableCopy];

  [v10 addObject:@"broadcastDisconnect"];
  v14.receiver = self;
  v14.super_class = GTMTLTelemetryServiceXPCDispatcher;
  v11 = [(GTXPCDispatcher *)&v14 initWithProtocolMethods:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_implInstance, service);
  }

  return v12;
}

- (void)registerObserver_:(id)observer_ replyConnection:(id)connection
{
  connectionCopy = connection;
  observer_Copy = observer_;
  v10 = [(GTServiceObserver *)[GTMTLTelemetryServiceObserver alloc] initWithMessage:observer_Copy notifyConnection:connectionCopy];
  v8 = [(GTMTLTelemetryService *)self->_implInstance registerObserver:v10];
  v9 = gt_xpc_dictionary_create_reply(observer_Copy);

  xpc_dictionary_set_uint64(v9, "observerId", v8);
  [connectionCopy sendMessage:v9];
}

- (void)deregisterObserver_:(id)observer_ replyConnection:(id)connection
{
  connectionCopy = connection;
  observer_Copy = observer_;
  [(GTMTLTelemetryService *)self->_implInstance deregisterObserver:xpc_dictionary_get_uint64(observer_Copy, "observerId")];
  v8 = gt_xpc_dictionary_create_reply(observer_Copy);

  [connectionCopy sendMessage:v8];
}

- (void)broadcastDisconnect:(id)disconnect replyConnection:(id)connection
{
  connectionCopy = connection;
  v7 = xpc_dictionary_get_array(disconnect, "_pathHistory");
  [(GTMTLTelemetryService *)self->_implInstance deregisterObserversForConnection:connectionCopy path:v7];
}

- (void)update_:(id)update_ replyConnection:(id)connection
{
  v6 = DispatchTelemetryBatchRequest(connection, update_);
  v5 = [(GTMTLTelemetryService *)self->_implInstance update:v6];
}

- (void)query_:(id)query_ replyConnection:(id)connection
{
  v6 = DispatchTelemetryBatchRequest(connection, query_);
  v5 = [(GTMTLTelemetryService *)self->_implInstance query:v6];
}

@end