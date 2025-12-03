@interface GKDiscoveryBonjour
- (BOOL)isAppleTV;
- (GKDiscoveryBonjour)init;
- (GKDiscoveryBonjour)initWithDomain:(id)domain type:(id)type;
- (int)ipV4Socket;
- (int)ipV6Socket;
- (int)resolveName:(id)name onIndex:(unsigned int)index withCompletionHandler:(id)handler;
- (int)startBrowsing:(id)browsing;
- (void)closeListeningSockets;
- (void)createDispatchEventWithSocket:(int)socket;
- (void)dealloc;
- (void)ipV4Socket;
- (void)ipV6Socket;
- (void)sendBonjourRegistrationEvent:(id)event discoveryInfo:(id)info;
- (void)setupBothListeningSockets;
- (void)setupListeningSockets;
- (void)startAdvertisingServiceName:(id)name discoveryInfo:(id)info;
- (void)stopAdvertising;
- (void)stopBrowsing;
- (void)stopResolve:(id)resolve;
@end

@implementation GKDiscoveryBonjour

- (GKDiscoveryBonjour)init
{
  v3.receiver = self;
  v3.super_class = GKDiscoveryBonjour;
  [(GKDiscoveryBonjour *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (GKDiscoveryBonjour)initWithDomain:(id)domain type:(id)type
{
  v8.receiver = self;
  v8.super_class = GKDiscoveryBonjour;
  v6 = [(GKDiscoveryBonjour *)&v8 init];
  if (v6)
  {
    v6->_serviceDomain = [domain copy];
    v6->_serviceType = [type copy];
    v6->_launchdSources = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6->_resolveContainers = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6->_resolveContainersSyncQueue = dispatch_queue_create("com.apple.gamed.GKDiscoveryBonjour.resolveContanersSyncQueue", 0);
  }

  return v6;
}

- (BOOL)isAppleTV
{
  if (isAppleTV_predicate != -1)
  {
    [GKDiscoveryBonjour isAppleTV];
  }

  return isAppleTV_deviceClass == 4;
}

void __31__GKDiscoveryBonjour_isAppleTV__block_invoke()
{
  v0 = MGCopyAnswer();
  isAppleTV_deviceClass = [v0 intValue];
  if (v0)
  {

    CFRelease(v0);
  }
}

- (void)dealloc
{
  browseRef = self->_browseRef;
  if (browseRef)
  {
    DNSServiceRefDeallocate(browseRef);
  }

  advertiseRef = self->_advertiseRef;
  if (advertiseRef)
  {
    DNSServiceRefDeallocate(advertiseRef);
  }

  [(GKDiscoveryBonjour *)self closeListeningSockets];

  resolveContainersSyncQueue = self->_resolveContainersSyncQueue;
  if (resolveContainersSyncQueue)
  {
    dispatch_release(resolveContainersSyncQueue);
  }

  v6.receiver = self;
  v6.super_class = GKDiscoveryBonjour;
  [(GKDiscoveryBonjour *)&v6 dealloc];
}

- (int)startBrowsing:(id)browsing
{
  p_browseRef = &self->_browseRef;
  if (self->_browseRef)
  {
    [(GKDiscoveryBonjour *)self stopBrowsing];
  }

  [(GKDiscoveryBonjour *)self setBrowseCallback:browsing];
  v6 = DNSServiceBrowse(p_browseRef, 0x20000u, 0, [(NSString *)self->_serviceType UTF8String], [(NSString *)self->_serviceDomain UTF8String], gkDiscoveryBrowseCallback, self);
  if (v6)
  {
    v7 = v6;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKDiscoveryBonjour startBrowsing:];
      }
    }
  }

  else
  {
    v7 = DNSServiceSetDispatchQueue(*p_browseRef, MEMORY[0x277D85CD0]);
    if (v7)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKDiscoveryBonjour startBrowsing:];
        }
      }
    }
  }

  return v7;
}

