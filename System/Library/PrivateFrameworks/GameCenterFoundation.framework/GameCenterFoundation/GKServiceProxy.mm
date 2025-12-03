@interface GKServiceProxy
- (BOOL)needsBuildUpServiceLookup;
- (GKPlayerInternal)localPlayer;
- (GKServiceProxy)initWithPlayer:(id)player;
- (id)methodSignatureForProtocol:(id)protocol selector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)addService:(id)service forProtocol:(id)protocol toLookup:(id)lookup;
- (void)buildServiceLookupIfNecessary;
- (void)forwardInvocation:(id)invocation;
- (void)needsBuildUpServiceLookup;
- (void)replyToDuplicatesForRequest:(id)request withInvocation:(id)invocation queue:(id)queue;
@end

@implementation GKServiceProxy

- (GKServiceProxy)initWithPlayer:(id)player
{
  playerCopy = player;
  v14.receiver = self;
  v14.super_class = GKServiceProxy;
  v5 = [(GKServiceProxy *)&v14 init];
  v6 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
    v6 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [GKServiceProxy initWithPlayer:];
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else if (!v5)
  {
    goto LABEL_11;
  }

  v8 = [GKThreadsafeDictionary alloc];
  if (playerCopy)
  {
    playerID = [playerCopy playerID];
  }

  else
  {
    playerID = @"global";
  }

  v10 = [@"com.apple.gamecenter.pendingRequests-" stringByAppendingString:playerID];
  v11 = [(GKThreadsafeDictionary *)v8 initWithName:v10];
  pendingRequests = v5->_pendingRequests;
  v5->_pendingRequests = v11;

  if (playerCopy)
  {
  }

  objc_storeWeak(&v5->_localPlayer, playerCopy);
LABEL_11:

  return v5;
}

- (id)methodSignatureForProtocol:(id)protocol selector:(SEL)selector
{
  protocolCopy = protocol;
  MethodDescription = protocol_getMethodDescription(protocolCopy, selector, 1, 1);
  types = MethodDescription.types;
  if (MethodDescription.name || (v8 = protocol_getMethodDescription(protocolCopy, selector, 0, 1), types = v8.types, v8.name))
  {
    v9 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:types];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v20[1] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = GKServiceProxy;
  v5 = [(GKServiceProxy *)&v18 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = NSStringFromSelector(selector);
    baseProxy = [(GKServiceProxy *)self baseProxy];
    interfaceLookup = [baseProxy interfaceLookup];
    v9 = [interfaceLookup objectForKeyedSubscript:v6];

    protocol = [v9 protocol];
    if (!protocol)
    {
      v14 = MEMORY[0x277CBEAD8];
      v19 = @"selector";
      v20[0] = v6;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v16 = [v14 exceptionWithName:@"GKNoSuchServiceException" reason:@"Attempted to dispatch a selector which is not recognized by any service" userInfo:v15];
      v17 = v16;

      objc_exception_throw(v16);
    }

    v11 = protocol;
    v5 = [(GKServiceProxy *)self methodSignatureForProtocol:protocol selector:selector];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  [(GKServiceProxy *)self buildServiceLookupIfNecessary];
  [invocationCopy _gkCopyArguments];
  baseProxy = [(GKServiceProxy *)self baseProxy];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector([invocationCopy selector]);
  v8 = [v6 stringWithFormat:@"forwarding %@", v7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__GKServiceProxy_forwardInvocation___block_invoke;
  v11[3] = &unk_2785DDB40;
  v12 = baseProxy;
  v13 = invocationCopy;
  selfCopy = self;
  v9 = invocationCopy;
  v10 = baseProxy;
  [GKActivity named:v8 execute:v11];
}

void __36__GKServiceProxy_forwardInvocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) invocationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__GKServiceProxy_forwardInvocation___block_invoke_2;
  block[3] = &unk_2785DDB40;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 32);
  dispatch_async(v2, block);
}

