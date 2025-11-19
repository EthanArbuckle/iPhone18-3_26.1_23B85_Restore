@interface GKDiscoveryPeer
- (BOOL)parseServiceNameForInit:(id)a3;
- (GKDiscoveryPeer)initWithServiceName:(id)a3;
- (id)nextInterfaceIndex;
- (id)stringForState:(int)a3;
- (void)cleanUpForBrowse;
- (void)dealloc;
- (void)didLoseInterface:(id)a3;
- (void)flushDataBuffer;
- (void)invalidate;
- (void)sendData:(id)a3 withCompletionHandler:(id)a4;
- (void)startResolveTimerWithHandler:(id)a3;
- (void)stopResolveTimer;
- (void)timeout:(id)a3;
@end

@implementation GKDiscoveryPeer

- (BOOL)parseServiceNameForInit:(id)a3
{
  if (a3)
  {
    [(GKDiscoveryPeer *)self setServiceName:?];
    v4 = [MEMORY[0x277CCAC80] scannerWithString:self->_serviceName];
    v8 = 0;
    v5 = [v4 scanUpToString:@"+" intoString:&v8];
    if (v5)
    {
      [v4 scanString:@"+" intoString:0];
      v7 = 0;
      [v4 scanUpToString:@"+" intoString:&v7];
      self->_deviceID = v8;
      self->_playerID = v7;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (GKDiscoveryPeer)initWithServiceName:(id)a3
{
  v7.receiver = self;
  v7.super_class = GKDiscoveryPeer;
  v4 = [(GKDiscoveryPeer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if ([(GKDiscoveryPeer *)v4 parseServiceNameForInit:a3])
    {
      v5->_interfaces = objc_alloc_init(MEMORY[0x277CBEB58]);
      v5->_orderedInterfaces = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5->_attemptedInterfaces = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5->_shouldSignalDiscovery = 1;
      v5->_syncQueue = dispatch_queue_create([a3 UTF8String], 0);
      v5->_sendDataBuffer = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5->_state = 0;
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      Name = sel_getName(a2);
      serviceName = self->_serviceName;
      if (serviceName)
      {
        v8 = [[(NSString *)serviceName description] UTF8String];
      }

      else
      {
        v8 = "<nil>";
      }

      *buf = 136316162;
      v13 = v4;
      v14 = 2080;
      v15 = "[GKDiscoveryPeer dealloc]";
      v16 = 1024;
      v17 = 166;
      v18 = 2080;
      v19 = Name;
      v20 = 2080;
      v21 = v8;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: peer[%s] -dealloc", buf, 0x30u);
    }
  }

  syncQueue = self->_syncQueue;
  if (syncQueue)
  {
    dispatch_release(syncQueue);
  }

  self->_connection = 0;
  [(GKSimpleTimer *)self->_resolveTimer invalidate];

  self->_resolveTimer = 0;
  v11.receiver = self;
  v11.super_class = GKDiscoveryPeer;
  [(GKDiscoveryPeer *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)stringForState:(int)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3 >= 4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([(GKDiscoveryPeer *)self serviceName])
        {
          v8 = [[(NSString *)[(GKDiscoveryPeer *)self serviceName] description] UTF8String];
        }

        else
        {
          v8 = "<nil>";
        }

        v10 = 136316162;
        v11 = v6;
        v12 = 2080;
        v13 = "[GKDiscoveryPeer stringForState:]";
        v14 = 1024;
        v15 = 209;
        v16 = 2080;
        v17 = v8;
        v18 = 1024;
        v19 = a3;
        _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] unrecognized state [%d]", &v10, 0x2Cu);
      }
    }

    result = @"unknown";
  }

  else
  {
    result = off_279683088[a3];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)nextInterfaceIndex
{
  v34 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  orderedInterfaces = self->_orderedInterfaces;
  v4 = [(NSMutableArray *)orderedInterfaces countByEnumeratingWithState:&v17 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(orderedInterfaces);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_attemptedInterfaces containsObject:v8]& 1) == 0)
        {
          [(NSMutableArray *)self->_attemptedInterfaces addObject:v8];
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)orderedInterfaces countByEnumeratingWithState:&v17 objects:v33 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      if (serviceName)
      {
        v12 = [[(NSString *)serviceName description] UTF8String];
      }

      else
      {
        v12 = "<nil>";
      }

      if ([(NSMutableArray *)self->_orderedInterfaces description])
      {
        v13 = [objc_msgSend(-[NSMutableArray description](self->_orderedInterfaces "description")];
      }

      else
      {
        v13 = "<nil>";
      }

      if ([v8 description])
      {
        v14 = [objc_msgSend(objc_msgSend(v8 "description")];
      }

      else
      {
        v14 = "<nil>";
      }

      *buf = 136316418;
      v22 = v9;
      v23 = 2080;
      v24 = "[GKDiscoveryPeer nextInterfaceIndex]";
      v25 = 1024;
      v26 = 247;
      v27 = 2080;
      v28 = v12;
      v29 = 2080;
      v30 = v13;
      v31 = 2080;
      v32 = v14;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] _orderedInterfaces = %s next interface to resolve on = %s", buf, 0x3Au);
    }
  }

  if (v8)
  {
    [(NSMutableArray *)self->_orderedInterfaces removeObject:v8];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)startResolveTimerWithHandler:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = micro();
  if (!a3 && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = v6;
      v15 = 2080;
      v16 = "[GKDiscoveryPeer startResolveTimerWithHandler:]";
      v17 = 1024;
      v18 = 260;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d timeoutHandler is nil", &v13, 0x1Cu);
    }
  }

  -[GKDiscoveryPeer setResolveTimeoutHandler:](self, "setResolveTimeoutHandler:", [a3 copy]);
  v8 = objc_alloc_init(GKSimpleTimer);
  [(GKSimpleTimer *)v8 setDelegate:self];
  [(GKDiscoveryPeer *)self setResolveTimer:v8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryPeer *)self serviceName])
      {
        v11 = [[(NSString *)[(GKDiscoveryPeer *)self serviceName] description] UTF8String];
      }

      else
      {
        v11 = "<nil>";
      }

      v13 = 136316162;
      v14 = v9;
      v15 = 2080;
      v16 = "[GKDiscoveryPeer startResolveTimerWithHandler:]";
      v17 = 1024;
      v18 = 269;
      v19 = 2080;
      v20 = v11;
      v21 = 2048;
      v22 = 0x404E000000000000;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] starting resolve timer with timout [%f seconds]", &v13, 0x30u);
    }
  }

  [(GKSimpleTimer *)v8 fireIn:60.0 fromNow:v5];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stopResolveTimer
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_resolveTimer)
  {
    if (self->_resolveTimeoutHandler)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          if ([(GKDiscoveryPeer *)self serviceName])
          {
            v5 = [[(NSString *)[(GKDiscoveryPeer *)self serviceName] description] UTF8String];
          }

          else
          {
            v5 = "<nil>";
          }

          v7 = 136315906;
          v8 = v3;
          v9 = 2080;
          v10 = "[GKDiscoveryPeer stopResolveTimer]";
          v11 = 1024;
          v12 = 278;
          v13 = 2080;
          v14 = v5;
          _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] resolve timer stopped", &v7, 0x26u);
        }
      }
    }

    [(GKDiscoveryPeer *)self setResolveTimeoutHandler:0];
    [(GKSimpleTimer *)[(GKDiscoveryPeer *)self resolveTimer] invalidate];
    [(GKDiscoveryPeer *)self setResolveTimer:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didLoseInterface:(id)a3
{
  [(NSMutableSet *)self->_interfaces removeObject:?];
  [(NSMutableArray *)self->_orderedInterfaces removeObject:a3];
  attemptedInterfaces = self->_attemptedInterfaces;

  [(NSMutableArray *)attemptedInterfaces removeObject:a3];
}

- (void)cleanUpForBrowse
{
  [(NSMutableSet *)self->_interfaces removeAllObjects];
  [(NSMutableArray *)self->_orderedInterfaces removeAllObjects];
  [(NSMutableArray *)self->_attemptedInterfaces removeAllObjects];
  sendDataBuffer = self->_sendDataBuffer;

  [(NSMutableArray *)sendDataBuffer removeAllObjects];
}

- (void)invalidate
{
  [(GKDiscoveryPeerConnection *)self->_connection invalidate];
  [(GKDiscoveryPeerConnection *)self->_trialConnection invalidate];

  [(GKDiscoveryPeer *)self cleanUpForBrowse];
}

- (void)sendData:(id)a3 withCompletionHandler:(id)a4
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (self->_state == 3)
  {
    connection = self->_connection;
    v5 = *MEMORY[0x277D85DE8];

    [(GKDiscoveryPeerConnection *)connection sendData:a3 withCompletionHandler:a4];
  }

  else
  {
    sendDataBuffer = self->_sendDataBuffer;
    v8[0] = @"GKDiscoveryPeerSendDataKey";
    v8[1] = @"GKDiscoveryPeerSendCompletionHandlerKey";
    v9[0] = a3;
    v9[1] = a4;
    -[NSMutableArray addObject:](sendDataBuffer, "addObject:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2]);
    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)flushDataBuffer
{
  v54 = *MEMORY[0x277D85DE8];
  state = self->_state;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (state == 3)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        Name = sel_getName(a2);
        serviceName = self->_serviceName;
        if (serviceName)
        {
          v10 = [[(NSString *)serviceName description] UTF8String];
        }

        else
        {
          v10 = "<nil>";
        }

        v15 = [(NSMutableArray *)self->_sendDataBuffer count];
        *buf = 136316418;
        v43 = v6;
        v44 = 2080;
        v45 = "[GKDiscoveryPeer flushDataBuffer]";
        v46 = 1024;
        v47 = 322;
        v48 = 2080;
        v49 = Name;
        v50 = 2080;
        v51 = v10;
        v52 = 1024;
        v53 = v15;
        _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: peer [%s] relaying buffered data (%d sendData calls) to the peer connection object)", buf, 0x36u);
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    sendDataBuffer = self->_sendDataBuffer;
    v17 = [(NSMutableArray *)sendDataBuffer countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(sendDataBuffer);
          }

          -[GKDiscoveryPeerConnection sendData:withCompletionHandler:](self->_connection, "sendData:withCompletionHandler:", [*(*(&v34 + 1) + 8 * i) objectForKeyedSubscript:@"GKDiscoveryPeerSendDataKey"], objc_msgSend(*(*(&v34 + 1) + 8 * i), "objectForKeyedSubscript:", @"GKDiscoveryPeerSendCompletionHandlerKey"));
        }

        v18 = [(NSMutableArray *)sendDataBuffer countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v18);
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_serviceName;
        if (v13)
        {
          v14 = [[(NSString *)v13 description] UTF8String];
        }

        else
        {
          v14 = "<nil>";
        }

        v21 = [(NSMutableArray *)self->_sendDataBuffer count];
        *buf = 136316162;
        v43 = v11;
        v44 = 2080;
        v45 = "[GKDiscoveryPeer flushDataBuffer]";
        v46 = 1024;
        v47 = 331;
        v48 = 2080;
        v49 = v14;
        v50 = 1024;
        LODWORD(v51) = v21;
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] no connection; notify GK that data [%d] failed to send", buf, 0x2Cu);
      }
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = self->_sendDataBuffer;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      v26 = *MEMORY[0x277CCA450];
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v28 = [*(*(&v30 + 1) + 8 * j) objectForKeyedSubscript:@"GKDiscoveryPeerSendCompletionHandlerKey"];
          if (v28)
          {
            v38 = v26;
            v39 = @"Unable to connect";
            (*(v28 + 16))(v28, [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeer" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v39, &v38, 1)}]);
          }
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v24);
    }
  }

  [(NSMutableArray *)self->_sendDataBuffer removeAllObjects];
  v29 = *MEMORY[0x277D85DE8];
}

- (void)timeout:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryPeer *)self serviceName])
      {
        v6 = [[(NSString *)[(GKDiscoveryPeer *)self serviceName] description] UTF8String];
      }

      else
      {
        v6 = "<nil>";
      }

      v9 = 136315906;
      v10 = v4;
      v11 = 2080;
      v12 = "[GKDiscoveryPeer timeout:]";
      v13 = 1024;
      v14 = 349;
      v15 = 2080;
      v16 = v6;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] resolve timout fired", &v9, 0x26u);
    }
  }

  resolveTimeoutHandler = self->_resolveTimeoutHandler;
  if (resolveTimeoutHandler)
  {
    resolveTimeoutHandler[2]();
  }

  [(GKDiscoveryPeer *)self setResolveTimeoutHandler:0];
  v8 = *MEMORY[0x277D85DE8];
}

@end