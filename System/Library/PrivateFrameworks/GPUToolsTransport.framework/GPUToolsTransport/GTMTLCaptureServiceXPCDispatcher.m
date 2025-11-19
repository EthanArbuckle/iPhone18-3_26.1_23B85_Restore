@interface GTMTLCaptureServiceXPCDispatcher
- (GTMTLCaptureServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4 notifyConnection:(id)a5;
- (void)broadcastDisconnect:(id)a3 replyConnection:(id)a4;
- (void)deregisterObserver_:(id)a3 replyConnection:(id)a4;
- (void)nextRequestID:(id)a3 replyConnection:(id)a4;
- (void)query_:(id)a3 replyConnection:(id)a4;
- (void)registerObserver_:(id)a3 replyConnection:(id)a4;
- (void)startWithDescriptor_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)update_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTMTLCaptureServiceXPCDispatcher

- (GTMTLCaptureServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4 notifyConnection:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [a4 protocolMethods];
  v12 = [v11 mutableCopy];

  [v12 addObject:@"broadcastDisconnect"];
  v22.receiver = self;
  v22.super_class = GTMTLCaptureServiceXPCDispatcher;
  v13 = [(GTXPCDispatcher *)&v22 initWithProtocolMethods:v12];
  if (v13)
  {
    v14 = allServices(v10);
    v15 = filteredArrayByService(v14, &unk_2860EEDF0);
    v16 = [v15 firstObject];

    v17 = [GTURLAccessProviderXPCProxy alloc];
    v18 = [v16 serviceProperties];
    v19 = [(GTURLAccessProviderXPCProxy *)v17 initWithConnection:v10 remoteProperties:v18];
    urlService = v13->_urlService;
    v13->_urlService = v19;

    objc_storeStrong(&v13->_implInstance, a3);
  }

  return v13;
}

- (void)registerObserver_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(GTServiceObserver *)[GTMTLCaptureServiceObserver alloc] initWithMessage:v7 notifyConnection:v6];
  v8 = [(GTMTLCaptureService *)self->_implInstance registerObserver:v10];
  v9 = gt_xpc_dictionary_create_reply(v7);

  xpc_dictionary_set_uint64(v9, "observerId", v8);
  [v6 sendMessage:v9];
}

- (void)deregisterObserver_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GTMTLCaptureService *)self->_implInstance deregisterObserver:xpc_dictionary_get_uint64(v7, "observerId")];
  v8 = gt_xpc_dictionary_create_reply(v7);

  [v6 sendMessage:v8];
}

- (void)broadcastDisconnect:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = xpc_dictionary_get_array(a3, "_pathHistory");
  [(GTMTLCaptureService *)self->_implInstance deregisterObserversForConnection:v6 path:v7];
}

- (void)startWithDescriptor_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB98];
  v8 = a3;
  v9 = [v7 alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 initWithObjects:{v10, v11, objc_opt_class(), 0}];
  nsobject_classes = xpc_dictionary_get_nsobject_classes(v8, "descriptor", v12);
  v14 = gt_xpc_dictionary_create_reply(v8);

  objc_initWeak(&location, self->_urlService);
  implInstance = self->_implInstance;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __91__GTMTLCaptureServiceXPCDispatcher_startWithDescriptor_completionHandler__replyConnection___block_invoke;
  v19[3] = &unk_279661A70;
  objc_copyWeak(&v22, &location);
  v20 = v14;
  v21 = v6;
  v16 = v6;
  v17 = v14;
  v18 = [(GTMTLCaptureService *)implInstance startWithDescriptor:nsobject_classes completionHandler:v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __91__GTMTLCaptureServiceXPCDispatcher_startWithDescriptor_completionHandler__replyConnection___block_invoke(void **a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 error];

  if (v5)
  {
    WeakRetained = [v3 error];
    [v4 setObject:WeakRetained forKeyedSubscript:@"error"];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    if (WeakRetained)
    {
      v7 = [v3 archiveURL];
      v8 = [WeakRetained makeURL:v7];

      [v4 setObject:v8 forKeyedSubscript:@"archiveURL"];
      xpc_dictionary_set_flag(a1[4], "_flags", 5);
    }
  }

  v9 = objc_opt_new();
  v10 = MEMORY[0x277CCAAB0];
  v11 = [v4 copy];
  v14 = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v14];
  v13 = v14;
  [v9 setData:v12];

  [v9 setError:v13];
  xpc_dictionary_set_nsobject(a1[4], "response", v9);
  xpc_dictionary_set_nserror(a1[4], "_error", v13);
  [a1[5] sendMessage:a1[4]];
}

- (void)update_:(id)a3 replyConnection:(id)a4
{
  v6 = DispatchCaptureBatchRequest(a4, a3);
  v5 = [(GTMTLCaptureService *)self->_implInstance update:v6];
}

- (void)query_:(id)a3 replyConnection:(id)a4
{
  v6 = DispatchCaptureBatchRequest(a4, a3);
  v5 = [(GTMTLCaptureService *)self->_implInstance query:v6];
}

- (void)nextRequestID:(id)a3 replyConnection:(id)a4
{
  implInstance = self->_implInstance;
  v6 = a4;
  v7 = a3;
  v8 = [(GTMTLCaptureService *)implInstance nextRequestID];
  xdict = gt_xpc_dictionary_create_reply(v7);

  xpc_dictionary_set_uint64(xdict, "requestID", v8);
  [v6 sendMessage:xdict];
}

@end