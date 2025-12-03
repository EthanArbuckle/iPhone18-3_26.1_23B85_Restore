@interface GKDiscoveryPeerConnection
+ (unint64_t)receiveDataLimit;
+ (unint64_t)sendDataLimit;
+ (void)checkConstants;
- (BOOL)shouldDecideAboutConnection;
- (BOOL)syncSetupNewSocket;
- (GKDiscoveryPeerConnection)initWithLocalServiceName:(id)name;
- (void)attachSocketDescriptor:(int)descriptor;
- (void)connectToSockAddr:(const sockaddr *)addr port:(unsigned __int16)port;
- (void)dealloc;
- (void)invalidate;
- (void)sendData:(id)data withCompletionHandler:(id)handler;
- (void)setSyncQueue:(id)queue;
- (void)setTargetQueue:(id)queue;
- (void)shouldDecideAboutConnection;
- (void)syncAcceptedConnection;
- (void)syncCloseConnectionNow;
- (void)syncConnected:(id)connected;
- (void)syncReceivedData:(id)data error:(id)error;
- (void)syncSendHello;
- (void)syncSendMessage:(int)message data:(id)data withCompletionHandler:(id)handler;
- (void)syncSendMessageReceipt:(int)receipt sequenceNumber:(unsigned int)number;
- (void)timeout:(id)timeout;
@end

@implementation GKDiscoveryPeerConnection

- (GKDiscoveryPeerConnection)initWithLocalServiceName:(id)name
{
  v16.receiver = self;
  v16.super_class = GKDiscoveryPeerConnection;
  v4 = [(GKDiscoveryPeerConnection *)&v16 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v4->_dataReceived = v5;
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v4->_dataToSendHoldingQueue = v6;
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4->_receivedDataHoldingQueue = v7;
    if (v7 && (v8 = objc_alloc_init(MEMORY[0x277CBEB18]), (v4->_messageReceiptHandlerList = v8) != 0) && (v9 = objc_alloc_init(MEMORY[0x277CBEB18]), (v4->_messageReceiptHandlerHoldingQueue = v9) != 0))
    {
      [(GKDiscoveryPeerConnection *)v4 setLocalServiceName:name];
      v10 = objc_alloc_init(GKSimpleTimer);
      v4->_heartbeatTimer = v10;
      [(GKSimpleTimer *)v10 setDelegate:v4];
      v11 = objc_alloc_init(GKSimpleTimer);
      v4->_heartbeatTimeoutTimer = v11;
      [(GKSimpleTimer *)v11 setDelegate:v4];
      v12 = objc_alloc_init(GKSimpleTimer);
      v4->_timeoutTimer = v12;
      [(GKSimpleTimer *)v12 setDelegate:v4];
      [objc_msgSend(off_279682970 getClientOption:{*off_2796828D8), "doubleValue"}];
      if (v13 == 0.0)
      {
        v13 = 60.0;
      }

      v4->_connectionTimeoutInSeconds = v13;
      [objc_msgSend(off_279682970 getClientOption:{*off_2796828D0), "doubleValue"}];
      v4->_heartbeatIntervalInSeconds = v14;
      if (v14 == 0.0)
      {
        v4->_heartbeatIntervalInSeconds = 20.0;
      }
    }

    else
    {
LABEL_11:

      return 0;
    }
  }

  return v4;
}

- (void)setSyncQueue:(id)queue
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  syncQueue = self->_syncQueue;
  if (syncQueue)
  {
    dispatch_release(syncQueue);
  }

  self->_syncQueue = queue;
  connectionSocket = self->_connectionSocket;

  [(GKAsyncSocket *)connectionSocket setTargetQueue:queue];
}

- (void)setTargetQueue:(id)queue
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  targetQueue = self->_targetQueue;
  if (targetQueue)
  {
    dispatch_release(targetQueue);
  }

  self->_targetQueue = queue;
}

- (void)syncConnected:(id)connected
{
  if (connected)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKDiscoveryPeerConnection syncConnected:];
      }
    }

    connectedHandler = self->_connectedHandler;
    if (connectedHandler)
    {
      self->_connectedHandler = 0;
      if (self->_targetQueue)
      {
        targetQueue = self->_targetQueue;
      }

      else
      {
        targetQueue = MEMORY[0x277D85CD0];
      }

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __43__GKDiscoveryPeerConnection_syncConnected___block_invoke;
      v7[3] = &unk_279683400;
      v7[4] = connected;
      v7[5] = connectedHandler;
      dispatch_async(targetQueue, v7);
    }
  }

  else
  {

    [(GKDiscoveryPeerConnection *)self syncSendHello];
  }
}

- (BOOL)syncSetupNewSocket
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_connectionSocket)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        connectionSocket = self->_connectionSocket;
        remoteServiceName = self->_remoteServiceName;
        if (remoteServiceName)
        {
          uTF8String = [[(NSString *)remoteServiceName description] UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136316418;
        v20 = v3;
        v21 = 2080;
        v22 = "[GKDiscoveryPeerConnection syncSetupNewSocket]";
        v23 = 1024;
        v24 = 266;
        v25 = 2048;
        selfCopy2 = self;
        v27 = 2048;
        v28 = connectionSocket;
        v29 = 2080;
        v30 = uTF8String;
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] _connectionSocket already up", buf, 0x3Au);
      }
    }

    goto LABEL_14;
  }

  v8 = objc_alloc_init(GKAsyncSocket);
  self->_connectionSocket = v8;
  if (v8)
  {
    [(GKAsyncSocket *)v8 setTargetQueue:self->_syncQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__GKDiscoveryPeerConnection_syncSetupNewSocket__block_invoke;
    v18[3] = &unk_279683428;
    v18[4] = self;
    [(GKAsyncSocket *)self->_connectionSocket setReceiveDataHandler:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__GKDiscoveryPeerConnection_syncSetupNewSocket__block_invoke_2;
    v17[3] = &unk_279683450;
    v17[4] = self;
    [(GKAsyncSocket *)self->_connectionSocket setConnectedHandler:v17];
LABEL_14:
    LOBYTE(v11) = 1;
    goto LABEL_15;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
LABEL_18:
    LOBYTE(v11) = 0;
    goto LABEL_15;
  }

  v9 = VRTraceErrorLogLevelToCSTR();
  v10 = *MEMORY[0x277CE5818];
  v11 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
  if (v11)
  {
    v12 = self->_connectionSocket;
    v13 = self->_remoteServiceName;
    if (v13)
    {
      uTF8String2 = [[(NSString *)v13 description] UTF8String];
    }

    else
    {
      uTF8String2 = "<nil>";
    }

    *buf = 136316418;
    v20 = v9;
    v21 = 2080;
    v22 = "[GKDiscoveryPeerConnection syncSetupNewSocket]";
    v23 = 1024;
    v24 = 272;
    v25 = 2048;
    selfCopy2 = self;
    v27 = 2048;
    v28 = v12;
    v29 = 2080;
    v30 = uTF8String2;
    _os_log_error_impl(&dword_24E50C000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] GKAsyncSocket alloc failed", buf, 0x3Au);
    goto LABEL_18;
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)connectToSockAddr:(const sockaddr *)addr port:(unsigned __int16)port
{
  v7 = copysockaddr(&addr->sa_len);
  syncQueue = self->_syncQueue;
  if (!syncQueue)
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__GKDiscoveryPeerConnection_connectToSockAddr_port___block_invoke;
  v9[3] = &unk_279683478;
  v9[4] = self;
  v9[5] = v7;
  v9[6] = a2;
  portCopy = port;
  dispatch_async(syncQueue, v9);
}

void __52__GKDiscoveryPeerConnection_connectToSockAddr_port___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 32);
      v6 = *(v4 + 8);
      if (v6)
      {
        v7 = [objc_msgSend(v6 "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      v8 = *(*(a1 + 40) + 1);
      *buf = 136316674;
      v23 = v2;
      v24 = 2080;
      v25 = "[GKDiscoveryPeerConnection connectToSockAddr:port:]_block_invoke";
      v26 = 1024;
      v27 = 314;
      v28 = 2048;
      v29 = v4;
      v30 = 2048;
      v31 = v5;
      v32 = 2080;
      v33 = v7;
      v34 = 1024;
      v35 = v8;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] ************ requesting connection sequence (sa_family = %d)", buf, 0x40u);
    }
  }

  v9 = *(a1 + 32);
  if (v9[4])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        Name = sel_getName(*(a1 + 48));
        v14 = *(*(a1 + 32) + 8);
        if (v14)
        {
          v15 = [objc_msgSend(v14 "description")];
        }

        else
        {
          v15 = "<nil>";
        }

        *buf = 136316418;
        v23 = v10;
        v24 = 2080;
        v25 = "[GKDiscoveryPeerConnection connectToSockAddr:port:]_block_invoke";
        v26 = 1024;
        v27 = 317;
        v28 = 2048;
        v29 = v12;
        v30 = 2080;
        v31 = Name;
        v32 = 2080;
        v33 = v15;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p %s (%s): already connected!", buf, 0x3Au);
      }
    }

