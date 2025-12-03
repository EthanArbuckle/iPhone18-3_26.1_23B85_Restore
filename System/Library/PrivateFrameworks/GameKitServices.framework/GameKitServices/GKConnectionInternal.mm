@interface GKConnectionInternal
- (BOOL)convertParticipantID:(id)d toPeerID:(id *)iD;
- (BOOL)convertPeerID:(id)d toParticipantID:(id *)iD;
- (BOOL)localGamingCheckEstablishConnection:(id)connection connectionData:(id)data;
- (BOOL)shouldWeInitiateRelayWithPID:(unsigned int)d;
- (BOOL)startListeningForLocalGamingCDX;
- (GKConnectionInternal)initWithParticipantID:(id)d;
- (id)createInitiateRelayDictionaryForParticipant:(id)participant remotePeerID:(id)d;
- (id)createInsecureTicketUsingSortedConnectionsFromList:(id)list;
- (id)eventDelegate;
- (id)extractBlobUsingData:(id)data withSourcePID:(unsigned int)d destPID:(unsigned int)iD;
- (id)getLocalConnectionDataForLocalGaming;
- (id)networkStatistics;
- (id)networkStatisticsDictionaryForGCKStats:(void *)stats;
- (unsigned)gckPID;
- (void)CDXClient:(id)client error:(id)error;
- (void)CDXClient:(id)client preblob:(id)preblob;
- (void)CDXClientSession:(id)session receivedData:(id)data from:(int64_t)from;
- (void)cancelConnectParticipant:(id)participant;
- (void)connectParticipantsWithConnectionData:(id)data withSessionInfo:(id)info;
- (void)connectPendingConnectionsFromList:(id)list sessionInfo:(id)info;
- (void)dealloc;
- (void)doRelayCheckForRemotePeerID:(id)d;
- (void)eventDelegate;
- (void)gckPID;
- (void)getLocalConnectionDataForLocalGaming;
- (void)getLocalConnectionDataWithCompletionHandler:(id)handler;
- (void)internalInitiateRelayWithParticipant:(id)participant withConnectionData:(id)data withRelayInfo:(id)info didInitiate:(BOOL)initiate;
- (void)internal_setRemoteConnectionData:(id)data fromParticipantID:(id)d pendingConnectionPIDList:(id)list;
- (void)localGamingReceiveDataHandler:(id)handler data:(id)data time:(double)time error:(id)error;
- (void)preRelease;
- (void)setCdxClient:(id)client;
- (void)setEventDelegate:(id)delegate;
- (void)setParticipantID:(id)d forPeerID:(id)iD;
- (void)startListeningForLocalGamingCDX;
@end

@implementation GKConnectionInternal

- (GKConnectionInternal)initWithParticipantID:(id)d
{
  VRTraceReset();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"GKVerboseLogging", @"com.apple.gamekit", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppBooleanValue == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    VRTraceSetErrorLogLevel();
  }

  v11.receiver = self;
  v11.super_class = GKConnectionInternal;
  v7 = [(GKConnectionInternal *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_cdxSessions = 0;
    *&v7->_gckPID = d;
    *(&v8->super._pid + 1) = GCKSessionCreateUniqueID();
    if (GCKSessionCreate(0))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKConnectionInternal initWithParticipantID:];
        }
      }

      return 0;
    }

    else
    {
      LODWORD(v8->_updateRelayQueue) = 0;
      v8->_gckSession = objc_alloc_init(MEMORY[0x277CBEB18]);
      GCKSessionSetLocalName(v8->_pidGUID, [d UTF8String], objc_msgSend(d, "lengthOfBytesUsingEncoding:", 4));
      pthread_mutex_init(&v8->_preblobCallbackCancelTime, 0);
      pthread_cond_init(&v8->_xPreblobFetch.__opaque[48], 0);
      pthread_mutex_init(&v8->_cPreblobFetch.__opaque[32], 0);
      pthread_cond_init(&v8->_xPrepareThread.__opaque[48], 0);
      pthread_mutex_init(&v8->_pidToConnectTimeoutSource, 0);
      *&v8->_wakeTime = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8->_pidToPreblobMap = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8->_preblobToPIDMap = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8->_pidToConnectionDataMap = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8->_allowRelayPIDList = objc_alloc_init(MEMORY[0x277CBEB38]);
      *&v8->_xRelay.__opaque[48] = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8->_pidToRelayConnectionDataMap = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8->_pidToRelayInitiateInfoMap = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8->_pidToRelayUpdateInfoMap = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8->_initRelayQueue = objc_alloc_init(MEMORY[0x277CBEB38]);
      *&v8->_fAllowMoreRelay = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (+[GKConnection isRelayEnabled])
      {
        LOBYTE(v8->_pendingConnectionPIDList) = 1;
      }

      v8->_localGamingCDXListenSource = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8->_localGamingSocketToPIDMap = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8->_localGamingSocketToConnectionDataMap = objc_alloc_init(MEMORY[0x277CBEB58]);
      -[NSMutableArray setObject:forKeyedSubscript:](v8->_allowRelayPIDList, "setObject:forKeyedSubscript:", d, [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(&v8->super._pid + 1)]);
      -[GKConnectionInternal setCdxSessions:](v8, "setCdxSessions:", [MEMORY[0x277CBEB38] dictionary]);
      v9 = CFGetAllocator(v8);
      v8->_pidToPlayerIDMap = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], &dispatch_value_callbacks);
      if ([off_279682970 getAddressForService:*off_2796828C0])
      {
        [(GKConnectionInternal *)v8 setCdxClient:[[CDXClient alloc] initWithOptions:0 delegate:v8]];
      }

      HIDWORD(v8->_updateRelayQueue) = -1;
      v8->_reportingAgent = objc_alloc_init(MEMORY[0x277CE57F0]);
    }
  }

  return v8;
}

