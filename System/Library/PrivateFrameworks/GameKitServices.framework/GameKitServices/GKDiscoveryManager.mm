@interface GKDiscoveryManager
+ (id)parseDeviceIDFromServiceName:(id)a3;
- (GKDiscoveryManager)initWithDomain:(id)a3 type:(id)a4;
- (id)generateDeviceID;
- (id)peersList;
- (id)serviceNameforDeviceID:(id)a3 playerID:(id)a4;
- (id)startAdvertisingLocalPlayer:(id)a3 discoveryInfo:(id)a4;
- (void)addInterface:(unsigned int)a3 withDiscoveryInfo:(id)a4 forPeerWithServiceName:(id)a5;
- (void)cleanUpPeersForBrowse;
- (void)dealloc;
- (void)didLosePeer:(id)a3;
- (void)forgetParticipant:(id)a3 deviceID:(id)a4;
- (void)passDataToGKLayer:(id)a3 fromPeer:(id)a4;
- (void)processEvent:(int)a3 forPeer:(id)a4 withUserInfo:(id)a5;
- (void)removeInterface:(unsigned int)a3 forPeerWithServiceName:(id)a4;
- (void)resolveForPeer:(id)a3;
- (void)sendDataToParticipant:(id)a3 deviceID:(id)a4 data:(id)a5 withCompletionHandler:(id)a6;
- (void)startBrowsingLocalPlayer:(id)a3;
- (void)stopAdvertising;
- (void)stopBrowsing;
@end

@implementation GKDiscoveryManager

- (GKDiscoveryManager)initWithDomain:(id)a3 type:(id)a4
{
  v8.receiver = self;
  v8.super_class = GKDiscoveryManager;
  v6 = [(GKDiscoveryManager *)&v8 init];
  if (v6)
  {
    v6->_bonjour = [[GKDiscoveryBonjour alloc] initWithDomain:a3 type:a4];
    v6->_peers = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6->_peersQueue = dispatch_queue_create("com.apple.gamed.GKDiscoveryManager.peersQueue", 0);
    v6->_deviceID = [(GKDiscoveryManager *)v6 generateDeviceID];
  }

  return v6;
}

- (void)dealloc
{
  dispatch_release(self->_peersQueue);
  v3.receiver = self;
  v3.super_class = GKDiscoveryManager;
  [(GKDiscoveryManager *)&v3 dealloc];
}

- (id)generateDeviceID
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v4 = CFUUIDCreateString(v2, v3);
  CFRelease(v3);
  memset(md, 170, sizeof(md));
  CC_MD5([(__CFString *)v4 UTF8String], [(__CFString *)v4 length], md);

  v5 = [MEMORY[0x277CCAB68] stringWithCapacity:16];
  for (i = 0; i != 8; ++i)
  {
    [v5 appendFormat:@"%02X", md[i]];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)resolveForPeer:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [a3 nextInterfaceIndex];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v5)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([a3 serviceName])
        {
          v9 = [objc_msgSend(objc_msgSend(a3 "serviceName")];
        }

        else
        {
          v9 = "<nil>";
        }

        *buf = 136316162;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = "[GKDiscoveryManager resolveForPeer:]";
        *&buf[22] = 1024;
        LODWORD(v22) = 163;
        WORD2(v22) = 2080;
        *(&v22 + 6) = v9;
        HIWORD(v22) = 1024;
        LODWORD(v23) = [v5 intValue];
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] attempting to resolve on interface [%d]", buf, 0x2Cu);
      }
    }

    [a3 setChosenInterface:v5];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *&v22 = __Block_byref_object_copy_;
    *(&v22 + 1) = __Block_byref_object_dispose_;
    v23 = a3;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke;
    v20[3] = &unk_2796830B0;
    v20[4] = self;
    v20[5] = buf;
    [a3 startResolveTimerWithHandler:v20];
    bonjour = self->_bonjour;
    v14 = [a3 serviceName];
    v15 = [v5 intValue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke_3;
    v19[3] = &unk_2796830D8;
    v19[4] = a3;
    v19[5] = self;
    v19[6] = v5;
    [(GKDiscoveryBonjour *)bonjour resolveName:v14 onIndex:v15 withCompletionHandler:v19];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([a3 serviceName])
        {
          v12 = [objc_msgSend(objc_msgSend(a3 "serviceName")];
        }

        else
        {
          v12 = "<nil>";
        }

        *buf = 136315906;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "[GKDiscoveryManager resolveForPeer:]";
        *&buf[22] = 1024;
        LODWORD(v22) = 227;
        WORD2(v22) = 2080;
        *(&v22 + 6) = v12;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] no more interfaces available to resolve on", buf, 0x26u);
      }
    }

    peersQueue = self->_peersQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke_26;
    block[3] = &unk_279682BF0;
    block[4] = self;
    block[5] = a3;
    dispatch_async(peersQueue, block);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __37__GKDiscoveryManager_resolveForPeer___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke_2;
  v3[3] = &unk_2796830B0;
  v4 = *(a1 + 32);
  dispatch_async(*(v4 + 64), v3);
  return [*(*(a1 + 32) + 56) stopResolve:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "serviceName")}];
}

void __37__GKDiscoveryManager_resolveForPeer___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v46 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) stopResolveTimer];
  [*(*(a1 + 40) + 56) stopResolve:{objc_msgSend(*(a1 + 32), "serviceName")}];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a5)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        if ([*(a1 + 32) serviceName])
        {
          v28 = [objc_msgSend(objc_msgSend(*(a1 + 32) "serviceName")];
        }

        else
        {
          v28 = "<nil>";
        }

        *buf = 136316162;
        v35 = v11;
        v36 = 2080;
        v37 = "[GKDiscoveryManager resolveForPeer:]_block_invoke_3";
        v38 = 1024;
        v39 = 190;
        v40 = 2080;
        v41 = v28;
        v42 = 1024;
        v43 = a5;
        _os_log_error_impl(&dword_24E50C000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d peer [%s] resolve callback errorCode = %d.", buf, 0x2Cu);
      }
    }

    v13 = *(a1 + 40);
    v14 = *(v13 + 64);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke_13;
    v31[3] = &unk_279682BF0;
    v15 = *(a1 + 32);
    v31[4] = v13;
    v31[5] = v15;
    v16 = v31;
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 32) serviceName])
        {
          v19 = [objc_msgSend(objc_msgSend(*(a1 + 32) "serviceName")];
        }

        else
        {
          v19 = "<nil>";
        }

        v20 = [*(a1 + 48) intValue];
        *buf = 136316418;
        v35 = v17;
        v36 = 2080;
        v37 = "[GKDiscoveryManager resolveForPeer:]_block_invoke_2";
        v38 = 1024;
        v39 = 201;
        v40 = 2080;
        v41 = v19;
        v42 = 1024;
        v43 = v20;
        v44 = 1024;
        v45 = a2;
        _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] resolved successfully on interface [%d] (interface returned [%d])", buf, 0x32u);
      }
    }

    [*(a1 + 32) setChosenInterface:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", a2)}];
    v21 = [MEMORY[0x277CBEA90] dataWithSockAddr:a3];
    if (v21)
    {
      v33[0] = v21;
      v32[0] = @"GKDiscoveryManagerUserInfoSocketAddressKey";
      v32[1] = @"GKDiscoveryManagerUserInfoPortKey";
      v33[1] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a4];
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
      v23 = *(a1 + 40);
      v24 = *(v23 + 64);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke_24;
      v29[3] = &unk_279682C18;
      v25 = *(a1 + 32);
      v29[4] = v23;
      v29[5] = v25;
      v29[6] = v22;
      v16 = v29;
      v14 = v24;
    }

    else
    {
      v26 = *(a1 + 40);
      v14 = *(v26 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke_16;
      block[3] = &unk_279682BF0;
      block[4] = *(a1 + 32);
      block[5] = v26;
      v16 = block;
    }
  }

  dispatch_async(v14, v16);
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __37__GKDiscoveryManager_resolveForPeer___block_invoke_16(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __37__GKDiscoveryManager_resolveForPeer___block_invoke_16_cold_1();
    }
  }

  return [*(a1 + 40) processEvent:1002 forPeer:*(a1 + 32) withUserInfo:0];
}