LABEL_21:
    free(*(a1 + 40));
    goto LABEL_22;
  }

  v16 = [v9 syncSetupNewSocket];
  v17 = *(a1 + 32);
  if ((v16 & 1) == 0)
  {
    v18 = *(v17 + 96);
    if (v18)
    {
      *(v17 + 96) = 0;
      if (*(*(a1 + 32) + 112))
      {
        v19 = *(*(a1 + 32) + 112);
      }

      else
      {
        v19 = MEMORY[0x277D85CD0];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__GKDiscoveryPeerConnection_connectToSockAddr_port___block_invoke_9;
      block[3] = &unk_279683388;
      block[4] = v18;
      dispatch_async(v19, block);
    }

    goto LABEL_21;
  }

  *(v17 + 24) = 0;
  [*(*(a1 + 32) + 32) tcpConnectSockAddr:*(a1 + 40) port:*(a1 + 56)];
  free(*(a1 + 40));
  [*(*(a1 + 32) + 136) fireIn:*(*(a1 + 32) + 144) fromNow:micro()];
LABEL_22:
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __52__GKDiscoveryPeerConnection_connectToSockAddr_port___block_invoke_9(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCA450];
  v5[0] = @"Setup new socket failed (browser side)";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
  result = (*(*(a1 + 32) + 16))();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)attachSocketDescriptor:(int)descriptor
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__GKDiscoveryPeerConnection_attachSocketDescriptor___block_invoke;
  block[3] = &unk_2796834A0;
  if (!syncQueue)
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  block[4] = self;
  block[5] = a2;
  descriptorCopy = descriptor;
  dispatch_async(syncQueue, block);
}

void __52__GKDiscoveryPeerConnection_attachSocketDescriptor___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      Name = sel_getName(*(a1 + 40));
      v6 = *(*(a1 + 32) + 8);
      if (v6)
      {
        v7 = [objc_msgSend(v6 "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316418;
      v22 = v2;
      v23 = 2080;
      v24 = "[GKDiscoveryPeerConnection attachSocketDescriptor:]_block_invoke";
      v25 = 1024;
      v26 = 347;
      v27 = 2048;
      v28 = v4;
      v29 = 2080;
      v30 = Name;
      v31 = 2080;
      v32 = v7;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p %s (%s): ************ responding connection sequence", buf, 0x3Au);
    }
  }

  v8 = *(a1 + 32);
  if (v8[4])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(v11 + 32);
        v13 = *(v11 + 8);
        if (v13)
        {
          v14 = [objc_msgSend(v13 "description")];
        }

        else
        {
          v14 = "<nil>";
        }

        *buf = 136316418;
        v22 = v9;
        v23 = 2080;
        v24 = "[GKDiscoveryPeerConnection attachSocketDescriptor:]_block_invoke";
        v25 = 1024;
        v26 = 349;
        v27 = 2048;
        v28 = v11;
        v29 = 2048;
        v30 = v12;
        v31 = 2080;
        v32 = v14;
        _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] already connected!", buf, 0x3Au);
      }
    }
  }

  else
  {
    v15 = [v8 syncSetupNewSocket];
    v16 = *(a1 + 32);
    if (v15)
    {
      *(v16 + 24) = 0;
      [*(*(a1 + 32) + 32) tcpAttachSocketDescriptor:*(a1 + 48)];
      [*(*(a1 + 32) + 136) fireIn:*(*(a1 + 32) + 144) fromNow:micro()];
    }

    else
    {
      v17 = *(v16 + 96);
      if (v17)
      {
        *(v16 + 96) = 0;
        if (*(*(a1 + 32) + 112))
        {
          v18 = *(*(a1 + 32) + 112);
        }

        else
        {
          v18 = MEMORY[0x277D85CD0];
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__GKDiscoveryPeerConnection_attachSocketDescriptor___block_invoke_16;
        block[3] = &unk_279683388;
        block[4] = v17;
        dispatch_async(v18, block);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __52__GKDiscoveryPeerConnection_attachSocketDescriptor___block_invoke_16(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCA450];
  v5[0] = @"Setup new socket failed (advertiser-side)";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
  result = (*(*(a1 + 32) + 16))();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)shouldDecideAboutConnection
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(GKDiscoveryPeerConnection *)self localServiceName]&& [(GKDiscoveryPeerConnection *)self remoteServiceName])
  {
    if ([(NSString *)[(GKDiscoveryPeerConnection *)self remoteServiceName] isEqualToString:[(GKDiscoveryPeerConnection *)self localServiceName]])
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
LABEL_10:
        LOBYTE(v3) = 0;
        goto LABEL_18;
      }

      VRTraceErrorLogLevelToCSTR();
      v3 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
      if (v3)
      {
        [GKDiscoveryPeerConnection shouldDecideAboutConnection];
        goto LABEL_10;
      }
    }

    else
    {
      v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", -[GKDiscoveryPeerConnection localServiceName](self, "localServiceName")];
      v5 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", -[GKDiscoveryPeerConnection remoteServiceName](self, "remoteServiceName")];
      memset(md, 170, sizeof(md));
      memset(v11, 170, sizeof(v11));
      do
      {
        [v4 appendFormat:@"+%@", -[GKDiscoveryPeerConnection remoteServiceName](self, "remoteServiceName")];
        [v5 appendFormat:@"+%@", -[GKDiscoveryPeerConnection localServiceName](self, "localServiceName")];
        CC_MD5([v4 UTF8String], objc_msgSend(v4, "length"), md);
        CC_MD5([v5 UTF8String], objc_msgSend(v5, "length"), v11);
        v6 = bswap64(*md);
        v7 = bswap64(*v11);
        if (v6 != v7)
        {
          break;
        }

        v6 = bswap64(*&md[8]);
        v7 = bswap64(*&v11[8]);
      }

      while (v6 == v7);
      if (v6 < v7)
      {
        v8 = -1;
      }

      else
      {
        v8 = 1;
      }

      v3 = v8 >> 31;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    VRTraceErrorLogLevelToCSTR();
    v3 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [GKDiscoveryPeerConnection shouldDecideAboutConnection];
      goto LABEL_10;
    }
  }