- (void)preRelease
{
  v20 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    v6 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        if (objc_opt_class())
        {
          v7 = [objc_msgSend(objc_opt_class() "description")];
        }

        else
        {
          v7 = "<nil>";
        }

        v10 = 136316162;
        v11 = v4;
        v12 = 2080;
        v13 = "[GKConnectionInternal preRelease]";
        v14 = 1024;
        v15 = 512;
        v16 = 2080;
        v17 = v7;
        v18 = 2080;
        Name = sel_getName(a2);
        _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%s %s]", &v10, 0x30u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      if (objc_opt_class())
      {
        v8 = [objc_msgSend(objc_opt_class() "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      v10 = 136316162;
      v11 = v4;
      v12 = 2080;
      v13 = "[GKConnectionInternal preRelease]";
      v14 = 1024;
      v15 = 512;
      v16 = 2080;
      v17 = v8;
      v18 = 2080;
      Name = sel_getName(a2);
      _os_log_debug_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%s %s]", &v10, 0x30u);
    }
  }

  LODWORD(self->_updateRelayQueue) = 1;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a2 + 24) UTF8String];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x30u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getLocalConnectionDataWithCompletionHandler:(id)handler
{
  v33[1] = *MEMORY[0x277D85DE8];
  TimingLog(3, 1, "Getting local connection data");
  reportingAgent = self->_reportingAgent;
  perfTimerStart();
  pthread_mutex_lock(&self->_preblobCallbackCancelTime);
  if (self->_preblob)
  {
    v6 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA470];
    v33[0] = @"Previous getLocalConnectionData not completed yet";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v8 = v6;
    v9 = 510;
LABEL_3:
    (*(handler + 2))(handler, 0, [v8 errorWithDomain:@"GKConnection" code:v9 userInfo:v7]);
    goto LABEL_17;
  }

  if (![(GKConnectionInternal *)self cdxClient])
  {
    if (![off_279682970 getAddressForService:*off_2796828C0])
    {
      v17 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA470];
      v31 = @"CDX settings are not set";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v8 = v17;
      v9 = 509;
      goto LABEL_3;
    }

    [(GKConnectionInternal *)self setCdxClient:[[CDXClient alloc] initWithOptions:0 delegate:self]];
  }

  if (self->_cdxSessions)
  {
    v21 = bswap32(*(&self->super._pid + 1));
    v10 = [MEMORY[0x277CBEB28] dataWithBytes:&v21 length:4];
    [v10 appendData:self->_cdxSessions];
    TimingLog(3, 0, "Got local connection data - passing data to app");
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      v13 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v10 length];
          *buf = 136315906;
          v23 = v11;
          v24 = 2080;
          v25 = "[GKConnectionInternal getLocalConnectionDataWithCompletionHandler:]";
          v26 = 1024;
          v27 = 609;
          v28 = 2048;
          v29 = v14;
          _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got local connection data size=%lu", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(GKConnectionInternal *)v11 getLocalConnectionDataWithCompletionHandler:v10];
      }
    }

    (*(handler + 2))(handler, v10, 0);
    TimingLog(3, 0, "Got local connection data - done");
    v18 = self->_reportingAgent;
    perfTimerStop();
  }

  else
  {
    self->_preblob = [handler copy];
    *&self->_preblobCallback = micro() + 60.0;
    v15 = dispatch_time(0, 60000000000);
    asyncWorkQueue = [(GKConnectionInternal *)self asyncWorkQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__GKConnectionInternal_getLocalConnectionDataWithCompletionHandler___block_invoke;
    v20[3] = &unk_279682BA8;
    v20[4] = self;
    dispatch_after(v15, asyncWorkQueue, v20);
  }

LABEL_17:
  pthread_mutex_unlock(&self->_preblobCallbackCancelTime);
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __68__GKConnectionInternal_getLocalConnectionDataWithCompletionHandler___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((*(a1 + 32) + 96));
  v2 = micro();
  v3 = *(a1 + 32);
  if (*(v3 + 80) && v2 > *(v3 + 88))
  {
    TimingLog(3, 0, "Got local connection data - timeout");
    v4 = *(*(a1 + 32) + 80);
    v7 = *MEMORY[0x277CCA470];
    v8[0] = @"getLocalConnectionData timed out";
    (*(v4 + 16))(v4, 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"GKConnection" code:503 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}]);

    *(*(a1 + 32) + 80) = 0;
    v3 = *(a1 + 32);
  }

  result = pthread_mutex_unlock((v3 + 96));
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)shouldWeInitiateRelayWithPID:(unsigned int)d
{
  v32 = *MEMORY[0x277D85DE8];
  memset(md, 170, sizeof(md));
  memset(v27, 170, sizeof(v27));
  data = bswap32(*(&self->super._pid + 1));
  v31 = bswap32(d);
  v29[0] = v31;
  v29[1] = data;
  CC_MD5(&data, 8u, md);
  CC_MD5(v29, 8u, v27);
  v5 = bswap64(*md);
  v6 = bswap64(*v27);
  if (v5 == v6 && (v5 = bswap64(*&md[8]), v6 = bswap64(*&v27[8]), v5 == v6))
  {
    v7 = 0;
  }

  else if (v5 < v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(&self->super._pid + 1);
      v11 = @"should not";
      v15 = 136316418;
      v16 = v8;
      if (v7 < 0)
      {
        v11 = @"should";
      }

      v17 = 2080;
      v18 = "[GKConnectionInternal shouldWeInitiateRelayWithPID:]";
      v19 = 1024;
      v20 = 752;
      v21 = 1024;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 1024;
      dCopy = d;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d shouldWeInitiateRelayWithPID: Local participant='%d' %@ initiate relay with remote participant='%d'", &v15, 0x32u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7 >> 31;
}

- (void)connectParticipantsWithConnectionData:(id)data withSessionInfo:(id)info
{
  v85 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *&self->_gckPID;
      v8 = *(&self->super._pid + 1);
      *buf = 136316674;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]";
      *&buf[22] = 1024;
      *&buf[24] = 757;
      *&buf[28] = 2112;
      *&buf[30] = v7;
      *&buf[38] = 1024;
      *&buf[40] = v8;
      *&buf[44] = 2112;
      *&buf[46] = data;
      v83 = 2112;
      infoCopy = info;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKConnectionInternal(%@ (%d)) connectParticipantsWithConnectionData is '%@', sessionInfo is '%@'", buf, 0x40u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]";
      *&buf[22] = 1024;
      *&buf[24] = 759;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d start-p2p-hole-punch", buf, 0x1Cu);
    }
  }

  TimingLog(3, 1, "Start holepunching for peer to peer");
  object = dispatch_group_create();
  if (object)
  {
    v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
    obj = [data allKeys];
    if (info)
    {
      objc_sync_enter(self);
      if (LOBYTE(self->_pendingConnectionPIDList) == 1 && [obj count] == 1)
      {
        v11 = [data objectForKeyedSubscript:{objc_msgSend(obj, "objectAtIndexedSubscript:", 0)}];
        if ([v11 length] < 4)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v36 = VRTraceErrorLogLevelToCSTR();
            v37 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              -[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:].cold.1([objc_msgSend(obj objectAtIndex:{0), "UTF8String"}], buf, v36, v37);
            }
          }
        }

        else
        {
          v12 = *[v11 bytes];
          v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", bswap32(v12)];
          [*&self->_fAllowMoreRelay addObject:v13];

          LOBYTE(self->_pendingConnectionPIDList) = 0;
        }
      }

      objc_sync_exit(self);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v38 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
      if (v38)
      {
        v39 = *v66;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v66 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v41 = *(*(&v65 + 1) + 8 * i);
            v42 = [data objectForKeyedSubscript:v41];
            v43 = v42;
            if (v42)
            {
              v44 = bswap32(*[v42 bytes]);
              v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v44];
              [(GKConnectionInternal *)self setParticipantID:v41 forPeerID:v45];
              pidsPreparedForConnection = self->_pidsPreparedForConnection;
              v47 = *(&self->super._pid + 1);
              connectingGKLog();
              [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
              v48 = self->_pidsPreparedForConnection;
              if (*&self->_gckPID)
              {
                v49 = *&self->_gckPID;
              }

              v50 = self->_pidsPreparedForConnection;
              reportingGKAppInfo();
              asyncWorkQueue = [(GKConnectionInternal *)self asyncWorkQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_200;
              block[3] = &unk_279682FA0;
              block[4] = self;
              block[5] = v41;
              block[6] = v45;
              block[7] = v43;
              block[8] = v59;
              v64 = v44;
              dispatch_group_async(object, asyncWorkQueue, block);
            }
          }

          v38 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
        }

        while (v38);
      }

      asyncWorkQueue2 = [(GKConnectionInternal *)self asyncWorkQueue];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_204;
      v62[3] = &unk_279682C18;
      v62[4] = self;
      v62[5] = v59;
      v62[6] = info;
      dispatch_group_notify(object, asyncWorkQueue2, v62);

      dispatch_release(object);
    }

    else
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v55 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
      if (v55)
      {
        v57 = 0;
        v54 = *v72;
        for (j = *v72; ; j = *v72)
        {
          if (j != v54)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v71 + 1) + 8 * v57);
          v16 = [data objectForKeyedSubscript:v15];
          if ([v16 length] > 5)
          {
            v21 = *[v16 bytes];
            v22 = *([v16 bytes] + 4);
            if ([(GKConnectionInternal *)self shouldWeInitiateRelayWithPID:bswap32(v21)])
            {
              v23 = [MEMORY[0x277CBEB58] set];
              bytes = [v16 bytes];
              if (([v16 length] - 11) <= 0xFFFFFFFFFFFFFFFALL)
              {
                v25 = 6;
                do
                {
                  v26 = v25 + 1;
                  v80 = 0xAAAAAAAAAAAAAAAALL;
                  v79 = 0xAAAAAAAAAAAAAAAALL;
                  v27 = *(bytes + v25);
                  if (v27 == 4)
                  {
                    v80 = 0;
                    v79 = 528;
                    HIDWORD(v79) = *(bytes + v26);
                    TimingLog(3, 0, "starting local CDX tcp connection (connect)");
                    v28 = objc_alloc_init(GKAsyncSocket);
                    v25 += 5;
                    if (v28)
                    {
                      [v23 addObject:v28];
                      v70[0] = MEMORY[0x277D85DD0];
                      v70[1] = 3221225472;
                      v70[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke;
                      v70[3] = &unk_279682EE0;
                      v70[4] = self;
                      v70[5] = v28;
                      [(GKAsyncSocket *)v28 setReceiveDataHandler:v70];
                      v69[0] = MEMORY[0x277D85DD0];
                      v69[1] = 3221225472;
                      v69[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_2;
                      v69[3] = &unk_279682F28;
                      v69[4] = v23;
                      v69[5] = v28;
                      v69[6] = self;
                      [(GKAsyncSocket *)v28 setConnectedHandler:v69];
                      *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
                      *&v29 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      *&buf[16] = v29;
                      *&buf[32] = v29;
                      *buf = v29;
                      v78 = 0xAAAAAAAAAAAAAAAALL;
                      v76 = v29;
                      v77 = v29;
                      v30 = MEMORY[0x277CCACA8];
                      v31 = *(&self->super._pid + 1);
                      SAToIPPORT();
                      -[GKAsyncSocket setSocketName:](v28, "setSocketName:", [v30 stringWithFormat:@"localCDX[%u][%08X] (connect-to[%s]) (ptr=%p)", v31, v31, IPPORTToStringWithSize(), v28]);
                      [(GKAsyncSocket *)v28 setTargetQueue:MEMORY[0x277D85CD0]];
                      [(GKAsyncSocket *)v28 tcpConnectSockAddr:&v79 port:v22];
                    }
                  }

                  else
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      v32 = VRTraceErrorLogLevelToCSTR();
                      v33 = *MEMORY[0x277CE5818];
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315906;
                        *&buf[4] = v32;
                        *&buf[12] = 2080;
                        *&buf[14] = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]";
                        *&buf[22] = 1024;
                        *&buf[24] = 848;
                        *&buf[28] = 1024;
                        *&buf[30] = v27;
                        _os_log_error_impl(&dword_24E50C000, v33, OS_LOG_TYPE_ERROR, " [%s] %s:%d unknown ip address size (%u)", buf, 0x22u);
                      }
                    }

                    v25 = v26;
                  }
                }

                while (([v16 length] - v25) > 4);
              }
            }

            else if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v34 = VRTraceErrorLogLevelToCSTR();
              v35 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = v34;
                *&buf[12] = 2080;
                *&buf[14] = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]";
                *&buf[22] = 1024;
                *&buf[24] = 792;
                _os_log_impl(&dword_24E50C000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d other side to start local gaming CDX", buf, 0x1Cu);
              }
            }
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              v19 = "<nil>";
              if (v15)
              {
                v19 = [objc_msgSend(v15 "description")];
              }

              v20 = [v16 length];
              *buf = 136316162;
              *&buf[4] = v17;
              *&buf[12] = 2080;
              *&buf[14] = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]";
              *&buf[22] = 1024;
              *&buf[24] = 777;
              *&buf[28] = 2080;
              *&buf[30] = v19;
              *&buf[38] = 1024;
              *&buf[40] = v20;
              _os_log_error_impl(&dword_24E50C000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d not enough connection data for %s (%u)", buf, 0x2Cu);
            }
          }

          if (++v57 >= v55)
          {
            v55 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
            if (!v55)
            {
              break;
            }

            v57 = 0;
          }
        }
      }

      dispatch_release(object);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:];
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

uint64_t __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v6 = [objc_msgSend(a2 "description")];
      }

      else
      {
        v6 = "<nil>";
      }

      v11 = 136315906;
      v12 = v4;
      v13 = 2080;
      v14 = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke_2";
      v15 = 1024;
      v16 = 823;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connected local CDX (%s)", &v11, 0x26u);
    }
  }

  [*(a1 + 32) removeObject:*(a1 + 40)];
  if (a2)
  {
    result = [*(a1 + 40) invalidate];
  }

  else
  {
    [*(a1 + 32) enumerateObjectsUsingBlock:&__block_literal_global_0];
    [*(a1 + 32) removeAllObjects];
    v9 = a1 + 40;
    v8 = *(a1 + 40);
    v11 = bswap32(*(*(v9 + 8) + 20));
    result = [v8 sendData:objc_msgSend(MEMORY[0x277CBEA90] withCompletionHandler:{"dataWithBytes:length:", &v11, 4), 0}];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_200(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) timerQueue];
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_2_201;
  v23[3] = &unk_279682F50;
  v4 = *(a1 + 32);
  v24 = *(a1 + 40);
  v25 = v3;
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v26 = v4;
  v27 = v6;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_202;
  v22[3] = &unk_279682F78;
  v22[4] = v24;
  v22[5] = v4;
  v22[6] = v6;
  v22[7] = v3;
  v22[8] = v23;
  v7 = *(a1 + 64);
  [v4 internal_setRemoteConnectionData:v5 fromParticipantID:? pendingConnectionPIDList:?];
  if (v3)
  {
    v8 = [*(a1 + 32) timerQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_203;
    v21[3] = &unk_279682C18;
    v21[4] = *(a1 + 32);
    v21[5] = v3;
    v21[6] = *(a1 + 48);
    dispatch_sync(v8, v21);
    v9 = [*(a1 + 32) shouldWeInitiateRelayWithPID:*(a1 + 72)];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v9)
    {
      v11 = 5000000000;
      if (ErrorLogLevelForModule >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v29 = v12;
          v30 = 2080;
          v31 = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke_2";
          v32 = 1024;
          v33 = 990;
          _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectParticipantsWithConnectionData: This side is initiating relay", buf, 0x1Cu);
        }
      }

      v14 = v22;
    }

    else
    {
      v11 = 120000000000;
      if (ErrorLogLevelForModule >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v29 = v17;
          v30 = 2080;
          v31 = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke";
          v32 = 1024;
          v33 = 1000;
          _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectParticipantsWithConnectionData: This side is not initiating relay", buf, 0x1Cu);
        }
      }

      v14 = v23;
    }

    v19 = dispatch_time(0, v11);
    dispatch_source_set_timer(v3, v19, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(v3, v14);
    dispatch_resume(v3);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
    v16 = *MEMORY[0x277CE5818];
    if (IsOSFaultDisabled)
    {
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_200_cold_2();
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
    {
      __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_200_cold_1();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_2_201(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *v6 = 136315906;
      *&v6[4] = v2;
      *&v6[12] = 2080;
      *&v6[14] = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke_2";
      v7 = 1024;
      v8 = 896;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ************************************ connect_timeout_block Timer hit for '%@'", v6, 0x26u);
    }
  }

  dispatch_source_cancel(*(a1 + 40));
  v5 = *(*(a1 + 48) + 32);
  [*(a1 + 56) intValue];
  GCKSessionIsParticipantConnected();
}

void __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_202(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v16 = 136315906;
      v17 = v2;
      v18 = 2080;
      v19 = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke";
      v20 = 1024;
      v21 = 919;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ************************************ relay_setup_block Timer hit for '%@'", &v16, 0x26u);
    }
  }

  v5 = *(*(a1 + 40) + 464);
  objc_sync_enter(v5);
  v6 = [*(*(a1 + 40) + 464) objectForKeyedSubscript:*(a1 + 48)];
  objc_sync_exit(v5);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!v6)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315650;
        v17 = v10;
        v18 = 2080;
        v19 = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke";
        v20 = 1024;
        v21 = 930;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d relay_setup_block relayInitiateInfo is nil", &v16, 0x1Cu);
      }
    }

    [*(a1 + 48) intValue];
    v12 = *(*(a1 + 40) + 32);
    GCKSessionIsParticipantConnected();
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = v8;
      v18 = 2080;
      v19 = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]_block_invoke";
      v20 = 1024;
      v21 = 942;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d relay_setup_block relayInitiateInfo is not nil", &v16, 0x1Cu);
    }
  }

  dispatch_source_set_event_handler(*(a1 + 56), *(a1 + 64));
  v13 = *(a1 + 56);
  v14 = dispatch_time(0, 120000000000);
  dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
  v15 = *MEMORY[0x277D85DE8];
}