- (void)stopBrowsing
{
  browseRef = self->_browseRef;
  if (browseRef)
  {
    DNSServiceRefDeallocate(browseRef);
    self->_browseRef = 0;
  }

  [(GKDiscoveryBonjour *)self setBrowseCallback:0];
}

- (int)resolveName:(id)name onIndex:(unsigned int)index withCompletionHandler:(id)handler
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1431655766;
  resolveContainersSyncQueue = self->_resolveContainersSyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__GKDiscoveryBonjour_resolveName_onIndex_withCompletionHandler___block_invoke;
  block[3] = &unk_2796832C0;
  block[4] = self;
  block[5] = name;
  block[6] = handler;
  block[7] = &v10;
  indexCopy = index;
  dispatch_sync(resolveContainersSyncQueue, block);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __64__GKDiscoveryBonjour_resolveName_onIndex_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(GKDiscoveryBonjourResolveContainer);
  [(GKDiscoveryBonjourResolveContainer *)v2 setResolveCompletionHandler:*(a1 + 48)];
  [(GKDiscoveryBonjourResolveContainer *)v2 setContext:*(a1 + 32)];
  [objc_msgSend(*(a1 + 32) "resolveContainers")];
  sdRef = 0;
  v3 = a1 + 56;
  *(*(*(a1 + 56) + 8) + 24) = DNSServiceResolve(&sdRef, 0x20000u, *(a1 + 64), [*(a1 + 40) UTF8String], objc_msgSend(*(*(a1 + 32) + 8), "UTF8String"), objc_msgSend(*(*(a1 + 32) + 16), "UTF8String"), gkDiscoveryResolveCallback, v2);
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        __64__GKDiscoveryBonjour_resolveName_onIndex_withCompletionHandler___block_invoke_cold_1(v4, v3);
      }
    }

    goto LABEL_11;
  }

  *(*(*(a1 + 56) + 8) + 24) = DNSServiceSetDispatchQueue(sdRef, *(*(a1 + 32) + 96));
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
LABEL_11:
    if (sdRef)
    {
      v6 = [(GKDiscoveryBonjourResolveContainer *)v2 serviceRefList];
      -[NSMutableArray addObject:](v6, "addObject:", [MEMORY[0x277CCAE60] valueWithPointer:sdRef]);
    }

    goto LABEL_13;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __64__GKDiscoveryBonjour_resolveName_onIndex_withCompletionHandler___block_invoke_cold_2(v5, v3);
    }
  }

  if (sdRef)
  {
    DNSServiceRefDeallocate(sdRef);
    sdRef = 0;
  }

LABEL_13:
}

- (void)stopResolve:(id)resolve
{
  resolveContainersSyncQueue = self->_resolveContainersSyncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__GKDiscoveryBonjour_stopResolve___block_invoke;
  v4[3] = &unk_279682BF0;
  v4[4] = self;
  v4[5] = resolve;
  dispatch_async(resolveContainersSyncQueue, v4);
}

uint64_t __34__GKDiscoveryBonjour_stopResolve___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resolveContainers];
  v3 = *(a1 + 40);

  return [v2 removeObjectForKey:v3];
}

- (void)createDispatchEventWithSocket:(int)socket
{
  v5 = dispatch_source_create(MEMORY[0x277D85D28], socket, 0, MEMORY[0x277D85CD0]);
  connectionCallback = [(GKDiscoveryBonjour *)self connectionCallback];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __52__GKDiscoveryBonjour_createDispatchEventWithSocket___block_invoke;
  handler[3] = &unk_2796832E8;
  socketCopy = socket;
  handler[4] = connectionCallback;
  dispatch_source_set_event_handler(v5, handler);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__GKDiscoveryBonjour_createDispatchEventWithSocket___block_invoke_2;
  v8[3] = &__block_descriptor_36_e5_v8__0l;
  socketCopy2 = socket;
  dispatch_source_set_cancel_handler(v5, v8);
  dispatch_resume(v5);
  launchdSources = [(GKDiscoveryBonjour *)self launchdSources];
  -[NSMutableArray addObject:](launchdSources, "addObject:", [MEMORY[0x277CCAE60] valueWithPointer:v5]);
}