void __36__GKServiceProxy_forwardInvocation___block_invoke_2(id *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] selector];
  v3 = NSStringFromSelector(v2);
  v4 = [a1[4] _gkReplyHandlerInvocation];
  v5 = [a1[5] serviceLookup];
  v6 = [v5 objectForKey:v3];

  if (v6)
  {
    if (v4)
    {
      v7 = [a1[5] requestIdentifierForInvocation:a1[4]];
      v8 = *(a1[5] + 2);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __36__GKServiceProxy_forwardInvocation___block_invoke_3;
      v19[3] = &unk_2785E05D8;
      v20 = v7;
      v21 = v3;
      v22 = a1[4];
      v23 = v4;
      v24 = a1[6];
      v9 = v6;
      v10 = a1[5];
      v25 = v9;
      v26 = v10;
      v27 = v2;
      v11 = v7;
      [v8 asyncWriteToDictionary:v19];
    }

    else
    {
      v15 = [v6 remoteObjectProxy];
      if (!os_log_GKGeneral)
      {
        v16 = GKOSLoggers();
      }

      v17 = os_log_GKPerf;
      if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v3;
        _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "Sending one-way request %@", buf, 0xCu);
      }

      [a1[4] _gkInvokeOnceWithTarget:v15];
      [a1[4] _gkClearCopiedArguments];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __36__GKServiceProxy_forwardInvocation___block_invoke_2_cold_1(v13, v2);
    }

    v14 = [MEMORY[0x277CCA9B8] userErrorForCode:3 underlyingError:0];
    [v4 _gkCallbackWithError:v14 queue:MEMORY[0x277D85CD0]];

    [a1[4] _gkClearCopiedArguments];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __36__GKServiceProxy_forwardInvocation___block_invoke_3(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKey:*(a1 + 32)];
  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKPerf;
    if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 138412546;
      v33 = v7;
      v34 = 2112;
      v35 = v8;
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Preventing duplicate load for %@ %@", buf, 0x16u);
    }

    v9 = [*(a1 + 56) target];
    v10 = [v9 copy];

    [v4 addObject:v10];
  }

  else
  {
    v11 = [*(a1 + 64) concurrentRequestSemaphore];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v12 = [MEMORY[0x277CBEB18] array];
    [v3 setObject:v12 forKey:*(a1 + 32)];

    v13 = *(a1 + 72);
    v30[0] = @"timestamp";
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
    v15 = *(a1 + 32);
    v31[0] = v14;
    v31[1] = v15;
    v30[1] = @"requestID";
    v30[2] = @"subproxy";
    v31[2] = *(a1 + 80);
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __36__GKServiceProxy_forwardInvocation___block_invoke_480;
    v25[3] = &unk_2785E05B0;
    v17 = *(a1 + 88);
    v25[4] = *(a1 + 80);
    v29 = v17;
    v26 = *(a1 + 56);
    v27 = *(a1 + 32);
    v10 = v11;
    v28 = v10;
    v18 = [v13 remoteObjectProxyWithUserInfo:v16 errorHandler:v25];

    v19 = +[GKPreferences shared];
    if ([v19 isInternalBuild])
    {
      v20 = *(a1 + 32);

      if (v20)
      {
        [_TtC20GameCenterFoundation23GKDaemonProxySignposter startWithRequestId:*(a1 + 32) key:*(a1 + 40)];
      }
    }

    else
    {
    }

    if (!os_log_GKGeneral)
    {
      v21 = GKOSLoggers();
    }

    v22 = os_log_GKPerf;
    if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 40);
      *buf = 138412290;
      v33 = v23;
      _os_log_impl(&dword_227904000, v22, OS_LOG_TYPE_INFO, "Sending request %@", buf, 0xCu);
    }

    [*(a1 + 48) _gkInvokeOnceWithTarget:v18];
  }

  [*(a1 + 48) _gkClearCopiedArguments];
  v24 = *MEMORY[0x277D85DE8];
}

void __36__GKServiceProxy_forwardInvocation___block_invoke_480(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 baseProxy];
  v6 = [v5 replyQueueForRequestSelector:*(a1 + 64)];

  [*(a1 + 40) _gkCallbackWithError:v4 queue:v6];
  [*(a1 + 32) replyToDuplicatesForRequest:*(a1 + 48) withInvocation:*(a1 + 40) queue:v6];
  dispatch_semaphore_signal(*(a1 + 56));
}