void __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_203(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "pidToConnectTimeoutSource")];
  v2 = *(a1 + 40);

  dispatch_release(v2);
}

uint64_t __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_204(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 32) + 208));
  [*(a1 + 32) connectPendingConnectionsFromList:*(a1 + 40) sessionInfo:*(a1 + 48)];
  v2 = (*(a1 + 32) + 208);

  return pthread_mutex_unlock(v2);
}

- (void)internal_setRemoteConnectionData:(id)data fromParticipantID:(id)d pendingConnectionPIDList:(id)list
{
  v25 = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v9 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [*&self->_gckPID UTF8String];
      *buf = 136316162;
      v16 = v10;
      v17 = 2080;
      v18 = "[GKConnectionInternal internal_setRemoteConnectionData:fromParticipantID:pendingConnectionPIDList:]";
      v19 = 1024;
      v20 = 1031;
      v21 = 2080;
      v22 = uTF8String;
      v23 = 2080;
      uTF8String2 = [d UTF8String];
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKConnectionInternal(%s) -setRemoteConnectionData (%s)", buf, 0x30u);
    }
  }

  bswap32(*[data bytes]);
  reportingAgent = self->_reportingAgent;
  perfTimerStart();
  TimingLog(3, 0, "Set remote preblob: holepunching for peer to peer\n");
  pidGUID = self->_pidGUID;
  GCKSessionPrepareConnection();
}

- (void)setEventDelegate:(id)delegate
{
  v36 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_18;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    v8 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      *buf = 136315650;
      v27 = v6;
      v28 = 2080;
      v29 = "[GKConnectionInternal setEventDelegate:]";
      v30 = 1024;
      v31 = 1120;
      v9 = " [%s] %s:%d ";
      v10 = v7;
      v11 = 28;
LABEL_13:
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      goto LABEL_18;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [GKConnectionInternal setEventDelegate:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(GKConnectionInternal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_286195238;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      v14 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        *buf = 136316162;
        v27 = v12;
        v28 = 2080;
        v29 = "[GKConnectionInternal setEventDelegate:]";
        v30 = 1024;
        v31 = 1120;
        v32 = 2112;
        v33 = v5;
        v34 = 2048;
        selfCopy2 = self;
        v9 = " [%s] %s:%d %@(%p) ";
        v10 = v13;
        v11 = 48;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v27 = v12;
        v28 = 2080;
        v29 = "[GKConnectionInternal setEventDelegate:]";
        v30 = 1024;
        v31 = 1120;
        v32 = 2112;
        v33 = v5;
        v34 = 2048;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) ", buf, 0x30u);
      }
    }
  }

LABEL_18:
  obj = self->_gckSession;
  objc_sync_enter(obj);
  self->_gckEventList = delegate;
  if (delegate)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    gckSession = self->_gckSession;
    v16 = [(OpaqueGCKSession *)gckSession countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v16)
    {
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(gckSession);
          }

          -[NSMutableArray sendCallbacksToDelegate:remotePeer:](self->_gckEventList, "sendCallbacksToDelegate:remotePeer:", [*(*(&v21 + 1) + 8 * i) event], objc_msgSend(*(*(&v21 + 1) + 8 * i), "pid"));
        }

        v16 = [(OpaqueGCKSession *)gckSession countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [(OpaqueGCKSession *)self->_gckSession removeAllObjects];
  }

  objc_sync_exit(obj);
  v19 = *MEMORY[0x277D85DE8];
}

- (id)eventDelegate
{
  v25 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      v6 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136315650;
          v16 = v4;
          v17 = 2080;
          v18 = "[GKConnectionInternal eventDelegate]";
          v19 = 1024;
          v20 = 1133;
          v7 = " [%s] %s:%d ";
          v8 = v5;
          v9 = 28;
LABEL_13:
          _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, v7, &v15, v9);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [GKConnectionInternal eventDelegate];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(GKConnectionInternal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_286195238;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      v12 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136316162;
          v16 = v10;
          v17 = 2080;
          v18 = "[GKConnectionInternal eventDelegate]";
          v19 = 1024;
          v20 = 1133;
          v21 = 2112;
          v22 = v3;
          v23 = 2048;
          selfCopy2 = self;
          v7 = " [%s] %s:%d %@(%p) ";
          v8 = v11;
          v9 = 48;
          goto LABEL_13;
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136316162;
        v16 = v10;
        v17 = 2080;
        v18 = "[GKConnectionInternal eventDelegate]";
        v19 = 1024;
        v20 = 1133;
        v21 = 2112;
        v22 = v3;
        v23 = 2048;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) ", &v15, 0x30u);
      }
    }
  }

  result = self->_gckEventList;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)gckPID
{
  v25 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      v6 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136315650;
          v16 = v4;
          v17 = 2080;
          v18 = "[GKConnectionInternal gckPID]";
          v19 = 1024;
          v20 = 1138;
          v7 = " [%s] %s:%d ";
          v8 = v5;
          v9 = 28;
LABEL_13:
          _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, v7, &v15, v9);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [GKConnectionInternal gckPID];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(GKConnectionInternal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_286195238;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      v12 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136316162;
          v16 = v10;
          v17 = 2080;
          v18 = "[GKConnectionInternal gckPID]";
          v19 = 1024;
          v20 = 1138;
          v21 = 2112;
          v22 = v3;
          v23 = 2048;
          selfCopy2 = self;
          v7 = " [%s] %s:%d %@(%p) ";
          v8 = v11;
          v9 = 48;
          goto LABEL_13;
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136316162;
        v16 = v10;
        v17 = 2080;
        v18 = "[GKConnectionInternal gckPID]";
        v19 = 1024;
        v20 = 1138;
        v21 = 2112;
        v22 = v3;
        v23 = 2048;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) ", &v15, 0x30u);
      }
    }
  }

  result = *(&self->super._pid + 1);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setCdxClient:(id)client
{
  eventDelegate = self->_eventDelegate;
  if (eventDelegate != client)
  {
    [self->_eventDelegate setDelegate:0];
    clientCopy = client;
    self->_eventDelegate = clientCopy;
    [clientCopy setDelegate:self];

    if ([self->_eventDelegate preblob])
    {
      v7 = self->_eventDelegate;
      preblob = [v7 preblob];

      [(GKConnectionInternal *)self CDXClient:v7 preblob:preblob];
    }
  }
}

- (void)CDXClient:(id)client error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "[GKConnectionInternal CDXClient:error:]";
      v13 = 1024;
      v14 = 1282;
      v15 = 2080;
      Name = sel_getName(a2);
      v17 = 2080;
      v18 = [objc_msgSend(error "description")];
      _os_log_error_impl(&dword_24E50C000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d [GKConnection %s]: %s", &v9, 0x30u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)CDXClient:(id)client preblob:(id)preblob
{
  v27 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = v7;
      v19 = 2080;
      v20 = "[GKConnectionInternal CDXClient:preblob:]";
      v21 = 1024;
      v22 = 1286;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d got-a-preblob", buf, 0x1Cu);
    }
  }

  pthread_mutex_lock(&self->_preblobCallbackCancelTime);
  cdxSessions = self->_cdxSessions;
  if (cdxSessions)
  {
  }

  self->_cdxSessions = preblob;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&self->super._pid + 1)];
  [*&self->_wakeTime setObject:v10 forKeyedSubscript:self->_cdxSessions];
  [(NSMutableDictionary *)self->_preblobToPIDMap setObject:self->_cdxSessions forKeyedSubscript:v10];
  if (self->_preblob)
  {
    v16 = bswap32(*(&self->super._pid + 1));
    v11 = [MEMORY[0x277CBEB28] dataWithBytes:&v16 length:4];
    [v11 appendData:self->_cdxSessions];
    TimingLog(3, 0, "Got local connection data - passing data to app");
    (self->_preblob[2].super.isa)();
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v11 length];
        *buf = 136316162;
        v18 = v12;
        v19 = 2080;
        v20 = "[GKConnectionInternal CDXClient:preblob:]";
        v21 = 1024;
        v22 = 1303;
        v23 = 2048;
        clientCopy = client;
        v25 = 2048;
        v26 = v14;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CDXClient=%p Got local connection data size=%lu", buf, 0x30u);
      }
    }

    self->_preblob = 0;
  }

  pthread_cond_signal(&self->_xPreblobFetch.__opaque[48]);
  pthread_mutex_unlock(&self->_preblobCallbackCancelTime);
  v15 = *MEMORY[0x277D85DE8];
}