LABEL_18:
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)syncSendMessage:(int)message data:(id)data withCompletionHandler:(id)handler
{
  v75 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    v12 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        connectionSocket = self->_connectionSocket;
        remoteServiceName = self->_remoteServiceName;
        if (remoteServiceName)
        {
          uTF8String = [[(NSString *)remoteServiceName description] UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136316930;
        v60 = v10;
        v61 = 2080;
        v62 = "[GKDiscoveryPeerConnection syncSendMessage:data:withCompletionHandler:]";
        v63 = 1024;
        v64 = 411;
        v65 = 2048;
        selfCopy5 = self;
        v67 = 2048;
        v68 = connectionSocket;
        v69 = 2080;
        v70 = uTF8String;
        v71 = 1024;
        messageCopy3 = message;
        v73 = 1024;
        v74 = [data length];
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] send type [%u] data [%u]", buf, 0x46u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = self->_connectionSocket;
      v17 = self->_remoteServiceName;
      if (v17)
      {
        uTF8String2 = [[(NSString *)v17 description] UTF8String];
      }

      else
      {
        uTF8String2 = "<nil>";
      }

      *buf = 136316930;
      v60 = v10;
      v61 = 2080;
      v62 = "[GKDiscoveryPeerConnection syncSendMessage:data:withCompletionHandler:]";
      v63 = 1024;
      v64 = 411;
      v65 = 2048;
      selfCopy5 = self;
      v67 = 2048;
      v68 = v16;
      v69 = 2080;
      v70 = uTF8String2;
      v71 = 1024;
      messageCopy3 = message;
      v73 = 1024;
      v74 = [data length];
      _os_log_debug_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] send type [%u] data [%u]", buf, 0x46u);
    }
  }

  if (message > 2199)
  {
    if (message != 2200 && message != 2300)
    {
      goto LABEL_22;
    }
  }

  else if (message != 2000 && message != 2100)
  {
LABEL_22:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v39 = self->_connectionSocket;
        v40 = self->_remoteServiceName;
        if (v40)
        {
          uTF8String3 = [[(NSString *)v40 description] UTF8String];
        }

        else
        {
          uTF8String3 = "<nil>";
        }

        *buf = 136316674;
        v60 = v26;
        v61 = 2080;
        v62 = "[GKDiscoveryPeerConnection syncSendMessage:data:withCompletionHandler:]";
        v63 = 1024;
        v64 = 426;
        v65 = 2048;
        selfCopy5 = self;
        v67 = 2048;
        v68 = v39;
        v69 = 2080;
        v70 = uTF8String3;
        v71 = 1024;
        messageCopy3 = message;
        _os_log_error_impl(&dword_24E50C000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] can't send bad message type [%u]", buf, 0x40u);
      }
    }

    v57 = *MEMORY[0x277CCA450];
    v58 = @"Unable to send unknown message type";
    (*(handler + 2))(handler, [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v58, &v57, 1)}]);
    goto LABEL_36;
  }

  v19 = [handler copy];
  v20 = [data length];
  currentSequenceNumber = self->_currentSequenceNumber;
  self->_currentSequenceNumber = (currentSequenceNumber + 1) & 0x7FFFFFFF;
  v46[0] = BYTE1(message);
  v46[1] = message;
  v47 = 0;
  v48 = HIBYTE(v20);
  v49 = BYTE2(v20);
  v50 = BYTE1(v20);
  v51 = v20;
  v52 = 0;
  v53 = HIBYTE(currentSequenceNumber);
  v54 = BYTE2(currentSequenceNumber);
  v55 = BYTE1(currentSequenceNumber);
  v56 = currentSequenceNumber;
  v22 = crc32(0, v46, 0x10u);
  if ([data length])
  {
    v22 = crc32(v22, [data bytes], objc_msgSend(data, "length"));
  }

  v52 = bswap32(v22);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __72__GKDiscoveryPeerConnection_syncSendMessage_data_withCompletionHandler___block_invoke;
  v44[3] = &unk_2796834C8;
  v45 = currentSequenceNumber;
  v44[4] = v19;
  v23 = [v44 copy];
  if (message == 2100 && !self->_connected)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x277CE5818];
      v30 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = self->_connectionSocket;
          v32 = self->_remoteServiceName;
          if (v32)
          {
            uTF8String4 = [[(NSString *)v32 description] UTF8String];
          }

          else
          {
            uTF8String4 = "<nil>";
          }

          v37 = [data length];
          *buf = 136316674;
          v60 = v28;
          v61 = 2080;
          v62 = "[GKDiscoveryPeerConnection syncSendMessage:data:withCompletionHandler:]";
          v63 = 1024;
          v64 = 493;
          v65 = 2048;
          selfCopy5 = self;
          v67 = 2048;
          v68 = v31;
          v69 = 2080;
          v70 = uTF8String4;
          v71 = 1024;
          messageCopy3 = v37;
          _os_log_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] still connecting - queueing data (%u) *", buf, 0x40u);
        }
      }

      else if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v34 = self->_connectionSocket;
        v35 = self->_remoteServiceName;
        if (v35)
        {
          uTF8String5 = [[(NSString *)v35 description] UTF8String];
        }

        else
        {
          uTF8String5 = "<nil>";
        }

        v42 = [data length];
        *buf = 136316674;
        v60 = v28;
        v61 = 2080;
        v62 = "[GKDiscoveryPeerConnection syncSendMessage:data:withCompletionHandler:]";
        v63 = 1024;
        v64 = 493;
        v65 = 2048;
        selfCopy5 = self;
        v67 = 2048;
        v68 = v34;
        v69 = 2080;
        v70 = uTF8String5;
        v71 = 1024;
        messageCopy3 = v42;
        _os_log_debug_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] still connecting - queueing data (%u) *", buf, 0x40u);
      }
    }

    [(NSMutableArray *)self->_messageReceiptHandlerHoldingQueue addObject:v23];
    [(NSMutableData *)self->_dataToSendHoldingQueue appendBytes:v46 length:16];
    [(NSMutableData *)self->_dataToSendHoldingQueue appendData:data];
  }

  else
  {
    [(NSMutableArray *)self->_messageReceiptHandlerList addObject:v23];
    v24 = [MEMORY[0x277CBEB28] dataWithBytes:v46 length:16];
    [v24 appendData:data];
    v25 = self->_connectionSocket;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __72__GKDiscoveryPeerConnection_syncSendMessage_data_withCompletionHandler___block_invoke_34;
    v43[3] = &unk_279683450;
    v43[4] = self;
    [(GKAsyncSocket *)v25 sendData:v24 withCompletionHandler:v43];
  }

LABEL_36:
  objc_autoreleasePoolPop(v9);
  v38 = *MEMORY[0x277D85DE8];
}