- (void)replyToDuplicatesForRequest:(id)request withInvocation:(id)invocation queue:(id)queue
{
  requestCopy = request;
  invocationCopy = invocation;
  queueCopy = queue;
  if (requestCopy)
  {
    pendingRequests = self->_pendingRequests;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__GKServiceProxy_replyToDuplicatesForRequest_withInvocation_queue___block_invoke;
    v12[3] = &unk_2785E0600;
    v13 = requestCopy;
    v14 = queueCopy;
    v15 = invocationCopy;
    [(GKThreadsafeDictionary *)pendingRequests asyncWriteToDictionary:v12];
  }
}

void __67__GKServiceProxy_replyToDuplicatesForRequest_withInvocation_queue___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:a1[4]];
  if ([v4 count])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __67__GKServiceProxy_replyToDuplicatesForRequest_withInvocation_queue___block_invoke_2;
    v5[3] = &unk_2785DCA00;
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];
    [v4 enumerateObjectsUsingBlock:v5];
  }

  [v3 removeObjectForKey:a1[4]];
}

void __67__GKServiceProxy_replyToDuplicatesForRequest_withInvocation_queue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    __67__GKServiceProxy_replyToDuplicatesForRequest_withInvocation_queue___block_invoke_2_cold_1(a1);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__GKServiceProxy_replyToDuplicatesForRequest_withInvocation_queue___block_invoke_483;
  v7[3] = &unk_2785DEBA8;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)addService:(id)service forProtocol:(id)protocol toLookup:(id)lookup
{
  serviceCopy = service;
  protocolCopy = protocol;
  lookupCopy = lookup;
  if (serviceCopy)
  {
    outCount = 0;
    v10 = protocol_copyMethodDescriptionList(protocolCopy, 1, 1, &outCount);
    v11 = v10;
    if (outCount)
    {
      v12 = 0;
      p_name = &v10->name;
      do
      {
        v14 = NSStringFromSelector(*p_name);
        v15 = [lookupCopy objectForKey:v14];

        if (!v15)
        {
          [lookupCopy setObject:serviceCopy forKey:v14];
        }

        ++v12;
        p_name += 2;
      }

      while (v12 < outCount);
    }

    free(v11);
    v16 = protocol_copyMethodDescriptionList(protocolCopy, 0, 1, &outCount);
    v17 = v16;
    if (outCount)
    {
      v18 = 0;
      v19 = &v16->name;
      do
      {
        v20 = NSStringFromSelector(*v19);
        v21 = [lookupCopy objectForKey:v20];

        if (!v21)
        {
          [lookupCopy setObject:serviceCopy forKey:v20];
        }

        ++v18;
        v19 += 2;
      }

      while (v18 < outCount);
    }

    free(v17);
  }
}

- (BOOL)needsBuildUpServiceLookup
{
  serviceGeneration = [(GKServiceProxy *)self serviceGeneration];
  baseProxy = [(GKServiceProxy *)self baseProxy];
  if (serviceGeneration == [baseProxy serviceGeneration])
  {
    serviceLookup = [(GKServiceProxy *)self serviceLookup];

    if (serviceLookup)
    {
      return 0;
    }
  }

  else
  {
  }

  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(GKServiceProxy *)self needsBuildUpServiceLookup];
  }

  return 1;
}

