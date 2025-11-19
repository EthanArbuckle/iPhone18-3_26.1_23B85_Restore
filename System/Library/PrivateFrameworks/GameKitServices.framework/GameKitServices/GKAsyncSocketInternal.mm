@interface GKAsyncSocketInternal
- (BOOL)setupSourcesWithSocket:(int)a3 receiveEventHandler:(id)a4 sendEventHandler:(id)a5;
- (GKAsyncSocketInternal)init;
- (void)closeConnectionNow;
- (void)dealloc;
- (void)invalidate;
- (void)receiveData;
- (void)sendData;
- (void)sendData:(id)a3 withCompletionHandler:(id)a4;
- (void)setTargetQueue:(id)a3;
- (void)tcpConnectSockAddr:(const sockaddr *)a3 port:(unsigned __int16)a4;
@end

@implementation GKAsyncSocketInternal

- (GKAsyncSocketInternal)init
{
  v5.receiver = self;
  v5.super_class = GKAsyncSocketInternal;
  v2 = [(GKAsyncSocketInternal *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v2->_dataToSend = v3;
    if (v3)
    {
      v2->_connectionSocket = -1;
      v2->_syncQueue = dispatch_queue_create("com.apple.GameKitServices.GKAsyncSocket", 0);
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)setTargetQueue:(id)a3
{
  if (a3)
  {
    dispatch_retain(a3);
  }

  targetQueue = self->_targetQueue;
  if (targetQueue)
  {
    dispatch_release(targetQueue);
  }

  self->_targetQueue = a3;
}

- (BOOL)setupSourcesWithSocket:(int)a3 receiveEventHandler:(id)a4 sendEventHandler:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = fcntl(a3, 3, 0);
  if (v9 == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v19 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
      if (!v19)
      {
        goto LABEL_28;
      }

      [GKAsyncSocketInternal setupSourcesWithSocket:receiveEventHandler:sendEventHandler:];
    }

LABEL_27:
    LOBYTE(v19) = 0;
    goto LABEL_28;
  }

  if (fcntl(a3, 4, v9 | 4u) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v19 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
      if (!v19)
      {
        goto LABEL_28;
      }

      [GKAsyncSocketInternal setupSourcesWithSocket:receiveEventHandler:sendEventHandler:];
    }

    goto LABEL_27;
  }

  v33 = 1;
  if (setsockopt(a3, 0xFFFF, 4130, &v33, 4u) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v19 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
      if (!v19)
      {
        goto LABEL_28;
      }

      [GKAsyncSocketInternal setupSourcesWithSocket:receiveEventHandler:sendEventHandler:];
    }

    goto LABEL_27;
  }

  v10 = dispatch_source_create(MEMORY[0x277D85D28], a3, 0, self->_syncQueue);
  self->_receiveSource = v10;
  if (!v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        socketName = self->_socketName;
        if (socketName)
        {
          v23 = [[(NSString *)socketName description] UTF8String];
        }

        else
        {
          v23 = "<nil>";
        }

        *buf = 136316418;
        v35 = v20;
        v36 = 2080;
        v37 = "[GKAsyncSocketInternal setupSourcesWithSocket:receiveEventHandler:sendEventHandler:]";
        v38 = 1024;
        v39 = 148;
        v40 = 2048;
        v41 = self;
        v42 = 1024;
        v43 = a3;
        v44 = 2080;
        v45 = v23;
        _os_log_error_impl(&dword_24E50C000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] sd [%d] name [%s] cannot create dispatch source for reading socket", buf, 0x36u);
      }
    }

    goto LABEL_26;
  }

  v11 = dispatch_source_create(MEMORY[0x277D85D50], a3, 0, self->_syncQueue);
  self->_sendSource = v11;
  if (!v11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v27 = self->_socketName;
        if (v27)
        {
          v28 = [[(NSString *)v27 description] UTF8String];
        }

        else
        {
          v28 = "<nil>";
        }

        *buf = 136316418;
        v35 = v24;
        v36 = 2080;
        v37 = "[GKAsyncSocketInternal setupSourcesWithSocket:receiveEventHandler:sendEventHandler:]";
        v38 = 1024;
        v39 = 155;
        v40 = 2048;
        v41 = self;
        v42 = 1024;
        v43 = a3;
        v44 = 2080;
        v45 = v28;
        _os_log_error_impl(&dword_24E50C000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d ptr [%p] sd [%d] name [%s] cannot create dispatch source for writing socket", buf, 0x36u);
      }
    }

    dispatch_release(self->_receiveSource);