void __37__GKDiscoveryManager_resolveForPeer___block_invoke_26(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (![*(*(a1 + 32) + 48) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "deviceID")}])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 40) serviceName])
        {
          v6 = [objc_msgSend(objc_msgSend(*(a1 + 40) "serviceName")];
        }

        else
        {
          v6 = "<nil>";
        }

        v11 = 136315906;
        v12 = v4;
        v13 = 2080;
        v14 = "[GKDiscoveryManager resolveForPeer:]_block_invoke";
        v15 = 1024;
        v16 = 232;
        v17 = 2080;
        v18 = v6;
        _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] not in dictionary anymore.", &v11, 0x26u);
      }
    }

    goto LABEL_16;
  }

  if ([objc_msgSend(*(a1 + 40) "interfaces")])
  {
    if ([*(a1 + 40) state] != 3)
    {
      [*(a1 + 32) processEvent:1006 forPeer:*(a1 + 40) withUserInfo:0];
      v2 = *(a1 + 40);
      v3 = *MEMORY[0x277D85DE8];

      [v2 flushDataBuffer];
      return;
    }

LABEL_16:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *MEMORY[0x277D85DE8];

  [v7 didLosePeer:v8];
}

void __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v59 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v12 = [objc_msgSend(a2 "description")];
      }

      else
      {
        v12 = "<nil>";
      }

      *buf = 136315906;
      v48 = v10;
      v49 = 2080;
      v50 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
      v51 = 1024;
      v52 = 255;
      v53 = 2080;
      v54 = v12;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peerConnection connectedHandler (browser side), remote serviceName [%s]", buf, 0x26u);
    }
  }

  v13 = [a4 copy];
  if (a5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        if ([*(a1 + 32) serviceName])
        {
          v26 = [objc_msgSend(objc_msgSend(*(a1 + 32) "serviceName")];
        }

        else
        {
          v26 = "<nil>";
        }

        if ([a5 localizedDescription])
        {
          v27 = [objc_msgSend(objc_msgSend(a5 "localizedDescription")];
        }

        else
        {
          v27 = "<nil>";
        }

        *buf = 136316162;
        v48 = v14;
        v49 = 2080;
        v50 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
        v51 = 1024;
        v52 = 261;
        v53 = 2080;
        v54 = v26;
        v55 = 2080;
        v56 = v27;
        _os_log_error_impl(&dword_24E50C000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d peer [%s] error in connectedHandler [%s]", buf, 0x30u);
      }
    }

    v16 = *(a1 + 40);
    v17 = *(v16 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_28;
    block[3] = &unk_279682BF0;
    block[4] = *(a1 + 32);
    block[5] = v16;
    dispatch_async(v17, block);
LABEL_11:
    if (v13)
    {
      v13[2](v13, 0);
    }

    goto LABEL_13;
  }

  v19 = (a1 + 32);
  if (([+[GKDiscoveryManager parseDeviceIDFromServiceName:](GKDiscoveryManager parseDeviceIDFromServiceName:{a2), "isEqualToString:", objc_msgSend(*(a1 + 32), "deviceID")}] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_cold_1();
      }
    }

    goto LABEL_11;
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_31;
  v44[3] = &unk_279682EE0;
  v45 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  if (a3)
  {
    [*(a1 + 48) setReceiveDataHandler:v44];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*v19 serviceName])
        {
          v22 = [objc_msgSend(objc_msgSend(*v19 "serviceName")];
        }

        else
        {
          v22 = "<nil>";
        }

        v28 = *(a1 + 48);
        if ([*(a1 + 32) stringForState:{objc_msgSend(*(a1 + 32), "state")}])
        {
          v29 = [objc_msgSend(objc_msgSend(*v19 stringForState:{objc_msgSend(*v19, "state")), "description"), "UTF8String"}];
        }

        else
        {
          v29 = "<nil>";
        }

        *buf = 136316418;
        v48 = v20;
        v49 = 2080;
        v50 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
        v51 = 1024;
        v52 = 321;
        v53 = 2080;
        v54 = v22;
        v55 = 2048;
        v56 = v28;
        v57 = 2080;
        v58 = v29;
        _os_log_impl(&dword_24E50C000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectionHandler [%s] (browser side) shouldForceConnect == YES; peer.connection [%p] state [%s]", buf, 0x3Au);
      }
    }

    v33 = *(a1 + 40);
    v32 = *(a1 + 48);
    v34 = *(v33 + 64);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_34;
    v43[3] = &unk_279682C18;
    v35 = *(a1 + 32);
    v43[4] = v33;
    v43[5] = v35;
    v43[6] = v32;
    dispatch_async(v34, v43);
    if (v13)
    {
      v13[2](v13, 1);
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*v19 serviceName])
        {
          v25 = [objc_msgSend(objc_msgSend(*v19 "serviceName")];
        }

        else
        {
          v25 = "<nil>";
        }

        v30 = *(a1 + 48);
        if ([*(a1 + 32) stringForState:{objc_msgSend(*(a1 + 32), "state")}])
        {
          v31 = [objc_msgSend(objc_msgSend(*v19 stringForState:{objc_msgSend(*v19, "state")), "description"), "UTF8String"}];
        }

        else
        {
          v31 = "<nil>";
        }

        *buf = 136316418;
        v48 = v23;
        v49 = 2080;
        v50 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke_2";
        v51 = 1024;
        v52 = 333;
        v53 = 2080;
        v54 = v25;
        v55 = 2048;
        v56 = v30;
        v57 = 2080;
        v58 = v31;
        _os_log_impl(&dword_24E50C000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectionHandler [%s] (browser side) shouldForceConnect == NO; peer.connection [%p] state [%s]", buf, 0x3Au);
      }
    }

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v36 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    v37 = *(a1 + 40);
    v39[2] = __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_38;
    v39[3] = &unk_279683100;
    v39[4] = *(a1 + 32);
    v38 = *(v37 + 64);
    v40 = v36;
    v41 = v44;
    v42 = v13;
    dispatch_async(v38, v39);
  }

LABEL_13:
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_28(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "trialConnection")];
  [*(a1 + 32) setTrialConnection:0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 processEvent:1004 forPeer:v3 withUserInfo:0];
}

void __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_31(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_2;
    block[3] = &unk_279682C18;
    block[4] = *(a1 + 40);
    block[5] = a3;
    block[6] = v4;
    dispatch_async(v5, block);
  }

  else
  {
    if (!a2)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v7 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      v8 = *(a1 + 32);
      v15[2] = __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_32;
      v15[3] = &unk_279682BF0;
      v9 = *(v8 + 64);
      v16 = v7;
      dispatch_async(v9, v15);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 40) serviceName])
        {
          v12 = [objc_msgSend(objc_msgSend(*(a1 + 40) "serviceName")];
        }

        else
        {
          v12 = "<nil>";
        }

        v13 = [a2 length];
        *buf = 136316162;
        v19 = v10;
        v20 = 2080;
        v21 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
        v22 = 1024;
        v23 = 312;
        v24 = 2080;
        v25 = v12;
        v26 = 1024;
        v27 = v13;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] passing data (length=%u) to GK", buf, 0x2Cu);
      }
    }

    [*(a1 + 32) passDataToGKLayer:a2 fromPeer:*(a1 + 40)];
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_2(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_2_cold_1(v2, a1);
    }
  }

  return [*(a1 + 48) processEvent:1006 forPeer:*(a1 + 32) withUserInfo:0];
}

