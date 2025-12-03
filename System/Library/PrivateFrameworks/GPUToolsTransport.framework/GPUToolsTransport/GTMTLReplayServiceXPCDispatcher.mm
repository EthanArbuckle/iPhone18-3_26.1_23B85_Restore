@interface GTMTLReplayServiceXPCDispatcher
- (GTMTLReplayServiceXPCDispatcher)initWithService:(id)service properties:(id)properties bulkDataService:(id)dataService bulkDataServiceProperties:(id)serviceProperties;
- (void)broadcastDisconnect:(id)disconnect replyConnection:(id)connection;
- (void)bulkDataService:(id)service replyConnection:(id)connection;
- (void)cancel_:(id)cancel_ replyConnection:(id)connection;
- (void)decode_:(id)decode_ replyConnection:(id)connection;
- (void)deregisterObserver_:(id)observer_ replyConnection:(id)connection;
- (void)display_:(id)display_ replyConnection:(id)connection;
- (void)fetchInto_:(id)into_ replyConnection:(id)connection;
- (void)fetch_:(id)fetch_ replyConnection:(id)connection;
- (void)load_error_:(id)load_error_ replyConnection:(id)connection;
- (void)pause_:(id)pause_ replyConnection:(id)connection;
- (void)profile_:(id)profile_ replyConnection:(id)connection;
- (void)query_:(id)query_ replyConnection:(id)connection;
- (void)raytrace_:(id)raytrace_ replyConnection:(id)connection;
- (void)registerObserver_:(id)observer_ replyConnection:(id)connection;
- (void)resume_:(id)resume_ replyConnection:(id)connection;
- (void)shaderdebug_:(id)shaderdebug_ replyConnection:(id)connection;
- (void)update_:(id)update_ replyConnection:(id)connection;
@end

@implementation GTMTLReplayServiceXPCDispatcher

- (GTMTLReplayServiceXPCDispatcher)initWithService:(id)service properties:(id)properties bulkDataService:(id)dataService bulkDataServiceProperties:(id)serviceProperties
{
  serviceCopy = service;
  dataServiceCopy = dataService;
  servicePropertiesCopy = serviceProperties;
  protocolMethods = [properties protocolMethods];
  v15 = [protocolMethods mutableCopy];

  [v15 addObject:@"bulkDataService"];
  [v15 addObject:@"broadcastDisconnect"];
  v19.receiver = self;
  v19.super_class = GTMTLReplayServiceXPCDispatcher;
  v16 = [(GTXPCDispatcher *)&v19 initWithProtocolMethods:v15];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_implInstance, service);
    objc_storeStrong(&v17->_bulkDataService, dataService);
    objc_storeStrong(&v17->_bulkDataServiceProperties, serviceProperties);
  }

  return v17;
}

- (void)broadcastDisconnect:(id)disconnect replyConnection:(id)connection
{
  connectionCopy = connection;
  v7 = xpc_dictionary_get_array(disconnect, "_pathHistory");
  [(GTMTLReplayService *)self->_implInstance broadcastDisconnect:connectionCopy path:v7];
}

- (void)bulkDataService:(id)service replyConnection:(id)connection
{
  connectionCopy = connection;
  v7 = gt_xpc_dictionary_create_reply(service);
  xpc_dictionary_set_nsobject(v7, "returnValue", self->_bulkDataServiceProperties);
  [connectionCopy sendMessage:v7];
}

- (void)registerObserver_:(id)observer_ replyConnection:(id)connection
{
  connectionCopy = connection;
  observer_Copy = observer_;
  v10 = [(GTServiceObserver *)[GTMTLReplayServiceObserver alloc] initWithMessage:observer_Copy notifyConnection:connectionCopy];
  v8 = [(GTMTLReplayService *)self->_implInstance registerObserver:v10];
  v9 = gt_xpc_dictionary_create_reply(observer_Copy);

  xpc_dictionary_set_uint64(v9, "observerId", v8);
  [connectionCopy sendMessage:v9];
}

- (void)deregisterObserver_:(id)observer_ replyConnection:(id)connection
{
  connectionCopy = connection;
  observer_Copy = observer_;
  [(GTMTLReplayService *)self->_implInstance deregisterObserver:xpc_dictionary_get_uint64(observer_Copy, "observerId")];
  v8 = gt_xpc_dictionary_create_reply(observer_Copy);

  [connectionCopy sendMessage:v8];
}