BOOL __72__GKDiscoveryPeerConnection_syncSendMessage_data_withCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v3 == a2)
    {
      (*(v4 + 16))(*(a1 + 32), 0);
    }

    else
    {
      v7 = *MEMORY[0x277CCA450];
      v8[0] = @"Receipt does not match";
      (*(v4 + 16))(v4, [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-3 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}]);
    }
  }

  result = v3 == a2;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __72__GKDiscoveryPeerConnection_syncSendMessage_data_withCompletionHandler___block_invoke_34(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 32);
        v9 = *(v7 + 8);
        if (v9)
        {
          v10 = [objc_msgSend(v9 "description")];
        }

        else
        {
          v10 = "<nil>";
        }

        v11 = 136316674;
        v12 = v4;
        v13 = 2080;
        v14 = "[GKDiscoveryPeerConnection syncSendMessage:data:withCompletionHandler:]_block_invoke";
        v15 = 1024;
        v16 = 511;
        v17 = 2048;
        v18 = v7;
        v19 = 2048;
        v20 = v8;
        v21 = 2080;
        v22 = v10;
        v23 = 2080;
        v24 = [objc_msgSend(a2 "description")];
        _os_log_error_impl(&dword_24E50C000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] sendData completed with error [%s]", &v11, 0x44u);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncSendHello
{
  v28 = *MEMORY[0x277D85DE8];
  uTF8String = [(NSString *)self->_localServiceName UTF8String];
  if (uTF8String)
  {
    v4 = uTF8String;
    v5 = strlen(uTF8String);
    v6 = v5 + 1;
    if (v5 < 0xFFFF)
    {
      v14 = 100663296;
      LOBYTE(v15) = (v5 + 1) >> 8;
      BYTE1(v15) = v5 + 1;
      v7 = [MEMORY[0x277CBEB28] dataWithBytes:&v14 length:6];
      [v7 appendBytes:v4 length:v6];
      [(GKDiscoveryPeerConnection *)self syncSendMessage:2000 data:v7 withCompletionHandler:0];
      goto LABEL_8;
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      connectionSocket = self->_connectionSocket;
      remoteServiceName = self->_remoteServiceName;
      if (remoteServiceName)
      {
        uTF8String2 = [[(NSString *)remoteServiceName description] UTF8String];
      }

      else
      {
        uTF8String2 = "<nil>";
      }

      v14 = 136316674;
      v15 = v8;
      v16 = 2080;
      v17 = "[GKDiscoveryPeerConnection syncSendHello]";
      v18 = 1024;
      v19 = 525;
      v20 = 2048;
      selfCopy = self;
      v22 = 2048;
      v23 = connectionSocket;
      v24 = 2080;
      v25 = uTF8String2;
      v26 = 1024;
      v27 = v6;
      _os_log_error_impl(&dword_24E50C000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] bad serviceName [%d] ??", &v14, 0x40u);
    }
  }

  [(GKDiscoveryPeerConnection *)self syncCloseConnectionNow];
LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)syncAcceptedConnection
{
  v40 = *MEMORY[0x277D85DE8];
  connectionSocket = self->_connectionSocket;
  dataToSendHoldingQueue = self->_dataToSendHoldingQueue;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __51__GKDiscoveryPeerConnection_syncAcceptedConnection__block_invoke;
  v26[3] = &unk_279683450;
  v26[4] = self;
  [(GKAsyncSocket *)connectionSocket sendData:dataToSendHoldingQueue withCompletionHandler:v26];
  [(NSMutableArray *)self->_messageReceiptHandlerList addObjectsFromArray:self->_messageReceiptHandlerHoldingQueue];
  [(NSMutableArray *)self->_messageReceiptHandlerHoldingQueue removeAllObjects];
  if ([(NSMutableArray *)self->_receivedDataHoldingQueue count])
  {
    receiveDataHandler = self->_receiveDataHandler;
    if (receiveDataHandler)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      receivedDataHoldingQueue = self->_receivedDataHoldingQueue;
      v7 = [(NSMutableArray *)receivedDataHoldingQueue countByEnumeratingWithState:&v22 objects:v39 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v23;
        v10 = MEMORY[0x277D85CD0];
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(receivedDataHoldingQueue);
            }

            v12 = *(*(&v22 + 1) + 8 * i);
            if (self->_targetQueue)
            {
              targetQueue = self->_targetQueue;
            }

            else
            {
              targetQueue = v10;
            }

            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __51__GKDiscoveryPeerConnection_syncAcceptedConnection__block_invoke_35;
            v21[3] = &unk_2796834F0;
            v21[4] = v12;
            v21[5] = receiveDataHandler;
            dispatch_async(targetQueue, v21);
          }

          v8 = [(NSMutableArray *)receivedDataHoldingQueue countByEnumeratingWithState:&v22 objects:v39 count:16];
        }

        while (v8);
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_connectionSocket;
        remoteServiceName = self->_remoteServiceName;
        if (remoteServiceName)
        {
          uTF8String = [[(NSString *)remoteServiceName description] UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136316418;
        v28 = v14;
        v29 = 2080;
        v30 = "[GKDiscoveryPeerConnection syncAcceptedConnection]";
        v31 = 1024;
        v32 = 569;
        v33 = 2048;
        selfCopy = self;
        v35 = 2048;
        v36 = v16;
        v37 = 2080;
        v38 = uTF8String;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] receiveDataHandler is nil", buf, 0x3Au);
      }
    }
  }

  self->_connected = 1;
  v19 = micro();
  [(GKSimpleTimer *)self->_heartbeatTimer fireIn:self->_heartbeatIntervalInSeconds fromNow:v19];
  [(GKSimpleTimer *)self->_heartbeatTimeoutTimer fireIn:self->_heartbeatIntervalInSeconds + self->_heartbeatIntervalInSeconds fromNow:v19];
  v20 = *MEMORY[0x277D85DE8];
}

void __51__GKDiscoveryPeerConnection_syncAcceptedConnection__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __51__GKDiscoveryPeerConnection_syncAcceptedConnection__block_invoke_cold_1(v3, a1);
    }
  }
}

- (void)syncSendMessageReceipt:(int)receipt sequenceNumber:(unsigned int)number
{
  v20 = *MEMORY[0x277D85DE8];
  buf[0] = BYTE1(receipt);
  buf[1] = receipt;
  v14 = 256;
  v15 = 0;
  v16 = HIBYTE(number);
  v17 = BYTE2(number);
  v18 = BYTE1(number);
  numberCopy = number;
  HIDWORD(v15) = bswap32(crc32(0, buf, 0x10u));
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];
  connectionSocket = self->_connectionSocket;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__GKDiscoveryPeerConnection_syncSendMessageReceipt_sequenceNumber___block_invoke;
  v10[3] = &unk_279683518;
  v10[4] = self;
  receiptCopy = receipt;
  numberCopy2 = number;
  [(GKAsyncSocket *)connectionSocket sendData:v7 withCompletionHandler:v10];
  v9 = *MEMORY[0x277D85DE8];
}

void __67__GKDiscoveryPeerConnection_syncSendMessageReceipt_sequenceNumber___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __67__GKDiscoveryPeerConnection_syncSendMessageReceipt_sequenceNumber___block_invoke_cold_1(v3, a1);
    }
  }
}