uint64_t __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_32(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 32) serviceName])
      {
        v4 = [objc_msgSend(objc_msgSend(*(a1 + 32) "serviceName")];
      }

      else
      {
        v4 = "<nil>";
      }

      v9 = 136315906;
      v10 = v2;
      v11 = 2080;
      v12 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
      v13 = 1024;
      v14 = 302;
      v15 = 2080;
      v16 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] connection closed. Setting peer.connection to nil", &v9, 0x26u);
    }
  }

  v5 = [objc_msgSend(*(a1 + 32) "interfaces")];
  v6 = *(a1 + 40);
  if (v5)
  {
    result = [v6 processEvent:1006 forPeer:*(a1 + 32) withUserInfo:0];
  }

  else
  {
    result = [v6 didLosePeer:*(a1 + 32)];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_34(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v6 = @"GKDiscoveryManagerUserInfoConnectionKey";
  v7[0] = v3;
  result = [v1 processEvent:1005 forPeer:v2 withUserInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_38(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  if (v2 == 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 32) serviceName])
        {
          v9 = [objc_msgSend(objc_msgSend(*(a1 + 32) "serviceName")];
        }

        else
        {
          v9 = "<nil>";
        }

        v16 = 136315906;
        v17 = v8;
        v18 = 2080;
        v19 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
        v20 = 1024;
        v21 = 350;
        v22 = 2080;
        v23 = v9;
        v10 = " [%s] %s:%d peer [%s] (browser side) decision == NO.";
        goto LABEL_14;
      }
    }
  }

  else
  {
    [*(a1 + 40) setReceiveDataHandler:*(a1 + 56)];
    v26 = @"GKDiscoveryManagerUserInfoConnectionKey";
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v27[0] = *(a1 + 40);
    [v4 processEvent:1005 forPeer:v3 withUserInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v27, &v26, 1)}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 32) serviceName])
        {
          v7 = [objc_msgSend(objc_msgSend(*(a1 + 32) "serviceName")];
        }

        else
        {
          v7 = "<nil>";
        }

        v16 = 136315906;
        v17 = v5;
        v18 = 2080;
        v19 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
        v20 = 1024;
        v21 = 347;
        v22 = 2080;
        v23 = v7;
        v10 = " [%s] %s:%d peer [%s] (browser side) connected successfully.";
LABEL_14:
        _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, v10, &v16, 0x26u);
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 32) serviceName])
      {
        v13 = [objc_msgSend(objc_msgSend(*(a1 + 32) "serviceName")];
      }

      else
      {
        v13 = "<nil>";
      }

      v16 = 136316162;
      v17 = v11;
      v18 = 2080;
      v19 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
      v20 = 1024;
      v21 = 352;
      v22 = 2080;
      v23 = v13;
      v24 = 1024;
      v25 = v2 != 3;
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] (browser side) about to return decision == %d", &v16, 0x2Cu);
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))(result, v2 != 3);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)processEvent:(int)a3 forPeer:(id)a4 withUserInfo:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_peers, "objectForKeyedSubscript:", [a4 deviceID]);
  if (!v9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([a4 serviceName])
        {
          v15 = [objc_msgSend(objc_msgSend(a4 "serviceName")];
        }

        else
        {
          v15 = "<nil>";
        }

        *buf = 136316162;
        v40 = v13;
        v41 = 2080;
        v42 = "[GKDiscoveryManager processEvent:forPeer:withUserInfo:]";
        v43 = 1024;
        v44 = 375;
        v45 = 2080;
        v46 = v15;
        v47 = 1024;
        LODWORD(v48) = a3;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] event [%d] not in dictionary anymore.", buf, 0x2Cu);
      }
    }

    goto LABEL_34;
  }

  if (v9 != a4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([a4 serviceName])
        {
          v12 = [objc_msgSend(objc_msgSend(a4 "serviceName")];
        }

        else
        {
          v12 = "<nil>";
        }

        *buf = 136315906;
        v40 = v10;
        v41 = 2080;
        v42 = "[GKDiscoveryManager processEvent:forPeer:withUserInfo:]";
        v43 = 1024;
        v44 = 381;
        v45 = 2080;
        v46 = v12;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] zombie object - this should never happen!.", buf, 0x26u);
      }
    }

    [objc_msgSend(a4 "sendDataBuffer")];
LABEL_32:
    [objc_msgSend(a4 "connection")];
    [a4 setConnection:0];
    v20 = a4;
    v21 = 0;
LABEL_33:
    [v20 setState:v21];
    goto LABEL_34;
  }

  if (a3 <= 1002)
  {
    if (a3 != 1000)
    {
      if (a3 == 1001)
      {
        v29 = micro();
        [a4 discoveryTimeStamp];
        v31 = v30 - v29 + 3.0;
        if (v31 >= 0.0)
        {
          v32 = v31;
        }

        else
        {
          v32 = 0.0;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v33 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            if ([a4 serviceName])
            {
              v35 = [objc_msgSend(objc_msgSend(a4 "serviceName")];
            }

            else
            {
              v35 = "<nil>";
            }

            *buf = 136316162;
            v40 = v33;
            v41 = 2080;
            v42 = "[GKDiscoveryManager processEvent:forPeer:withUserInfo:]";
            v43 = 1024;
            v44 = 404;
            v45 = 2080;
            v46 = v35;
            v47 = 2048;
            v48 = v32;
            _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] time to wait before resolve [%f]", buf, 0x30u);
          }
        }

        v36 = dispatch_time(0, (v32 * 1000000000.0));
        peersQueue = self->_peersQueue;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __56__GKDiscoveryManager_processEvent_forPeer_withUserInfo___block_invoke;
        v38[3] = &unk_279682BF0;
        v38[4] = a4;
        v38[5] = self;
        dispatch_after(v36, peersQueue, v38);
        v20 = a4;
        v21 = 1;
        goto LABEL_33;
      }

      if (a3 != 1002)
      {
        goto LABEL_34;
      }

      [a4 stopResolveTimer];
      if ([a4 state] == 3)
      {
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    v23 = micro();
    v24 = *MEMORY[0x277D85DE8];

    [a4 setDiscoveryTimeStamp:v23];
  }

  else if (a3 > 1004)
  {
    if (a3 != 1005)
    {
      if (a3 == 1006)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            if ([a4 serviceName])
            {
              v19 = [objc_msgSend(objc_msgSend(a4 "serviceName")];
            }

            else
            {
              v19 = "<nil>";
            }

            *buf = 136316162;
            v40 = v17;
            v41 = 2080;
            v42 = "[GKDiscoveryManager processEvent:forPeer:withUserInfo:]";
            v43 = 1024;
            v44 = 471;
            v45 = 2080;
            v46 = v19;
            v47 = 1024;
            LODWORD(v48) = [objc_msgSend(a4 "connection")];
            _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] PeerDisconnected event! peerConnection retain count [%d]", buf, 0x2Cu);
          }
        }

        goto LABEL_32;
      }

      goto LABEL_34;
    }

    v26 = [a5 objectForKeyedSubscript:@"GKDiscoveryManagerUserInfoConnectionKey"];
    if (v26)
    {
      v27 = v26;
      [a4 setConnection:v26];
      if ([a4 trialConnection] != v27)
      {
        [objc_msgSend(a4 "trialConnection")];
      }

      [a4 setTrialConnection:0];
    }

    [a4 setState:3];
    v28 = *MEMORY[0x277D85DE8];

    [a4 flushDataBuffer];
  }

  else
  {
    if (a3 != 1003)
    {
      if ([a4 state] != 3)
      {
        [a4 setState:1];
LABEL_20:
        v16 = *MEMORY[0x277D85DE8];

        [(GKDiscoveryManager *)self resolveForPeer:a4];
        return;
      }

LABEL_34:
      v22 = *MEMORY[0x277D85DE8];
      return;
    }

    if ([a4 state] != 1)
    {
      goto LABEL_34;
    }

    -[GKDiscoveryManager connectToSockAddr:port:forPeer:](self, "connectToSockAddr:port:forPeer:", [objc_msgSend(a5 objectForKeyedSubscript:{@"GKDiscoveryManagerUserInfoSocketAddressKey", "sockAddr"}], objc_msgSend(objc_msgSend(a5, "objectForKeyedSubscript:", @"GKDiscoveryManagerUserInfoPortKey"), "unsignedIntValue"), a4);
    v25 = *MEMORY[0x277D85DE8];

    [a4 setState:2];
  }
}