- (void)load_error_:(id)load_error_ replyConnection:(id)connection
{
  connectionCopy = connection;
  load_error_Copy = load_error_;
  v8 = allServices(connectionCopy);
  v9 = filteredArrayByService(v8, &unk_2860EEDF0);
  firstObject = [v9 firstObject];

  v11 = [GTURLAccessProviderXPCProxy alloc];
  serviceProperties = [firstObject serviceProperties];
  v13 = [(GTURLAccessProviderXPCProxy *)v11 initWithConnection:connectionCopy remoteProperties:serviceProperties];

  v14 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(load_error_Copy, "url", v14);
  v16 = gt_xpc_dictionary_create_reply(load_error_Copy);

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__GTMTLReplayServiceXPCDispatcher_load_error__replyConnection___block_invoke;
  v19[3] = &unk_2796616B8;
  v19[4] = self;
  v20 = v16;
  v21 = connectionCopy;
  v17 = connectionCopy;
  v18 = v16;
  [(GTURLAccessProviderXPCProxy *)v13 securityScopedURLFromSandboxID:nsobject completionHandler:v19];
}

void __63__GTMTLReplayServiceXPCDispatcher_load_error__replyConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);
    v9 = 0;
    [v3 load:a2 error:&v9];
    v4 = v9;
  }

  else
  {
    v5 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"File transfer failed in %@: %@", @"GTReplayService", @"loading GPU trace"];
    v11[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v4 = [v5 errorWithDomain:@"com.apple.gputools.transport" code:8 userInfo:v7];
  }

  xpc_dictionary_set_nserror(*(a1 + 40), "error", v4);
  [*(a1 + 48) sendMessage:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetch_:(id)fetch_ replyConnection:(id)connection
{
  v6 = DispatchReplayerBatchRequest(connection, fetch_, self->_bulkDataService, 0);
  v5 = [(GTMTLReplayService *)self->_implInstance fetch:v6];
}

- (void)fetchInto_:(id)into_ replyConnection:(id)connection
{
  v20[1] = *MEMORY[0x277D85DE8];
  into_Copy = into_;
  connectionCopy = connection;
  if (xpc_dictionary_get_flag(into_Copy, "_flags", 6))
  {
    if (GTCoreLogUseOsLog())
    {
      v8 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [GTMTLReplayServiceXPCDispatcher fetchInto_:v8 replyConnection:?];
      }
    }

    else
    {
      v11 = *MEMORY[0x277D85DF8];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"fetchInto not supported for remote devices"];
      fprintf(v11, "%s\n", [v12 UTF8String]);
    }

    v13 = gt_xpc_dictionary_create_reply(into_Copy);
    v14 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"API unavailable"];
    v20[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v17 = [v14 errorWithDomain:@"com.apple.gputools.transport" code:12 userInfo:v16];

    xpc_dictionary_set_nserror(v13, "_error", v17);
    [connectionCopy sendMessage:v13];
  }

  else
  {
    v9 = DispatchReplayerBatchRequest(connectionCopy, into_Copy, self->_bulkDataService, 0);
    v10 = [(GTMTLReplayService *)self->_implInstance fetchInto:v9];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)query_:(id)query_ replyConnection:(id)connection
{
  v6 = DispatchReplayerBatchRequest(connection, query_, self->_bulkDataService, 0);
  v5 = [(GTMTLReplayService *)self->_implInstance query:v6];
}

- (void)update_:(id)update_ replyConnection:(id)connection
{
  update_Copy = update_;
  connectionCopy = connection;
  objc_initWeak(&location, self->_implInstance);
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__GTMTLReplayServiceXPCDispatcher_update__replyConnection___block_invoke;
  block[3] = &unk_279661730;
  v12 = connectionCopy;
  v13 = update_Copy;
  selfCopy = self;
  v9 = update_Copy;
  v10 = connectionCopy;
  objc_copyWeak(&v15, &location);
  dispatch_async(v8, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __59__GTMTLReplayServiceXPCDispatcher_update__replyConnection___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 24);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__GTMTLReplayServiceXPCDispatcher_update__replyConnection___block_invoke_2;
  v10[3] = &unk_279661708;
  v11 = v3;
  v12 = v2;
  v13 = *(a1 + 40);
  v6 = v2;
  v7 = DispatchReplayerBatchRequest(v11, v4, v5, v10);
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = [WeakRetained update:v7];
}