- (id)extractBlobUsingData:(id)data withSourcePID:(unsigned int)d destPID:(unsigned int)iD
{
  v40 = *MEMORY[0x277D85DE8];
  bytes = [data bytes];
  dataCopy = data;
  v8 = bytes + [data length];
  v24 = bytes;
  while (bytes < v8)
  {
    v9 = bytes + 5;
    if ((bytes + 5) > v8)
    {
      [GKConnectionInternal extractBlobUsingData:dataCopy withSourcePID:? destPID:?];
LABEL_15:
      pidsPreparedForConnection = self->_pidsPreparedForConnection;
      reportingGKLog();
      break;
    }

    v10 = bswap32(*bytes) >> 16;
    v11 = (bytes + v10);
    if (bytes + v10 > v8)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          v21 = [dataCopy length];
          *buf = 136316418;
          v27 = v17;
          v28 = 2080;
          v29 = "[GKConnectionInternal extractBlobUsingData:withSourcePID:destPID:]";
          v30 = 1024;
          v31 = 1347;
          v32 = 1024;
          v33 = v21;
          v34 = 1024;
          v35 = bytes - v24;
          v36 = 1024;
          v37 = v10;
          _os_log_error_impl(&dword_24E50C000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d GKConnection: bad blobs? (total=%d, offset=%d, blobLength=%d)", buf, 0x2Eu);
        }
      }

      goto LABEL_15;
    }

    v12 = bswap32(*(bytes + 1));
    v13 = bswap32(*(bytes + 3));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v27 = v14;
        v28 = 2080;
        v29 = "[GKConnectionInternal extractBlobUsingData:withSourcePID:destPID:]";
        v30 = 1024;
        v31 = 1357;
        v32 = 1024;
        v33 = v9 - v24;
        v34 = 1024;
        v35 = v10;
        v36 = 1024;
        v37 = v12;
        v38 = 1024;
        v39 = v13;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKConnection:receivedData @%d (+%d): dstPID(%u), srcPID(%u)", buf, 0x34u);
      }
    }

    bytes = v11;
    if (v12 == iD)
    {
      bytes = v11;
      if (v13 == d)
      {
        result = [dataCopy subdataWithRange:{v9 - v24, v10 - 10}];
        goto LABEL_17;
      }
    }
  }

  result = 0;
LABEL_17:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)convertParticipantID:(id)d toPeerID:(id *)iD
{
  allowRelayPIDList = self->_allowRelayPIDList;
  objc_sync_enter(allowRelayPIDList);
  v8 = [(NSMutableArray *)self->_allowRelayPIDList allKeysForObject:d];
  v9 = [v8 count];
  if (v9)
  {
    v10 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v10 = 0;
  }

  *iD = v10;
  objc_sync_exit(allowRelayPIDList);
  return v9 != 0;
}

- (BOOL)convertPeerID:(id)d toParticipantID:(id *)iD
{
  allowRelayPIDList = self->_allowRelayPIDList;
  objc_sync_enter(allowRelayPIDList);
  v8 = [(NSMutableArray *)self->_allowRelayPIDList objectForKeyedSubscript:d];
  v9 = v8;
  if (v8)
  {
    *iD = v8;
  }

  objc_sync_exit(allowRelayPIDList);
  return v9 != 0;
}

- (void)setParticipantID:(id)d forPeerID:(id)iD
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = [(NSMutableArray *)self->_allowRelayPIDList objectForKeyedSubscript:iD];
  if (d)
  {
    v22 = v7;
    obj = self->_allowRelayPIDList;
    objc_sync_enter(obj);
    v8 = [(NSMutableArray *)self->_allowRelayPIDList allKeysForObject:d];
    dCopy = d;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v41 count:16];
    if (v9)
    {
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          if (v12 && ([*(*(&v25 + 1) + 8 * i) isEqualToString:iD] & 1) == 0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v13 = VRTraceErrorLogLevelToCSTR();
              v14 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                uTF8String = [v12 UTF8String];
                *buf = 136315906;
                v30 = v13;
                v31 = 2080;
                v32 = "[GKConnectionInternal setParticipantID:forPeerID:]";
                v33 = 1024;
                v34 = 1493;
                v35 = 2080;
                v36 = uTF8String;
                _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKConnection: removeObjectForKey(forPeerID)[%s]", buf, 0x26u);
              }
            }

            [(NSMutableArray *)self->_allowRelayPIDList removeObjectForKey:v12];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v25 objects:v41 count:16];
      }

      while (v9);
    }

    objc_sync_exit(obj);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        uTF8String2 = [dCopy UTF8String];
        uTF8String3 = [iD UTF8String];
        if (v22)
        {
          uTF8String4 = [v22 UTF8String];
        }

        else
        {
          uTF8String4 = "<nil>";
        }

        *buf = 136316418;
        v30 = v16;
        v31 = 2080;
        v32 = "[GKConnectionInternal setParticipantID:forPeerID:]";
        v33 = 1024;
        v34 = 1499;
        v35 = 2080;
        v36 = uTF8String2;
        v37 = 2080;
        v38 = uTF8String3;
        v39 = 2080;
        v40 = uTF8String4;
        _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKConnection: setParticipantID:[%s] forPeerID[%s] (old participantID:[%s])", buf, 0x3Au);
      }
    }

    [(NSMutableArray *)self->_allowRelayPIDList setObject:dCopy forKeyedSubscript:iD];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)createInitiateRelayDictionaryForParticipant:(id)participant remotePeerID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  if (!+[GKConnection isRelayEnabled])
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_11;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315906;
    v19 = v10;
    v20 = 2080;
    v21 = "[GKConnectionInternal createInitiateRelayDictionaryForParticipant:remotePeerID:]";
    v22 = 1024;
    v23 = 1510;
    v24 = 2080;
    Name = sel_getName(a2);
    v12 = " [%s] %s:%d **************************** %s: relay not enabled";
    v13 = v11;
    v14 = 38;
    goto LABEL_10;
  }

  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_preblobToPIDMap, "objectForKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(d, "intValue")}]);
  if (v7)
  {
    result = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{self->_cdxSessions, *off_279682918, +[GKConnection externalAddressForCDXSelfConnectionData:](GKConnectionInternal, "externalAddressForCDXSelfConnectionData:", self->_cdxSessions), *off_279682920, &unk_28619C008, *off_279682928, v7, *off_2796828F0, +[GKConnection externalAddressForCDXSelfConnectionData:](GKConnectionInternal, "externalAddressForCDXSelfConnectionData:", v7), *off_2796828F8, &unk_28619C008, *off_279682900, 0}];
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v19 = v15;
      v20 = 2080;
      v21 = "[GKConnectionInternal createInitiateRelayDictionaryForParticipant:remotePeerID:]";
      v22 = 1024;
      v23 = 1525;
      v24 = 2080;
      Name = sel_getName(a2);
      v26 = 1024;
      intValue = [d intValue];
      v12 = " [%s] %s:%d **************************** %s: no preblob found for %d";
      v13 = v16;
      v14 = 44;
LABEL_10:
      _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)doRelayCheckForRemotePeerID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  pidToRelayConnectionDataMap = self->_pidToRelayConnectionDataMap;
  objc_sync_enter(pidToRelayConnectionDataMap);
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_pidToRelayConnectionDataMap, "objectForKeyedSubscript:", [@">" stringByAppendingString:d]);
  v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->_pidToRelayConnectionDataMap, "objectForKeyedSubscript:", [@"<" stringByAppendingString:d]);
  objc_sync_exit(pidToRelayConnectionDataMap);
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v12 = [v8 objectForKeyedSubscript:*off_2796828E0];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (ErrorLogLevelForModule >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315906;
        v19 = v14;
        v20 = 2080;
        v21 = "[GKConnectionInternal doRelayCheckForRemotePeerID:]";
        v22 = 1024;
        v23 = 1605;
        v24 = 2080;
        Name = [objc_msgSend(v8 "description")];
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d before GCKSessionEstablishConnectionWithRelayInfo: remote dict:%s", &v18, 0x26u);
      }
    }

    pidGUID = self->_pidGUID;
    [d intValue];
    [v12 bytes];
    [v12 length];
    GCKSessionEstablishConnectionWithRelayInfo();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136316674;
      v19 = v10;
      v20 = 2080;
      v21 = "[GKConnectionInternal doRelayCheckForRemotePeerID:]";
      v22 = 1024;
      v23 = 1622;
      v24 = 2080;
      Name = sel_getName(a2);
      v26 = 2080;
      uTF8String = [d UTF8String];
      v28 = 2048;
      v29 = v8;
      v30 = 2048;
      v31 = v7;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s (remote:%s) - remoteRelayUpdateInfo[%p] localRelayUpdateInfo[%p]", &v18, 0x44u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)internalInitiateRelayWithParticipant:(id)participant withConnectionData:(id)data withRelayInfo:(id)info didInitiate:(BOOL)initiate
{
  v52 = *MEMORY[0x277D85DE8];
  if ([GKConnection isRelayEnabled:participant])
  {
    v42 = 0xAAAAAAAAAAAAAAAALL;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "[GKConnectionInternal internalInitiateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:]";
        v44 = 1024;
        v45 = 1635;
        v46 = 2080;
        Name = sel_getName(a2);
        v48 = 2080;
        *v49 = [participant UTF8String];
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s - remote participant[%s]", buf, 0x30u);
      }
    }

    if ([(GKConnectionInternal *)self convertParticipantID:participant toPeerID:&v42])
    {
      reportingAgent = self->_reportingAgent;
      perfTimerStart();
      v14 = [info objectForKeyedSubscript:@"GKSTargetPeerID"] == 0;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v14)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v24 = sel_getName(a2);
            *buf = 136315906;
            *&buf[4] = v22;
            *&buf[12] = 2080;
            *&buf[14] = "[GKConnectionInternal internalInitiateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:]";
            v44 = 1024;
            v45 = 1647;
            v46 = 2080;
            Name = v24;
            _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s - checking intended target via dictionary: no value", buf, 0x26u);
          }
        }
      }

      else
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v18 = sel_getName(a2);
            v19 = [objc_msgSend(info objectForKey:{@"GKSTargetPeerID", "intValue"}];
            v20 = [objc_msgSend(info objectForKey:{@"GKSOriginPeerID", "intValue"}];
            v21 = *(&self->super._pid + 1);
            *buf = 136316674;
            *&buf[4] = v16;
            *&buf[12] = 2080;
            *&buf[14] = "[GKConnectionInternal internalInitiateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:]";
            v44 = 1024;
            v45 = 1641;
            v46 = 2080;
            Name = v18;
            v48 = 1024;
            *v49 = v19;
            *&v49[4] = 1024;
            *&v49[6] = v20;
            v50 = 1024;
            v51 = v21;
            _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s - checking intended target via dictionary (%d/%d == %d ?)", buf, 0x38u);
          }
        }

        if ([objc_msgSend(info objectForKeyedSubscript:{@"GKSTargetPeerID", "unsignedIntValue"}] != *(&self->super._pid + 1) && objc_msgSend(objc_msgSend(info, "objectForKeyedSubscript:", @"GKSOriginPeerID"), "unsignedIntValue") != *(&self->super._pid + 1))
        {
          goto LABEL_33;
        }
      }

      v25 = *&self->_xRelay.__opaque[48];
      objc_sync_enter(v25);
      v26 = [*&self->_xRelay.__opaque[48] objectForKeyedSubscript:v42];
      objc_sync_exit(v25);
      if (v26)
      {
        goto LABEL_33;
      }

      v27 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:info];
      v41 = inet_addr("72.247.44.23");
      v28 = [MEMORY[0x277CBEA90] dataWithBytes:&v41 length:4];
      v29 = [objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
      v30 = *off_279682908;
      if (v29)
      {
        [v27 setObject:v28 forKeyedSubscript:*off_279682908];
        [v27 setObject:&unk_28619C038 forKeyedSubscript:*off_279682910];
        [v27 setObject:v28 forKeyedSubscript:*off_279682930];
        [v27 setObject:&unk_28619C038 forKeyedSubscript:*off_279682940];
        v31 = *off_279682948;
      }

      else
      {
        if (![v27 objectForKeyedSubscript:*off_279682908])
        {
          [v27 setObject:v28 forKeyedSubscript:v30];
        }

        v32 = *off_279682910;
        if (![v27 objectForKeyedSubscript:*off_279682910])
        {
          [v27 setObject:&unk_28619C038 forKeyedSubscript:v32];
        }

        v33 = *off_279682930;
        if (![v27 objectForKeyedSubscript:*off_279682930])
        {
          [v27 setObject:v28 forKeyedSubscript:v33];
        }

        v34 = *off_279682940;
        if (![v27 objectForKeyedSubscript:*off_279682940])
        {
          [v27 setObject:&unk_28619C038 forKeyedSubscript:v34];
        }

        v31 = *off_279682948;
        if ([v27 objectForKeyedSubscript:*off_279682948])
        {
          goto LABEL_30;
        }
      }

      qmemcpy(buf, "ABCDEFGHIJABCDEFGHIJ", 20);
      [v27 setObject:objc_msgSend(MEMORY[0x277CBEA90] forKeyedSubscript:{"dataWithBytes:length:", buf, 20), v31}];
      if (v29)
      {
        [v27 removeObjectForKey:*off_2796828E8];
        v35 = *off_279682950;
        goto LABEL_31;
      }

LABEL_30:
      v35 = *off_279682950;
      if ([v27 objectForKeyedSubscript:*off_279682950])
      {
LABEL_32:
        v36 = *&self->_xRelay.__opaque[48];
        objc_sync_enter(v36);
        [*&self->_xRelay.__opaque[48] setObject:v27 forKeyedSubscript:v42];
        objc_sync_exit(v36);
        global_queue = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __106__GKConnectionInternal_internalInitiateRelayWithParticipant_withConnectionData_withRelayInfo_didInitiate___block_invoke;
        block[3] = &unk_279682FF0;
        block[4] = self;
        block[5] = v27;
        block[7] = participant;
        block[8] = a2;
        block[6] = v42;
        initiateCopy = initiate;
        dispatch_async(global_queue, block);
        goto LABEL_33;
      }

LABEL_31:
      *&buf[4] = 0;
      *buf = bswap32([v42 intValue] ^ *(&self->super._pid + 1));
      [v27 setObject:objc_msgSend(MEMORY[0x277CBEA90] forKeyedSubscript:{"dataWithBytes:length:", buf, 8), v35}];
      goto LABEL_32;
    }
  }