void __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 32);
      v8 = *(v6 + 8);
      if (v8)
      {
        v9 = [objc_msgSend(v8 "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      v10 = "declines";
      *buf = 136316930;
      v21 = v4;
      v23 = "[GKDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:]_block_invoke";
      v24 = 1024;
      v11 = "close connection";
      v25 = 672;
      v27 = v6;
      v22 = 2080;
      if (a2)
      {
        v10 = "approves";
      }

      v26 = 2048;
      if (a2)
      {
        v11 = "accept connection";
      }

      v28 = 2048;
      v29 = v7;
      v30 = 2080;
      v31 = v9;
      v32 = 2080;
      v33 = v10;
      v34 = 2080;
      v35 = v11;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] peer %s. Will %s", buf, 0x4Eu);
    }
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 104);
  if (a2)
  {
    v14 = v19;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v15 = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_42;
  }

  else
  {
    v14 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v15 = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_2;
  }

  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = MEMORY[0x277D85CD0];
  }

  v14[2] = v15;
  v14[3] = &unk_279682BA8;
  v14[4] = v12;
  dispatch_async(v16, v14);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_42(uint64_t a1)
{
  [*(a1 + 32) syncSendAccept];
  v2 = *(a1 + 32);

  return [v2 syncAcceptedConnection];
}

void __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_45(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (a2)
  {
    v4 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v5 = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_2_46;
  }

  else
  {
    v4 = v7;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v5 = __68__GKDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_3_47;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x277D85CD0];
  }

  v4[2] = v5;
  v4[3] = &unk_279682BA8;
  v4[4] = v2;
  dispatch_async(v6, v4);
}

- (void)timeout:(id)timeout
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__GKDiscoveryPeerConnection_timeout___block_invoke;
  v4[3] = &unk_279682BF0;
  if (!syncQueue)
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  v4[4] = timeout;
  v4[5] = self;
  dispatch_async(syncQueue, v4);
}

void __37__GKDiscoveryPeerConnection_timeout___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(v3 - 1);
  if (v4 != v2[15])
  {
    if (v4 == v2[16])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x277CE5818];
        v16 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] != 1)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            __37__GKDiscoveryPeerConnection_timeout___block_invoke_cold_2(v14, v3);
          }

          goto LABEL_32;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *v3;
          v18 = *(*v3 + 4);
          v19 = *(*v3 + 1);
          if (v19)
          {
            v20 = [objc_msgSend(v19 "description")];
          }

          else
          {
            v20 = "<nil>";
          }

          *v32 = 136316418;
          *&v32[4] = v14;
          *&v32[12] = 2080;
          *&v32[14] = "[GKDiscoveryPeerConnection timeout:]_block_invoke";
          *&v32[22] = 1024;
          LODWORD(v33) = 787;
          WORD2(v33) = 2048;
          *(&v33 + 6) = v17;
          HIWORD(v33) = 2048;
          v34 = v18;
          *v35 = 2080;
          *&v35[2] = v20;
          v30 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] heartbeat timeout timer hit";
          goto LABEL_31;
        }
      }
    }

    else
    {
      v5 = v2[17];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v4 != v5)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v9 = *v3;
            v10 = *(*v3 + 4);
            v11 = *(*v3 + 1);
            if (v11)
            {
              v12 = [objc_msgSend(v11 "description")];
            }

            else
            {
              v12 = "<nil>";
            }

            v27 = *(a1 + 32);
            v28 = *(*v3 + 15);
            v29 = *(*v3 + 17);
            *v32 = 136317186;
            *&v32[4] = v7;
            *&v32[12] = 2080;
            *&v32[14] = "[GKDiscoveryPeerConnection timeout:]_block_invoke";
            *&v32[22] = 1024;
            LODWORD(v33) = 793;
            WORD2(v33) = 2048;
            *(&v33 + 6) = v9;
            HIWORD(v33) = 2048;
            v34 = v10;
            *v35 = 2080;
            *&v35[2] = v12;
            *&v35[10] = 2048;
            *&v35[12] = v27;
            v36 = 2048;
            v37 = v28;
            v38 = 2048;
            v39 = v29;
            _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] unknown timer[%p] hit (heartbeat[%p] timerout[%p]) ?", v32, 0x58u);
          }
        }

        goto LABEL_33;
      }

      if (ErrorLogLevelForModule >= 8)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x277CE5818];
        v22 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] != 1)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            __37__GKDiscoveryPeerConnection_timeout___block_invoke_cold_1(v21, v3);
          }

          goto LABEL_32;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *v3;
          v24 = *(*v3 + 4);
          v25 = *(*v3 + 1);
          if (v25)
          {
            v26 = [objc_msgSend(v25 "description")];
          }

          else
          {
            v26 = "<nil>";
          }

          *v32 = 136316418;
          *&v32[4] = v21;
          *&v32[12] = 2080;
          *&v32[14] = "[GKDiscoveryPeerConnection timeout:]_block_invoke";
          *&v32[22] = 1024;
          LODWORD(v33) = 790;
          WORD2(v33) = 2048;
          *(&v33 + 6) = v23;
          HIWORD(v33) = 2048;
          v34 = v24;
          *v35 = 2080;
          *&v35[2] = v26;
          v30 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] timeout timer hit";
LABEL_31:
          _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, v30, v32, 0x3Au);
        }
      }
    }

LABEL_32:
    [*v3 syncCloseConnectionNow];
LABEL_33:
    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = *MEMORY[0x277D85DE8];

  [v2 syncSendMessage:2300 data:0 withCompletionHandler:0];
}