uint64_t __52__GKDiscoveryBonjour_createDispatchEventWithSocket___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *&v2.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v2.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v12 = v2;
  v13 = v2;
  v10 = v2;
  v11 = v2;
  v8 = v2;
  v9 = v2;
  v6 = v2;
  v7 = v2;
  v5 = -1431655766;
  result = accept(*(a1 + 40), &v6, &v5);
  if (result != -1)
  {
    result = (*(*(a1 + 32) + 16))();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)ipV4Socket
{
  v5 = 1;
  v2 = socket(2, 1, 0);
  if (v2 == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKDiscoveryBonjour ipV4Socket];
      }
    }

    return -1;
  }

  v3 = v2;
  if (setsockopt(v2, 0xFFFF, 4, &v5, 4u) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKDiscoveryBonjour ipV4Socket];
      }
    }

    close(v3);
    return -1;
  }

  return v3;
}

- (int)ipV6Socket
{
  v5 = 1;
  v2 = socket(30, 1, 0);
  if (v2 == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKDiscoveryBonjour ipV6Socket];
      }
    }

    return -1;
  }

  v3 = v2;
  if (setsockopt(v2, 0xFFFF, 4, &v5, 4u) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKDiscoveryBonjour ipV6Socket];
      }
    }

    goto LABEL_13;
  }

  if (setsockopt(v3, 41, 27, &v5, 4u) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKDiscoveryBonjour ipV6Socket];
      }
    }

LABEL_13:
    close(v3);
    return -1;
  }

  return v3;
}

- (void)setupBothListeningSockets
{
  OUTLINED_FUNCTION_19_1();
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_2(&dword_24E50C000, v1, v2, " [%s] %s:%d bind() failed for ipV4 local gaming advertising (%d)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setupListeningSockets
{
  [(GKDiscoveryBonjour *)self closeListeningSockets];

  [(GKDiscoveryBonjour *)self setupBothListeningSockets];
}

- (void)closeListeningSockets
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  launchdSources = self->_launchdSources;
  v4 = [(NSMutableArray *)launchdSources countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(launchdSources);
        }

        pointerValue = [*(*(&v10 + 1) + 8 * i) pointerValue];
        dispatch_source_cancel(pointerValue);
        if (pointerValue)
        {
          dispatch_release(pointerValue);
        }
      }

      v5 = [(NSMutableArray *)launchdSources countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_launchdSources removeAllObjects];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendBonjourRegistrationEvent:(id)event discoveryInfo:(id)info
{
  v37 = *MEMORY[0x277D85DE8];
  txtRecord.ForceNaturalAlignment = 0xAAAAAAAAAAAAAAAALL;
  *(&txtRecord.ForceNaturalAlignment + 1) = 0xAAAAAAAAAAAAAAAALL;
  TXTRecordCreate(&txtRecord, 0, 0);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [info allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v6)
  {
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [info valueForKey:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          uTF8String = [v10 UTF8String];
          uTF8String2 = [v9 UTF8String];
          v13 = strlen(uTF8String);
          v14 = TXTRecordSetValue(&txtRecord, uTF8String2, v13, uTF8String);
          if (v14)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v15 = VRTraceErrorLogLevelToCSTR();
              v16 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = v15;
                *&buf[12] = 2080;
                *&buf[14] = "[GKDiscoveryBonjour sendBonjourRegistrationEvent:discoveryInfo:]";
                *&buf[22] = 1024;
                LODWORD(v33) = 762;
                WORD2(v33) = 1024;
                *(&v33 + 6) = v14;
                _os_log_error_impl(&dword_24E50C000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d txt record set value failed with error [%d]", buf, 0x22u);
              }
            }
          }
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v6);
  }

  p_advertiseRef = &self->_advertiseRef;
  advertiseRef = self->_advertiseRef;
  if (advertiseRef)
  {
    DNSServiceRefDeallocate(advertiseRef);
    *p_advertiseRef = 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  *&v33 = __Block_byref_object_copy__0;
  *(&v33 + 1) = __Block_byref_object_dispose__0;
  selfCopy = self;

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __65__GKDiscoveryBonjour_sendBonjourRegistrationEvent_discoveryInfo___block_invoke;
  v27[3] = &unk_279683310;
  v27[4] = info;
  v27[5] = buf;
  self->_collisionCallback = [v27 copy];
  uTF8String3 = [event UTF8String];
  uTF8String4 = [(NSString *)self->_serviceType UTF8String];
  listeningPort_low = LOWORD(self->_listeningPort);
  txtLen = TXTRecordGetLength(&txtRecord);
  BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
  if (DNSServiceRegister(p_advertiseRef, 0x20008u, 0, uTF8String3, uTF8String4, 0, 0, bswap32(listeningPort_low) >> 16, txtLen, BytesPtr, gkDiscoveryRegisterCallback, self->_collisionCallback))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKDiscoveryBonjour sendBonjourRegistrationEvent:discoveryInfo:];
      }
    }
  }

  else if (DNSServiceSetDispatchQueue(*p_advertiseRef, MEMORY[0x277D85CD0]))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKDiscoveryBonjour sendBonjourRegistrationEvent:discoveryInfo:];
      }
    }
  }

  TXTRecordDeallocate(&txtRecord);
  _Block_object_dispose(buf, 8);
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __65__GKDiscoveryBonjour_sendBonjourRegistrationEvent_discoveryInfo___block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) serviceNameCollisionCallback];
  if (result)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = (*([v3 serviceNameCollisionCallback] + 16))();
    v5 = *(a1 + 32);

    return [v3 sendBonjourRegistrationEvent:v4 discoveryInfo:v5];
  }

  return result;
}