LABEL_33:
  v38 = *MEMORY[0x277D85DE8];
}

void __106__GKConnectionInternal_internalInitiateRelayWithParticipant_withConnectionData_withRelayInfo_didInitiate___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 1350;
  v2 = *(*(a1 + 32) + 560);
  perfTimerStart();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [objc_msgSend(*(a1 + 40) "description")];
      *buf = 136315906;
      v11 = v3;
      v12 = 2080;
      v13 = "[GKConnectionInternal internalInitiateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:]_block_invoke";
      v14 = 1024;
      v15 = 1721;
      v16 = 2080;
      v17 = v5;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d before GCKSessionPrepareConnectionWithRelayInfo: dict:%s", buf, 0x26u);
    }
  }

  v6 = *(*(a1 + 32) + 32);
  [*(a1 + 48) intValue];
  v7 = *(a1 + 40);
  GCKSessionPrepareConnectionWithRelayInfo();
}

- (void)cancelConnectParticipant:(id)participant
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (participant)
      {
        v7 = [objc_msgSend(participant "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *v10 = 136315906;
      *&v10[4] = v5;
      v11 = 2080;
      v12 = "[GKConnectionInternal cancelConnectParticipant:]";
      v13 = 1024;
      v14 = 1887;
      v15 = 2080;
      v16 = v7;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d cancel-connect-participant.%s", v10, 0x26u);
    }
  }

  *v10 = 0xAAAAAAAAAAAAAAAALL;
  if ([(GKConnectionInternal *)self convertParticipantID:participant toPeerID:v10])
  {
    pidGUID = self->_pidGUID;
    [*v10 intValue];
    GCKSessionIsParticipantConnected();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)networkStatisticsDictionaryForGCKStats:(void *)stats
{
  v45 = *MEMORY[0x277D85DE8];
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  allKeys = [(NSMutableArray *)self->_allowRelayPIDList allKeys];
  allKeys2 = [(NSMutableArray *)self->_allowRelayPIDList allKeys];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = allKeys;
  v29 = [allKeys countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v29)
  {
    v27 = *v38;
    do
    {
      v6 = 0;
      do
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v6;
        v7 = *(*(&v37 + 1) + 8 * v6);
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v31 = v8;
        [v9 setObject:v8 forKeyedSubscript:@"GKSStatsLinks"];
        [v28 setObject:v9 forKeyedSubscript:v7];
        if (stats)
        {
          statsCopy = stats;
          do
          {
            v11 = *statsCopy;
            if (v11 == [v7 intValue])
            {
              v35 = 0u;
              v36 = 0u;
              v33 = 0u;
              v34 = 0u;
              v12 = [allKeys2 countByEnumeratingWithState:&v33 objects:v43 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v34;
                do
                {
                  v15 = 0;
                  do
                  {
                    if (*v34 != v14)
                    {
                      objc_enumerationMutation(allKeys2);
                    }

                    v16 = *(*(&v33 + 1) + 8 * v15);
                    statsCopy2 = stats;
                    while (1)
                    {
                      v18 = statsCopy[17];
                      if (v18 == [v16 intValue] && (objc_msgSend(v7, "isEqual:", v16) & 1) == 0)
                      {
                        break;
                      }

                      statsCopy2 = statsCopy2[18];
                      if (!statsCopy2)
                      {
                        goto LABEL_20;
                      }
                    }

                    v41[0] = @"GKSStatsUpTime";
                    LODWORD(v19) = statsCopy[10];
                    v42[0] = [MEMORY[0x277CCABB0] numberWithFloat:v19];
                    v41[1] = @"GKSStatsRecvRate";
                    LODWORD(v20) = statsCopy[11];
                    v42[1] = [MEMORY[0x277CCABB0] numberWithFloat:v20];
                    v41[2] = @"GKSStatsSendRate";
                    LODWORD(v21) = statsCopy[12];
                    v42[2] = [MEMORY[0x277CCABB0] numberWithFloat:v21];
                    v41[3] = @"GKSStatsRecvPLR";
                    LODWORD(v22) = statsCopy[13];
                    v42[3] = [MEMORY[0x277CCABB0] numberWithFloat:v22];
                    v41[4] = @"GKSStatsSendPLR";
                    LODWORD(v23) = statsCopy[14];
                    v42[4] = [MEMORY[0x277CCABB0] numberWithFloat:v23];
                    v41[5] = @"GKSStatsRecvBWE";
                    v42[5] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:statsCopy[8]];
                    v41[6] = @"GKSStatsSendBWE";
                    v42[6] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:statsCopy[9]];
                    v41[7] = @"GKSStatsRTT";
                    v42[7] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:statsCopy[3]];
                    v41[8] = @"GKSStatsBytesReceived";
                    v42[8] = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(statsCopy + 2)];
                    v41[9] = @"GKSStatsBytesSent";
                    v42[9] = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(statsCopy + 3)];
                    [v31 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v42, v41, 10), v16}];
LABEL_20:
                    ++v15;
                  }

                  while (v15 != v13);
                  v13 = [allKeys2 countByEnumeratingWithState:&v33 objects:v43 count:16];
                }

                while (v13);
              }
            }

            statsCopy = *(statsCopy + 18);
          }

          while (statsCopy);
        }

        v6 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v29);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)networkStatistics
{
  v37 = *MEMORY[0x277D85DE8];
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  allKeys = [(NSMutableArray *)self->_allowRelayPIDList allKeys];
  allKeys2 = [(NSMutableArray *)self->_allowRelayPIDList allKeys];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = [allKeys countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v19)
  {
    v17 = *v26;
    do
    {
      v5 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v20 = v5;
        v6 = *(*(&v25 + 1) + 8 * v5);
        v32[0] = @"GKSStatsRecvRate";
        v32[1] = @"GKSStatsSendRate";
        v33[0] = &unk_28619C098;
        v33[1] = &unk_28619C098;
        v34 = @"fake0";
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v9 setObject:v7 forKeyedSubscript:@"GKSStatsInterfaces"];
        [v9 setObject:v8 forKeyedSubscript:@"GKSStatsLinks"];
        [v18 setObject:v9 forKeyedSubscript:v6];
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [allKeys2 countByEnumeratingWithState:&v21 objects:v31 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(allKeys2);
              }

              v14 = *(*(&v21 + 1) + 8 * i);
              if (([v6 isEqual:v14] & 1) == 0)
              {
                v29[0] = @"GKSStatsUpTime";
                v29[1] = @"GKSStatsBytesReceived";
                v30[0] = &unk_28619C0A8;
                v30[1] = &unk_28619C020;
                v29[2] = @"GKSStatsBytesSent";
                v29[3] = @"GKSStatsRecvRate";
                v30[2] = &unk_28619C020;
                v30[3] = &unk_28619C0B8;
                v29[4] = @"GKSStatsSendRate";
                v30[4] = &unk_28619C0B8;
                [v8 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v30, v29, 5), v14}];
              }
            }

            v11 = [allKeys2 countByEnumeratingWithState:&v21 objects:v31 count:16];
          }

          while (v11);
        }

        v5 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [allKeys countByEnumeratingWithState:&v25 objects:v36 count:16];
    }

    while (v19);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)localGamingCheckEstablishConnection:(id)connection connectionData:(id)data
{
  v29 = *MEMORY[0x277D85DE8];
  [connection unsignedLongValue];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (data)
      {
        v8 = [objc_msgSend(data "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      v17 = 136316162;
      v18 = v6;
      v19 = 2080;
      v20 = "[GKConnectionInternal localGamingCheckEstablishConnection:connectionData:]";
      v21 = 1024;
      v22 = 2003;
      v23 = 2080;
      v24 = v8;
      v25 = 1024;
      v26 = [data length];
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d remoteConnectionData: [%s], total size=%u", &v17, 0x2Cu);
    }
  }

  if ([data length] >= 5)
  {
    v9 = bswap32(*[data bytes]);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (data)
        {
          v12 = [objc_msgSend(data "description")];
        }

        else
        {
          v12 = "<nil>";
        }

        v13 = [data length];
        v17 = 136316418;
        v18 = v10;
        v19 = 2080;
        v20 = "[GKConnectionInternal localGamingCheckEstablishConnection:connectionData:]";
        v21 = 1024;
        v22 = 2007;
        v23 = 2080;
        v24 = v12;
        v25 = 1024;
        v26 = v13;
        v27 = 1024;
        v28 = v9;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d remoteConnectionData: [%s], total size=%u (expect %u)", &v17, 0x32u);
      }
    }

    if ([data length] - 4 >= v9)
    {
      TimingLog(3, 0, "local CDX done - starting ICE");
      pidGUID = self->_pidGUID;
      [data bytes];
      [data length];
      GCKSessionEstablishConnection();
    }
  }

  result = 0;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)localGamingReceiveDataHandler:(id)handler data:(id)data time:(double)time error:(id)error
{
  v47 = *MEMORY[0x277D85DE8];
  if (!data || error)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v17 = [objc_msgSend(error "description")];
        }

        else
        {
          v17 = "<nil>";
        }

        *buf = 136315906;
        v38 = v15;
        v39 = 2080;
        v40 = "[GKConnectionInternal localGamingReceiveDataHandler:data:time:error:]";
        v41 = 1024;
        v42 = 2030;
        v43 = 2080;
        *v44 = v17;
        _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d localGamingReceiveDataHandler: error=[%s].  Invalidating..", buf, 0x26u);
      }
    }

    [handler invalidate];
  }

  else
  {
    v11 = -[NSMutableDictionary objectForKeyedSubscript:](self->_localGamingSocketToPIDMap, "objectForKeyedSubscript:", [handler socketName]);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v11)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316674;
          v38 = v13;
          v39 = 2080;
          v40 = "[GKConnectionInternal localGamingReceiveDataHandler:data:time:error:]";
          v41 = 1024;
          v42 = 2042;
          v43 = 2080;
          *v44 = [objc_msgSend(data "description")];
          *&v44[8] = 2080;
          *&v44[10] = [objc_msgSend(v11 "description")];
          *&v44[18] = 1024;
          *&v44[20] = [data length];
          v45 = 2048;
          timeCopy = time;
          _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d localGamingReceiveDataHandler: got [%s] (append to [%s]), size=%u, t=%.6lf", buf, 0x40u);
        }
      }

      [v11 appendData:data];
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v38 = v18;
          v39 = 2080;
          v40 = "[GKConnectionInternal localGamingReceiveDataHandler:data:time:error:]";
          v41 = 1024;
          v42 = 2038;
          v43 = 2080;
          *v44 = [objc_msgSend(data "description")];
          *&v44[8] = 1024;
          *&v44[10] = [data length];
          *&v44[14] = 2048;
          *&v44[16] = time;
          _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d localGamingReceiveDataHandler: got [%s], size=%u, t=%.6lf", buf, 0x36u);
        }
      }

      v11 = [MEMORY[0x277CBEB28] dataWithData:data];
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_localGamingSocketToPIDMap, "setObject:forKeyedSubscript:", v11, [handler socketName]);
    }

    v20 = -[OS_dispatch_source objectForKeyedSubscript:](self->_localGamingCDXListenSource, "objectForKeyedSubscript:", [handler socketName]);
    if (v20)
    {
      v21 = v20;
      [v20 unsignedLongValue];
      if ([(GKConnectionInternal *)self localGamingCheckEstablishConnection:v21 connectionData:v11])
      {
        -[OS_dispatch_source removeObjectForKey:](self->_localGamingCDXListenSource, "removeObjectForKey:", [handler socketName]);
        -[NSMutableDictionary removeObjectForKey:](self->_localGamingSocketToPIDMap, "removeObjectForKey:", [handler socketName]);
        v22 = dispatch_time(0, 10000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __70__GKConnectionInternal_localGamingReceiveDataHandler_data_time_error___block_invoke;
        block[3] = &unk_279682BA8;
        block[4] = handler;
        dispatch_after(v22, MEMORY[0x277D85CD0], block);
      }
    }

    else if ([v11 length] > 3)
    {
      v24 = bswap32(*[v11 bytes]);
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
      -[OS_dispatch_source setObject:forKeyedSubscript:](self->_localGamingCDXListenSource, "setObject:forKeyedSubscript:", v25, [handler socketName]);
      [v11 replaceBytesInRange:0 withBytes:4 length:{0, 0}];
      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          localGamingSocketToConnectionDataMap = self->_localGamingSocketToConnectionDataMap;
          if (localGamingSocketToConnectionDataMap)
          {
            v29 = [-[NSMutableDictionary description](localGamingSocketToConnectionDataMap "description")];
          }

          else
          {
            v29 = "<nil>";
          }

          *buf = 136316162;
          v38 = v26;
          v39 = 2080;
          v40 = "[GKConnectionInternal localGamingReceiveDataHandler:data:time:error:]";
          v41 = 1024;
          v42 = 2064;
          v43 = 1024;
          *v44 = v24;
          *&v44[4] = 2080;
          *&v44[6] = v29;
          _os_log_impl(&dword_24E50C000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Checking if peer (%08X) is in prepared set [%s]", buf, 0x2Cu);
        }
      }

      if (![(NSMutableDictionary *)self->_localGamingSocketToConnectionDataMap containsObject:v25])
      {
        v36 = 0;
        v35 = 1350;
        TimingLog(3, 0, "local CDX start\n");
        pidGUID = self->_pidGUID;
        GCKSessionPrepareConnectionWithRelayInfo();
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v38 = v31;
          v39 = 2080;
          v40 = "[GKConnectionInternal localGamingReceiveDataHandler:data:time:error:]";
          v41 = 1024;
          v42 = 2066;
          v43 = 1024;
          *v44 = v24;
          _os_log_impl(&dword_24E50C000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Already prepared conenction for peer (%08X) - cancel this localCDX socket", buf, 0x22u);
        }
      }

      [handler invalidate];
      -[OS_dispatch_source removeObjectForKey:](self->_localGamingCDXListenSource, "removeObjectForKey:", [handler socketName]);
      -[NSMutableDictionary removeObjectForKey:](self->_localGamingSocketToPIDMap, "removeObjectForKey:", [handler socketName]);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKConnectionInternal localGamingReceiveDataHandler:v23 data:data time:? error:?];
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)startListeningForLocalGamingCDX
{
  v44 = *MEMORY[0x277D85DE8];
  if (HIDWORD(self->_updateRelayQueue) == -1)
  {
    *&v43.sa_len = 0xAAAAAAAAAAAAAAAALL;
    *&v43.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
    v4 = socket(2, 1, 6);
    HIDWORD(self->_updateRelayQueue) = v4;
    if (v4 == -1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKConnectionInternal startListeningForLocalGamingCDX];
        }
      }
    }

    else
    {
      v5 = 0;
      *&v43.sa_data[6] = 0;
      *&v43.sa_len = 528;
      *&v43.sa_data[2] = 0;
      v6 = MEMORY[0x277CE5808];
      v7 = MEMORY[0x277CE5818];
      v8 = 512;
      while (1)
      {
        *(&self->super.super.isa + v8) = 16470 - v5;
        *v43.sa_data = bswap32(16470 - v5) >> 16;
        if (bind(HIDWORD(self->_updateRelayQueue), &v43, 0x10u) != -1)
        {
          break;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *v7;
          v11 = *v7;
          if (*v6 == 1)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = v6;
              v13 = v7;
              v14 = *(&self->super.super.isa + v8);
              v15 = *__error();
              *buf = 136316162;
              v34 = v9;
              v35 = 2080;
              v36 = "[GKConnectionInternal startListeningForLocalGamingCDX]";
              v37 = 1024;
              v38 = 2130;
              v39 = 1024;
              v40 = v14;
              v7 = v13;
              v6 = v12;
              v41 = 1024;
              v42 = v15;
              _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bind() to port %u failed for local gaming CDX (%d), retrying...", buf, 0x28u);
            }
          }

          else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v16 = v8;
            v17 = v6;
            v18 = v7;
            v19 = *(&self->super.super.isa + v16);
            v20 = *__error();
            *buf = 136316162;
            v34 = v9;
            v35 = 2080;
            v36 = "[GKConnectionInternal startListeningForLocalGamingCDX]";
            v37 = 1024;
            v38 = 2130;
            v39 = 1024;
            v40 = v19;
            v7 = v18;
            v6 = v17;
            v8 = v16;
            v41 = 1024;
            v42 = v20;
            _os_log_debug_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEBUG, " [%s] %s:%d bind() to port %u failed for local gaming CDX (%d), retrying...", buf, 0x28u);
          }
        }

        if (++v5 == 10)
        {
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          if (ErrorLogLevelForModule >= 8)
          {
            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *v7;
            v24 = *v7;
            if (*v6 == 1)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = *__error();
                *buf = 136315906;
                v34 = v22;
                v35 = 2080;
                v36 = "[GKConnectionInternal startListeningForLocalGamingCDX]";
                v37 = 1024;
                v38 = 2133;
                v39 = 1024;
                v40 = v25;
                _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bind() failed for local gaming CDX (%d), trying ANY...", buf, 0x22u);
              }
            }

            else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              [GKConnectionInternal startListeningForLocalGamingCDX];
            }
          }

          *v43.sa_data = 0;
          if (bind(HIDWORD(self->_updateRelayQueue), &v43, 0x10u) == -1)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
              {
                [GKConnectionInternal startListeningForLocalGamingCDX];
              }
            }

            *(&self->super.super.isa + v8) = 0;
            goto LABEL_44;
          }

          *buf = 16;
          if (getsockname(HIDWORD(self->_updateRelayQueue), &v43, buf) == -1)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
              {
                [GKConnectionInternal startListeningForLocalGamingCDX];
              }
            }

            goto LABEL_44;
          }

          *(&self->super.super.isa + v8) = bswap32(*v43.sa_data) >> 16;
          break;
        }
      }

      if (listen(HIDWORD(self->_updateRelayQueue), 4) == -1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
          {
            [GKConnectionInternal startListeningForLocalGamingCDX];
          }
        }
      }

      else
      {
        v26 = dispatch_source_create(MEMORY[0x277D85D28], SHIDWORD(self->_updateRelayQueue), 0, MEMORY[0x277D85CD0]);
        *&self->_localGamingCDXPort = v26;
        if (v26)
        {
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __55__GKConnectionInternal_startListeningForLocalGamingCDX__block_invoke;
          handler[3] = &unk_279682BA8;
          handler[4] = self;
          dispatch_source_set_event_handler(v26, handler);
          dispatch_resume(*&self->_localGamingCDXPort);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              v29 = *(&self->super.super.isa + v8);
              *buf = 136315906;
              v34 = v27;
              v35 = 2080;
              v36 = "[GKConnectionInternal startListeningForLocalGamingCDX]";
              v37 = 1024;
              v38 = 2192;
              v39 = 1024;
              v40 = v29;
              _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d startListeningForLocalGamingCDX: listening on %u", buf, 0x22u);
            }
          }

          goto LABEL_2;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
          {
            [GKConnectionInternal startListeningForLocalGamingCDX];
          }
        }
      }
    }