- (void)syncReceivedData:(id)data error:(id)error
{
  v114 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = v7;
  if (!data)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_57;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    connectionSocket = self->_connectionSocket;
    remoteServiceName = self->_remoteServiceName;
    if (remoteServiceName)
    {
      uTF8String = [[(NSString *)remoteServiceName description] UTF8String];
      if (error)
      {
LABEL_9:
        v18 = [objc_msgSend(error "description")];
LABEL_56:
        *buf = 136316674;
        v91 = v13;
        v92 = 2080;
        v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
        v94 = 1024;
        v95 = 938;
        v96 = 2048;
        selfCopy = self;
        v98 = 2048;
        v99 = connectionSocket;
        v100 = 2080;
        v101 = uTF8String;
        v102 = 2080;
        *v103 = v18;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] end of stream: %s", buf, 0x44u);
LABEL_57:
        selfCopy2 = self;
LABEL_82:
        [(GKDiscoveryPeerConnection *)selfCopy2 syncCloseConnectionNow];
        goto LABEL_83;
      }
    }

    else
    {
      uTF8String = "<nil>";
      if (error)
      {
        goto LABEL_9;
      }
    }

    v18 = "<nil>";
    goto LABEL_56;
  }

  context = v7;
  v9 = micro();
  [(GKSimpleTimer *)self->_heartbeatTimer fireIn:self->_heartbeatIntervalInSeconds fromNow:v9];
  [(GKSimpleTimer *)self->_heartbeatTimeoutTimer fireIn:self->_heartbeatIntervalInSeconds + self->_heartbeatIntervalInSeconds fromNow:v9];
  [(NSMutableData *)self->_dataReceived appendData:data];
  bytes = [(NSMutableData *)self->_dataReceived bytes];
  v11 = [(NSMutableData *)self->_dataReceived length];
  selfCopy3 = self;
  if (v11 >= 0x10)
  {
    p_messageReceiptHandlerHoldingQueue = &self->_messageReceiptHandlerHoldingQueue;
    p_messageReceiptHandlerList = &self->_messageReceiptHandlerList;
    while (1)
    {
      v19 = *bytes;
      v20 = *(bytes + 3);
      v21 = *(bytes + 2);
      v22 = bswap32(*(bytes + 1));
      v23 = *(bytes + 12);
      v24 = *(bytes + 13);
      v25 = *(bytes + 14);
      v26 = *(bytes + 15);
      if (+[GKDiscoveryPeerConnection receiveDataLimit]< v22)
      {
        v8 = context;
        self = selfCopy3;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v43 = VRTraceErrorLogLevelToCSTR();
          v44 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            v45 = selfCopy3->_connectionSocket;
            v46 = selfCopy3->_remoteServiceName;
            if (v46)
            {
              uTF8String2 = [[(NSString *)v46 description] UTF8String];
            }

            else
            {
              uTF8String2 = "<nil>";
            }

            v74 = +[GKDiscoveryPeerConnection receiveDataLimit];
            *buf = 136316930;
            v91 = v43;
            v92 = 2080;
            v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
            v94 = 1024;
            v95 = 851;
            v96 = 2048;
            selfCopy = selfCopy3;
            v98 = 2048;
            v99 = v45;
            v100 = 2080;
            v101 = uTF8String2;
            v102 = 1024;
            *v103 = v22;
            *&v103[4] = 1024;
            *&v103[6] = v74;
            _os_log_error_impl(&dword_24E50C000, v44, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] message too big %u > %u", buf, 0x46u);
          }
        }

        goto LABEL_57;
      }

      if (v22 > v11 - 16)
      {
        goto LABEL_3;
      }

      v27 = (v26 | (v24 << 16) | (v25 << 8)) & 0xFFFFFF | (v23 << 24);
      if (v23 << 24 < 0)
      {
        break;
      }

      v28 = v20 & 1;
      if (v28 && v22)
      {
        v8 = context;
        v48 = selfCopy3;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v54 = VRTraceErrorLogLevelToCSTR();
          v50 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            v55 = selfCopy3->_connectionSocket;
            v56 = selfCopy3->_remoteServiceName;
            if (v56)
            {
              uTF8String3 = [[(NSString *)v56 description] UTF8String];
            }

            else
            {
              uTF8String3 = "<nil>";
            }

            *buf = 136316674;
            v91 = v54;
            v92 = 2080;
            v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
            v94 = 1024;
            v95 = 867;
            v96 = 2048;
            selfCopy = selfCopy3;
            v98 = 2048;
            v99 = v55;
            v100 = 2080;
            v101 = uTF8String3;
            v102 = 1024;
            *v103 = v22;
            v75 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] receipt has body size %u";
            goto LABEL_80;
          }
        }

        goto LABEL_81;
      }

      v29 = bswap32(v21);
      *(bytes + 2) = 0;
      v30 = v22 + 16;
      v31 = crc32(0, bytes, v22 + 16);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v87 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x277CE5818];
        v33 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v83 = selfCopy3->_connectionSocket;
            v34 = selfCopy3->_remoteServiceName;
            if (v34)
            {
              uTF8String4 = [[(NSString *)v34 description] UTF8String];
            }

            else
            {
              uTF8String4 = "<nil>";
            }

            v82 = [(NSMutableArray *)selfCopy3->_messageReceiptHandlerHoldingQueue count];
            v38 = [(NSMutableArray *)selfCopy3->_messageReceiptHandlerList count];
            *buf = 136318210;
            v91 = v87;
            v92 = 2080;
            v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
            v94 = 1024;
            v95 = 875;
            v96 = 2048;
            selfCopy = selfCopy3;
            v98 = 2048;
            v99 = v83;
            v100 = 2080;
            v101 = v80;
            v102 = 1024;
            *v103 = v27;
            *&v103[4] = 1024;
            *&v103[6] = v22;
            v104 = 1024;
            v105 = v31;
            v106 = 1024;
            v107 = v29;
            v108 = 1024;
            v109 = v28;
            v110 = 1024;
            v111 = v82;
            v112 = 1024;
            v113 = v38;
            _os_log_impl(&dword_24E50C000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] receivedData got message #%u (bodylen=%u) crc==given[%08X==%08X]? (receipt(%u) Q[%u] L[%u])", buf, 0x64u);
          }
        }

        else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v84 = selfCopy3->_connectionSocket;
          v35 = selfCopy3->_remoteServiceName;
          uTF8String5 = "<nil>";
          if (v35)
          {
            uTF8String5 = [[(NSString *)v35 description] UTF8String];
          }

          v81 = [(NSMutableArray *)selfCopy3->_messageReceiptHandlerHoldingQueue count];
          v37 = [(NSMutableArray *)selfCopy3->_messageReceiptHandlerList count];
          *buf = 136318210;
          v91 = v87;
          v92 = 2080;
          v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
          v94 = 1024;
          v95 = 875;
          v96 = 2048;
          selfCopy = selfCopy3;
          v98 = 2048;
          v99 = v84;
          v100 = 2080;
          v101 = v79;
          v102 = 1024;
          *v103 = v27;
          *&v103[4] = 1024;
          *&v103[6] = v22;
          v104 = 1024;
          v105 = v31;
          v106 = 1024;
          v107 = v29;
          v108 = 1024;
          v109 = v28;
          v110 = 1024;
          v111 = v81;
          v112 = 1024;
          v113 = v37;
          _os_log_debug_impl(&dword_24E50C000, v32, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] receivedData got message #%u (bodylen=%u) crc==given[%08X==%08X]? (receipt(%u) Q[%u] L[%u])", buf, 0x64u);
        }
      }

      if (v29 != v31)
      {
        v8 = context;
        v58 = selfCopy3;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v59 = VRTraceErrorLogLevelToCSTR();
          v60 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            v61 = selfCopy3->_connectionSocket;
            v62 = selfCopy3->_remoteServiceName;
            if (v62)
            {
              uTF8String6 = [[(NSString *)v62 description] UTF8String];
            }

            else
            {
              uTF8String6 = "<nil>";
            }

            *buf = 136316418;
            v91 = v59;
            v92 = 2080;
            v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
            v94 = 1024;
            v95 = 877;
            v96 = 2048;
            selfCopy = selfCopy3;
            v98 = 2048;
            v99 = v61;
            v100 = 2080;
            v101 = uTF8String6;
            v76 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] invalid checksum";
LABEL_77:
            _os_log_error_impl(&dword_24E50C000, v60, OS_LOG_TYPE_ERROR, v76, buf, 0x3Au);
          }
        }