void __59__GTMTLReplayServiceXPCDispatcher_update__replyConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 shaderURL];

    if (v5)
    {
      v6 = allServices(*(a1 + 32));
      v7 = filteredArrayByService(v6, &unk_2860EEDF0);
      v8 = [v7 firstObject];

      v9 = [GTURLAccessProviderXPCProxy alloc];
      v10 = *(a1 + 32);
      v11 = [v8 serviceProperties];
      v12 = [(GTURLAccessProviderXPCProxy *)v9 initWithConnection:v10 remoteProperties:v11];

      dispatch_group_enter(*(a1 + 40));
      v13 = [v4 shaderURL];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __59__GTMTLReplayServiceXPCDispatcher_update__replyConnection___block_invoke_3;
      v18[3] = &unk_2796616E0;
      v19 = v4;
      v20 = *(a1 + 40);
      [(GTURLAccessProviderXPCProxy *)v12 securityScopedURLFromSandboxID:v13 completionHandler:v18];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = *(a1 + 48);
      v15 = v3;
      v16 = xpc_dictionary_get_array(v14, "_pathHistory");
      [v15 setPath:v16];

      v17 = [*(a1 + 32) connection];
      [v15 setConnection:v17];
    }
  }
}

void __59__GTMTLReplayServiceXPCDispatcher_update__replyConnection___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setShaderURL:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

- (void)decode_:(id)decode_ replyConnection:(id)connection
{
  v6 = DispatchReplayerBatchRequest(connection, decode_, self->_bulkDataService, 0);
  v5 = [(GTMTLReplayService *)self->_implInstance decode:v6];
}

- (void)display_:(id)display_ replyConnection:(id)connection
{
  display_Copy = display_;
  v6 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(display_Copy, "request", v6);

  [(GTMTLReplayService *)self->_implInstance display:nsobject];
}

- (void)profile_:(id)profile_ replyConnection:(id)connection
{
  connectionCopy = connection;
  profile_Copy = profile_;
  uint64 = xpc_dictionary_get_uint64(profile_Copy, "_replyStreamId");
  v9 = xpc_dictionary_get_array(profile_Copy, "_pathHistory");
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
  nsobject_classes = xpc_dictionary_get_nsobject_classes(profile_Copy, "request", v14);

  v16 = allServices(connectionCopy);
  v17 = filteredArrayByService(v16, &unk_2860EEDF0);
  firstObject = [v17 firstObject];

  v19 = [GTURLAccessProviderXPCProxy alloc];
  serviceProperties = [firstObject serviceProperties];
  v21 = [(GTURLAccessProviderXPCProxy *)v19 initWithConnection:connectionCopy remoteProperties:serviceProperties];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __60__GTMTLReplayServiceXPCDispatcher_profile__replyConnection___block_invoke;
  v26[3] = &unk_279661758;
  v30 = connectionCopy;
  v31 = uint64;
  v27 = v9;
  v28 = v21;
  selfCopy = self;
  v22 = connectionCopy;
  v23 = v21;
  v24 = v9;
  [nsobject_classes setStreamHandler:v26];
  v25 = [(GTMTLReplayService *)self->_implInstance profile:nsobject_classes];
}

void __60__GTMTLReplayServiceXPCDispatcher_profile__replyConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "_port", *(a1 + 64));
  xpc_dictionary_set_value(empty, "_replyPath", *(a1 + 32));
  v5 = [v3 data];
  if (v5)
  {
  }

  else
  {
    v6 = [v3 error];

    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v7 = [v3 error];

  v8 = 0x277CCA000;
  if (!v7)
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v9 setWithObjects:{v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = MEMORY[0x277CCAAC8];
    v18 = [v3 data];
    v30 = 0;
    v19 = [v17 unarchivedObjectOfClasses:v16 fromData:v18 error:&v30];
    v20 = v30;

    if (!v20 && v19)
    {
      v21 = [v19 objectForKeyedSubscript:@"Profiler Raw URL"];
      if (v21)
      {
        v22 = [*(a1 + 40) makeURL:v21];
        v23 = [v19 mutableCopy];
        [v23 setObject:v22 forKeyedSubscript:@"Profiler Raw URL"];
        v29 = 0;
        v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v23 requiringSecureCoding:1 error:&v29];
        v20 = v29;
        [v3 setData:v24];

        [v3 setError:v20];
      }

      else
      {
        v20 = 0;
      }
    }

    v8 = 0x277CCA000uLL;
  }

  v25 = *(v8 + 2736);
  v28 = 0;
  v26 = [v25 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v28];
  v27 = v28;
  xpc_dictionary_set_uint64(empty, "bulkDataHandle", [*(*(a1 + 48) + 24) handoverDataForDownload:v26]);

LABEL_13:
  [*(a1 + 56) sendMessage:empty];
}