void __56__GKDiscoveryManager_processEvent_forPeer_withUserInfo___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 32) serviceName])
      {
        v4 = [objc_msgSend(objc_msgSend(*(a1 + 32) "serviceName")];
      }

      else
      {
        v4 = "<nil>";
      }

      *buf = 136315906;
      v10 = v2;
      v11 = 2080;
      v12 = "[GKDiscoveryManager processEvent:forPeer:withUserInfo:]_block_invoke";
      v13 = 1024;
      v14 = 409;
      v15 = 2080;
      v16 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] ready to start interface selection", buf, 0x26u);
    }
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__GKDiscoveryManager_processEvent_forPeer_withUserInfo___block_invoke_40;
  v8[3] = &unk_279682BF0;
  v8[4] = *(a1 + 32);
  v8[5] = v5;
  dispatch_async(v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __56__GKDiscoveryManager_processEvent_forPeer_withUserInfo___block_invoke_40(uint64_t a1)
{
  [*(a1 + 32) setOrderedInterfaces:{objc_msgSend(MEMORY[0x277CBEB18], "arrayWithArray:", +[GKInterfacePrioritizer prioritizeLocalInterfaces:](GKInterfacePrioritizer, "prioritizeLocalInterfaces:", objc_msgSend(objc_msgSend(*(a1 + 32), "interfaces"), "allObjects")))}];
  [objc_msgSend(*(a1 + 32) "attemptedInterfaces")];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 resolveForPeer:v3];
}

- (void)passDataToGKLayer:(id)a3 fromPeer:(id)a4
{
  peersQueue = self->_peersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__GKDiscoveryManager_passDataToGKLayer_fromPeer___block_invoke;
  block[3] = &unk_279682C18;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_async(peersQueue, block);
}

void __49__GKDiscoveryManager_passDataToGKLayer_fromPeer___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) serviceNameforDeviceID:objc_msgSend(*(a1 + 40) playerID:{"deviceID"), objc_msgSend(*(a1 + 40), "playerID")}];
  if (![*(*(a1 + 32) + 48) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "deviceID")}])
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_16;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    if (v2)
    {
      v11 = [objc_msgSend(v2 "description")];
    }

    else
    {
      v11 = "<nil>";
    }

    v18 = 136315906;
    v19 = v9;
    v20 = 2080;
    v21 = "[GKDiscoveryManager passDataToGKLayer:fromPeer:]_block_invoke";
    v22 = 1024;
    v23 = 489;
    v24 = 2080;
    v25 = v11;
    v14 = " [%s] %s:%d received data from [%s], but peer not in dictionary anymore.";
    v15 = v10;
    v16 = 38;
    goto LABEL_15;
  }

  v3 = *(*(a1 + 32) + 24);
  if (!v3)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_16;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v18 = 136315650;
    v19 = v12;
    v20 = 2080;
    v21 = "[GKDiscoveryManager passDataToGKLayer:fromPeer:]_block_invoke";
    v22 = 1024;
    v23 = 495;
    v14 = " [%s] %s:%d receiveDataHandler is not set, cannot pass data to the GameKit layer.";
    v15 = v13;
    v16 = 28;
LABEL_15:
    _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, v14, &v18, v16);
LABEL_16:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = [*(a1 + 40) playerID];
  v5 = [*(a1 + 40) deviceID];
  v6 = *(a1 + 48);
  v7 = *(v3 + 16);
  v8 = *MEMORY[0x277D85DE8];

  v7(v3, v4, v5, v6);
}

- (id)startAdvertisingLocalPlayer:(id)a3 discoveryInfo:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  [(GKDiscoveryManager *)self setPlayerID:?];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v8 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v11 = [objc_msgSend(a3 "description")];
      }

      else
      {
        v11 = "<nil>";
      }

      if ([(GKDiscoveryManager *)self localServiceName])
      {
        v12 = [objc_msgSend(-[GKDiscoveryManager localServiceName](self "localServiceName")];
        if (a4)
        {
LABEL_8:
          v13 = [objc_msgSend(a4 "description")];
LABEL_11:
          *buf = 136316418;
          v24 = v9;
          v25 = 2080;
          v26 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]";
          v27 = 1024;
          v28 = 505;
          v29 = 2080;
          v30 = v11;
          v31 = 2080;
          v32 = v12;
          v33 = 2080;
          v34 = v13;
          _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am [%s] [%s] discoveryInfo [%s]", buf, 0x3Au);
          goto LABEL_12;
        }
      }

      else
      {
        v12 = "<nil>";
        if (a4)
        {
          goto LABEL_8;
        }
      }

      v13 = "<nil>";
      goto LABEL_11;
    }
  }

LABEL_12:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryManager *)self peersList])
      {
        v16 = [objc_msgSend(-[GKDiscoveryManager peersList](self "peersList")];
      }

      else
      {
        v16 = "<nil>";
      }

      *buf = 136315906;
      v24 = v14;
      v25 = 2080;
      v26 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]";
      v27 = 1024;
      v28 = 506;
      v29 = 2080;
      v30 = v16;
      _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d startAdvertising peers=[%s]", buf, 0x26u);
    }
  }

  bonjour = self->_bonjour;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke;
  v22[3] = &unk_2796831A0;
  v22[4] = self;
  [(GKDiscoveryBonjour *)bonjour setConnectionCallback:v22];
  v18 = self->_bonjour;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_49;
  v21[3] = &unk_2796831C8;
  v21[4] = self;
  [(GKDiscoveryBonjour *)v18 setServiceNameCollisionCallback:v21];
  [(GKDiscoveryBonjour *)self->_bonjour startAdvertisingServiceName:[(GKDiscoveryManager *)self localServiceName] discoveryInfo:a4];
  v19 = *MEMORY[0x277D85DE8];
  return 0;
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  *&v23[13] = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v5 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule > 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 32) localServiceName])
      {
        v8 = [objc_msgSend(objc_msgSend(*(a1 + 32) "localServiceName")];
      }

      else
      {
        v8 = "<nil>";
      }

      *buf = 136316162;
      v17 = v6;
      v18 = 2080;
      v19 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
      v20 = 1024;
      v21 = 510;
      v22 = 1024;
      *v23 = a2;
      v23[2] = 2080;
      *&v23[3] = v8;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d advertising connection callback, socket [%d] localServiceName [%s]", buf, 0x2Cu);
    }
  }

  v9 = -[GKDiscoveryPeerConnection initWithLocalServiceName:]([GKDiscoveryPeerConnection alloc], "initWithLocalServiceName:", [*(a1 + 32) localServiceName]);
  LocalIFIndexForBoundSocket = GetLocalIFIndexForBoundSocket();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_43;
  v14[3] = &unk_279683178;
  v14[4] = *(a1 + 32);
  v14[5] = v9;
  v15 = LocalIFIndexForBoundSocket;
  [(GKDiscoveryPeerConnection *)v9 setConnectedHandler:v14];
  [(GKDiscoveryPeerConnection *)v9 attachSocketDescriptor:a2];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = v11;
      v18 = 2080;
      v19 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
      v20 = 1024;
      v21 = 627;
      v22 = 2048;
      *v23 = v9;
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peerConnection (advertiser side) created (%p)", buf, 0x26u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_43(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v11 = [objc_msgSend(a2 "description")];
      }

      else
      {
        v11 = "<nil>";
      }

      *buf = 136315906;
      v20 = v9;
      v21 = 2080;
      v22 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
      v23 = 1024;
      v24 = 518;
      v25 = 2080;
      v26 = v11;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peerConnection connectedHandler (advertiser side), remote ServiceName [%s]", buf, 0x26u);
    }
  }

  v12 = [a4 copy];
  if (!a5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_44;
    block[3] = &unk_279683150;
    block[4] = a2;
    v16 = *(a1 + 32);
    v13 = *(v16 + 64);
    v18 = *(a1 + 48);
    v17 = v12;
    dispatch_async(v13, block);
    goto LABEL_13;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_43_cold_1();
      if (!v12)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  if (v12)
  {
LABEL_11:
    v12[2](v12, 0);
  }

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_44(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [GKDiscoveryManager parseDeviceIDFromServiceName:*(a1 + 32)];
  v4 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = v4;
    v6 = [(GKDiscoveryPeer *)v4 state];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (*v2)
        {
          v9 = [objc_msgSend(*v2 "description")];
        }

        else
        {
          v9 = "<nil>";
        }

        *buf = 136316418;
        v40 = v7;
        v41 = 2080;
        v42 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
        v43 = 1024;
        v44 = 553;
        v45 = 2080;
        v46 = v9;
        v47 = 1024;
        v48 = [(GKDiscoveryPeer *)v5 state];
        v49 = 1024;
        v50 = v6 != 3;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] (advertiser side) peer already in dictionary [state = %d], decision = %d.", buf, 0x32u);
      }
    }

    if (v6 != 3)
    {
      [*(a1 + 40) processEvent:1006 forPeer:v5 withUserInfo:0];
LABEL_18:
      v14 = 1;
      goto LABEL_24;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (*v2)
        {
          v12 = [objc_msgSend(*v2 "description")];
        }

        else
        {
          v12 = "<nil>";
        }

        *buf = 136315906;
        v40 = v10;
        v41 = 2080;
        v42 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
        v43 = 1024;
        v44 = 540;
        v45 = 2080;
        v46 = v12;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] (advertiser side) peer not in dictionary, creating one, decision = YES.", buf, 0x26u);
      }
    }

    v13 = [[GKDiscoveryPeer alloc] initWithServiceName:*v2];
    if (v13)
    {
      v5 = v13;
      [*(*(a1 + 40) + 48) setObject:v13 forKeyedSubscript:v3];
      goto LABEL_18;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_44_cold_1(v15, (a1 + 32));
      }
    }

    v5 = 0;
  }

  v14 = 0;