- (void)buildServiceLookupIfNecessary
{
  if ([(GKServiceProxy *)self needsBuildUpServiceLookup])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    baseProxy = [(GKServiceProxy *)self baseProxy];
    invocationQueue = [baseProxy invocationQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke;
    v7[3] = &unk_2785DEBA8;
    v7[4] = self;
    v8 = uUID;
    v6 = uUID;
    dispatch_async(invocationQueue, v7);
  }
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if ([*(a1 + 32) needsBuildUpServiceLookup])
  {
    v3 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
      v3 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_cold_1(a1, v2, v3);
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = [*v2 baseProxy];
    [*v2 setServiceGeneration:{objc_msgSend(v6, "serviceGeneration")}];

    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_486;
    aBlock[3] = &unk_2785DFF00;
    aBlock[4] = &v39;
    v7 = _Block_copy(aBlock);
    v8 = [*v2 baseProxy];
    v9 = [v8 connection];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_487;
    v34[3] = &unk_2785E0650;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v37 = &v39;
    v34[4] = v10;
    v35 = v11;
    v12 = v5;
    v36 = v12;
    [v9 gkPerformSynchronously:v34 errorHandler:v7];

    v13 = [*v2 baseProxy];
    v14 = [v13 connection];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_780;
    v28 = &unk_2785E06A0;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v33 = &v39;
    v29 = v15;
    v30 = v16;
    v17 = v7;
    v32 = v17;
    v18 = v12;
    v31 = v18;
    [v14 gkPerformSynchronously:&v25 errorHandler:v17];

    if (v40[3])
    {
      v19 = 0;
    }

    else
    {
      v20 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v21 = GKOSLoggers();
        v20 = os_log_GKGeneral;
      }

      v22 = v20;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = [*(a1 + 40) UUIDString];
        __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_cold_2(v23, v18, buf, v22);
      }

      v19 = v18;
    }

    [*v2 setServiceLookup:{v19, v25, v26, v27, v28, v29}];

    _Block_object_dispose(&v39, 8);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_486(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_486_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_487(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = [*(a1 + 32) baseProxy];
    v6 = [v5 hostPID];
    v7 = [*(a1 + 32) localPlayer];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2;
    v10[3] = &unk_2785E0628;
    v8 = *(a1 + 40);
    v14 = Current;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    v13 = *(a1 + 48);
    [v3 getServicesForPID:v6 localPlayer:v7 reply:v10];
  }
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v32 = a2;
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v25 = GKOSLoggers();
    v24 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_cold_1(a1);
  }

  if (!os_log_GKGeneral)
  {
    v26 = GKOSLoggers();
  }

  v27 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_cold_2(v27, a1);
  }

  CFAbsoluteTimeGetCurrent();
  [*(a1 + 40) addService:v32 forProtocol:&unk_283B65878 toLookup:*(a1 + 48)];
  [*(a1 + 40) addService:v35 forProtocol:&unk_283B62460 toLookup:*(a1 + 48)];
  [*(a1 + 40) addService:v34 forProtocol:&unk_283B63350 toLookup:*(a1 + 48)];
  [*(a1 + 40) addService:v33 forProtocol:&unk_283B65F00 toLookup:*(a1 + 48)];
  [*(a1 + 40) addService:v18 forProtocol:&unk_283B66428 toLookup:*(a1 + 48)];
  [*(a1 + 40) addService:v19 forProtocol:&unk_283B66818 toLookup:*(a1 + 48)];
  [*(a1 + 40) addService:v20 forProtocol:&unk_283B66DC8 toLookup:*(a1 + 48)];
  [*(a1 + 40) addService:v21 forProtocol:&unk_283B66E50 toLookup:*(a1 + 48)];
  [*(a1 + 40) addService:v22 forProtocol:&unk_283B66EC8 toLookup:*(a1 + 48)];
  [*(a1 + 40) addService:v23 forProtocol:&unk_283B67620 toLookup:*(a1 + 48)];
  if (!os_log_GKGeneral)
  {
    v28 = GKOSLoggers();
  }

  v29 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_cold_3(v29);
  }

  v30 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v31 = GKOSLoggers();
    v30 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_cold_4(a1);
  }
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_780(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = [*(a1 + 32) baseProxy];
    v6 = [v5 hostPID];
    v7 = [*(a1 + 32) localPlayer];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_781;
    v13[3] = &unk_2785E0678;
    v16 = Current;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = *(a1 + 32);
    v12 = v10;
    *&v11 = *(a1 + 48);
    *(&v11 + 1) = v9;
    v14 = v12;
    v15 = v11;
    [v3 getPrivateServicesForPID:v6 localPlayer:v7 reply:v13];
  }
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_781(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  v35 = a2;
  v34 = a3;
  v20 = a4;
  v40 = a5;
  v39 = a6;
  v38 = a7;
  v37 = a8;
  v36 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  if (!os_log_GKGeneral)
  {
    v25 = GKOSLoggers();
  }

  v26 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_781_cold_1(v26, a1);
  }

  v27 = os_log_GKGeneral;
  if (v35)
  {
    if (!os_log_GKGeneral)
    {
      v28 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_781_cold_2(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v29 = GKOSLoggers();
      v27 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_781_cold_3(a1);
    }

    CFAbsoluteTimeGetCurrent();
    [*(a1 + 40) addService:v34 forProtocol:&unk_283B6AFF0 toLookup:*(a1 + 48)];
    [*(a1 + 40) addService:v20 forProtocol:&unk_283B6AED0 toLookup:*(a1 + 48)];
    [*(a1 + 40) addService:v40 forProtocol:&unk_283B6AF90 toLookup:*(a1 + 48)];
    [*(a1 + 40) addService:v39 forProtocol:&unk_283B6B050 toLookup:*(a1 + 48)];
    [*(a1 + 40) addService:v38 forProtocol:&unk_283B6B0B0 toLookup:*(a1 + 48)];
    [*(a1 + 40) addService:v37 forProtocol:&unk_283B6B110 toLookup:*(a1 + 48)];
    [*(a1 + 40) addService:v36 forProtocol:&unk_283B6B170 toLookup:*(a1 + 48)];
    [*(a1 + 40) addService:v21 forProtocol:&unk_283B6B1D0 toLookup:*(a1 + 48)];
    [*(a1 + 40) addService:v22 forProtocol:&unk_283B6B230 toLookup:*(a1 + 48)];
    [*(a1 + 40) addService:v23 forProtocol:&unk_283B6B290 toLookup:*(a1 + 48)];
    [*(a1 + 40) addService:v24 forProtocol:&unk_283B6B2F0 toLookup:*(a1 + 48)];
    if (!os_log_GKGeneral)
    {
      v30 = GKOSLoggers();
    }

    v31 = os_log_GKPerf;
    if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
    {
      __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_781_cold_4(v31);
    }

    v32 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v33 = GKOSLoggers();
      v32 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_781_cold_5(a1);
    }
  }
}