LABEL_26:
    close(a3);
    goto LABEL_27;
  }

  self->_connectionSocket = a3;
  dispatch_source_set_event_handler(self->_receiveSource, a4);
  receiveSource = self->_receiveSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __85__GKAsyncSocketInternal_setupSourcesWithSocket_receiveEventHandler_sendEventHandler___block_invoke;
  handler[3] = &__block_descriptor_36_e5_v8__0l;
  v32 = a3;
  dispatch_source_set_cancel_handler(receiveSource, handler);
  dispatch_source_set_event_handler(self->_sendSource, a5);
  sendSource = self->_sendSource;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __85__GKAsyncSocketInternal_setupSourcesWithSocket_receiveEventHandler_sendEventHandler___block_invoke_2;
  v30[3] = &unk_279682BA8;
  v30[4] = self;
  dispatch_source_set_cancel_handler(sendSource, v30);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      connectionSocket = self->_connectionSocket;
      v17 = self->_socketName;
      if (v17)
      {
        v18 = [[(NSString *)v17 description] UTF8String];
      }

      else
      {
        v18 = "<nil>";
      }

      *buf = 136316418;
      v35 = v14;
      v36 = 2080;
      v37 = "[GKAsyncSocketInternal setupSourcesWithSocket:receiveEventHandler:sendEventHandler:]";
      v38 = 1024;
      v39 = 172;
      v40 = 2048;
      v41 = self;
      v42 = 1024;
      v43 = connectionSocket;
      v44 = 2080;
      v45 = v18;
      _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] set up socket", buf, 0x36u);
    }
  }

  dispatch_resume(self->_receiveSource);
  self->_sendSourceSuspended = 0;
  dispatch_resume(self->_sendSource);
  LOBYTE(v19) = 1;
LABEL_28:
  v26 = *MEMORY[0x277D85DE8];
  return v19;
}

void __85__GKAsyncSocketInternal_setupSourcesWithSocket_receiveEventHandler_sendEventHandler___block_invoke_2(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    dispatch_release(v2);
    *(*(a1 + 32) + 8) = 0;
  }
}