- (void)startAdvertisingServiceName:(id)name discoveryInfo:(id)info
{
  [(GKDiscoveryBonjour *)self setupListeningSockets];

  [(GKDiscoveryBonjour *)self sendBonjourRegistrationEvent:name discoveryInfo:info];
}

- (void)stopAdvertising
{
  advertiseRef = self->_advertiseRef;
  if (advertiseRef)
  {
    DNSServiceRefDeallocate(advertiseRef);

    self->_collisionCallback = 0;
    self->_advertiseRef = 0;

    [(GKDiscoveryBonjour *)self closeListeningSockets];
  }
}

- (void)startBrowsing:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d service browse failed with error [%d]", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)startBrowsing:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d set dispatch queue failed with error [%d]", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

void __64__GKDiscoveryBonjour_resolveName_onIndex_withCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_2(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v2, v3, " [%s] %s:%d DNS service resolve failed with error [%d]", v5, v6, v7, v8);
  v4 = *MEMORY[0x277D85DE8];
}

void __64__GKDiscoveryBonjour_resolveName_onIndex_withCompletionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_2(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v2, v3, " [%s] %s:%d set dispatch queue failed with error [%d]", v5, v6, v7, v8);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)ipV4Socket
{
  OUTLINED_FUNCTION_19_1();
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_2(&dword_24E50C000, v1, v2, " [%s] %s:%d socket() failed for ipV4 local gaming advertising (%d)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)ipV6Socket
{
  OUTLINED_FUNCTION_19_1();
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_2(&dword_24E50C000, v1, v2, " [%s] %s:%d socket() failed for ipV6 local gaming advertising (%d)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendBonjourRegistrationEvent:discoveryInfo:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d service registration failed with error [%d]", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sendBonjourRegistrationEvent:discoveryInfo:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d set dispatch queue failed with error [%d]", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

@end