- (GKPlayerInternal)localPlayer
{
  WeakRetained = objc_loadWeakRetained(&self->_localPlayer);

  return WeakRetained;
}

- (void)initWithPlayer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_227904000, v1, OS_LOG_TYPE_DEBUG, "%@ init player:%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __36__GKServiceProxy_forwardInvocation___block_invoke_2_cold_1(void *a1, const char *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  sel_getName(a2);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v3, OS_LOG_TYPE_ERROR, "No gamed service found for selector %s", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __67__GKServiceProxy_replyToDuplicatesForRequest_withInvocation_queue___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)needsBuildUpServiceLookup
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [self serviceGeneration];
  serviceLookup = [self serviceLookup];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_cold_1(uint64_t a1, void **a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = a3;
  [v4 serviceGeneration];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x1Cu);

  v11 = *MEMORY[0x277D85DE8];
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_cold_2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_227904000, log, OS_LOG_TYPE_DEBUG, "[%@]Setting service lookup to: %@", buf, 0x16u);
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_486_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_227904000, v0, v1, "Could not load services for GameKit. This likely means your game is missing the com.apple.developer.game-center entitlement. For more info see:\n https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_game-center\n\nERROR: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_cold_2(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = CFAbsoluteTimeGetCurrent() - *(a2 + 56);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_cold_3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_4_0(&dword_227904000, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_781_cold_1(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = CFAbsoluteTimeGetCurrent() - *(a2 + 64);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_781_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  v5 = 2112;
  v6 = v1;
  _os_log_error_impl(&dword_227904000, v2, OS_LOG_TYPE_ERROR, "[%@]Failed to get privateProxy services. error: %@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_781_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_781_cold_4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_4_0(&dword_227904000, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __47__GKServiceProxy_buildServiceLookupIfNecessary__block_invoke_2_781_cold_5(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end