LABEL_44:
    updateRelayQueue_high = HIDWORD(self->_updateRelayQueue);
    if (updateRelayQueue_high == -1)
    {
      result = 0;
    }

    else
    {
      close(updateRelayQueue_high);
      result = 0;
      HIDWORD(self->_updateRelayQueue) = -1;
    }
  }

  else
  {
LABEL_2:
    result = 1;
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

GKAsyncSocket *__55__GKConnectionInternal_startListeningForLocalGamingCDX__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *&buf[0].sa_len = 136315650;
      *&buf[0].sa_data[2] = v2;
      *&buf[0].sa_data[10] = 2080;
      *&buf[0].sa_data[12] = "[GKConnectionInternal startListeningForLocalGamingCDX]_block_invoke";
      *&buf[1].sa_data[4] = 1024;
      *&buf[1].sa_data[6] = 2162;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _localGamingCDXListenSource callback", &buf[0].sa_len, 0x1Cu);
    }
  }

  *&v4.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v4.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  buf[6] = v4;
  buf[7] = v4;
  buf[4] = v4;
  buf[5] = v4;
  buf[2] = v4;
  buf[3] = v4;
  buf[0] = v4;
  buf[1] = v4;
  v14 = 128;
  result = accept(*(*(a1 + 32) + 508), buf, &v14);
  if (result != -1)
  {
    v6 = result;
    TimingLog(3, 0, "starting local CDX tcp connection (accept)");
    result = objc_alloc_init(GKAsyncSocket);
    if (result)
    {
      v7 = result;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __55__GKConnectionInternal_startListeningForLocalGamingCDX__block_invoke_255;
      v13[3] = &unk_279682EE0;
      v13[4] = *(a1 + 32);
      v13[5] = result;
      [(GKAsyncSocket *)result setReceiveDataHandler:v13];
      *(v20 + 14) = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v20[0] = v8;
      v18 = v8;
      v19 = v8;
      v17 = 0xAAAAAAAAAAAAAAAALL;
      v15 = v8;
      v16 = v8;
      v9 = MEMORY[0x277CCACA8];
      v10 = *(*(a1 + 32) + 20);
      SAToIPPORT();
      [v7 setSocketName:{objc_msgSend(v9, "stringWithFormat:", @"localCDX[%u][%08X] (connect-from[%s]) (ptr=%p) (listener)", v10, v10, IPPORTToStringWithSize(), v7)}];
      [v7 setTargetQueue:MEMORY[0x277D85CD0]];
      [v7 tcpAttachSocketDescriptor:v6];
      v12 = bswap32(*(*(a1 + 32) + 20));
      result = [v7 sendData:objc_msgSend(MEMORY[0x277CBEA90] withCompletionHandler:{"dataWithBytes:length:", &v12, 4), 0}];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)getLocalConnectionDataForLocalGaming
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = 0;
  data = [MEMORY[0x277CBEB28] data];
  v16 = -86;
  [(GKConnectionInternal *)self startListeningForLocalGamingCDX];
  v18 = bswap32(*(&self->super._pid + 1));
  [data appendData:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", &v18, 4)}];
  v17 = bswap32(LOWORD(self->_fPreReleased)) >> 16;
  [data appendData:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", &v17, 2)}];
  LocalInterfaceListWithOptions = GetLocalInterfaceListWithOptions();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    v7 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v21 = v5;
        v22 = 2080;
        v23 = "[GKConnectionInternal getLocalConnectionDataForLocalGaming]";
        v24 = 1024;
        v25 = 2227;
        v26 = 1024;
        v27 = LocalInterfaceListWithOptions;
        _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d After GetLocalInterfaceListWithOptions iNumInt=%d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [GKConnectionInternal getLocalConnectionDataForLocalGaming];
    }
  }

  if (LocalInterfaceListWithOptions >= 1)
  {
    v8 = 0;
    do
    {
      v9 = v19;
      if (strcmp((v19 + v8 + 4), "lo0") && (*(v9 + v8) & 1) == 0)
      {
        v16 = 4;
        [data appendData:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", &v16, 1)}];
        *buf = bswap32(*(v19 + v8 + 20));
        [data appendData:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", buf, 4)}];
      }

      v8 += 40;
    }

    while (40 * LocalInterfaceListWithOptions != v8);
  }

  FreeLocalInterfaceList();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v12 = [data length];
      if (data)
      {
        v13 = [objc_msgSend(data "description")];
      }

      else
      {
        v13 = "<nil>";
      }

      *buf = 136316162;
      v21 = v10;
      v22 = 2080;
      v23 = "[GKConnectionInternal getLocalConnectionDataForLocalGaming]";
      v24 = 1024;
      v25 = 2248;
      v26 = 1024;
      v27 = v12;
      v28 = 2080;
      v29 = v13;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d getLocalConnectionDataForLocalGaming returned %d bytes (%s)", buf, 0x2Cu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return data;
}

- (void)connectPendingConnectionsFromList:(id)list sessionInfo:(id)info
{
  v81[2] = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [list count];
      v9 = *(&self->super._pid + 1);
      [(NSMutableDictionary *)self->_preblobToPIDMap count];
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_16_1();
      v74 = v8;
      v75 = v10;
      v76 = v9;
      v77 = v10;
      LODWORD(v78[0]) = v11;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectPendingConnections: connecting %d (from %u) (_pidToPreblobMap: %d)", buf, 0x2Eu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() > 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    v13 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(info "description")];
        OUTLINED_FUNCTION_13_1();
        OUTLINED_FUNCTION_14_1();
        OUTLINED_FUNCTION_11_1();
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectPendingConnections: sessionInfo: %s", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [objc_msgSend(info "description")];
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_11_1();
      _os_log_debug_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d connectPendingConnections: sessionInfo: %s", buf, 0x26u);
    }
  }

  if (![list count])
  {
    goto LABEL_49;
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithArray:list];
  [v14 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", *(&self->super._pid + 1))}];
  obj = v14;
  [v14 sortUsingSelector:sel_compare_];
  v15 = [info objectForKeyedSubscript:@"GKSSessionTicket"];
  v16 = [info objectForKeyedSubscript:@"GKSSessionToken"];
  if (*MEMORY[0x277CE5800] > 6 || (*MEMORY[0x277CE5810] & 1) != 0)
  {
    *buf = [list count];
    VRTraceVariable_();
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v15 CDXTicketWellFormed] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(v15 "description")];
        *buf = 136315906;
        *&buf[4] = v23;
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_14_1();
        OUTLINED_FUNCTION_11_1();
        OUTLINED_FUNCTION_24_0(&dword_24E50C000, v24, v25, " [%s] %s:%d Malformed GKSSessionTicketData in sessionInfo! %s", v26, v27, v28, v29, v61, v63, v65, v66, v67, v14, v69, *(&v69 + 1), v70, *(&v70 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), buf[0]);
      }
    }

    goto LABEL_23;
  }

  cDXTicketPCNT = [v15 CDXTicketPCNT];
  if (cDXTicketPCNT != [v14 count])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        cDXTicketPCNT2 = [v15 CDXTicketPCNT];
        [v14 count];
        *buf = 136316162;
        *&buf[4] = v18;
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_16_1();
        v74 = cDXTicketPCNT2;
        v75 = v21;
        v76 = v22;
        _os_log_error_impl(&dword_24E50C000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d CDX PCNT Mismatch! [cdxTicket CDXTicketPCNT] = %d, [connectionPIDList count] = %d", buf, 0x28u);
      }
    }