LABEL_24:
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_46;
  v34 = &unk_279682EE0;
  v35 = *(a1 + 40);
  v36 = v5;
  if (v14)
  {
    [*(a1 + 48) setReceiveDataHandler:&v31];
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v37 = @"GKDiscoveryManagerUserInfoConnectionKey";
    v38 = v16;
    [v17 processEvent:1005 forPeer:v5 withUserInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v38, &v37, 1, v31, v32, v33, v34, v35, v36)}];
    if (*(a1 + 64))
    {
      v18 = [(GKDiscoveryPeer *)v5 interfaces];
      -[NSMutableSet addObject:](v18, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 64)]);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([(GKDiscoveryPeer *)v5 serviceName])
        {
          v21 = [[(NSString *)[(GKDiscoveryPeer *)v5 serviceName] description] UTF8String];
        }

        else
        {
          v21 = "<nil>";
        }

        v25 = *(a1 + 64);
        *buf = 136316162;
        v40 = v19;
        v41 = 2080;
        v42 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
        v43 = 1024;
        v44 = 615;
        v45 = 2080;
        v46 = v21;
        v47 = 1024;
        v48 = v25;
        v26 = " [%s] %s:%d peer [%s] connected (advertiser side, interface index [%d]) successfully.";
        v27 = v20;
        v28 = 44;
LABEL_39:
        _os_log_impl(&dword_24E50C000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryPeer *)v5 serviceName:v31])
      {
        v24 = [[(NSString *)[(GKDiscoveryPeer *)v5 serviceName] description] UTF8String];
      }

      else
      {
        v24 = "<nil>";
      }

      *buf = 136315906;
      v40 = v22;
      v41 = 2080;
      v42 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
      v43 = 1024;
      v44 = 617;
      v45 = 2080;
      v46 = v24;
      v26 = " [%s] %s:%d peer [%s] (advertiser side) decision == NO.";
      v27 = v23;
      v28 = 38;
      goto LABEL_39;
    }
  }

  v29 = *(a1 + 56);
  if (v29)
  {
    (*(v29 + 16))(v29, v14);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_46(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_2;
    block[3] = &unk_279682C18;
    v14 = *(a1 + 32);
    v4 = *(v14 + 64);
    v15 = a3;
    dispatch_async(v4, block);
  }

  else
  {
    if (!a2)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_47;
      v11[3] = &unk_279682BF0;
      v12 = *(a1 + 32);
      dispatch_async(*(v12 + 64), v11);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 40) serviceName])
        {
          v8 = [objc_msgSend(objc_msgSend(*(a1 + 40) "serviceName")];
        }

        else
        {
          v8 = "<nil>";
        }

        v9 = [a2 length];
        *buf = 136316162;
        v17 = v6;
        v18 = 2080;
        v19 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
        v20 = 1024;
        v21 = 589;
        v22 = 2080;
        v23 = v8;
        v24 = 1024;
        v25 = v9;
        _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] passing received data (length=%u) to GK", buf, 0x2Cu);
      }
    }

    [*(a1 + 32) passDataToGKLayer:a2 fromPeer:*(a1 + 40)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_2(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_2_cold_1();
    }
  }

  return [*(a1 + 32) processEvent:1006 forPeer:*(a1 + 40) withUserInfo:0];
}

uint64_t __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_47(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_47_cold_1();
    }
  }

  return [*(a1 + 32) processEvent:1006 forPeer:*(a1 + 40) withUserInfo:0];
}

uint64_t __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_49(uint64_t a1)
{
  [*(a1 + 32) setDeviceID:{objc_msgSend(*(a1 + 32), "generateDeviceID")}];
  v2 = *(a1 + 32);

  return [v2 localServiceName];
}

- (id)serviceNameforDeviceID:(id)a3 playerID:(id)a4
{
  if (a3 && a4)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@+%@", a3, a4];
  }

  if (a3)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a3, v5];
  }

  return 0;
}

+ (id)parseDeviceIDFromServiceName:(id)a3
{
  v4 = 0;
  [objc_msgSend(MEMORY[0x277CCAC80] scannerWithString:{a3), "scanUpToString:intoString:", @"+", &v4}];
  return v4;
}

- (void)stopAdvertising
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryManager *)self peersList])
      {
        v5 = [objc_msgSend(-[GKDiscoveryManager peersList](self "peersList")];
      }

      else
      {
        v5 = "<nil>";
      }

      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[GKDiscoveryManager stopAdvertising]";
      v11 = 1024;
      v12 = 664;
      v13 = 2080;
      v14 = v5;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stop advertising - peers=[\n%s]", &v7, 0x26u);
    }
  }

  [(GKDiscoveryBonjour *)self->_bonjour stopAdvertising];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpPeersForBrowse
{
  peersQueue = self->_peersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__GKDiscoveryManager_cleanUpPeersForBrowse__block_invoke;
  block[3] = &unk_279682BA8;
  block[4] = self;
  dispatch_async(peersQueue, block);
}