uint64_t __51__GKAsyncSocketInternal_tcpAttachSocketDescriptor___block_invoke_40(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCA450];
  v5[0] = @"Failed to setup sources for socket";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKAsyncSocket" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
  result = (*(*(a1 + 32) + 16))();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)tcpConnectSockAddr:(const sockaddr *)a3 port:(unsigned __int16)a4
{
  v4 = a4;
  v51 = *MEMORY[0x277D85DE8];
  *&v50.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v50.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  memset(v31, 170, 28);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v49 + 14) = v6;
  *v48 = v6;
  v49[0] = v6;
  sa_family = a3->sa_family;
  if (sa_family == 30)
  {
    v31[0] = *a3;
    *(v31 + 12) = *&a3->sa_data[10];
    WORD1(v31[0]) = a4;
    v9 = socket(30, 1, 0);
    inet_ntop(30, v31 + 8, v48, 0x2Eu);
    v10 = 28;
    v8 = v31;
  }

  else
  {
    if (sa_family != 2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKAsyncSocketInternal tcpConnectSockAddr:port:];
        }
      }

      connectedHandler = self->_connectedHandler;
      if (connectedHandler)
      {
        if (self->_targetQueue)
        {
          targetQueue = self->_targetQueue;
        }

        else
        {
          targetQueue = MEMORY[0x277D85CD0];
        }

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke;
        v30[3] = &unk_279683388;
        v30[4] = connectedHandler;
        v19 = v30;
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    v8 = &v50;
    v50 = *a3;
    *v50.sa_data = a4;
    v9 = socket(2, 1, 0);
    v10 = 16;
    inet_ntop(2, &v50.sa_data[2], v48, 0x10u);
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v9 == -1)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKAsyncSocketInternal tcpConnectSockAddr:port:];
      }
    }

    v20 = self->_connectedHandler;
    if (v20)
    {
      if (self->_targetQueue)
      {
        targetQueue = self->_targetQueue;
      }

      else
      {
        targetQueue = MEMORY[0x277D85CD0];
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_50;
      v29[3] = &unk_279683388;
      v29[4] = v20;
      v19 = v29;
      goto LABEL_48;
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        connectionSocket = self->_connectionSocket;
        socketName = self->_socketName;
        if (socketName)
        {
          v16 = [[(NSString *)socketName description] UTF8String];
        }

        else
        {
          v16 = "<nil>";
        }

        *buf = 136316930;
        v33 = v12;
        v34 = 2080;
        v35 = "[GKAsyncSocketInternal tcpConnectSockAddr:port:]";
        v36 = 1024;
        v37 = 258;
        v38 = 2048;
        v39 = self;
        v40 = 1024;
        v41 = connectionSocket;
        v42 = 2080;
        v43 = v16;
        v44 = 2080;
        v45 = v48;
        v46 = 1024;
        v47 = __rev16(v4);
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] connecting to %s:%u", buf, 0x46u);
      }
    }

    v21 = fcntl(v9, 3, 0);
    if (v21 != -1)
    {
      fcntl(v9, 4, v21 | 4u);
      *buf = 1;
      setsockopt(v9, 0xFFFF, 4130, buf, 4u);
      if (connect(v9, v8, v10) == -1 && *__error() != 36)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            [GKAsyncSocketInternal tcpConnectSockAddr:port:];
          }
        }

        close(v9);
        v23 = self->_connectedHandler;
        if (v23)
        {
          if (self->_targetQueue)
          {
            targetQueue = self->_targetQueue;
          }

          else
          {
            targetQueue = MEMORY[0x277D85CD0];
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_54;
          block[3] = &unk_279683388;
          block[4] = v23;
          v19 = block;
          goto LABEL_48;
        }
      }

      else
      {
        v26[4] = self;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_2;
        v27[3] = &unk_279682BA8;
        v27[4] = self;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_3;
        v26[3] = &unk_279682BA8;
        if (![(GKAsyncSocketInternal *)self setupSourcesWithSocket:v9 receiveEventHandler:v27 sendEventHandler:v26])
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              [GKAsyncSocketInternal tcpConnectSockAddr:port:];
            }
          }

          v22 = self->_connectedHandler;
          if (v22)
          {
            if (self->_targetQueue)
            {
              targetQueue = self->_targetQueue;
            }

            else
            {
              targetQueue = MEMORY[0x277D85CD0];
            }

            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_58;
            v25[3] = &unk_279683388;
            v25[4] = v22;
            v19 = v25;
LABEL_48:
            dispatch_async(targetQueue, v19);
            [(GKAsyncSocketInternal *)self setConnectedHandler:0];
          }
        }
      }
    }
  }

LABEL_49:
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCA450];
  v5[0] = @"Unknown socket address";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKAsyncSocket" code:-2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
  result = (*(*(a1 + 32) + 16))();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_50(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCA450];
  v5[0] = @"Socket failed";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKAsyncSocket" code:-3 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
  result = (*(*(a1 + 32) + 16))();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_54(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCA450];
  v5[0] = @"Connect failed";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKAsyncSocket" code:-4 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
  result = (*(*(a1 + 32) + 16))();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __49__GKAsyncSocketInternal_tcpConnectSockAddr_port___block_invoke_58(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCA450];
  v5[0] = @"Failed to setup sources for socket";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKAsyncSocket" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
  result = (*(*(a1 + 32) + 16))();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v24 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      connectionSocket = self->_connectionSocket;
      socketName = self->_socketName;
      if (socketName)
      {
        v7 = [[(NSString *)socketName description] UTF8String];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316418;
      v13 = v3;
      v14 = 2080;
      v15 = "[GKAsyncSocketInternal dealloc]";
      v16 = 1024;
      v17 = 311;
      v18 = 2048;
      v19 = self;
      v20 = 1024;
      v21 = connectionSocket;
      v22 = 2080;
      v23 = v7;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] dealloc", buf, 0x36u);
    }
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

  v11.receiver = self;
  v11.super_class = GKAsyncSocketInternal;
  [(GKAsyncSocketInternal *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v23 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      connectionSocket = self->_connectionSocket;
      socketName = self->_socketName;
      if (socketName)
      {
        v7 = [[(NSString *)socketName description] UTF8String];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316418;
      v12 = v3;
      v13 = 2080;
      v14 = "[GKAsyncSocketInternal invalidate]";
      v15 = 1024;
      v16 = 326;
      v17 = 2048;
      v18 = self;
      v19 = 1024;
      v20 = connectionSocket;
      v21 = 2080;
      v22 = v7;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] invalidate", buf, 0x36u);
    }
  }

  self->_invalidated = 1;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__GKAsyncSocketInternal_invalidate__block_invoke;
  block[3] = &unk_279682BA8;
  block[4] = self;
  dispatch_async(syncQueue, block);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __35__GKAsyncSocketInternal_invalidate__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 0;
  v2 = *(a1 + 32);

  return [v2 closeConnectionNow];
}