LABEL_23:
    v15 = 0;
  }

LABEL_24:
  cDXTicketTrimmed = [v15 CDXTicketTrimmed];
  if (v16)
  {
    objc_opt_self();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          [objc_msgSend(cDXTicketTrimmed "description")];
          *buf = 136315906;
          *&buf[4] = v31;
          OUTLINED_FUNCTION_17_1();
          OUTLINED_FUNCTION_14_1();
          OUTLINED_FUNCTION_11_1();
          OUTLINED_FUNCTION_24_0(&dword_24E50C000, v32, v33, " [%s] %s:%d Malformed GKSSessionTokenData in sessionInfo! %s", v34, v35, v36, v37, v61, v63, v65, v66, v67, obj, v69, *(&v69 + 1), v70, *(&v70 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), buf[0]);
        }
      }

      v16 = 0;
    }
  }

  if (!cDXTicketTrimmed)
  {
    cDXTicketTrimmed = [(GKConnectionInternal *)self createInsecureTicketUsingSortedConnectionsFromList:obj];
    if (!cDXTicketTrimmed)
    {
      goto LABEL_50;
    }
  }

  v38 = [(CDXClient *)[(GKConnectionInternal *)self cdxClient] createSessionWithTicket:cDXTicketTrimmed sessionKey:v16];
  [v38 setDelegate:self];
  if (!v38)
  {
LABEL_49:
    cDXTicketTrimmed = 0;
LABEL_50:
    v52 = 0;
    goto LABEL_48;
  }

  v80[0] = @"cdxClientSession";
  v80[1] = @"connectionPIDList";
  v64 = v38;
  v81[0] = v38;
  v81[1] = obj;
  v62 = cDXTicketTrimmed;
  -[NSMutableDictionary setObject:forKey:](-[GKConnectionInternal cdxSessions](self, "cdxSessions"), "setObject:forKey:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2], objc_msgSend(cDXTicketTrimmed, "valueForKey:", @"CDXTicketSID"));
  cDXTicketTrimmed = objc_alloc_init(MEMORY[0x277CBEB28]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v39 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v70;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v70 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v69 + 1) + 8 * i);
        v44 = [(NSMutableDictionary *)self->_pidToPreblobMap objectForKeyedSubscript:v43];
        if ([v44 length])
        {
          [cDXTicketTrimmed appendData:v44];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v45 = VRTraceErrorLogLevelToCSTR();
            v46 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v47 = [v44 length];
              [cDXTicketTrimmed length];
              *buf = 136316418;
              *&buf[4] = v45;
              OUTLINED_FUNCTION_17_1();
              OUTLINED_FUNCTION_12_1();
              OUTLINED_FUNCTION_16_1();
              v74 = v47;
              v75 = v48;
              v76 = v49;
              v77 = 2112;
              v78[0] = v43;
              _os_log_impl(&dword_24E50C000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d appending nextBlob=%d => combined=%d=, for pid=%@", buf, 0x32u);
            }
          }

          reportingAgent = self->_reportingAgent;
          perfTimerStart();
          pidsPreparedForConnection = self->_pidsPreparedForConnection;
          reportingGKLog();
        }
      }

      v40 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
    }

    while (v40);
  }

  TimingLog(3, 0, "starting CDX");
  v52 = v64;
  [v64 sendData:cDXTicketTrimmed];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v53 = VRTraceErrorLogLevelToCSTR();
    v54 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v55 = [v62 length];
      v56 = [cDXTicketTrimmed length];
      v57 = [obj count];
      [(NSMutableDictionary *)self->_pidToPreblobMap count];
      *buf = 136316674;
      *&buf[4] = v53;
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_16_1();
      v74 = v55;
      v75 = v58;
      v76 = v56;
      v77 = v58;
      LODWORD(v78[0]) = v57;
      WORD2(v78[0]) = v58;
      *(v78 + 6) = v59;
      _os_log_impl(&dword_24E50C000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Starting CDX: ticket(%d) and data(%d) from %d preblobs (%d total CDs)", buf, 0x34u);
    }
  }