LABEL_60:
        selfCopy2 = v58;
        goto LABEL_82;
      }

      v39 = __rev16(v19);
      if (v28)
      {
        if ((v39 != 2100 || (v40 = p_messageReceiptHandlerHoldingQueue, !-[NSMutableArray count](*p_messageReceiptHandlerHoldingQueue, "count"))) && (v40 = p_messageReceiptHandlerList, !-[NSMutableArray count](*p_messageReceiptHandlerList, "count")) || (v41 = [*v40 objectAtIndexedSubscript:0], objc_msgSend(*v40, "removeObjectAtIndex:", 0), !v41))
        {
          v8 = context;
          v58 = selfCopy3;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v65 = VRTraceErrorLogLevelToCSTR();
            v60 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              v71 = selfCopy3->_connectionSocket;
              v72 = selfCopy3->_remoteServiceName;
              if (v72)
              {
                uTF8String7 = [[(NSString *)v72 description] UTF8String];
              }

              else
              {
                uTF8String7 = "<nil>";
              }

              *buf = 136316418;
              v91 = v65;
              v92 = 2080;
              v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
              v94 = 1024;
              v95 = 894;
              v96 = 2048;
              selfCopy = selfCopy3;
              v98 = 2048;
              v99 = v71;
              v100 = 2080;
              v101 = uTF8String7;
              v76 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] message receipt has no matching handler";
              goto LABEL_77;
            }
          }

          goto LABEL_60;
        }

        v42 = v41[2](v41, v27);

        if ((v42 & 1) == 0)
        {
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          v8 = context;
          v48 = selfCopy3;
          if (ErrorLogLevelForModule >= 3)
          {
            v67 = VRTraceErrorLogLevelToCSTR();
            v50 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              v68 = selfCopy3->_connectionSocket;
              v69 = selfCopy3->_remoteServiceName;
              if (v69)
              {
                uTF8String8 = [[(NSString *)v69 description] UTF8String];
              }

              else
              {
                uTF8String8 = "<nil>";
              }

              *buf = 136316674;
              v91 = v67;
              v92 = 2080;
              v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
              v94 = 1024;
              v95 = 902;
              v96 = 2048;
              selfCopy = selfCopy3;
              v98 = 2048;
              v99 = v68;
              v100 = 2080;
              v101 = uTF8String8;
              v102 = 1024;
              *v103 = v27;
              v75 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] unexpected sequence number [%d]";
              goto LABEL_80;
            }
          }

          goto LABEL_81;
        }
      }

      else
      {
        -[GKDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:](selfCopy3, "syncProcessMessage:data:sequenceNumber:", v39, [MEMORY[0x277CBEA90] dataWithBytes:bytes + 8 length:v22], v27);
      }

      bytes = (bytes + v30);
      v11 -= v30;
      if (v11 <= 0xF)
      {
        goto LABEL_3;
      }
    }

    v8 = context;
    v48 = selfCopy3;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v49 = VRTraceErrorLogLevelToCSTR();
      v50 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v51 = selfCopy3->_connectionSocket;
        v52 = selfCopy3->_remoteServiceName;
        if (v52)
        {
          uTF8String9 = [[(NSString *)v52 description] UTF8String];
        }

        else
        {
          uTF8String9 = "<nil>";
        }

        *buf = 136316674;
        v91 = v49;
        v92 = 2080;
        v93 = "[GKDiscoveryPeerConnection syncReceivedData:error:]";
        v94 = 1024;
        v95 = 861;
        v96 = 2048;
        selfCopy = selfCopy3;
        v98 = 2048;
        v99 = v51;
        v100 = 2080;
        v101 = uTF8String9;
        v102 = 1024;
        *v103 = v27;
        v75 = " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] invalidSequenceNumber [%u]";
LABEL_80:
        _os_log_error_impl(&dword_24E50C000, v50, OS_LOG_TYPE_ERROR, v75, buf, 0x40u);
      }
    }

LABEL_81:
    selfCopy2 = v48;
    goto LABEL_82;
  }

LABEL_3:
  v12 = [(NSMutableData *)selfCopy3->_dataReceived length];
  v8 = context;
  if (v12 != v11)
  {
    [(NSMutableData *)selfCopy3->_dataReceived replaceBytesInRange:0 withBytes:v12 - v11 length:0, 0];
  }

LABEL_83:
  objc_autoreleasePoolPop(v8);
  v77 = *MEMORY[0x277D85DE8];
}