- (void)sendData:(id)a3 withCompletionHandler:(id)a4
{
  if (self->_invalidated || self->_connectionSocket == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKAsyncSocketInternal sendData:withCompletionHandler:];
      }
    }
  }

  else
  {
    syncQueue = self->_syncQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__GKAsyncSocketInternal_sendData_withCompletionHandler___block_invoke;
    block[3] = &unk_2796833B0;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(syncQueue, block);
  }
}

uint64_t __56__GKAsyncSocketInternal_sendData_withCompletionHandler___block_invoke(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  [*(a1[4] + 32) appendData:a1[5]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = *(v4 + 28);
      v6 = *(v4 + 72);
      if (v6)
      {
        v7 = [objc_msgSend(v6 "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      v8 = [*(a1[4] + 32) length];
      v17 = 136316674;
      v18 = v2;
      v19 = 2080;
      v20 = "[GKAsyncSocketInternal sendData:withCompletionHandler:]_block_invoke";
      v21 = 1024;
      v22 = 344;
      v23 = 2048;
      v24 = v4;
      v25 = 1024;
      v26 = v5;
      v27 = 2080;
      v28 = v7;
      v29 = 1024;
      v30 = v8;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] appending data [%u]", &v17, 0x3Cu);
    }
  }

  if (*(a1[4] + 24) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v11 = a1[4];
        v12 = *(v11 + 28);
        v13 = *(v11 + 72);
        if (v13)
        {
          v14 = [objc_msgSend(v13 "description")];
        }

        else
        {
          v14 = "<nil>";
        }

        v17 = 136316418;
        v18 = v9;
        v19 = 2080;
        v20 = "[GKAsyncSocketInternal sendData:withCompletionHandler:]_block_invoke";
        v21 = 1024;
        v22 = 347;
        v23 = 2048;
        v24 = v11;
        v25 = 1024;
        v26 = v12;
        v27 = 2080;
        v28 = v14;
        _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] resuming sendSource", &v17, 0x36u);
      }
    }

    dispatch_resume(*(a1[4] + 16));
    *(a1[4] + 24) = 0;
  }

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)closeConnectionNow
{
  v40 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      connectionSocket = self->_connectionSocket;
      socketName = self->_socketName;
      if (socketName)
      {
        v7 = [[(NSString *)socketName description] UTF8String];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316418;
      v29 = v3;
      v30 = 2080;
      v31 = "[GKAsyncSocketInternal closeConnectionNow]";
      v32 = 1024;
      v33 = 360;
      v34 = 2048;
      v35 = self;
      v36 = 1024;
      v37 = connectionSocket;
      v38 = 2080;
      v39 = v7;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] closing down connections...", buf, 0x36u);
    }
  }

  sendSource = self->_sendSource;
  if (sendSource)
  {
    dispatch_source_cancel(sendSource);
    if (self->_sendSourceSuspended)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v11 = self->_connectionSocket;
          v12 = self->_socketName;
          if (v12)
          {
            v13 = [[(NSString *)v12 description] UTF8String];
          }

          else
          {
            v13 = "<nil>";
          }

          *buf = 136316418;
          v29 = v9;
          v30 = 2080;
          v31 = "[GKAsyncSocketInternal closeConnectionNow]";
          v32 = 1024;
          v33 = 365;
          v34 = 2048;
          v35 = self;
          v36 = 1024;
          v37 = v11;
          v38 = 2080;
          v39 = v13;
          _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] resuming sendSource", buf, 0x36u);
        }
      }

      dispatch_resume(self->_sendSource);
      self->_sendSourceSuspended = 0;
    }

    v20 = self->_sendSource;
    if (v20)
    {
      dispatch_release(v20);
      self->_sendSource = 0;
    }

    p_connectionSocket = &self->_connectionSocket;
  }

  else
  {
    p_connectionSocket = &self->_connectionSocket;
    if (self->_connectionSocket == -1)
    {
      goto LABEL_28;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *p_connectionSocket;
        v18 = self->_socketName;
        if (v18)
        {
          v19 = [[(NSString *)v18 description] UTF8String];
        }

        else
        {
          v19 = "<nil>";
        }

        *buf = 136316418;
        v29 = v15;
        v30 = 2080;
        v31 = "[GKAsyncSocketInternal closeConnectionNow]";
        v32 = 1024;
        v33 = 373;
        v34 = 2048;
        v35 = self;
        v36 = 1024;
        v37 = v17;
        v38 = 2080;
        v39 = v19;
        _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ptr [%p] sd [%d] name [%s] closing socket", buf, 0x36u);
      }
    }

    close(*p_connectionSocket);
  }

  *p_connectionSocket = -1;