uint64_t __43__GKDiscoveryManager_cleanUpPeersForBrowse__block_invoke(uint64_t a1)
{
  v1 = a1;
  v36 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(*(a1 + 32) + 48);
  result = [v2 countByEnumeratingWithState:&v21 objects:v35 count:16];
  if (result)
  {
    v5 = result;
    v6 = "";
    v7 = MEMORY[0x277CE5818];
    v8 = *v22;
    *&v4 = 136316162;
    v19 = v4;
    v20 = v1;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = [*(*(v1 + 32) + 48) objectForKeyedSubscript:{*(*(&v21 + 1) + 8 * v9), v19}];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v6;
            v14 = v2;
            v15 = v7;
            if ([v10 playerID])
            {
              v16 = [objc_msgSend(objc_msgSend(v10 "playerID")];
            }

            else
            {
              v16 = "<nil>";
            }

            if ([v10 deviceID])
            {
              v17 = [objc_msgSend(objc_msgSend(v10 "deviceID")];
            }

            else
            {
              v17 = "<nil>";
            }

            *buf = v19;
            v26 = v11;
            v27 = 2080;
            v28 = "[GKDiscoveryManager cleanUpPeersForBrowse]_block_invoke";
            v29 = 1024;
            v30 = 672;
            v31 = 2080;
            v32 = v16;
            v33 = 2080;
            v34 = v17;
            _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d invalidating peer: %s device: %s", buf, 0x30u);
            v7 = v15;
            v2 = v14;
            v6 = v13;
            v1 = v20;
          }
        }

        [v10 cleanUpForBrowse];
        [v10 setShouldSignalDiscovery:1];
        ++v9;
      }

      while (v5 != v9);
      result = [v2 countByEnumeratingWithState:&v21 objects:v35 count:16];
      v5 = result;
    }

    while (result);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startBrowsingLocalPlayer:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryManager *)self peersList])
      {
        v7 = [objc_msgSend(-[GKDiscoveryManager peersList](self "peersList")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[GKDiscoveryManager startBrowsingLocalPlayer:]";
      v15 = 1024;
      v16 = 680;
      v17 = 2080;
      v18 = v7;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d start browsing - peers=[\n%s]", buf, 0x26u);
    }
  }

  [(GKDiscoveryManager *)self cleanUpPeersForBrowse];
  [(GKDiscoveryManager *)self setPlayerID:a3];
  bonjour = self->_bonjour;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__GKDiscoveryManager_startBrowsingLocalPlayer___block_invoke;
  v10[3] = &unk_279683240;
  v10[4] = self;
  [(GKDiscoveryBonjour *)bonjour startBrowsing:v10];
  v9 = *MEMORY[0x277D85DE8];
}

void __47__GKDiscoveryManager_startBrowsingLocalPlayer___block_invoke(uint64_t a1, int a2, uint64_t a3, int a4, void *a5, int a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = [GKDiscoveryManager parseDeviceIDFromServiceName:?];
  if (a6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        __47__GKDiscoveryManager_startBrowsingLocalPlayer___block_invoke_cold_1(v13);
      }
    }
  }

  else if ([objc_msgSend(*(a1 + 32) "deviceID")])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v28 = v14;
        v29 = 2080;
        v30 = "[GKDiscoveryManager startBrowsingLocalPlayer:]_block_invoke";
        v31 = 1024;
        v32 = 695;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ignoring self for now.", buf, 0x1Cu);
      }
    }
  }

  else if (a3)
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 64);
    if (a2)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __47__GKDiscoveryManager_startBrowsingLocalPlayer___block_invoke_62;
      v25[3] = &unk_2796831F0;
      v26 = a4;
      v25[4] = v16;
      v25[5] = a5;
      v25[6] = a3;
      v18 = v25;
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__GKDiscoveryManager_startBrowsingLocalPlayer___block_invoke_2;
      block[3] = &unk_279683218;
      v24 = a4;
      block[4] = v16;
      block[5] = a3;
      v18 = block;
    }

    dispatch_async(v17, v18);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      if (a5)
      {
        v21 = [objc_msgSend(a5 "description")];
      }

      else
      {
        v21 = "<nil>";
      }

      *buf = 136316162;
      v28 = v19;
      v29 = 2080;
      v30 = "[GKDiscoveryManager startBrowsingLocalPlayer:]_block_invoke";
      v31 = 1024;
      v32 = 698;
      v33 = 1024;
      v34 = a4;
      v35 = 2080;
      v36 = v21;
      _os_log_error_impl(&dword_24E50C000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d serviceName is nil - ignoring peer - interface [%d] discoveryInfo [%s]", buf, 0x2Cu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)stopBrowsing
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryManager *)self peersList])
      {
        v5 = [objc_msgSend(-[GKDiscoveryManager peersList](self "peersList")];
      }

      else
      {
        v5 = "<nil>";
      }

      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[GKDiscoveryManager stopBrowsing]";
      v11 = 1024;
      v12 = 718;
      v13 = 2080;
      v14 = v5;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stop browsing - peers=[\n%s]", &v7, 0x26u);
    }
  }

  [(GKDiscoveryBonjour *)self->_bonjour stopBrowsing];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendDataToParticipant:(id)a3 deviceID:(id)a4 data:(id)a5 withCompletionHandler:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v13 = [objc_msgSend(a3 "description")];
        if (a4)
        {
LABEL_5:
          v14 = [objc_msgSend(a4 "description")];
LABEL_8:
          *buf = 136316418;
          v20 = v11;
          v21 = 2080;
          v22 = "[GKDiscoveryManager sendDataToParticipant:deviceID:data:withCompletionHandler:]";
          v23 = 1024;
          v24 = 723;
          v25 = 2080;
          v26 = v13;
          v27 = 2080;
          v28 = v14;
          v29 = 2048;
          v30 = [a5 length];
          _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d to playerID [%s] deviceID [%s] dataSize [%lu]", buf, 0x3Au);
          goto LABEL_9;
        }
      }

      else
      {
        v13 = "<nil>";
        if (a4)
        {
          goto LABEL_5;
        }
      }

      v14 = "<nil>";
      goto LABEL_8;
    }
  }

LABEL_9:
  v15 = [a6 copy];
  peersQueue = self->_peersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__GKDiscoveryManager_sendDataToParticipant_deviceID_data_withCompletionHandler___block_invoke;
  block[3] = &unk_279683268;
  block[4] = self;
  block[5] = a4;
  block[7] = a5;
  block[8] = v15;
  block[6] = a3;
  dispatch_async(peersQueue, block);
  v17 = *MEMORY[0x277D85DE8];
}

void __80__GKDiscoveryManager_sendDataToParticipant_deviceID_data_withCompletionHandler___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    if (![v2 state])
    {
      [*(a1 + 32) processEvent:1001 forPeer:v3 withUserInfo:0];
    }

    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *MEMORY[0x277D85DE8];

    [v3 sendData:v4 withCompletionHandler:v5];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        __80__GKDiscoveryManager_sendDataToParticipant_deviceID_data_withCompletionHandler___block_invoke_cold_1(v7, a1);
      }
    }

    if (*(a1 + 64))
    {
      v9 = *MEMORY[0x277CCA450];
      v10[0] = @"Peer does not exist";
      [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryManager" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}];
      (*(*(a1 + 64) + 16))();
    }

    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)forgetParticipant:(id)a3 deviceID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = [(GKDiscoveryManager *)self serviceNameforDeviceID:a4 playerID:a3];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v10 = [objc_msgSend(v7 "description")];
      }

      else
      {
        v10 = "<nil>";
      }

      *buf = 136315906;
      v15 = v8;
      v16 = 2080;
      v17 = "[GKDiscoveryManager forgetParticipant:deviceID:]";
      v18 = 1024;
      v19 = 754;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d forget peer [%s]", buf, 0x26u);
    }
  }

  peersQueue = self->_peersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__GKDiscoveryManager_forgetParticipant_deviceID___block_invoke;
  block[3] = &unk_279682C18;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_async(peersQueue, block);
  v12 = *MEMORY[0x277D85DE8];
}