- (void)syncCloseConnectionNow
{
  v12[1] = *MEMORY[0x277D85DE8];
  self->_connected = 0;
  [(GKAsyncSocket *)self->_connectionSocket invalidate];

  self->_connectionSocket = 0;
  self->_remoteServiceName = 0;
  [(NSMutableData *)self->_dataReceived replaceBytesInRange:0 withBytes:[(NSMutableData *)self->_dataReceived length] length:0, 0];
  [(NSMutableData *)self->_dataToSendHoldingQueue replaceBytesInRange:0 withBytes:[(NSMutableData *)self->_dataToSendHoldingQueue length] length:0, 0];
  [(GKSimpleTimer *)self->_heartbeatTimer invalidate];

  self->_heartbeatTimer = 0;
  [(GKSimpleTimer *)self->_heartbeatTimeoutTimer invalidate];

  self->_heartbeatTimeoutTimer = 0;
  [(GKSimpleTimer *)self->_timeoutTimer invalidate];

  self->_timeoutTimer = 0;
  messageReceiptHandlerList = self->_messageReceiptHandlerList;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke;
  v10[3] = &unk_2796835B8;
  v10[4] = self;
  [(NSMutableArray *)messageReceiptHandlerList enumerateObjectsUsingBlock:v10];
  messageReceiptHandlerHoldingQueue = self->_messageReceiptHandlerHoldingQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_51;
  v9[3] = &unk_2796835B8;
  v9[4] = self;
  [(NSMutableArray *)messageReceiptHandlerHoldingQueue enumerateObjectsUsingBlock:v9];
  [(NSMutableArray *)self->_messageReceiptHandlerList removeAllObjects];
  [(NSMutableArray *)self->_messageReceiptHandlerHoldingQueue removeAllObjects];
  connectedHandler = self->_connectedHandler;
  if (connectedHandler)
  {
    self->_connectedHandler = 0;
    if (self->_targetQueue)
    {
      targetQueue = self->_targetQueue;
    }

    else
    {
      targetQueue = MEMORY[0x277D85CD0];
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_53;
    v8[3] = &unk_279683388;
    v8[4] = connectedHandler;
    dispatch_async(targetQueue, v8);
  }

  else if (self->_receiveDataHandler)
  {
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"Connection closed";
    [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
    (*(self->_receiveDataHandler + 2))(0.0);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(*(a1 + 32) + 112))
    {
      v3 = *(*(a1 + 32) + 112);
    }

    else
    {
      v3 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_2;
    block[3] = &unk_279683388;
    block[4] = a2;
    dispatch_async(v3, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 32);
      v8 = *(v6 + 8);
      if (v8)
      {
        v9 = [objc_msgSend(v8 "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      *buf = 136316418;
      v13 = v4;
      v14 = 2080;
      v15 = "[GKDiscoveryPeerConnection syncCloseConnectionNow]_block_invoke";
      v16 = 1024;
      v17 = 973;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      v22 = 2080;
      v23 = v9;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] receiptHander should not be nil", buf, 0x3Au);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_51(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(*(a1 + 32) + 112))
    {
      v3 = *(*(a1 + 32) + 112);
    }

    else
    {
      v3 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_2_52;
    block[3] = &unk_279683388;
    block[4] = a2;
    dispatch_async(v3, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 32);
      v8 = *(v6 + 8);
      if (v8)
      {
        v9 = [objc_msgSend(v8 "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      *buf = 136316418;
      v13 = v4;
      v14 = 2080;
      v15 = "[GKDiscoveryPeerConnection syncCloseConnectionNow]_block_invoke";
      v16 = 1024;
      v17 = 983;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      v22 = 2080;
      v23 = v9;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] receiptHandler should not be nil", buf, 0x3Au);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __51__GKDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_53(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCA450];
  v5[0] = @"Unable to connect";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-4 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
  result = (*(*(a1 + 32) + 16))();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)invalidate
{
  syncQueue = MEMORY[0x277D85CD0];
  if (self->_syncQueue)
  {
    syncQueue = self->_syncQueue;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__GKDiscoveryPeerConnection_invalidate__block_invoke;
  block[3] = &unk_279682BA8;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

uint64_t __39__GKDiscoveryPeerConnection_invalidate__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 96) = 0;

  *(*(a1 + 32) + 88) = 0;
  v2 = *(a1 + 32);

  return [v2 syncCloseConnectionNow];
}

- (void)dealloc
{
  v26 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      connectionSocket = self->_connectionSocket;
      remoteServiceName = self->_remoteServiceName;
      if (remoteServiceName)
      {
        uTF8String = [[(NSString *)remoteServiceName description] UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      *buf = 136316418;
      v15 = v3;
      v16 = 2080;
      v17 = "[GKDiscoveryPeerConnection dealloc]";
      v18 = 1024;
      v19 = 1020;
      v20 = 2048;
      selfCopy = self;
      v22 = 2048;
      v23 = connectionSocket;
      v24 = 2080;
      v25 = uTF8String;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] deallocating peerConnection object", buf, 0x3Au);
    }
  }

  [(GKDiscoveryPeerConnection *)self syncCloseConnectionNow];
  connectedHandler = self->_connectedHandler;
  if (connectedHandler)
  {
  }

  receiveDataHandler = self->_receiveDataHandler;
  if (receiveDataHandler)
  {
  }

  syncQueue = self->_syncQueue;
  if (syncQueue)
  {
    dispatch_release(syncQueue);
  }

  targetQueue = self->_targetQueue;
  if (targetQueue)
  {
    dispatch_release(targetQueue);
  }

  v13.receiver = self;
  v13.super_class = GKDiscoveryPeerConnection;
  [(GKDiscoveryPeerConnection *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendData:(id)data withCompletionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  if (data)
  {
    v7 = [data length];
    if (+[GKDiscoveryPeerConnection sendDataLimit]>= v7)
    {
      v12 = [handler copy];
      syncQueue = self->_syncQueue;
      if (!syncQueue)
      {
        syncQueue = MEMORY[0x277D85CD0];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__GKDiscoveryPeerConnection_sendData_withCompletionHandler___block_invoke;
      block[3] = &unk_2796833B0;
      block[4] = self;
      block[5] = data;
      block[6] = v12;
      dispatch_async(syncQueue, block);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          connectionSocket = self->_connectionSocket;
          remoteServiceName = self->_remoteServiceName;
          if (remoteServiceName)
          {
            uTF8String = [[(NSString *)remoteServiceName description] UTF8String];
          }

          else
          {
            uTF8String = "<nil>";
          }

          *buf = 136316674;
          v22 = v8;
          v23 = 2080;
          v24 = "[GKDiscoveryPeerConnection sendData:withCompletionHandler:]";
          v25 = 1024;
          v26 = 1055;
          v27 = 2048;
          selfCopy = self;
          v29 = 2048;
          v30 = connectionSocket;
          v31 = 2080;
          v32 = uTF8String;
          v33 = 1024;
          v34 = v7;
          _os_log_error_impl(&dword_24E50C000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] message too big to send (length=%u)", buf, 0x40u);
        }
      }

      v19 = *MEMORY[0x277CCA450];
      v20 = @"Message is too big to send";
      (*(handler + 2))(handler, [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeerConnection" code:-6 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v20, &v19, 1)}]);
    }

    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *(handler + 2);
    v11 = *MEMORY[0x277D85DE8];

    v10(handler, 0);
  }
}

uint64_t __60__GKDiscoveryPeerConnection_sendData_withCompletionHandler___block_invoke(void *a1)
{
  [*(a1[4] + 136) fireIn:*(a1[4] + 144) fromNow:micro()];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 syncSendMessage:2100 data:v3 withCompletionHandler:v4];
}

+ (void)checkConstants
{
  v2 = micro();
  if (*&gkdpc_constantsUpdateTime == 0.0 || v2 - *&gkdpc_constantsUpdateTime > 10.0)
  {
    gkdpc_constantsUpdateTime = *&v2;
    CFPreferencesAppSynchronize(@"com.apple.gamed");
    keyExistsAndHasValidFormat = -86;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"GKDiscoverySendDataLimit", @"com.apple.gamed", &keyExistsAndHasValidFormat);
    v5 = AppIntegerValue <= 0 || keyExistsAndHasValidFormat == 0;
    v6 = 20971520;
    if (!v5)
    {
      v6 = AppIntegerValue;
    }

    gkdpc_sendDataLimit = v6;
    v7 = CFPreferencesGetAppIntegerValue(@"GKDiscoveryReceiveDataLimit", @"com.apple.gamed", &keyExistsAndHasValidFormat);
    v8 = v7 <= 0 || keyExistsAndHasValidFormat == 0;
    v9 = 83886080;
    if (!v8)
    {
      v9 = v7;
    }

    gkdpc_receiveDataLimit = v9;
  }
}

+ (unint64_t)sendDataLimit
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  +[GKDiscoveryPeerConnection checkConstants];
  v3 = gkdpc_sendDataLimit;
  objc_sync_exit(v2);
  return v3;
}

+ (unint64_t)receiveDataLimit
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  +[GKDiscoveryPeerConnection checkConstants];
  v3 = gkdpc_receiveDataLimit;
  objc_sync_exit(v2);
  return v3;
}

- (void)syncConnected:.cold.1()
{
  OUTLINED_FUNCTION_6_2();
  v0 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 32);
  v3 = *(v1 + 8);
  if (v3)
  {
    [objc_msgSend(v3 "description")];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)shouldDecideAboutConnection
{
  OUTLINED_FUNCTION_6_2();
  v1 = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 32);
  v4 = *(v2 + 8);
  if (v4)
  {
    [objc_msgSend(v4 "description")];
  }

  v5 = *(v0 + 16);
  if (v5)
  {
    [objc_msgSend(v5 "description")];
  }

  v6 = *(v0 + 8);
  if (v6)
  {
    [objc_msgSend(v6 "description")];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x4Eu);
  v12 = *MEMORY[0x277D85DE8];
}

void __51__GKDiscoveryPeerConnection_syncAcceptedConnection__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v4 = *(v3 + 32);
  v5 = *(v3 + 8);
  if (v5)
  {
    [objc_msgSend(v5 "description")];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x3Au);
  v11 = *MEMORY[0x277D85DE8];
}

void __67__GKDiscoveryPeerConnection_syncSendMessageReceipt_sequenceNumber___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = *(v4 + 32);
  v6 = *(v4 + 8);
  if (v6)
  {
    [objc_msgSend(v6 "description")];
  }

  v13 = *(a2 + 40);
  v14 = *(a2 + 44);
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x46u);
  v12 = *MEMORY[0x277D85DE8];
}

void __37__GKDiscoveryPeerConnection_timeout___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_8_2(a2, *MEMORY[0x277D85DE8]);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_9_3(&dword_24E50C000, v3, v4, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] timeout timer hit", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void __37__GKDiscoveryPeerConnection_timeout___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_8_2(a2, *MEMORY[0x277D85DE8]);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_9_3(&dword_24E50C000, v3, v4, " [%s] %s:%d ptr [%p] socketPtr [%p] remote [%s] heartbeat timeout timer hit", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

@end