LABEL_28:
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    connectedHandler = self->_connectedHandler;
    if (connectedHandler)
    {
      if (self->_targetQueue)
      {
        targetQueue = self->_targetQueue;
      }

      else
      {
        targetQueue = MEMORY[0x277D85CD0];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__GKAsyncSocketInternal_closeConnectionNow__block_invoke;
      block[3] = &unk_279683388;
      block[4] = connectedHandler;
      dispatch_async(targetQueue, block);
      [(GKAsyncSocketInternal *)self setConnectedHandler:0];
    }

    else
    {
      receiveDataHandler = self->_receiveDataHandler;
      if (self->_targetQueue)
      {
        v24 = self->_targetQueue;
      }

      else
      {
        v24 = MEMORY[0x277D85CD0];
      }

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __43__GKAsyncSocketInternal_closeConnectionNow__block_invoke_2;
      v26[3] = &unk_279683388;
      v26[4] = receiveDataHandler;
      dispatch_async(v24, v26);

      self->_receiveDataHandler = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __43__GKAsyncSocketInternal_closeConnectionNow__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCA450];
  v5[0] = @"Connection closed prematurely";
  [MEMORY[0x277CCA9B8] errorWithDomain:@"GKAsyncSocket" code:-5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
  result = (*(*(a1 + 32) + 16))();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __43__GKAsyncSocketInternal_closeConnectionNow__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0.0);
  }

  return result;
}

- (void)receiveData
{
  OUTLINED_FUNCTION_6_2();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 28);
  v2 = *(v0 + 72);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x36u);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __36__GKAsyncSocketInternal_receiveData__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(a1 + 40) length:*(a1 + 56) freeWhenDone:1];
  v4.n128_u64[0] = *(a1 + 48);
  v5 = *(v2 + 16);

  return v5(v2, v3, 0, v4);
}

- (void)sendData
{
  OUTLINED_FUNCTION_6_2();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 28);
  v2 = *(v0 + 72);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x36u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setupSourcesWithSocket:receiveEventHandler:sendEventHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_2();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 28);
  v2 = *(v0 + 72);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  v3 = *__error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Cu);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setupSourcesWithSocket:receiveEventHandler:sendEventHandler:.cold.2()
{
  OUTLINED_FUNCTION_6_2();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 28);
  v2 = *(v0 + 72);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  v3 = *__error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Cu);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setupSourcesWithSocket:receiveEventHandler:sendEventHandler:.cold.3()
{
  OUTLINED_FUNCTION_6_2();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 28);
  v2 = *(v0 + 72);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  v3 = *__error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Cu);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)tcpAttachSocketDescriptor:.cold.1()
{
  OUTLINED_FUNCTION_6_2();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 28);
  v2 = *(v0 + 72);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x36u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)tcpConnectSockAddr:port:.cold.1()
{
  OUTLINED_FUNCTION_6_2();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 28);
  v2 = *(v0 + 72);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  v3 = *__error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Cu);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)tcpConnectSockAddr:port:.cold.2()
{
  OUTLINED_FUNCTION_6_2();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 28);
  v2 = *(v0 + 72);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x36u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)tcpConnectSockAddr:port:.cold.3()
{
  OUTLINED_FUNCTION_6_2();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 28);
  v2 = *(v0 + 72);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  v3 = *__error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Cu);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)tcpConnectSockAddr:port:.cold.4()
{
  OUTLINED_FUNCTION_6_2();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 28);
  v2 = *(v0 + 72);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x36u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendData:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6_2();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 28);
  v2 = *(v0 + 72);
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x36u);
  v8 = *MEMORY[0x277D85DE8];
}

@end