- (void)shaderdebug_:(id)shaderdebug_ replyConnection:(id)connection
{
  v25[7] = *MEMORY[0x277D85DE8];
  shaderdebug_Copy = shaderdebug_;
  connectionCopy = connection;
  v8 = MEMORY[0x277CBEB98];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v25[3] = objc_opt_class();
  v25[4] = objc_opt_class();
  v25[5] = objc_opt_class();
  v25[6] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:7];
  v10 = [v8 setWithArray:v9];

  nsobject_classes = xpc_dictionary_get_nsobject_classes(shaderdebug_Copy, "request", v10);
  uint64 = xpc_dictionary_get_uint64(shaderdebug_Copy, "programDataHandle");
  if (uint64)
  {
    v13 = [(GTBulkDataService *)self->_bulkDataService takeUploadedDataForHandle:uint64];
    [nsobject_classes setProgramData:v13];
  }

  v14 = gt_xpc_dictionary_create_reply(shaderdebug_Copy);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __64__GTMTLReplayServiceXPCDispatcher_shaderdebug__replyConnection___block_invoke;
  v22 = &unk_279661780;
  v23 = v14;
  v24 = connectionCopy;
  v15 = connectionCopy;
  v16 = v14;
  [nsobject_classes setCompletionHandler:&v19];
  v17 = [(GTMTLReplayService *)self->_implInstance shaderdebug:nsobject_classes, v19, v20, v21, v22];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __64__GTMTLReplayServiceXPCDispatcher_shaderdebug__replyConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nsobject(*(a1 + 32), "response", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

- (void)raytrace_:(id)raytrace_ replyConnection:(id)connection
{
  connectionCopy = connection;
  raytrace_Copy = raytrace_;
  uint64 = xpc_dictionary_get_uint64(raytrace_Copy, "_replyStreamId");
  v9 = xpc_dictionary_get_array(raytrace_Copy, "_pathHistory");
  v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  nsobject_classes = xpc_dictionary_get_nsobject_classes(raytrace_Copy, "request", v10);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__GTMTLReplayServiceXPCDispatcher_raytrace__replyConnection___block_invoke;
  v15[3] = &unk_2796617A8;
  v16 = v9;
  selfCopy = self;
  v18 = connectionCopy;
  v19 = uint64;
  v12 = connectionCopy;
  v13 = v9;
  [nsobject_classes setStreamHandler:v15];
  v14 = [(GTMTLReplayService *)self->_implInstance raytrace:nsobject_classes];
}

void __61__GTMTLReplayServiceXPCDispatcher_raytrace__replyConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "_port", *(a1 + 56));
  xpc_dictionary_set_value(empty, "_replyPath", *(a1 + 32));
  xpc_dictionary_set_uint64(empty, "streamState", [v3 state]);
  v5 = [v3 data];
  if (v5)
  {

LABEL_4:
    v14 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v14];
    v8 = v14;
    xpc_dictionary_set_uint64(empty, "bulkDataHandle", [*(*(a1 + 40) + 24) handoverDataForDownload:v7]);

    goto LABEL_5;
  }

  v6 = [v3 error];

  if (v6)
  {
    goto LABEL_4;
  }

  v9 = [v3 error];

  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = [v3 error];
  v13 = v10;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v13];
  v11 = v13;

  v12 = [*(*(a1 + 40) + 24) handoverDataForDownload:v8];
  xpc_dictionary_set_uint64(empty, "bulkDataHandle", v12);
LABEL_5:

LABEL_6:
  [*(a1 + 48) sendMessage:empty];
}

- (void)cancel_:(id)cancel_ replyConnection:(id)connection
{
  connectionCopy = connection;
  cancel_Copy = cancel_;
  LOBYTE(self) = [(GTMTLReplayService *)self->_implInstance cancel:xpc_dictionary_get_uint64(cancel_Copy, "token")];
  xdict = gt_xpc_dictionary_create_reply(cancel_Copy);

  xpc_dictionary_set_BOOL(xdict, "success", self);
  [connectionCopy sendMessage:xdict];
}

- (void)pause_:(id)pause_ replyConnection:(id)connection
{
  connectionCopy = connection;
  pause_Copy = pause_;
  LOBYTE(self) = [(GTMTLReplayService *)self->_implInstance pause:xpc_dictionary_get_uint64(pause_Copy, "token")];
  xdict = gt_xpc_dictionary_create_reply(pause_Copy);

  xpc_dictionary_set_BOOL(xdict, "success", self);
  [connectionCopy sendMessage:xdict];
}

- (void)resume_:(id)resume_ replyConnection:(id)connection
{
  connectionCopy = connection;
  resume_Copy = resume_;
  LOBYTE(self) = [(GTMTLReplayService *)self->_implInstance resume:xpc_dictionary_get_uint64(resume_Copy, "token")];
  xdict = gt_xpc_dictionary_create_reply(resume_Copy);

  xpc_dictionary_set_BOOL(xdict, "success", self);
  [connectionCopy sendMessage:xdict];
}

@end