void __49__GKDiscoveryManager_forgetParticipant_deviceID___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 invalidate];
    [*(a1 + 32) processEvent:1006 forPeer:v3 withUserInfo:0];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 48);
    v6 = *MEMORY[0x277D85DE8];

    [v5 removeObjectForKey:v4];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 48);
        if (v9)
        {
          v10 = [objc_msgSend(v9 "description")];
        }

        else
        {
          v10 = "<nil>";
        }

        v11 = *(a1 + 40);
        if (v11)
        {
          v12 = [objc_msgSend(v11 "description")];
        }

        else
        {
          v12 = "<nil>";
        }

        v14 = 136316162;
        v15 = v7;
        v16 = 2080;
        v17 = "[GKDiscoveryManager forgetParticipant:deviceID:]_block_invoke";
        v18 = 1024;
        v19 = 759;
        v20 = 2080;
        v21 = v10;
        v22 = 2080;
        v23 = v12;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d can't remove peer with %s with device id %s, no such peer exists", &v14, 0x30u);
      }
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)addInterface:(unsigned int)a3 withDiscoveryInfo:(id)a4 forPeerWithServiceName:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryManager *)self peersList])
      {
        v12 = [objc_msgSend(-[GKDiscoveryManager peersList](self "peersList")];
        if (a5)
        {
LABEL_5:
          v13 = [objc_msgSend(a5 "description")];
LABEL_8:
          v47 = 136316418;
          v48 = v10;
          v49 = 2080;
          v50 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
          v51 = 1024;
          v52 = 774;
          v53 = 2080;
          *v54 = v12;
          *&v54[8] = 1024;
          *&v54[10] = a3;
          *&v54[14] = 2080;
          *&v54[16] = v13;
          _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peers=[\n%s] add interface [%d] for serviceName [%s]", &v47, 0x36u);
          goto LABEL_9;
        }
      }

      else
      {
        v12 = "<nil>";
        if (a5)
        {
          goto LABEL_5;
        }
      }

      v13 = "<nil>";
      goto LABEL_8;
    }
  }

LABEL_9:
  v14 = [GKDiscoveryManager parseDeviceIDFromServiceName:a5];
  v15 = [(NSMutableDictionary *)self->_peers objectForKeyedSubscript:v14];
  if (v15)
  {
    v16 = v15;
    if ([objc_msgSend(v15 "interfaces")])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v9 intValue];
          if (a5)
          {
            v20 = [objc_msgSend(a5 "description")];
          }

          else
          {
            v20 = "<nil>";
          }

          v47 = 136316162;
          v48 = v17;
          v49 = 2080;
          v50 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
          v51 = 1024;
          v52 = 812;
          v53 = 1024;
          *v54 = v19;
          *&v54[4] = 2080;
          *&v54[6] = v20;
          v35 = " [%s] %s:%d asked to add already existing interface (%d) for service name %s";
          v36 = v18;
          v37 = 44;
          goto LABEL_46;
        }
      }
    }

    else
    {
      [objc_msgSend(v16 "interfaces")];
      if ([objc_msgSend(v16 "orderedInterfaces")] || objc_msgSend(objc_msgSend(v16, "attemptedInterfaces"), "count"))
      {
        [objc_msgSend(v16 "orderedInterfaces")];
        [v16 setOrderedInterfaces:{objc_msgSend(MEMORY[0x277CBEB18], "arrayWithArray:", +[GKInterfacePrioritizer prioritizeLocalInterfaces:](GKInterfacePrioritizer, "prioritizeLocalInterfaces:", objc_msgSend(v16, "orderedInterfaces")))}];
      }

      if ([v16 shouldSignalDiscovery] && self->_playerFoundHandler)
      {
        if (![v16 state])
        {
          [(GKDiscoveryManager *)self processEvent:1000 forPeer:v16 withUserInfo:0];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            if (a5)
            {
              v32 = [objc_msgSend(a5 "description")];
            }

            else
            {
              v32 = "<nil>";
            }

            v47 = 136315906;
            v48 = v30;
            v49 = 2080;
            v50 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
            v51 = 1024;
            v52 = 832;
            v53 = 2080;
            *v54 = v32;
            _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d signaling discovery of an existing peer [%s] to GK", &v47, 0x26u);
          }
        }

        (*(self->_playerFoundHandler + 2))(self->_playerFoundHandler, [v16 playerID], objc_msgSend(v16, "deviceID"), a4);
        [v16 setShouldSignalDiscovery:0];
      }
    }
  }

  else
  {
    v21 = [(GKDiscoveryManager *)self localServiceName];
    if (v21)
    {
      v22 = v21;
      v23 = [[GKDiscoveryPeer alloc] initWithServiceName:a5];
      if (v23)
      {
        v24 = v23;
        [(NSMutableSet *)[(GKDiscoveryPeer *)v23 interfaces] addObject:v9];
        [(NSMutableDictionary *)self->_peers setObject:v24 forKeyedSubscript:v14];
        v25 = [(GKDiscoveryPeer *)v24 playerID];
        v26 = [(GKDiscoveryPeer *)v24 deviceID];
        if (self->_playerFoundHandler)
        {
          [(GKDiscoveryManager *)self processEvent:1000 forPeer:v24 withUserInfo:0];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              if (a5)
              {
                v29 = [objc_msgSend(a5 "description")];
              }

              else
              {
                v29 = "<nil>";
              }

              v47 = 136315906;
              v48 = v27;
              v49 = 2080;
              v50 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
              v51 = 1024;
              v52 = 802;
              v53 = 2080;
              *v54 = v29;
              _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d signaling discovery of a new peer [%s] to GK", &v47, 0x26u);
            }
          }

          (*(self->_playerFoundHandler + 2))();
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v41 = VRTraceErrorLogLevelToCSTR();
          v42 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            if (v25)
            {
              v43 = [[(NSString *)v25 description] UTF8String];
            }

            else
            {
              v43 = "<nil>";
            }

            if (v26)
            {
              v46 = [[(NSString *)v26 description] UTF8String];
            }

            else
            {
              v46 = "<nil>";
            }

            v47 = 136316162;
            v48 = v41;
            v49 = 2080;
            v50 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
            v51 = 1024;
            v52 = 805;
            v53 = 2080;
            *v54 = v43;
            *&v54[8] = 2080;
            *&v54[10] = v46;
            _os_log_error_impl(&dword_24E50C000, v42, OS_LOG_TYPE_ERROR, " [%s] %s:%d playerFoundHandler is not set, found %s with device id %s, but cannot inform the GameKit layer.", &v47, 0x30u);
          }
        }

        [(GKDiscoveryPeer *)v24 setShouldSignalDiscovery:0];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          if (a5)
          {
            v40 = [objc_msgSend(a5 "description")];
          }

          else
          {
            v40 = "<nil>";
          }

          v45 = [objc_msgSend(v22 "description")];
          v47 = 136316162;
          v48 = v38;
          v49 = 2080;
          v50 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
          v51 = 1024;
          v52 = 790;
          v53 = 2080;
          *v54 = v40;
          *&v54[8] = 2080;
          *&v54[10] = v45;
          _os_log_error_impl(&dword_24E50C000, v39, OS_LOG_TYPE_ERROR, " [%s] %s:%d peer initialization for serviceName: %s and localServiceName: %s failed", &v47, 0x30u);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v47 = 136315650;
        v48 = v33;
        v49 = 2080;
        v50 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
        v51 = 1024;
        v52 = 785;
        v35 = " [%s] %s:%d localServiceName is nil; ignoring browseCallback";
        v36 = v34;
        v37 = 28;
