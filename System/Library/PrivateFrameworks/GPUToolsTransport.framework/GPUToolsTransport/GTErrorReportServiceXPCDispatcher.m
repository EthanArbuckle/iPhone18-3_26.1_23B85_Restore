@interface GTErrorReportServiceXPCDispatcher
- (GTErrorReportServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4;
- (void)broadcastDisconnect:(id)a3 replyConnection:(id)a4;
- (void)deregisterObserver_:(id)a3 replyConnection:(id)a4;
- (void)fetchRejectedConnections_:(id)a3 replyConnection:(id)a4;
- (void)registerObserver_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTErrorReportServiceXPCDispatcher

- (GTErrorReportServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = [a4 protocolMethods];
  v9 = [v8 mutableCopy];

  [v9 addObject:@"broadcastDisconnect"];
  v13.receiver = self;
  v13.super_class = GTErrorReportServiceXPCDispatcher;
  v10 = [(GTXPCDispatcher *)&v13 initWithProtocolMethods:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_service, a3);
  }

  return v11;
}

- (void)fetchRejectedConnections_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = gt_xpc_dictionary_create_reply(a3);
  service = self->_service;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__GTErrorReportServiceXPCDispatcher_fetchRejectedConnections__replyConnection___block_invoke;
  v11[3] = &unk_279661028;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(GTErrorReportService *)service fetchRejectedConnections:v11];
}

uint64_t __79__GTErrorReportServiceXPCDispatcher_fetchRejectedConnections__replyConnection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  xpc_dictionary_set_nsobject(v5, "response", a2);
  xpc_dictionary_set_nsobject(*(a1 + 32), "error", v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v7 sendMessage:v8];
}

- (void)registerObserver_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(GTServiceObserver *)[GTErrorReportServiceObserver alloc] initWithMessage:v7 notifyConnection:v6];
  v8 = [(GTErrorReportService *)self->_service registerObserver:v10];
  v9 = gt_xpc_dictionary_create_reply(v7);

  xpc_dictionary_set_uint64(v9, "observerId", v8);
  [v6 sendMessage:v9];
}

- (void)deregisterObserver_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GTErrorReportService *)self->_service deregisterObserver:xpc_dictionary_get_uint64(v7, "observerId")];
  v8 = gt_xpc_dictionary_create_reply(v7);

  [v6 sendMessage:v8];
}

- (void)broadcastDisconnect:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = xpc_dictionary_get_array(a3, "_pathHistory");
  [(GTErrorReportService *)self->_service deregisterObserversForConnection:v6 path:v7];
}

@end