LABEL_48:

  v60 = *MEMORY[0x277D85DE8];
}

- (id)createInsecureTicketUsingSortedConnectionsFromList:(id)list
{
  v95 = *MEMORY[0x277D85DE8];
  v94 = xmmword_24E590830;
  v93 = 0x706050403020100;
  v83 = 1500;
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v85 = v4;
      v86 = 2080;
      OUTLINED_FUNCTION_6_1();
      v87 = 1178;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d <radar:7609403> remains unfixed.", buf, 0x1Cu);
    }
  }

  if (![list count])
  {
    v62 = 0;
    goto LABEL_55;
  }

  v6 = CDXVendorCreateWithSingleKey(&v94);
  v7 = malloc_type_calloc(1uLL, 0x5DCuLL, 0x1000040451B5BE8uLL);
  if (!v7)
  {
LABEL_51:
    v62 = 0;
    if (!v6)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  data = [MEMORY[0x277CBEB28] data];
  v8 = [list count];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v9 = [list countByEnumeratingWithState:&v79 objects:v92 count:16];
  if (v9)
  {
    v11 = v9;
    v70 = v8;
    v71 = v7;
    v72 = v6;
    v12 = 0;
    v13 = -1;
    v14 = *v80;
    *&v10 = 136315906;
    v74 = v10;
    *&v10 = 136316162;
    v73 = v10;
    while (1)
    {
      v15 = 0;
      v75 = v12;
      do
      {
        if (*v80 != v14)
        {
          objc_enumerationMutation(list);
        }

        v16 = *(*(&v79 + 1) + 8 * v15);
        unsignedLongValue = [v16 unsignedLongValue];
        LODWORD(v93) = bswap32(unsignedLongValue) ^ v93;
        if ([v16 unsignedLongValue] == *(&self->super._pid + 1))
        {
          v13 = v12;
        }

        v18 = [(NSMutableDictionary *)self->_preblobToPIDMap objectForKeyedSubscript:v16];
        v19 = v18;
        if (!v18 || (v20 = CDXGetPreblobLength([v18 bytes])) == 0 || (v21 = v20, v20 > objc_msgSend(v19, "length")))
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_18;
          }

          VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          v55 = "<nil>";
          if (v19)
          {
            v55 = [objc_msgSend(v19 "description")];
          }

          OUTLINED_FUNCTION_9_0(v55, v23, v24, v25, v26, v27, v28, v29, v67, v68, v69, v70, v71, v72, v73, *(&v73 + 1), v74);
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_15_1();
          v53 = v22;
          v54 = " [%s] %s:%d Preblob is too small: %s";
LABEL_41:
          _os_log_error_impl(&dword_24E50C000, v53, OS_LOG_TYPE_ERROR, v54, v52, 0x26u);
LABEL_18:
          [data appendBytes:"" length:1];
          goto LABEL_19;
        }

        if (v21 < [v19 length])
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v76 = VRTraceErrorLogLevelToCSTR();
            v30 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              [objc_msgSend(v19 "description")];
              *buf = v73;
              v85 = v76;
              v86 = 2080;
              OUTLINED_FUNCTION_6_1();
              v87 = 1221;
              v88 = v31;
              v89 = v32;
              v90 = v33;
              v91 = v21;
              _os_log_impl(&dword_24E50C000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Trimming preblob %s to %d bytes", buf, 0x2Cu);
            }
          }

          v19 = [v19 subdataWithRange:{0, v21}];
        }

        if ((CDXVerifyPreblob([v19 bytes], objc_msgSend(v19, "length")) & 1) == 0)
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_18;
          }

          VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          v51 = "<nil>";
          if (v19)
          {
            v51 = [objc_msgSend(v19 "description")];
          }

          OUTLINED_FUNCTION_9_0(v51, v44, v45, v46, v47, v48, v49, v50, v67, v68, v69, v70, v71, v72, v73, *(&v73 + 1), v74);
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_15_1();
          v53 = v43;
          v54 = " [%s] %s:%d Invalid preblob: %s";
          goto LABEL_41;
        }

        if (*[v19 bytes] == 1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            VRTraceErrorLogLevelToCSTR();
            v34 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              if (v19)
              {
                v42 = [objc_msgSend(v19 "description")];
              }

              else
              {
                v42 = "<nil>";
              }

              OUTLINED_FUNCTION_9_0(v42, v35, v36, v37, v38, v39, v40, v41, v67, v68, v69, v70, v71, v72, v73, *(&v73 + 1), v74);
              OUTLINED_FUNCTION_6_1();
              OUTLINED_FUNCTION_15_1();
              _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Rejecting anonymous preblob: %s", v56, 0x26u);
            }
          }

          goto LABEL_18;
        }

        [data appendData:v19];
LABEL_19:
        ++v15;
        LOBYTE(v12) = v12 + 1;
      }

      while (v11 != v15);
      v12 = v75 + v11;
      v57 = [list countByEnumeratingWithState:&v79 objects:v92 count:16];
      v11 = v57;
      if (!v57)
      {
        v7 = v71;
        v6 = v72;
        LOBYTE(v8) = v70;
        goto LABEL_47;
      }
    }
  }

  v13 = -1;
LABEL_47:
  v58 = CDXVendorCreateTicket(v6, v7, &v83, &v93, [data bytes], objc_msgSend(data, "length"), v8, v13, 300, 0);
  if (v58)
  {
    v59 = v58;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v60 = VRTraceErrorLogLevelToCSTR();
      v61 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v85 = v60;
        v86 = 2080;
        OUTLINED_FUNCTION_6_1();
        v87 = 1261;
        v88 = v65;
        LODWORD(v89) = v59;
        OUTLINED_FUNCTION_20_1(&dword_24E50C000, v61, v66, " [%s] %s:%d Unable to generate ticket! error = %d", buf);
      }
    }

    goto LABEL_51;
  }

  v62 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:v83 freeWhenDone:1];
  v7 = 0;
  if (v6)
  {
LABEL_52:
    CDXVendorRelease(v6);
  }

LABEL_53:
  if (v7)
  {
    free(v7);
  }

LABEL_55:
  v63 = *MEMORY[0x277D85DE8];
  return v62;
}

- (void)CDXClientSession:(id)session receivedData:(id)data from:(int64_t)from
{
  v34 = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v10 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      [data length];
      *buf = 136316162;
      v28 = v11;
      OUTLINED_FUNCTION_8_1();
      v29 = 1379;
      v30 = v13;
      v31 = v14;
      v32 = v13;
      fromCopy = from;
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKConnection:receivedData(%d):from=%d", buf, 0x28u);
    }
  }

  v15 = -[NSMutableDictionary objectForKeyedSubscript:](-[GKConnectionInternal cdxSessions](self, "cdxSessions"), "objectForKeyedSubscript:", [objc_msgSend(session "ticket")]);
  if (v15)
  {
    v16 = [objc_msgSend(objc_msgSend(v15 objectForKeyedSubscript:{@"connectionPIDList", "objectAtIndex:", from), "unsignedLongValue"}];
    v17 = [(GKConnectionInternal *)self extractBlobUsingData:data withSourcePID:v16 destPID:*(&self->super._pid + 1)];
    if (v17)
    {
      v18 = v17;
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v28 = v19;
          OUTLINED_FUNCTION_8_1();
          v29 = 1395;
          v30 = v21;
          v31 = v16;
          _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d starting-ice.%d", buf, 0x22u);
        }
      }

      TimingLog(3, 0, "CDX done - starting ICE");
      reportingAgent = self->_reportingAgent;
      perfTimerStop();
      v23 = self->_reportingAgent;
      perfTimerStart();
      pidsPreparedForConnection = self->_pidsPreparedForConnection;
      reportingGKLog();
      pidGUID = self->_pidGUID;
      [v18 bytes];
      [v18 length];
      GCKSessionEstablishConnection();
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)initWithParticipantID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Error in GCKSessionCreate.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getLocalConnectionDataWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  [a2 length];
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_10_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x26u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)connectParticipantsWithConnectionData:(uint64_t)a3 withSessionInfo:(os_log_t)log .cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = "[GKConnectionInternal connectParticipantsWithConnectionData:withSessionInfo:]";
  *(buf + 11) = 1024;
  *(buf + 6) = 874;
  *(buf + 14) = 2080;
  *(buf + 30) = a1;
  _os_log_error_impl(&dword_24E50C000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Participant connection data NOT found for %s", buf, 0x26u);
}

- (void)connectParticipantsWithConnectionData:withSessionInfo:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d CANNOT CREATE DISPATCH GROUP", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_200_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  v3 = 966;
  _os_log_fault_impl(&dword_24E50C000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d Unable to create timer dispatch source", v2, 0x1Cu);
  v1 = *MEMORY[0x277D85DE8];
}

void __78__GKConnectionInternal_connectParticipantsWithConnectionData_withSessionInfo___block_invoke_200_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Unable to create timer dispatch source", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)internal_setRemoteConnectionData:fromParticipantID:pendingConnectionPIDList:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v4 = v0;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_20_1(&dword_24E50C000, v1, v1, " [%s] %s:%d GCKSessionPrepareConnection FAILED(%08X)", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addEvent:remotePeer:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setEventDelegate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)eventDelegate
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)gckPID
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)extractBlobUsingData:(void *)a1 withSourcePID:destPID:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [a1 length];
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4_0();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Eu);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __106__GKConnectionInternal_internalInitiateRelayWithParticipant_withConnectionData_withRelayInfo_didInitiate___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v4 = v0;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_20_1(&dword_24E50C000, v1, v1, " [%s] %s:%d Cannot get relay candidates (%08X)", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)internalUpdateRelayWithParticipant:withConnectionData:withRelayInfo:didInitiate:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  VRTraceErrorLogLevelToCSTR();
  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)internalUpdateRelayWithParticipant:(void *)a1 withConnectionData:(void *)a2 withRelayInfo:(uint64_t)a3 didInitiate:(void *)a4 .cold.2(void *a1, void *a2, uint64_t a3, void *a4)
{
  objc_sync_exit(a1);
  global_queue = dispatch_get_global_queue(0, 0);
  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 3221225472;
  a2[2] = __104__GKConnectionInternal_internalUpdateRelayWithParticipant_withConnectionData_withRelayInfo_didInitiate___block_invoke;
  a2[3] = &unk_279682BF0;
  a2[4] = a3;
  a2[5] = *a4;
  dispatch_async(global_queue, a2);
}

- (void)localGamingReceiveDataHandler:(uint64_t)a1 data:(void *)a2 time:error:.cold.1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 length];
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)startListeningForLocalGamingCDX
{
  OUTLINED_FUNCTION_19_1();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getLocalConnectionDataForLocalGaming
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v4 = v0;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  _os_log_debug_impl(&dword_24E50C000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d After GetLocalInterfaceListWithOptions iNumInt=%d", v3, 0x22u);
  v2 = *MEMORY[0x277D85DE8];
}

@end