LABEL_46:
        _os_log_impl(&dword_24E50C000, v36, OS_LOG_TYPE_DEFAULT, v35, &v47, v37);
      }
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (id)peersList
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  peers = self->_peers;
  v5 = [(NSMutableDictionary *)peers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(peers);
        }

        [v3 appendFormat:@"%@ - %@\n", *(*(&v11 + 1) + 8 * i), objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_peers, "objectForKeyedSubscript:", *(*(&v11 + 1) + 8 * i)), "description")];
      }

      v6 = [(NSMutableDictionary *)peers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)didLosePeer:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([a3 serviceName])
      {
        v7 = [objc_msgSend(objc_msgSend(a3 "serviceName")];
      }

      else
      {
        v7 = "<nil>";
      }

      v15 = 136315906;
      v16 = v5;
      v17 = 2080;
      v18 = "[GKDiscoveryManager didLosePeer:]";
      v19 = 1024;
      v20 = 850;
      v21 = 2080;
      v22 = v7;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] peer lost!", &v15, 0x26u);
    }
  }

  [(GKDiscoveryManager *)self processEvent:1006 forPeer:a3 withUserInfo:0];
  [a3 flushDataBuffer];
  playerLostHandler = self->_playerLostHandler;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (playerLostHandler)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([a3 serviceName])
        {
          v12 = [objc_msgSend(objc_msgSend(a3 "serviceName")];
        }

        else
        {
          v12 = "<nil>";
        }

        v15 = 136315906;
        v16 = v10;
        v17 = 2080;
        v18 = "[GKDiscoveryManager didLosePeer:]";
        v19 = 1024;
        v20 = 861;
        v21 = 2080;
        v22 = v12;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] about to notify GK that the peer was lost", &v15, 0x26u);
      }
    }

    (*(self->_playerLostHandler + 2))(self->_playerLostHandler, [a3 playerID], objc_msgSend(a3, "deviceID"));
    [a3 invalidate];
    -[NSMutableDictionary removeObjectForKey:](self->_peers, "removeObjectForKey:", [a3 deviceID]);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [(GKDiscoveryManager *)v13 didLosePeer:a3];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeInterface:(unsigned int)a3 forPeerWithServiceName:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v8 = [(NSMutableDictionary *)self->_peers objectForKeyedSubscript:[GKDiscoveryManager parseDeviceIDFromServiceName:a4]];
  if (!v8)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_34;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v15 = [v7 intValue];
    if (a4)
    {
      v16 = [objc_msgSend(a4 "description")];
    }

    else
    {
      v16 = "<nil>";
    }

    v25 = 136316162;
    v26 = v13;
    v27 = 2080;
    v28 = "[GKDiscoveryManager removeInterface:forPeerWithServiceName:]";
    v29 = 1024;
    v30 = 874;
    v31 = 1024;
    *v32 = v15;
    *&v32[4] = 2080;
    *&v32[6] = v16;
    v20 = " [%s] %s:%d cannot remove interface (%d) because service name %s does not exist";
LABEL_22:
    _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, v20, &v25, 0x2Cu);
    goto LABEL_34;
  }

  v9 = v8;
  if (([objc_msgSend(v8 "interfaces")] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_34;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v18 = [v7 intValue];
    if (a4)
    {
      v19 = [objc_msgSend(a4 "description")];
    }

    else
    {
      v19 = "<nil>";
    }

    v25 = 136316162;
    v26 = v17;
    v27 = 2080;
    v28 = "[GKDiscoveryManager removeInterface:forPeerWithServiceName:]";
    v29 = 1024;
    v30 = 879;
    v31 = 1024;
    *v32 = v18;
    *&v32[4] = 2080;
    *&v32[6] = v19;
    v20 = " [%s] %s:%d cannot remove interface (%d) for service name %s because it is not in the interfaces set";
    goto LABEL_22;
  }

  [v9 didLoseInterface:v7];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v12 = [objc_msgSend(a4 "description")];
      }

      else
      {
        v12 = "<nil>";
      }

      if ([v9 stringForState:{objc_msgSend(v9, "state")}])
      {
        v21 = [objc_msgSend(objc_msgSend(v9 stringForState:{objc_msgSend(v9, "state")), "description"), "UTF8String"}];
      }

      else
      {
        v21 = "<nil>";
      }

      v22 = [v9 connection];
      if ([objc_msgSend(v9 "interfaces")])
      {
        v23 = [objc_msgSend(objc_msgSend(objc_msgSend(v9 "interfaces")];
      }

      else
      {
        v23 = "<nil>";
      }

      v25 = 136316930;
      v26 = v10;
      v27 = 2080;
      v28 = "[GKDiscoveryManager removeInterface:forPeerWithServiceName:]";
      v29 = 1024;
      v30 = 886;
      v31 = 2080;
      *v32 = v12;
      *&v32[8] = 2080;
      *&v32[10] = v21;
      v33 = 1024;
      v34 = a3;
      v35 = 2048;
      v36 = v22;
      v37 = 2080;
      v38 = v23;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] state [%s] removed interface [%d] peerConnection [%p] remaining interfaces [%s]", &v25, 0x4Au);
    }
  }

  if ([objc_msgSend(v9 "chosenInterface")] && objc_msgSend(v9, "state") == 3)
  {
    [(GKDiscoveryManager *)self processEvent:1006 forPeer:v9 withUserInfo:0];
  }

  if (![objc_msgSend(v9 "interfaces")] && !objc_msgSend(v9, "state"))
  {
    [(GKDiscoveryManager *)self didLosePeer:v9];
  }

LABEL_34:
  v24 = *MEMORY[0x277D85DE8];
}

void __37__GKDiscoveryManager_resolveForPeer___block_invoke_16_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  v8 = *MEMORY[0x277D85DE8];
  if ([*(v1 + 32) serviceName])
  {
    [objc_msgSend(objc_msgSend(*(v0 + 32) "serviceName")];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  v8 = *MEMORY[0x277D85DE8];
  if ([*v1 serviceName])
  {
    [objc_msgSend(objc_msgSend(*v0 "serviceName")];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([*(a2 + 32) serviceName])
  {
    [objc_msgSend(objc_msgSend(*(a2 + 32) "serviceName")];
  }

  if ([*(a2 + 40) localizedDescription])
  {
    [objc_msgSend(objc_msgSend(*(a2 + 40) "localizedDescription")];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);
  v8 = *MEMORY[0x277D85DE8];
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_43_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  v8 = *MEMORY[0x277D85DE8];
  if ([v1 localizedDescription])
  {
    [objc_msgSend(objc_msgSend(v0 "localizedDescription")];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_44_cold_1(uint64_t a1, id *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    [objc_msgSend(*a2 "description")];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
  v8 = *MEMORY[0x277D85DE8];
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 32);
  [*(v1 + 40) deviceID];
  v3 = OUTLINED_FUNCTION_7_2();
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    v4 = *(v0 + 32);
    [*(v0 + 40) deviceID];
    v5 = OUTLINED_FUNCTION_7_2();
    [objc_msgSend(OUTLINED_FUNCTION_6_3(v5) "description")];
  }

  if ([*(v0 + 48) localizedDescription])
  {
    [objc_msgSend(objc_msgSend(*(v0 + 48) "localizedDescription")];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x30u);
  v11 = *MEMORY[0x277D85DE8];
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_47_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 32);
  [*(v1 + 40) deviceID];
  v3 = OUTLINED_FUNCTION_7_2();
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    v4 = *(v0 + 32);
    [*(v0 + 40) deviceID];
    v5 = OUTLINED_FUNCTION_7_2();
    [objc_msgSend(OUTLINED_FUNCTION_6_3(v5) "description")];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x26u);
  v11 = *MEMORY[0x277D85DE8];
}

void __47__GKDiscoveryManager_startBrowsingLocalPlayer___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[GKDiscoveryManager startBrowsingLocalPlayer:]_block_invoke";
  v8 = 1024;
  OUTLINED_FUNCTION_13_0();
  v9 = v1;
  _os_log_error_impl(&dword_24E50C000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d browsing callback returned an error (%d) - currently not handled.", &v4, 0x22u);
  v3 = *MEMORY[0x277D85DE8];
}

void __80__GKDiscoveryManager_sendDataToParticipant_deviceID_data_withCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  if (v3)
  {
    [objc_msgSend(v3 "description")];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)didLosePeer:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([a2 playerID])
  {
    [objc_msgSend(objc_msgSend(a2 "playerID")];
  }

  if ([a2 deviceID])
  {
    [objc_msgSend(objc_msgSend(a2 "deviceID")];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);
  v8 = *MEMORY[0x277D85DE8];
}

@end