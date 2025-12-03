@interface GKSessionInternal
- (BOOL)acceptConnectionFromPeer:(id)peer error:(id *)error;
- (BOOL)checkDNSConnection;
- (BOOL)isPeerBusy:(id)busy;
- (BOOL)parseServiceName:(const char *)name intoDisplayName:(id *)displayName pid:(unsigned int *)pid state:(id *)state;
- (BOOL)passesSendDataSanityCheck:(id)check toPeers:(id)peers withDataMode:(unsigned int)mode error:(id *)error;
- (BOOL)sendDataToAllPeers:(id)peers withDataMode:(unsigned int)mode error:(id *)error;
- (BOOL)tryConnectToPeer:(id)peer;
- (GKSessionInternal)initWithConnection:(id)connection session:(id)session delegate:(id)delegate;
- (GKSessionInternal)initWithSessionID:(id)d displayName:(id)name session:(id)session sessionMode:(unsigned int)mode;
- (NSString)displayName;
- (id)displayNameForPeer:(id)peer;
- (id)newNSErrorFromGKSessionError:(int)error description:(id)description reason:(id)reason;
- (id)newNSErrorFromHRESULT:(int)t description:(id)description reason:(id)reason;
- (id)peersWithConnectionState:(unsigned int)state;
- (id)serviceName;
- (void)browse;
- (void)cancelConnectToPeer:(id)peer;
- (void)cleanupExAvailablePeers;
- (void)connectToPeer:(id)peer withTimeout:(double)timeout;
- (void)dealloc;
- (void)denyConnectionFromPeer:(id)peer;
- (void)didFindService:(const char *)service fromIF:(const char *)f withError:(int)error moreComing:(BOOL)coming;
- (void)didPublishWithError:(int)error;
- (void)didRemoveService:(const char *)service fromIF:(const char *)f withError:(int)error moreComing:(BOOL)coming;
- (void)disconnectFromAllPeers;
- (void)disconnectPeerFromAllPeers:(id)peers;
- (void)handleEvents;
- (void)lock;
- (void)processTXTRecordForPeer:(id)peer txtLen:(unsigned __int16)len txtRecord:(const void *)record;
- (void)publish;
- (void)receiveDOOB:(id)b fromPeer:(id)peer inSession:(id)session context:(void *)context;
- (void)reset;
- (void)setAvailable:(BOOL)available;
- (void)setBusy:(BOOL)busy;
- (void)setDOOBReceiveHandler:(id)handler withContext:(void *)context inBand:(unsigned int)band;
- (void)setDataReceiveHandler:(id)handler withContext:(void *)context;
- (void)setDelegate:(id)delegate;
- (void)setPrivateDelegate:(id)delegate;
- (void)setWifiEnabled:(BOOL)enabled;
- (void)stopOldService;
- (void)stopResolvingAllPeers;
- (void)tellDelegate_connectionRequestToPeerFailed:(id)failed;
- (void)tellDelegate_didConnectPeer:(id)peer;
- (void)tellDelegate_didDisconnectPeer:(id)peer;
- (void)tellDelegate_didReceiveBand_RetryICE:(id)e;
- (void)tellDelegate_didReceiveData:(id)data;
- (void)tellDelegate_didReceiveDataFromPeerWithContext:(id)context;
- (void)tellDelegate_gotInvited:(id)invited;
- (void)tellDelegate_initiateRelay:(id)relay;
- (void)tellDelegate_isConnectingPeer:(id)peer;
- (void)tellDelegate_networkStatisticsChanged:(id)changed;
- (void)tellDelegate_peerDidBecomeAvailable:(id)available;
- (void)tellDelegate_peerDidBecomeBusy:(id)busy;
- (void)tellDelegate_peerDidBecomeUnavailable:(id)unavailable;
- (void)tellDelegate_sessionDidFailWithError:(id)error;
- (void)tellDelegate_updateRelay:(id)relay;
- (void)timeoutConnectToPeer:(id)peer;
- (void)unlock;
@end

@implementation GKSessionInternal

- (id)newNSErrorFromHRESULT:(int)t description:(id)description reason:(id)reason
{
  v6 = 0;
  v25 = *MEMORY[0x277D85DE8];
  if (description && reason)
  {
    v9 = objc_alloc(MEMORY[0x277CBEAC0]);
    v6 = [v9 initWithObjectsAndKeys:{description, *MEMORY[0x277CCA450], reason, *MEMORY[0x277CCA470], 0}];
  }

  v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.gamekit.GKSessionErrorDomain" code:t userInfo:v6];

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v16 = v11;
      v17 = 2080;
      v18 = "[GKSessionInternal(_private) newNSErrorFromHRESULT:description:reason:]";
      v19 = 1024;
      v20 = 733;
      v21 = 1024;
      tCopy = t;
      v23 = 2112;
      localizedDescription = [v10 localizedDescription];
      _os_log_error_impl(&dword_24E50C000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error: %d -- %@.", buf, 0x2Cu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)newNSErrorFromGKSessionError:(int)error description:(id)description reason:(id)reason
{
  v6 = 0;
  v25 = *MEMORY[0x277D85DE8];
  if (description && reason)
  {
    v9 = objc_alloc(MEMORY[0x277CBEAC0]);
    v6 = [v9 initWithObjectsAndKeys:{description, *MEMORY[0x277CCA450], reason, *MEMORY[0x277CCA470], 0}];
  }

  v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.gamekit.GKSessionErrorDomain" code:error userInfo:v6];

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v16 = v11;
      v17 = 2080;
      v18 = "[GKSessionInternal(_private) newNSErrorFromGKSessionError:description:reason:]";
      v19 = 1024;
      v20 = 747;
      v21 = 1024;
      errorCopy = error;
      v23 = 2112;
      localizedDescription = [v10 localizedDescription];
      _os_log_error_impl(&dword_24E50C000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error: %d -- %@.", buf, 0x2Cu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)tellDelegate_sessionDidFailWithError:(id)error
{
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_sessionDidFailWithError:];
      }
    }
  }

  else
  {
    v4 = [error objectForKeyedSubscript:@"NSError"];
    selfCopy = self;
    pthread_mutex_lock(&self->_delegateLock);
    delegate = [(GKSessionInternal *)self delegate];
    [(GKSessionDelegate *)delegate session:self->_session didFailWithError:v4];

    pthread_mutex_unlock(&self->_delegateLock);
  }
}

- (void)tellDelegate_didConnectPeer:(id)peer
{
  v46 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_didConnectPeer:];
      }
    }

    goto LABEL_37;
  }

  v5 = [peer objectForKeyedSubscript:@"peerID"];
  v30 = 0;
  v6 = [peer objectForKeyedSubscript:@"data"];
  v7 = 2;
  if (v6)
  {
    [v6 getBytes:&v30 length:4];
    if (v30)
    {
      v7 = 5;
    }

    else
    {
      v7 = 2;
    }
  }

  pthread_mutex_lock(&self->_delegateLock);
  delegate = [(GKSessionInternal *)self delegate];
  privateDelegate = [(GKSessionInternal *)self privateDelegate];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (privateDelegate)
      {
        v28 = [-[GKSessionPrivateDelegate description](privateDelegate "description")];
        if (delegate)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v28 = "<nil>";
        if (delegate)
        {
LABEL_13:
          v12 = [-[GKSessionDelegate description](delegate description];
          if (v5)
          {
LABEL_14:
            v13 = [objc_msgSend(v5 description];
LABEL_18:
            v14 = [(GKList *)self->_peersConnected count];
            maxPeers = self->maxPeers;
            *buf = 136316930;
            v32 = v10;
            v33 = 2080;
            v34 = "[GKSessionInternal(_private) tellDelegate_didConnectPeer:]";
            v35 = 1024;
            v36 = 820;
            v37 = 2080;
            v38 = v29;
            v39 = 2080;
            v40 = v12;
            v41 = 2080;
            *v42 = v13;
            *&v42[8] = 1024;
            v43 = v14 + 1;
            v44 = 1024;
            v45 = maxPeers;
            _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%s, %s]: didConnectToPeer: %s -- cur/max: %d/%d", buf, 0x46u);
            goto LABEL_19;
          }

LABEL_17:
          v13 = "<nil>";
          goto LABEL_18;
        }
      }

      v12 = "<nil>";
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }
  }

LABEL_19:
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v18 = [objc_msgSend(v5 "description")];
      }

      else
      {
        v18 = "<nil>";
      }

      *buf = 136315906;
      v32 = v16;
      v33 = 2080;
      v34 = "[GKSessionInternal(_private) tellDelegate_didConnectPeer:]";
      v35 = 1024;
      v36 = 822;
      v37 = 2080;
      v38 = v18;
      _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d did-connect-to-peer.%s", buf, 0x26u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(GKList *)self->_peersConnected count];
        v22 = self->maxPeers;
        *buf = 136316674;
        v32 = v19;
        v33 = 2080;
        v34 = "[GKSessionInternal(_private) tellDelegate_didConnectPeer:]";
        v35 = 1024;
        v36 = 825;
        v37 = 2112;
        v38 = privateDelegate;
        v39 = 2112;
        v40 = v5;
        v41 = 1024;
        *v42 = v21 + 1;
        *&v42[4] = 1024;
        *&v42[6] = v22;
        _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: didConnectToPeer: %@ -- cur/max: %d/%d", buf, 0x3Cu);
      }
    }

    [(GKSessionPrivateDelegate *)privateDelegate session:self->_session peer:v5 didChangeState:v7];
  }

  if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(GKList *)self->_peersConnected count];
        v26 = self->maxPeers;
        *buf = 136316674;
        v32 = v23;
        v33 = 2080;
        v34 = "[GKSessionInternal(_private) tellDelegate_didConnectPeer:]";
        v35 = 1024;
        v36 = 830;
        v37 = 2112;
        v38 = delegate;
        v39 = 2112;
        v40 = v5;
        v41 = 1024;
        *v42 = v25 + 1;
        *&v42[4] = 1024;
        *&v42[6] = v26;
        _os_log_impl(&dword_24E50C000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: didConnectToPeer: %@ -- cur/max: %d/%d", buf, 0x3Cu);
      }
    }

    [(GKSessionDelegate *)delegate session:self->_session peer:v5 didChangeState:v7];
  }

  pthread_mutex_unlock(&self->_delegateLock);
  [(GKVoiceChatSessionListener *)self->_voiceChatListener session:self peer:v5 didChangeState:v7];
LABEL_37:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)tellDelegate_didDisconnectPeer:(id)peer
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_didDisconnectPeer:];
      }
    }

    goto LABEL_27;
  }

  v5 = [peer objectForKeyedSubscript:@"peerID"];
  pthread_mutex_lock(&self->_delegateLock);
  delegate = [(GKSessionInternal *)self delegate];
  privateDelegate = [(GKSessionInternal *)self privateDelegate];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v9 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      if (privateDelegate)
      {
        v21 = [-[GKSessionPrivateDelegate description](privateDelegate "description")];
        if (delegate)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v21 = "<nil>";
        if (delegate)
        {
LABEL_9:
          v12 = [-[GKSessionDelegate description](delegate "description")];
          if (v5)
          {
LABEL_10:
            v13 = [objc_msgSend(v5 "description")];
LABEL_14:
            v14 = [(GKList *)self->_peersConnected count];
            maxPeers = self->maxPeers;
            *buf = 136316930;
            v23 = v10;
            v24 = 2080;
            v25 = "[GKSessionInternal(_private) tellDelegate_didDisconnectPeer:]";
            v26 = 1024;
            v27 = 856;
            v28 = 2080;
            v29 = v21;
            v30 = 2080;
            v31 = v12;
            v32 = 2080;
            v33 = v13;
            v34 = 1024;
            v35 = v14 + 1;
            v36 = 1024;
            v37 = maxPeers;
            _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d tell [%s, %s] didDisconnectFromPeer: %s -- cur/max: %d/%d", buf, 0x46u);
            goto LABEL_15;
          }

LABEL_13:
          v13 = "<nil>";
          goto LABEL_14;
        }
      }

      v12 = "<nil>";
      if (v5)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

LABEL_15:
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v18 = [objc_msgSend(v5 "description")];
      }

      else
      {
        v18 = "<nil>";
      }

      *buf = 136315906;
      v23 = v16;
      v24 = 2080;
      v25 = "[GKSessionInternal(_private) tellDelegate_didDisconnectPeer:]";
      v26 = 1024;
      v27 = 858;
      v28 = 2080;
      v29 = v18;
      _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d did-disconnect-from-peer.%s", buf, 0x26u);
    }
  }

  selfCopy = self;
  if (objc_opt_respondsToSelector())
  {
    [(GKSessionPrivateDelegate *)privateDelegate session:self->_session peer:v5 didChangeState:3];
  }

  if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(GKSessionDelegate *)delegate session:self->_session peer:v5 didChangeState:3];
  }

  pthread_mutex_unlock(&self->_delegateLock);
  [(GKVoiceChatSessionListener *)self->_voiceChatListener session:self peer:v5 didChangeState:3];

LABEL_27:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)tellDelegate_isConnectingPeer:(id)peer
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_isConnectingPeer:];
      }
    }
  }

  else
  {
    v5 = [peer objectForKeyedSubscript:@"peerID"];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v7 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v10 = [objc_msgSend(v5 "description")];
        }

        else
        {
          v10 = "<nil>";
        }

        v17 = 136315906;
        v18 = v8;
        v19 = 2080;
        v20 = "[GKSessionInternal(_private) tellDelegate_isConnectingPeer:]";
        v21 = 1024;
        v22 = 891;
        v23 = 2080;
        v24 = v10;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isConnectingPeer: %s", &v17, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v13 = [objc_msgSend(v5 "description")];
        }

        else
        {
          v13 = "<nil>";
        }

        v17 = 136315906;
        v18 = v11;
        v19 = 2080;
        v20 = "[GKSessionInternal(_private) tellDelegate_isConnectingPeer:]";
        v21 = 1024;
        v22 = 892;
        v23 = 2080;
        v24 = v13;
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d is-connecting-to-peer.%s", &v17, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    delegate = [(GKSessionInternal *)self delegate];
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session peer:v5 didChangeState:4];
    }

    if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(GKSessionDelegate *)delegate session:self->_session peer:v5 didChangeState:4];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)tellDelegate_peerDidBecomeAvailable:(id)available
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_peerDidBecomeAvailable:];
      }
    }
  }

  else
  {
    v5 = [available objectForKeyedSubscript:@"peerID"];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v7 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule > 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315906;
        v17 = v8;
        v18 = 2080;
        v19 = "[GKSessionInternal(_private) tellDelegate_peerDidBecomeAvailable:]";
        v20 = 1024;
        v21 = 919;
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peerDidBecomeAvailable: %@", &v16, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v12 = [objc_msgSend(v5 "description")];
        }

        else
        {
          v12 = "<nil>";
        }

        v16 = 136315906;
        v17 = v10;
        v18 = 2080;
        v19 = "[GKSessionInternal(_private) tellDelegate_peerDidBecomeAvailable:]";
        v20 = 1024;
        v21 = 921;
        v22 = 2080;
        v23 = v12;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer-did-become-available.%s", &v16, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    delegate = [(GKSessionInternal *)self delegate];
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session peer:v5 didChangeState:0];
    }

    if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(GKSessionDelegate *)delegate session:self->_session peer:v5 didChangeState:0];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)tellDelegate_peerDidBecomeUnavailable:(id)unavailable
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_peerDidBecomeUnavailable:];
      }
    }
  }

  else
  {
    v5 = [unavailable objectForKeyedSubscript:@"peerID"];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v7 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule > 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315906;
        v17 = v8;
        v18 = 2080;
        v19 = "[GKSessionInternal(_private) tellDelegate_peerDidBecomeUnavailable:]";
        v20 = 1024;
        v21 = 948;
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peerDidBecomeUnavailable: %@", &v16, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v12 = [objc_msgSend(v5 "description")];
        }

        else
        {
          v12 = "<nil>";
        }

        v16 = 136315906;
        v17 = v10;
        v18 = 2080;
        v19 = "[GKSessionInternal(_private) tellDelegate_peerDidBecomeUnavailable:]";
        v20 = 1024;
        v21 = 950;
        v22 = 2080;
        v23 = v12;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer-did-become-unavailable.%s", &v16, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    delegate = [(GKSessionInternal *)self delegate];
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session peer:v5 didChangeState:1];
    }

    if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(GKSessionDelegate *)delegate session:self->_session peer:v5 didChangeState:1];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)tellDelegate_didReceiveBand_RetryICE:(id)e
{
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_didReceiveBand_RetryICE:];
      }
    }
  }

  else
  {
    v4 = [e objectForKeyedSubscript:@"peerID"];
    v5 = [e objectForKeyedSubscript:@"data"];
    pthread_mutex_lock(&self->_delegateLock);
    v6 = self->_doobReceiveHandler[1];
    if (v6)
    {
      [(GKSessionDOOBReceiveHandler *)v6 receiveDOOB:v5 fromPeer:v4 inSession:self->_session context:self->_doobReceiveHandlerContext[1]];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }
}

- (void)tellDelegate_didReceiveData:(id)data
{
  v26 = *MEMORY[0x277D85DE8];
  if (!self->_shutdown)
  {
    v5 = [data objectForKeyedSubscript:@"peerID"];
    v6 = [data objectForKeyedSubscript:@"data"];
    pthread_mutex_lock(&self->_delegateLock);
    dataReceiveHandler = [(GKSessionInternal *)self dataReceiveHandler];
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      v10 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136316674;
          v13 = v8;
          v14 = 2080;
          v15 = "[GKSessionInternal(_private) tellDelegate_didReceiveData:]";
          v16 = 1024;
          v17 = 1000;
          v18 = 2048;
          delegate = [(GKSessionInternal *)self delegate];
          v20 = 2048;
          privateDelegate = [(GKSessionInternal *)self privateDelegate];
          v22 = 1024;
          v23 = [v6 length];
          v24 = 2080;
          uTF8String = [v5 UTF8String];
          _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d tellDelegate[%p, %p]_didReceiveData of length [%d] from [%s]", &v12, 0x40u);
          if (!dataReceiveHandler)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = 136316674;
        v13 = v8;
        v14 = 2080;
        v15 = "[GKSessionInternal(_private) tellDelegate_didReceiveData:]";
        v16 = 1024;
        v17 = 1000;
        v18 = 2048;
        delegate = [(GKSessionInternal *)self delegate];
        v20 = 2048;
        privateDelegate = [(GKSessionInternal *)self privateDelegate];
        v22 = 1024;
        v23 = [v6 length];
        v24 = 2080;
        uTF8String = [v5 UTF8String];
        _os_log_debug_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d tellDelegate[%p, %p]_didReceiveData of length [%d] from [%s]", &v12, 0x40u);
        if (!dataReceiveHandler)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    if (!dataReceiveHandler)
    {
LABEL_13:

      pthread_mutex_unlock(&self->_delegateLock);
      goto LABEL_14;
    }

LABEL_12:
    [dataReceiveHandler receiveData:v6 fromPeer:v5 inSession:self->_session context:self->_dataReceiveHandlerContext];
    goto LABEL_13;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [GKSessionInternal(_private) tellDelegate_didReceiveData:];
    }
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)tellDelegate_didReceiveDataFromPeerWithContext:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_didReceiveDataFromPeerWithContext:];
      }
    }

    goto LABEL_16;
  }

  v5 = [context objectForKeyedSubscript:@"peerID"];
  v6 = [context objectForKeyedSubscript:@"data"];
  dataReceiveHandler = [(GKSessionInternal *)self dataReceiveHandler];
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_11;
  }

  v8 = VRTraceErrorLogLevelToCSTR();
  v9 = *MEMORY[0x277CE5818];
  v10 = *MEMORY[0x277CE5818];
  if (*MEMORY[0x277CE5808] == 1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316674;
      v17 = v8;
      v18 = 2080;
      v19 = "[GKSessionInternal(_private) tellDelegate_didReceiveDataFromPeerWithContext:]";
      v20 = 1024;
      v21 = 1024;
      v22 = 2048;
      *v23 = [(GKSessionInternal *)self delegate];
      *&v23[8] = 2048;
      *&v23[10] = [(GKSessionInternal *)self privateDelegate];
      v24 = 1024;
      v25 = [v6 length];
      v26 = 2080;
      uTF8String = [v5 UTF8String];
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d tellDelegate[%p, %p]_didReceiveData of length [%d] from [%s]", &v16, 0x40u);
      if (!dataReceiveHandler)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

LABEL_11:
    if (!dataReceiveHandler)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_11;
  }

  v16 = 136316674;
  v17 = v8;
  v18 = 2080;
  v19 = "[GKSessionInternal(_private) tellDelegate_didReceiveDataFromPeerWithContext:]";
  v20 = 1024;
  v21 = 1024;
  v22 = 2048;
  *v23 = [(GKSessionInternal *)self delegate];
  *&v23[8] = 2048;
  *&v23[10] = [(GKSessionInternal *)self privateDelegate];
  v24 = 1024;
  v25 = [v6 length];
  v26 = 2080;
  uTF8String = [v5 UTF8String];
  _os_log_debug_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d tellDelegate[%p, %p]_didReceiveData of length [%d] from [%s]", &v16, 0x40u);
  if (!dataReceiveHandler)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 length];
      uTF8String2 = [v5 UTF8String];
      v16 = 136316162;
      v17 = v11;
      v18 = 2080;
      v19 = "[GKSessionInternal(_private) tellDelegate_didReceiveDataFromPeerWithContext:]";
      v20 = 1024;
      v21 = 1027;
      v22 = 1024;
      *v23 = v13;
      *&v23[4] = 2080;
      *&v23[6] = uTF8String2;
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Inform handler did receiveVoiceChatData of length=%d from peerID=%s", &v16, 0x2Cu);
    }
  }

  [dataReceiveHandler receiveVoiceChatData:v6 fromPeer:v5];
LABEL_16:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)tellDelegate_gotInvited:(id)invited
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_gotInvited:];
      }
    }
  }

  else
  {
    v5 = [invited objectForKeyedSubscript:@"peerID"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v8 = [objc_msgSend(v5 "description")];
        }

        else
        {
          v8 = "<nil>";
        }

        v16 = 136315906;
        v17 = v6;
        v18 = 2080;
        v19 = "[GKSessionInternal(_private) tellDelegate_gotInvited:]";
        v20 = 1024;
        v21 = 1043;
        v22 = 2080;
        v23 = v8;
        _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d did-receive-connection-request-from-peer.%s", &v16, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    delegate = [(GKSessionInternal *)self delegate];
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136316162;
          v17 = v11;
          v18 = 2080;
          v19 = "[GKSessionInternal(_private) tellDelegate_gotInvited:]";
          v20 = 1024;
          v21 = 1049;
          v22 = 2112;
          v23 = privateDelegate;
          v24 = 2112;
          v25 = v5;
          _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@ didReceiveConnectionRequestFromPeer: %@", &v16, 0x30u);
        }
      }

      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session didReceiveConnectionRequestFromPeer:v5];
    }

    if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136316162;
          v17 = v13;
          v18 = 2080;
          v19 = "[GKSessionInternal(_private) tellDelegate_gotInvited:]";
          v20 = 1024;
          v21 = 1053;
          v22 = 2112;
          v23 = delegate;
          v24 = 2112;
          v25 = v5;
          _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@ didReceiveConnectionRequestFromPeer: %@", &v16, 0x30u);
        }
      }

      [(GKSessionDelegate *)delegate session:self->_session didReceiveConnectionRequestFromPeer:v5];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)tellDelegate_connectionRequestToPeerFailed:(id)failed
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_connectionRequestToPeerFailed:];
      }
    }
  }

  else
  {
    v5 = [failed objectForKeyedSubscript:@"peerID"];
    v6 = [failed objectForKeyedSubscript:@"NSError"];
    selfCopy = self;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v10 = [objc_msgSend(v5 "description")];
        }

        else
        {
          v10 = "<nil>";
        }

        v18 = 136315906;
        v19 = v8;
        v20 = 2080;
        v21 = "[GKSessionInternal(_private) tellDelegate_connectionRequestToPeerFailed:]";
        v22 = 1024;
        v23 = 1076;
        v24 = 2080;
        v25 = v10;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connection-request-to-peer-failed.%s", &v18, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    delegate = [(GKSessionInternal *)self delegate];
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136316162;
          v19 = v13;
          v20 = 2080;
          v21 = "[GKSessionInternal(_private) tellDelegate_connectionRequestToPeerFailed:]";
          v22 = 1024;
          v23 = 1082;
          v24 = 2112;
          v25 = privateDelegate;
          v26 = 2112;
          v27 = v5;
          _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@ connectionRequestToPeerFailed: %@", &v18, 0x30u);
        }
      }

      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session connectionWithPeerFailed:v5 withError:v6];
    }

    if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136316162;
          v19 = v15;
          v20 = 2080;
          v21 = "[GKSessionInternal(_private) tellDelegate_connectionRequestToPeerFailed:]";
          v22 = 1024;
          v23 = 1086;
          v24 = 2112;
          v25 = delegate;
          v26 = 2112;
          v27 = v5;
          _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@ connectionRequestToPeerFailed: %@", &v18, 0x30u);
        }
      }

      [(GKSessionDelegate *)delegate session:self->_session connectionWithPeerFailed:v5 withError:v6];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)tellDelegate_peerDidBecomeBusy:(id)busy
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_peerDidBecomeBusy:];
      }
    }
  }

  else
  {
    v5 = [busy objectForKeyedSubscript:@"peerID"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v8 = [objc_msgSend(v5 "description")];
        }

        else
        {
          v8 = "<nil>";
        }

        v13 = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[GKSessionInternal(_private) tellDelegate_peerDidBecomeBusy:]";
        v17 = 1024;
        v18 = 1107;
        v19 = 2080;
        v20 = v8;
        _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer-did-become-busy.%s", &v13, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136316162;
          v14 = v10;
          v15 = 2080;
          v16 = "[GKSessionInternal(_private) tellDelegate_peerDidBecomeBusy:]";
          v17 = 1024;
          v18 = 1112;
          v19 = 2112;
          v20 = privateDelegate;
          v21 = 2112;
          v22 = v5;
          _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: peerDidBecomeBusy: %@", &v13, 0x30u);
        }
      }

      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session peerDidBecomeBusy:v5];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)tellDelegate_initiateRelay:(id)relay
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_initiateRelay:];
      }
    }
  }

  else
  {
    v5 = [relay objectForKeyedSubscript:@"peerID"];
    v6 = [relay objectForKeyedSubscript:@"dict"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v9 = [objc_msgSend(v5 "description")];
        }

        else
        {
          v9 = "<nil>";
        }

        v18 = 136315906;
        v19 = v7;
        v20 = 2080;
        v21 = "[GKSessionInternal(_private) tellDelegate_initiateRelay:]";
        v22 = 1024;
        v23 = 1130;
        v24 = 2080;
        v25 = v9;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d initiate-relay.%s", &v18, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315650;
        v19 = v10;
        v20 = 2080;
        v21 = "[GKSessionInternal(_private) tellDelegate_initiateRelay:]";
        v22 = 1024;
        v23 = 1132;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d tellDelegate_initiateRelay", &v18, 0x1Cu);
      }
    }

    if (+[GKConnection isRelayEnabled])
    {
      pthread_mutex_lock(&self->_delegateLock);
      privateDelegate = [(GKSessionInternal *)self privateDelegate];
      if (objc_opt_respondsToSelector())
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136316418;
            v19 = v13;
            v20 = 2080;
            v21 = "[GKSessionInternal(_private) tellDelegate_initiateRelay:]";
            v22 = 1024;
            v23 = 1141;
            v24 = 2112;
            v25 = privateDelegate;
            v26 = 2112;
            v27 = v6;
            v28 = 2112;
            v29 = v5;
            _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: initiateRelay: %@ forPeer: %@", &v18, 0x3Au);
          }
        }

        [(GKSessionPrivateDelegate *)privateDelegate session:self->_session initiateRelay:v6 forPeer:v5];
      }

      else if (objc_opt_respondsToSelector())
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136316418;
            v19 = v15;
            v20 = 2080;
            v21 = "[GKSessionInternal(_private) tellDelegate_initiateRelay:]";
            v22 = 1024;
            v23 = 1146;
            v24 = 2112;
            v25 = privateDelegate;
            v26 = 2112;
            v27 = v6;
            v28 = 2112;
            v29 = v5;
            _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: initiateRelay: %@ forPeer: %@", &v18, 0x3Au);
          }
        }

        [(GKSessionPrivateDelegate *)privateDelegate session:self->_session initiateRelay:v6];
      }

      pthread_mutex_unlock(&self->_delegateLock);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)tellDelegate_updateRelay:(id)relay
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_updateRelay:];
      }
    }
  }

  else
  {
    v5 = [relay objectForKeyedSubscript:@"peerID"];
    v6 = [relay objectForKeyedSubscript:@"dict"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v9 = [objc_msgSend(v5 "description")];
        }

        else
        {
          v9 = "<nil>";
        }

        v18 = 136315906;
        v19 = v7;
        v20 = 2080;
        v21 = "[GKSessionInternal(_private) tellDelegate_updateRelay:]";
        v22 = 1024;
        v23 = 1162;
        v24 = 2080;
        v25 = v9;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d update-relay.%s", &v18, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315650;
        v19 = v10;
        v20 = 2080;
        v21 = "[GKSessionInternal(_private) tellDelegate_updateRelay:]";
        v22 = 1024;
        v23 = 1164;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d tellDelegate_updateRelay", &v18, 0x1Cu);
      }
    }

    if (+[GKConnection isRelayEnabled])
    {
      pthread_mutex_lock(&self->_delegateLock);
      privateDelegate = [(GKSessionInternal *)self privateDelegate];
      if (objc_opt_respondsToSelector())
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136316418;
            v19 = v13;
            v20 = 2080;
            v21 = "[GKSessionInternal(_private) tellDelegate_updateRelay:]";
            v22 = 1024;
            v23 = 1173;
            v24 = 2112;
            v25 = privateDelegate;
            v26 = 2112;
            v27 = v6;
            v28 = 2112;
            v29 = v5;
            _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: initiateRelay: %@ forPeer: %@", &v18, 0x3Au);
          }
        }

        [(GKSessionPrivateDelegate *)privateDelegate session:self->_session initiateRelay:v6 forPeer:v5];
      }

      else if (objc_opt_respondsToSelector())
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136316418;
            v19 = v15;
            v20 = 2080;
            v21 = "[GKSessionInternal(_private) tellDelegate_updateRelay:]";
            v22 = 1024;
            v23 = 1178;
            v24 = 2112;
            v25 = privateDelegate;
            v26 = 2112;
            v27 = v6;
            v28 = 2112;
            v29 = v5;
            _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: updateRelay: %@ forPeer: %@", &v18, 0x3Au);
          }
        }

        [(GKSessionPrivateDelegate *)privateDelegate session:self->_session updateRelay:v6];
      }

      pthread_mutex_unlock(&self->_delegateLock);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)tellDelegate_networkStatisticsChanged:(id)changed
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_networkStatisticsChanged:];
      }
    }
  }

  else
  {
    v5 = [changed objectForKeyedSubscript:@"peerID"];
    v6 = [changed objectForKeyedSubscript:@"dict"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v9 = [objc_msgSend(v5 "description")];
        }

        else
        {
          v9 = "<nil>";
        }

        v17 = 136315906;
        v18 = v7;
        v19 = 2080;
        v20 = "[GKSessionInternal(_private) tellDelegate_networkStatisticsChanged:]";
        v21 = 1024;
        v22 = 1194;
        v23 = 2080;
        v24 = v9;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d network-stats-changed.%s", &v17, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v6)
        {
          v12 = [objc_msgSend(v6 "description")];
        }

        else
        {
          v12 = "<nil>";
        }

        v17 = 136315906;
        v18 = v10;
        v19 = 2080;
        v20 = "[GKSessionInternal(_private) tellDelegate_networkStatisticsChanged:]";
        v21 = 1024;
        v22 = 1196;
        v23 = 2080;
        v24 = v12;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d tellDelegate_networkStatisticsChanged: [%s]", &v17, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136316162;
          v18 = v14;
          v19 = 2080;
          v20 = "[GKSessionInternal(_private) tellDelegate_networkStatisticsChanged:]";
          v21 = 1024;
          v22 = 1201;
          v23 = 2112;
          v24 = privateDelegate;
          v25 = 2112;
          v26 = v6;
          _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: stats-changed: %@", &v17, 0x30u);
        }
      }

      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session networkStatisticsChanged:v6];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)parseServiceName:(const char *)name intoDisplayName:(id *)displayName pid:(unsigned int *)pid state:(id *)state
{
  v68 = *MEMORY[0x277D85DE8];
  v58 = -21846;
  v56 = -21846;
  v57 = -86;
  v55 = -21846;
  v53 = -1431655766;
  v54 = -1431655766;
  if (sscanf(name, "%2c", &v58) <= 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
LABEL_40:
      LOBYTE(v13) = 0;
      goto LABEL_41;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    v13 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      goto LABEL_41;
    }

    *buf = 136315906;
    v60 = v11;
    v61 = 2080;
    v62 = "[GKSessionInternal(_private) parseServiceName:intoDisplayName:pid:state:]";
    v63 = 1024;
    v64 = 1240;
    v65 = 2080;
    *v66 = name;
    v14 = " [%s] %s:%d parseServiceName: invalid format: %s";
    goto LABEL_38;
  }

  if (v58 - 65 > 0x19)
  {
    if (v58 - 97 > 0x19)
    {
      if (v58 == 95)
      {
        v15 = 63;
      }

      else
      {
        v15 = 64;
      }

      if (v58 == 45)
      {
        v10 = 62;
      }

      else
      {
        v10 = v15;
      }

      if (v58 - 48 < 0xA)
      {
        v10 = v58 - 48;
      }
    }

    else
    {
      v10 = v58 - 61;
    }
  }

  else
  {
    v10 = v58 - 55;
  }

  v16 = v10;
  v17 = HIBYTE(v58) - 48;
  if (HIBYTE(v58) == 95)
  {
    v18 = 63;
  }

  else
  {
    v18 = 64;
  }

  if (HIBYTE(v58) == 45)
  {
    v18 = 62;
  }

  if (v17 >= 0xA)
  {
    LOBYTE(v17) = v18;
  }

  if (HIBYTE(v58) - 97 <= 0x19)
  {
    v19 = HIBYTE(v58) - 61;
  }

  else
  {
    v19 = v17;
  }

  v20 = HIBYTE(v58) - 55;
  if (HIBYTE(v58) - 65 > 0x19)
  {
    v20 = v19;
  }

  if (v16 > 0x3F || (v21 = v20, v20 >= 0x40u))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_40;
    }

    v26 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    v13 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      goto LABEL_41;
    }

    *buf = 136315906;
    v60 = v26;
    v61 = 2080;
    v62 = "[GKSessionInternal(_private) parseServiceName:intoDisplayName:pid:state:]";
    v63 = 1024;
    v64 = 1246;
    v65 = 2080;
    *v66 = name;
    v14 = " [%s] %s:%d parseServiceName: invalid version: %s";
    goto LABEL_38;
  }

  if (!(v16 | v20))
  {
    if (sscanf(name, "%*2c%6c%3c%n", &v54, &v56, &v53) <= 1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_40;
      }

      v28 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      v13 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
      if (!v13)
      {
        goto LABEL_41;
      }

      *buf = 136315906;
      v60 = v28;
      v61 = 2080;
      v62 = "[GKSessionInternal(_private) parseServiceName:intoDisplayName:pid:state:]";
      v63 = 1024;
      v64 = 1258;
      v65 = 2080;
      *v66 = name;
      v14 = " [%s] %s:%d parseServiceName: invalid format: %s";
      goto LABEL_38;
    }

    if (v54 - 65 > 0x19)
    {
      if (v54 - 97 > 0x19)
      {
        v29 = v54 - 48;
        if (v54 - 48 >= 0xA)
        {
          if (v54 == 95)
          {
            v30 = 63;
LABEL_55:
            if (BYTE1(v54) - 65 > 0x19)
            {
              if (BYTE1(v54) - 97 > 0x19)
              {
                v31 = BYTE1(v54) - 48;
                if (BYTE1(v54) - 48 >= 0xA)
                {
                  if (BYTE1(v54) == 95)
                  {
                    v32 = 4032;
LABEL_64:
                    if (BYTE2(v54) - 65 > 0x19)
                    {
                      if (BYTE2(v54) - 97 > 0x19)
                      {
                        v33 = BYTE2(v54) - 48;
                        if (BYTE2(v54) - 48 >= 0xA)
                        {
                          if (BYTE2(v54) == 95)
                          {
                            v34 = 258048;
LABEL_73:
                            if (HIBYTE(v54) - 65 > 0x19)
                            {
                              if (HIBYTE(v54) - 97 > 0x19)
                              {
                                v35 = HIBYTE(v54) - 48;
                                if (HIBYTE(v54) - 48 >= 0xA)
                                {
                                  if (HIBYTE(v54) == 95)
                                  {
                                    v36 = 16515072;
                                    goto LABEL_82;
                                  }

                                  if (HIBYTE(v54) != 45)
                                  {
                                    goto LABEL_110;
                                  }

                                  v35 = 62;
                                }
                              }

                              else
                              {
                                v35 = HIBYTE(v54) - 61;
                              }
                            }

                            else
                            {
                              v35 = HIBYTE(v54) - 55;
                            }

                            v36 = v35 << 18;
LABEL_82:
                            if (v55 - 65 <= 0x19)
                            {
                              v37 = v55 - 55;
LABEL_90:
                              v38 = v37 << 24;
LABEL_91:
                              if (HIBYTE(v55) - 65 <= 0x19)
                              {
                                v39 = HIBYTE(v55) - 55;
                                goto LABEL_95;
                              }

                              if (HIBYTE(v55) - 97 <= 0x19)
                              {
                                v39 = HIBYTE(v55) - 61;
                                goto LABEL_95;
                              }

                              v43 = HIBYTE(v55) - 48;
                              if (v43 >= 0xA)
                              {
                                if (HIBYTE(v55) != 45)
                                {
                                  v40 = HIBYTE(v55) == 95;
                                  v41 = -4;
LABEL_96:
                                  if (v40)
                                  {
                                    v42 = v41;
                                  }

                                  else
                                  {
                                    v42 = v41 + 1;
                                  }

                                  goto LABEL_111;
                                }

                                v39 = 62;
LABEL_95:
                                v40 = (v39 & 0x3C) == 4;
                                v41 = -5;
                                goto LABEL_96;
                              }

                              if ((HIBYTE(v55) & 0xC) != 4 && v43 > 3u)
                              {
                                v42 = -4;
                              }

                              else
                              {
                                v42 = -5;
                              }

                              if (v43 >= 4u)
                              {
                                goto LABEL_111;
                              }

                              if (v56 == 65)
                              {
                                v45 = MEMORY[0x277CBEC28];
                                goto LABEL_123;
                              }

                              if (v56 == 66)
                              {
                                v45 = MEMORY[0x277CBEC38];
LABEL_123:
                                v48 = (v32 + v30 + v34 + v36 + v38) | (v43 << 30);
                                v49 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v45, @"busy", 0}];
                                *pid = v48;
                                v50 = objc_alloc(MEMORY[0x277CCACA8]);
                                *displayName = [v50 initWithUTF8String:&name[v53]];
                                *state = v49;
                                LOBYTE(v13) = 1;
                                goto LABEL_41;
                              }

                              if (VRTraceGetErrorLogLevelForModule() < 7)
                              {
                                goto LABEL_40;
                              }

                              v51 = VRTraceErrorLogLevelToCSTR();
                              v12 = *MEMORY[0x277CE5818];
                              v13 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
                              if (!v13)
                              {
                                goto LABEL_41;
                              }

                              *buf = 136315906;
                              v60 = v51;
                              v61 = 2080;
                              v62 = "[GKSessionInternal(_private) parseServiceName:intoDisplayName:pid:state:]";
                              v63 = 1024;
                              v64 = 1275;
                              v65 = 2080;
                              *v66 = name;
                              v14 = " [%s] %s:%d parseServiceName: busy state missing: %s";
LABEL_38:
                              v24 = v12;
                              v25 = 38;
                              goto LABEL_39;
                            }

                            if (v55 - 97 <= 0x19)
                            {
                              v37 = v55 - 61;
                              goto LABEL_90;
                            }

                            v37 = v55 - 48;
                            if (v37 < 0xA)
                            {
                              goto LABEL_90;
                            }

                            if (v55 == 95)
                            {
                              v38 = 1056964608;
                              goto LABEL_91;
                            }

                            if (v55 == 45)
                            {
                              v37 = 62;
                              goto LABEL_90;
                            }

LABEL_110:
                            v42 = -3;
LABEL_111:
                            if (VRTraceGetErrorLogLevelForModule() < 7)
                            {
                              goto LABEL_40;
                            }

                            v46 = VRTraceErrorLogLevelToCSTR();
                            v47 = *MEMORY[0x277CE5818];
                            v13 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
                            if (!v13)
                            {
                              goto LABEL_41;
                            }

                            *buf = 136316162;
                            v60 = v46;
                            v61 = 2080;
                            v62 = "[GKSessionInternal(_private) parseServiceName:intoDisplayName:pid:state:]";
                            v63 = 1024;
                            v64 = 1265;
                            v65 = 2080;
                            *v66 = name;
                            *&v66[8] = 1024;
                            v67 = v42;
                            v14 = " [%s] %s:%d parseServiceName: invalid peer ID: %s (%d)";
                            v24 = v47;
                            v25 = 44;
                            goto LABEL_39;
                          }

                          if (BYTE2(v54) != 45)
                          {
                            goto LABEL_110;
                          }

                          v33 = 62;
                        }
                      }

                      else
                      {
                        v33 = BYTE2(v54) - 61;
                      }
                    }

                    else
                    {
                      v33 = BYTE2(v54) - 55;
                    }

                    v34 = v33 << 12;
                    goto LABEL_73;
                  }

                  if (BYTE1(v54) != 45)
                  {
                    goto LABEL_110;
                  }

                  v31 = 62;
                }
              }

              else
              {
                v31 = BYTE1(v54) - 61;
              }
            }

            else
            {
              v31 = BYTE1(v54) - 55;
            }

            v32 = v31 << 6;
            goto LABEL_64;
          }

          if (v54 != 45)
          {
            goto LABEL_110;
          }

          v29 = 62;
        }
      }

      else
      {
        v29 = v54 - 61;
      }
    }

    else
    {
      v29 = v54 - 55;
    }

    v30 = v29;
    goto LABEL_55;
  }

  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    goto LABEL_40;
  }

  v22 = VRTraceErrorLogLevelToCSTR();
  v23 = *MEMORY[0x277CE5818];
  v13 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    *buf = 136316162;
    v60 = v22;
    v61 = 2080;
    v62 = "[GKSessionInternal(_private) parseServiceName:intoDisplayName:pid:state:]";
    v63 = 1024;
    v64 = 1251;
    v65 = 1024;
    *v66 = v16;
    *&v66[4] = 1024;
    *&v66[6] = v21;
    v14 = " [%s] %s:%d parseServiceName: unsupported version: %d-%d";
    v24 = v23;
    v25 = 40;
LABEL_39:
    _os_log_impl(&dword_24E50C000, v24, OS_LOG_TYPE_DEFAULT, v14, buf, v25);
    goto LABEL_40;
  }

LABEL_41:
  v27 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)serviceName
{
  v2 = 0;
  v3 = 0;
  v11 = -21846;
  v10 = -1431655766;
  pid = self->_pid;
  do
  {
    v5 = (pid >> v2) & 0x3F;
    v6 = (pid >> v2) & 0xF | 0x30;
    if (v5 >= 0xA)
    {
      LOBYTE(v6) = v5 + 55;
    }

    if (v5 >= 0x24)
    {
      LOBYTE(v6) = v5 + 61;
    }

    if (v5 == 63)
    {
      LOBYTE(v6) = 95;
    }

    if (v5 == 62)
    {
      v7 = 45;
    }

    else
    {
      v7 = v6;
    }

    *(&v10 + v3++) = v7;
    v2 += 6;
  }

  while (v3 != 6);
  v12 = 0;
  v8 = 65;
  if (self->_isBusy)
  {
    v8 = 66;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"00%s%c..%@", &v10, v8, self->_displayName];
}

- (void)stopResolvingAllPeers
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_connection)
  {
    [(GKTable *)self->_peerInfoTable makeObjectsPerformSelector:sel_clearResolving];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        dnsServiceResolveConnection = self->_dnsServiceResolveConnection;
        v8 = 136315906;
        v9 = v3;
        v10 = 2080;
        v11 = "[GKSessionInternal(_private) stopResolvingAllPeers]";
        v12 = 1024;
        v13 = 1305;
        v14 = 1024;
        v15 = dnsServiceResolveConnection;
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_dnsServiceResolveConnection) (%08X)", &v8, 0x22u);
      }
    }

    v6 = self->_dnsServiceResolveConnection;
    if (v6)
    {
      DNSServiceRefDeallocate(v6);
    }

    self->_dnsServiceResolveConnection = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didPublishWithError:(int)error
{
  v25 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v18 = v5;
      v19 = 2080;
      v20 = "[GKSessionInternal(_private) didPublishWithError:]";
      v21 = 1024;
      v22 = 1313;
      v23 = 1024;
      errorCopy = error;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d didPublish: %d", buf, 0x22u);
    }
  }

  if (error)
  {
    if (self->_service)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          service = self->_service;
          *buf = 136315906;
          v18 = v7;
          v19 = 2080;
          v20 = "[GKSessionInternal(_private) didPublishWithError:]";
          v21 = 1024;
          v22 = 1317;
          v23 = 1024;
          errorCopy = service;
          _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_service) (%08X)", buf, 0x22u);
        }
      }

      DNSServiceRefDeallocate(self->_service);
      self->_service = 0;
    }

    if (self->_mode == 2 && self->_serviceBrowser)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          serviceBrowser = self->_serviceBrowser;
          *buf = 136315906;
          v18 = v10;
          v19 = 2080;
          v20 = "[GKSessionInternal(_private) didPublishWithError:]";
          v21 = 1024;
          v22 = 1322;
          v23 = 1024;
          errorCopy = serviceBrowser;
          _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_serviceBrowser) (%08X)", buf, 0x22u);
        }
      }

      DNSServiceRefDeallocate(self->_serviceBrowser);
      self->_serviceBrowser = 0;
    }

    if (self->_sessionStarted)
    {
      v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.gamekit.GKSessionErrorDomain" code:error userInfo:0];
      v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v13, @"NSError", 0}];
      pthread_mutex_lock(&self->_delegateLock);
      [(GKSessionInternal *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [(GKSessionInternal *)self performSelectorOnMainThread:sel_tellDelegate_sessionDidFailWithError_ withObject:v14 waitUntilDone:0];
      }

      pthread_mutex_unlock(&self->_delegateLock);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [(GKSessionInternal(_private) *)v15 didPublishWithError:v13];
        }
      }

      self->_sessionStarted = 0;
      self->_stopHandlingEvents = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKSessionInternal(_private) didPublishWithError:];
        }
      }

      [(GKSessionInternal *)self stopResolvingAllPeers];
    }
  }

  else
  {
    self->_isPublishing = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)lock
{
  if (pthread_mutex_lock(&self->_lock) && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [GKSessionInternal(_private) lock];
    }
  }
}

- (void)unlock
{
  if (pthread_mutex_unlock(&self->_lock) && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [GKSessionInternal(_private) unlock];
    }
  }
}

uint64_t __66__GKSessionInternal_callback__sendCallbacksToDelegate_remotePeer___block_invoke(void *a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v8[0] = @"peerID";
  v8[1] = @"dict";
  v9[0] = v1;
  v3 = a1[6];
  v6 = @"GKSRelayInitiateInfo";
  v7 = v3;
  v9[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  result = [v2 tellDelegate_initiateRelay:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __66__GKSessionInternal_callback__sendCallbacksToDelegate_remotePeer___block_invoke_223(void *a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v8[0] = @"peerID";
  v8[1] = @"dict";
  v9[0] = v1;
  v3 = a1[6];
  v6 = @"GKSRelayUpdateInfo";
  v7 = v3;
  v9[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  result = [v2 tellDelegate_updateRelay:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __66__GKSessionInternal_callback__sendCallbacksToDelegate_remotePeer___block_invoke_301(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v5[0] = a1[6];
  result = [v1 sendData:v2 toPeers:objc_msgSend(MEMORY[0x277CBEA60] withDataMode:"arrayWithObjects:count:" enableOOB:v5 error:{1), 0, 1, 0}];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __66__GKSessionInternal_callback__sendCallbacksToDelegate_remotePeer___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 48) + 16);
      *buf = 136315906;
      v10 = v2;
      v11 = 2080;
      v12 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]_block_invoke_2";
      v13 = 1024;
      v14 = 2282;
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionEvent_ReportStatistics: [buflen == %d]", buf, 0x22u);
    }
  }

  v5 = *(*(a1 + 32) + 64);
  v6 = *(a1 + 48);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  GCKSessionDecodeChannelStatistics();
}

- (void)setDelegate:(id)delegate
{
  pthread_mutex_lock(&self->_delegateLock);
  objc_storeWeak(&self->_delegate, delegate);

  pthread_mutex_unlock(&self->_delegateLock);
}

- (void)setPrivateDelegate:(id)delegate
{
  pthread_mutex_lock(&self->_delegateLock);
  objc_storeWeak(&self->_privateDelegate, delegate);

  pthread_mutex_unlock(&self->_delegateLock);
}

- (GKSessionInternal)initWithConnection:(id)connection session:(id)session delegate:(id)delegate
{
  v13 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = GKSessionInternal;
  v8 = [(GKSessionInternal *)&v12 init];
  if (v8)
  {
    VRTraceReset();
    v8->_session = session;
    v8->_wifiEnabled = 1;
    v8->_sReset = -1;
    v8->_pid = [connection gckPID];
    v8->sessionRef = [connection gckSession];
    objc_storeWeak(&v8->_delegate, delegate);
    [connection setEventDelegate:v8];
    v8->_connection = connection;
    sessionRef = v8->sessionRef;
    GCKSessionSetEventCallback();
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (GKSessionInternal)initWithSessionID:(id)d displayName:(id)name session:(id)session sessionMode:(unsigned int)mode
{
  v30 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = GKSessionInternal;
  v10 = [(GKSessionInternal *)&v20 init];
  if (v10)
  {
    VRTraceReset();
    v10->_session = session;
    v10->_connection = 0;
    v10->_mode = mode;
    v10->_wifiEnabled = 1;
    v10->_sReset = -1;
    if (![name length])
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      name = [v11 stringWithFormat:@"%@%f", v12, v13];
    }

    if (![d length])
    {
      d = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    }

    v10->sessionID = d;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        sessionID = v10->sessionID;
        buf[0] = 136316162;
        *&buf[1] = v14;
        v22 = 2080;
        v23 = "[GKSessionInternal initWithSessionID:displayName:session:sessionMode:]";
        v24 = 1024;
        v25 = 2514;
        v26 = 2112;
        v27 = sessionID;
        v28 = 2112;
        nameCopy = name;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d initWithSessionID: %@ displayName: %@", buf, 0x30u);
      }
    }

    GCKSessionCreateUniqueID();
    if (!GCKSessionCreate(1))
    {
      sessionRef = v10->sessionRef;
      AGPSessionCreate();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal initWithSessionID:displayName:session:sessionMode:];
      }
    }

    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)reset
{
  v35 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      displayName = self->_displayName;
      v26 = 136316162;
      v27 = v3;
      v28 = 2080;
      v29 = "[GKSessionInternal reset]";
      v30 = 1024;
      v31 = 2620;
      v32 = 2048;
      *v33 = self;
      *&v33[8] = 2112;
      v34 = displayName;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d session[%p] [%@] reset", &v26, 0x30u);
    }
  }

  [(GKSessionInternal *)self lock];
  pthread_mutex_lock(&self->_delegateLock);
  self->_shutdown = 1;
  self->_stopHandlingEvents = 1;
  objc_storeWeak(&self->_privateDelegate, 0);
  objc_storeWeak(&self->_delegate, 0);
  self->_session = 0;
  v6 = [(GKList *)self->_peersPendingIncomingInvitation allMatchingObjectsFromTable:self->_peerIDTable];
  if ([v6 count])
  {
    sessionRef = self->sessionRef;
    [objc_msgSend(v6 objectAtIndexedSubscript:{0), "unsignedIntValue"}];
    GCKSessionRespondToInvitation();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(GKTable *)self->_peerIDTable count];
      v11 = [(GKTable *)self->_peerNameTable count];
      v12 = [(GKTable *)self->_peerInfoTable count];
      v26 = 136316418;
      v27 = v8;
      v28 = 2080;
      v29 = "[GKSessionInternal reset]";
      v30 = 1024;
      v31 = 2641;
      v32 = 1024;
      *v33 = v10;
      *&v33[4] = 1024;
      *&v33[6] = v11;
      LOWORD(v34) = 1024;
      *(&v34 + 2) = v12;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _peerIDTable:%d, _peerNameTable:%d, _peerInfoTable:%d", &v26, 0x2Eu);
    }
  }

  [(GKTable *)self->_peerIDTable removeAllObjects];
  [(GKTable *)self->_peerNameTable removeAllObjects];
  [(GKTable *)self->_peerInfoTable removeAllObjects];
  [(GKList *)self->_peersAvailable removeAllIDs];
  [(GKList *)self->_peersConnected removeAllIDs];
  [(GKList *)self->_peersForCleanup removeAllIDs];
  [(GKList *)self->_peersPendingIncomingInvitation removeAllIDs];
  [(GKList *)self->_peersPendingOutgoingInvitation removeAllIDs];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(GKTable *)self->_peerIDTable count];
      v16 = [(GKTable *)self->_peerNameTable count];
      v17 = [(GKTable *)self->_peerInfoTable count];
      v26 = 136316418;
      v27 = v13;
      v28 = 2080;
      v29 = "[GKSessionInternal reset]";
      v30 = 1024;
      v31 = 2652;
      v32 = 1024;
      *v33 = v15;
      *&v33[4] = 1024;
      *&v33[6] = v16;
      LOWORD(v34) = 1024;
      *(&v34 + 2) = v17;
      _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _peerIDTable:%d, _peerNameTable:%d, _peerInfoTable:%d", &v26, 0x2Eu);
    }
  }

  sReset = self->_sReset;
  if (sReset != -1)
  {
    close(sReset);
    self->_sReset = -1;
  }

  if (self->_dnsServiceConnection)
  {
    *&self->_isSearching = 0;
    self->_serviceBrowser = 0;
    self->_service = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        dnsServiceConnection = self->_dnsServiceConnection;
        v26 = 136315906;
        v27 = v19;
        v28 = 2080;
        v29 = "[GKSessionInternal reset]";
        v30 = 1024;
        v31 = 2664;
        v32 = 1024;
        *v33 = dnsServiceConnection;
        _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_dnsServiceConnection) (%08X)", &v26, 0x22u);
      }
    }

    DNSServiceRefDeallocate(self->_dnsServiceConnection);
    self->_dnsServiceConnection = 0;
  }

  if (self->_dnsServiceResolveConnection)
  {
    [(GKTable *)self->_peerInfoTable makeObjectsPerformSelector:sel_clearResolving];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        dnsServiceResolveConnection = self->_dnsServiceResolveConnection;
        v26 = 136315906;
        v27 = v22;
        v28 = 2080;
        v29 = "[GKSessionInternal reset]";
        v30 = 1024;
        v31 = 2670;
        v32 = 1024;
        *v33 = dnsServiceResolveConnection;
        _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_dnsServiceResolveConnection) (%08X)", &v26, 0x22u);
      }
    }

    DNSServiceRefDeallocate(self->_dnsServiceResolveConnection);
    self->_dnsServiceResolveConnection = 0;
  }

  self->_isBusy = 0;
  self->_sessionStarted = 0;
  pthread_mutex_unlock(&self->_delegateLock);
  [(GKSessionInternal *)self unlock];
  v25 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      displayName = self->_displayName;
      *buf = 136316162;
      v8 = v3;
      v9 = 2080;
      v10 = "[GKSessionInternal dealloc]";
      v11 = 1024;
      v12 = 2682;
      v13 = 2048;
      selfCopy = self;
      v15 = 2112;
      v16 = displayName;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d session[%p] [%@] dealloc", buf, 0x30u);
    }
  }

  [(GKSessionInternal *)self reset];
  objc_storeWeak(&self->_dataReceiveHandler, 0);
  agpSessionRef = self->agpSessionRef;
  AGPSessionRelease();
}

- (NSString)displayName
{
  v2 = self->_displayName;

  return v2;
}

- (id)displayNameForPeer:(id)peer
{
  v27 = *MEMORY[0x277D85DE8];
  intValue = [peer intValue];
  if (intValue != self->_pid)
  {
    v8 = [(GKTable *)self->_peerNameTable objectForKey:intValue];
    if (v8)
    {
      displayName = v8;
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_21;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v17 = 136316162;
      v18 = v9;
      v19 = 2080;
      v20 = "[GKSessionInternal displayNameForPeer:]";
      v21 = 1024;
      v22 = 2728;
      v23 = 1024;
      v24 = intValue;
      v25 = 2112;
      v26 = displayName;
      v11 = " [%s] %s:%d displayNameForPeer: %d = %@ (table)";
    }

    else
    {
      v12 = [(GKTable *)self->_peerInfoTable objectForKey:intValue];
      if (!v12 || (v13 = [v12 displayName]) == 0)
      {
LABEL_17:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            [GKSessionInternal displayNameForPeer:];
          }
        }

        displayName = 0;
        goto LABEL_21;
      }

      displayName = v13;
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_21;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v17 = 136316162;
      v18 = v14;
      v19 = 2080;
      v20 = "[GKSessionInternal displayNameForPeer:]";
      v21 = 1024;
      v22 = 2732;
      v23 = 1024;
      v24 = intValue;
      v25 = 2112;
      v26 = displayName;
      v11 = " [%s] %s:%d displayNameForPeer: %d = %@ (peer)";
    }

    _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, v11, &v17, 0x2Cu);
    goto LABEL_21;
  }

  displayName = [(GKSessionInternal *)self displayName];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136316162;
      v18 = v6;
      v19 = 2080;
      v20 = "[GKSessionInternal displayNameForPeer:]";
      v21 = 1024;
      v22 = 2726;
      v23 = 1024;
      v24 = intValue;
      v25 = 2112;
      v26 = displayName;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d displayNameForPeer: %d = %@ (self)", &v17, 0x2Cu);
    }
  }

  if (!displayName)
  {
    goto LABEL_17;
  }

LABEL_21:
  result = displayName;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)passesSendDataSanityCheck:(id)check toPeers:(id)peers withDataMode:(unsigned int)mode error:(id *)error
{
  if (peers)
  {
    v6 = check == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || mode > 1;
  if (error && v8)
  {
    v9 = @"Parameter mode is invalid.";
    if (!peers)
    {
      v9 = @"Parameter peers is invalid.";
    }

    if (check)
    {
      v10 = v9;
    }

    else
    {
      v10 = @"Parameter data is invalid.";
    }

    *error = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30500 description:@"Invalid parameter for -sendData:toPeers:withDataMode:error:" reason:v10];
  }

  return v8 ^ 1;
}

- (BOOL)sendDataToAllPeers:(id)peers withDataMode:(unsigned int)mode error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  if (peers)
  {
    peersCopy = peers;
    [peers bytes];
    [peers length];
    [(GKSessionInternal *)self lock];
    agpSessionRef = self->agpSessionRef;
    AGPSessionBroadcast();
  }

  if (error)
  {
    *error = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30500 description:@"Invalid parameter for -sendDataToAllPeers:withDataMode:error:" reason:@"Parameter data is invalid."];
  }

  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    goto LABEL_8;
  }

  v9 = VRTraceErrorLogLevelToCSTR();
  v10 = *MEMORY[0x277CE5818];
  v11 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    *buf = 136315650;
    v15 = v9;
    v16 = 2080;
    v17 = "[GKSessionInternal sendDataToAllPeers:withDataMode:error:]";
    v18 = 1024;
    v19 = 2850;
    _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendDataToAllPeers - bad parameter", buf, 0x1Cu);
LABEL_8:
    LOBYTE(v11) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)receiveDOOB:(id)b fromPeer:(id)peer inSession:(id)session context:(void *)context
{
  v25 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136316418;
      v14 = v10;
      v15 = 2080;
      v16 = "[GKSessionInternal receiveDOOB:fromPeer:inSession:context:]";
      v17 = 1024;
      v18 = 2890;
      v19 = 1024;
      v20 = [b length];
      v21 = 2048;
      intValue = [peer intValue];
      v23 = 2112;
      v24 = [session displayNameForPeer:peer];
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RetryICE:: gcksession:didReceiveDOOB: %d bytes fromPeer: %08lx %@", &v13, 0x36u);
    }
  }

  GCKSessionReceiveDOOB(self->sessionRef, [peer intValue], objc_msgSend(b, "bytes"), objc_msgSend(b, "length"));
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setDOOBReceiveHandler:(id)handler withContext:(void *)context inBand:(unsigned int)band
{
  pthread_mutex_lock(&self->_delegateLock);
  if (handler && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = @"The out-of-band data handler does not respond to the correct selector.";
  }

  else
  {
    if (band == 1)
    {
      self->_doobReceiveHandler[1] = handler;
      self->_doobReceiveHandlerContext[1] = context;
      goto LABEL_11;
    }

    v9 = @"The band specifier is out-of-range for this implementation or build version.";
  }

  v10 = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30500 description:@"Invalid parameter for -setOOBReceiveHandler:withContext:inBand" reason:v9];
  v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v10, @"NSError", 0}];
  [(GKSessionInternal *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 || ([(GKSessionInternal *)self privateDelegate], (objc_opt_respondsToSelector()))
  {
    [(GKSessionInternal *)self performSelectorOnMainThread:sel_tellDelegate_sessionDidFailWithError_ withObject:v11 waitUntilDone:0];
  }

LABEL_11:

  pthread_mutex_unlock(&self->_delegateLock);
}

- (void)setDataReceiveHandler:(id)handler withContext:(void *)context
{
  pthread_mutex_lock(&self->_delegateLock);
  if (handler && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30500 description:@"Invalid parameter for -setDataReceiveHandler:withContext:" reason:@"The handler does not respond to the correct selector."];
    v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v7, @"NSError", 0}];
    [(GKSessionInternal *)self delegate];
    if (objc_opt_respondsToSelector() & 1) != 0 || ([(GKSessionInternal *)self privateDelegate], (objc_opt_respondsToSelector()))
    {
      [(GKSessionInternal *)self performSelectorOnMainThread:sel_tellDelegate_sessionDidFailWithError_ withObject:v8 waitUntilDone:0];
    }
  }

  else
  {
    objc_storeWeak(&self->_dataReceiveHandler, handler);
    self->_dataReceiveHandlerContext = context;
  }

  pthread_mutex_unlock(&self->_delegateLock);
}

- (void)timeoutConnectToPeer:(id)peer
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v7 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      displayName = self->_displayName;
      [peer connectTimeout];
      *buf = 136316162;
      v25 = v8;
      v26 = 2080;
      v27 = "[GKSessionInternal timeoutConnectToPeer:]";
      v28 = 1024;
      v29 = 2952;
      v30 = 2112;
      v31 = displayName;
      v32 = 2048;
      *v33 = v11;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%@] timeoutConnectToPeer: scheduled for %.3lf seconds in the future", buf, 0x30u);
    }
  }

  *(&v23.tv_usec + 1) = -1431655766;
  [peer connectTimeout];
  v13 = v12;
  v23.tv_sec = v12;
  [peer connectTimeout];
  v23.tv_usec = ((v14 - v13) * 1000000.0);
  select(0, 0, 0, 0, &v23);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_displayName;
      v18 = [peer pid];
      v19 = -[GKList hasID:](self->_peersConnected, "hasID:", [peer pid]);
      needsToTimeout = [peer needsToTimeout];
      *buf = 136316674;
      v25 = v15;
      v26 = 2080;
      v27 = "[GKSessionInternal timeoutConnectToPeer:]";
      v28 = 1024;
      v29 = 2959;
      v30 = 2112;
      v31 = v17;
      v32 = 1024;
      *v33 = v18;
      *&v33[4] = 1024;
      *&v33[6] = v19;
      v34 = 1024;
      v35 = needsToTimeout;
      _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%@] timeoutConnectToPeer: %d - connected?(%d) needs to?(%d)", buf, 0x38u);
    }
  }

  if (!-[GKList hasID:](self->_peersConnected, "hasID:", [peer pid]) && objc_msgSend(peer, "needsToTimeout"))
  {
    sessionRef = self->sessionRef;
    [peer pid];
    GCKSessionCancelConnectToLocalService();
  }

  [v5 drain];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)connectToPeer:(id)peer withTimeout:(double)timeout
{
  v45 = *MEMORY[0x277D85DE8];
  intValue = [peer intValue];
  v8 = [(GKTable *)self->_peerInfoTable objectForKey:intValue];
  if (v8)
  {
    v9 = v8;
    [(GKList *)self->_peersPendingOutgoingInvitation addID:intValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v36 = v10;
        v37 = 2080;
        v38 = "[GKSessionInternal connectToPeer:withTimeout:]";
        v39 = 1024;
        v40 = 3009;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** Stop resolving? potentially previous resolves", buf, 0x1Cu);
      }
    }

    [v9 stopResolving];
    timeoutCopy = 30000000.0;
    if (timeout != 0.0)
    {
      timeoutCopy = timeout;
    }

    [v9 setConnectTimeout:timeoutCopy];
    [v9 setNeedsToTimeout:1];
    [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    [(GKConnection *)self->_connection reportingAgent];
    pid = self->_pid;
    connectingGKLog();
    [(GKConnection *)self->_connection reportingAgent];
    if (self->_displayName)
    {
      displayName = self->_displayName;
    }

    reportingGKAppInfo();
    if ([(GKSessionInternal *)self checkDNSConnection])
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_30;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *buf = 136315650;
      v36 = v15;
      v37 = 2080;
      v38 = "[GKSessionInternal connectToPeer:withTimeout:]";
      v39 = 1024;
      v40 = 3053;
      v17 = " [%s] %s:%d Connect: Unable to use DNS connection!";
      v18 = v16;
      v19 = 28;
    }

    else
    {
      sdRef = self->_dnsServiceResolveConnection;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v36 = v21;
          v37 = 2080;
          v38 = "[GKSessionInternal connectToPeer:withTimeout:]";
          v39 = 1024;
          v40 = 3029;
          v41 = 2112;
          *v42 = peer;
          _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ********** BEGIN RESOLVE: %@", buf, 0x26u);
        }
      }

      v23 = DNSServiceResolve(&sdRef, 0x24000u, 0, [objc_msgSend(v9 "serviceName")], -[NSString UTF8String](self->serviceType, "UTF8String"), "local.", gkResolveCallback, v9);
      if (v23)
      {
        v24 = v23;
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_30;
        }

        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        v27 = [objc_msgSend(v9 "serviceName")];
        uTF8String = [(NSString *)self->serviceType UTF8String];
        *buf = 136316418;
        v36 = v25;
        v37 = 2080;
        v38 = "[GKSessionInternal connectToPeer:withTimeout:]";
        v39 = 1024;
        v40 = 3041;
        v41 = 1024;
        *v42 = v24;
        *&v42[4] = 2080;
        *&v42[6] = v27;
        v43 = 2080;
        v44 = uTF8String;
        v17 = " [%s] %s:%d resolve failed right away: %d [%s][%s]";
        v18 = v26;
        v19 = 54;
      }

      else
      {
        [v9 setResolveService:sdRef];
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_30;
        }

        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        serviceName = [v9 serviceName];
        *buf = 136316418;
        v36 = v29;
        v37 = 2080;
        v38 = "[GKSessionInternal connectToPeer:withTimeout:]";
        v39 = 1024;
        v40 = 3047;
        v41 = 2112;
        *v42 = serviceName;
        *&v42[8] = 1024;
        *&v42[10] = sdRef;
        v43 = 1024;
        LODWORD(v44) = 0;
        v17 = " [%s] %s:%d peer [%@]: pending resolve: %08X (shares from %08X)";
        v18 = v30;
        v19 = 50;
      }
    }

    _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_30:
    v32 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!peer)
  {
    goto LABEL_30;
  }

  [(GKSessionInternal *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(GKSessionInternal *)self privateDelegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v33 = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30501 description:@"The peerID was not found." reason:@"Invalid peerID."];
  -[GKSessionInternal performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_tellDelegate_connectionRequestToPeerFailed_, [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{peer, @"peerID", v33, @"NSError", 0}], 0);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)cancelConnectToPeer:(id)peer
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal cancelConnectToPeer:];
      }
    }
  }

  else if (peer)
  {
    v4 = -[GKTable objectForKey:](self->_peerInfoTable, "objectForKey:", [peer intValue]);
    if (v4)
    {
      v5 = v4;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315906;
          v11 = v6;
          v12 = 2080;
          v13 = "[GKSessionInternal cancelConnectToPeer:]";
          v14 = 1024;
          v15 = 3070;
          v16 = 2112;
          displayName = [v5 displayName];
          _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** Stop resolving: %@ local cancelled", &v10, 0x26u);
        }
      }

      [v5 stopResolving];
    }

    [(GKConnection *)self->_connection reportingAgent];
    reportingGKLog();
    sessionRef = self->sessionRef;
    GCKSessionCancelConnectToLocalService();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)acceptConnectionFromPeer:(id)peer error:(id *)error
{
  if (self->_shutdown)
  {
    if (error)
    {
      *error = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30500 description:@"Session already released - invalid operation." reason:@"Session shutting down."];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal acceptConnectionFromPeer:error:];
      }
    }
  }

  else
  {
    if (peer)
    {
      [peer intValue];
      [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      [(GKConnection *)self->_connection reportingAgent];
      pid = self->_pid;
      connectingGKLog();
      [(GKConnection *)self->_connection reportingAgent];
      if (self->_displayName)
      {
        displayName = self->_displayName;
      }

      reportingGKAppInfo();
      sessionRef = self->sessionRef;
      GCKSessionRespondToInvitation();
    }

    if (error)
    {
      *error = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30500 description:@"Invalid parameter for -acceptConnectionFromPeer:error:" reason:@"Parameter peerID is invalid."];
    }
  }

  return 0;
}

- (void)denyConnectionFromPeer:(id)peer
{
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal denyConnectionFromPeer:];
      }
    }
  }

  else if (peer)
  {
    -[GKList removeID:](self->_peersPendingIncomingInvitation, "removeID:", [peer intValue]);
    [(GKConnection *)self->_connection reportingAgent];
    reportingGKLog();
    sessionRef = self->sessionRef;

    GCKSessionRespondToInvitation();
  }
}

- (void)disconnectPeerFromAllPeers:(id)peers
{
  v33 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = v3;
        v25 = 2080;
        v26 = "[GKSessionInternal disconnectPeerFromAllPeers:]";
        v27 = 1024;
        v28 = 3129;
        v5 = " [%s] %s:%d cannot disconnect peer after reset";
LABEL_5:
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (!peers)
    {
      goto LABEL_21;
    }

    intValue = [peers intValue];
    [(GKConnection *)self->_connection reportingAgent];
    reportingGKLog();
    v7 = [[GKOOBMessage alloc] initWithMessageType:1500];
    if (v7)
    {
      v8 = v7;
      data = [(GKOOBMessage *)v7 data];
      if (data)
      {
        v10 = data;
        v11 = data;
        bytes = [v10 bytes];
        v13 = [v10 length];
        [(GKSessionInternal *)self lock];
        v14 = AGPSessionSendTo(self->agpSessionRef, &intValue, 1, bytes, v13);
        if (v14)
        {
          v15 = v14;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v16 = VRTraceErrorLogLevelToCSTR();
            v17 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v24 = v16;
              v25 = 2080;
              v26 = "[GKSessionInternal disconnectPeerFromAllPeers:]";
              v27 = 1024;
              v28 = 3165;
              v29 = 2048;
              v30 = intValue;
              v31 = 2048;
              v32 = v15;
              _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d disconnectPeerFromAllPeers: AGPSessionSendTo failed for peer:(%lx) error:(%lX)\n", buf, 0x30u);
            }
          }
        }

        [(GKSessionInternal *)self unlock];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v24 = v19;
          v25 = 2080;
          v26 = "[GKSessionInternal disconnectPeerFromAllPeers:]";
          v27 = 1024;
          v28 = 3150;
          _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d disconnectPeerFromAllPeers: can't get message data", buf, 0x1Cu);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = v18;
        v25 = 2080;
        v26 = "[GKSessionInternal disconnectPeerFromAllPeers:]";
        v27 = 1024;
        v28 = 3145;
        v5 = " [%s] %s:%d disconnectPeerFromAllPeers: can't create message";
        goto LABEL_5;
      }
    }
  }

LABEL_21:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)disconnectFromAllPeers
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d cannot disconnect self after reset", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAvailable:(BOOL)available
{
  availableCopy = available;
  v52 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v5;
      v42 = 2080;
      v43 = "[GKSessionInternal setAvailable:]";
      v44 = 1024;
      v45 = 3189;
      v46 = 1024;
      v47 = availableCopy;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d setAvailable: %d", buf, 0x22u);
    }
  }

  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v7;
        v42 = 2080;
        v43 = "[GKSessionInternal setAvailable:]";
        v44 = 1024;
        v45 = 3192;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d cannot setavailable after reset", buf, 0x1Cu);
      }
    }

    goto LABEL_63;
  }

  if (availableCopy)
  {
    v9 = +[GKBluetoothSupport bluetoothStatus];
    v10 = v9;
    if (self->_wifiEnabled || v9 == 5)
    {
      if (!self->_wifiEnabled)
      {
        goto LABEL_45;
      }

      *buf = 0;
      LocalInterfaceListWithOptions = GetLocalInterfaceListWithOptions();
      if (LocalInterfaceListWithOptions >= 1)
      {
        v28 = LocalInterfaceListWithOptions;
        v29 = (*buf + 4);
        while ((*(v29 - 4) & 1) != 0 || strcmp(v29, "en0"))
        {
          v29 += 40;
          if (!--v28)
          {
            goto LABEL_42;
          }
        }

        FreeLocalInterfaceList();
        goto LABEL_45;
      }

LABEL_42:
      FreeLocalInterfaceList();
      if (v10 != 4)
      {
LABEL_45:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            sessionStarted = self->_sessionStarted;
            *buf = 136315906;
            *&buf[4] = v30;
            v42 = 2080;
            v43 = "[GKSessionInternal setAvailable:]";
            v44 = 1024;
            v45 = 3271;
            v46 = 1024;
            v47 = sessionStarted;
            _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sessionStarted: %d", buf, 0x22u);
          }
        }

        if (!self->_sessionStarted)
        {
          self->_sessionStarted = 1;
          self->_isBusy = 0;
          mode = self->_mode;
          if (mode - 1 <= 1)
          {
            if (self->_serviceBrowser)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v34 = VRTraceErrorLogLevelToCSTR();
                v35 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  serviceBrowser = self->_serviceBrowser;
                  *buf = 136315906;
                  *&buf[4] = v34;
                  v42 = 2080;
                  v43 = "[GKSessionInternal setAvailable:]";
                  v44 = 1024;
                  v45 = 3286;
                  v46 = 1024;
                  v47 = serviceBrowser;
                  _os_log_impl(&dword_24E50C000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_serviceBrowser) (%08X)", buf, 0x22u);
                }
              }

              DNSServiceRefDeallocate(self->_serviceBrowser);
              self->_serviceBrowser = 0;
            }

            self->_isSearching = 1;
            [(GKSessionInternal *)self browse];
            mode = self->_mode;
          }

          if ((mode | 2) == 2)
          {
            [g_GKSessionGlobals registerPID:self->_pid];
            if (self->_service)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v37 = VRTraceErrorLogLevelToCSTR();
                v38 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  service = self->_service;
                  *buf = 136315906;
                  *&buf[4] = v37;
                  v42 = 2080;
                  v43 = "[GKSessionInternal setAvailable:]";
                  v44 = 1024;
                  v45 = 3298;
                  v46 = 1024;
                  v47 = service;
                  _os_log_impl(&dword_24E50C000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_service) (%08X)", buf, 0x22u);
                }
              }

              DNSServiceRefDeallocate(self->_service);
              self->_service = 0;
            }

            self->_isPublishing = 0;
            [(GKSessionInternal *)self publish];
          }
        }

        goto LABEL_63;
      }

      v11 = @"Network not available.";
      v12 = @"WiFi and/or Bluetooth is required.";
    }

    else
    {
      v11 = @"Bluetooth not available.";
      v12 = @"Bluetooth is required.";
    }

    v13 = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30509 description:v11 reason:v12];
    v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v13, @"NSError", 0}];
    [(GKSessionInternal *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(GKSessionInternal *)self performSelectorOnMainThread:sel_tellDelegate_sessionDidFailWithError_ withObject:v14 waitUntilDone:0];
    }

    goto LABEL_45;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_sessionStarted;
      isSearching = self->_isSearching;
      isPublishing = self->_isPublishing;
      *buf = 136316418;
      *&buf[4] = v15;
      v42 = 2080;
      v43 = "[GKSessionInternal setAvailable:]";
      v44 = 1024;
      v45 = 3197;
      v46 = 1024;
      v47 = v17;
      v48 = 1024;
      v49 = isSearching;
      v50 = 1024;
      v51 = isPublishing;
      _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sessionStarted: %d  (%d, %d)", buf, 0x2Eu);
    }
  }

  if (self->_sessionStarted)
  {
    v20 = self->_mode;
    if (v20 - 1 <= 1 && self->_isSearching)
    {
      if (self->_serviceBrowser)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v23 = self->_serviceBrowser;
            *buf = 136315906;
            *&buf[4] = v21;
            v42 = 2080;
            v43 = "[GKSessionInternal setAvailable:]";
            v44 = 1024;
            v45 = 3207;
            v46 = 1024;
            v47 = v23;
            _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_serviceBrowser) (%08X)", buf, 0x22u);
          }
        }

        DNSServiceRefDeallocate(self->_serviceBrowser);
      }

      self->_isSearching = 0;
      [(GKList *)self->_peersAvailable removeAllIDs];
      v20 = self->_mode;
    }

    if ((v20 | 2) == 2)
    {
      [g_GKSessionGlobals unregisterPID:self->_pid];
      if (self->_isPublishing)
      {
        if (self->_service)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v24 = VRTraceErrorLogLevelToCSTR();
            v25 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v26 = self->_service;
              *buf = 136315906;
              *&buf[4] = v24;
              v42 = 2080;
              v43 = "[GKSessionInternal setAvailable:]";
              v44 = 1024;
              v45 = 3219;
              v46 = 1024;
              v47 = v26;
              _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_service) (%08X)", buf, 0x22u);
            }
          }

          DNSServiceRefDeallocate(self->_service);
        }

        self->_isPublishing = 0;
      }
    }

    self->_sessionStarted = 0;
  }

LABEL_63:
  v40 = *MEMORY[0x277D85DE8];
}

- (id)peersWithConnectionState:(unsigned int)state
{
  v4 = 0;
  if (state > 3)
  {
    if (state == 4)
    {
      v4 = [(GKList *)self->_peersPendingIncomingInvitation allMatchingObjectsFromTable:self->_peerIDTable];
      [v4 addObjectsFromArray:{-[GKList allMatchingObjectsFromTable:](self->_peersPendingOutgoingInvitation, "allMatchingObjectsFromTable:", self->_peerIDTable)}];
    }

    else if (state == 5)
    {
      goto LABEL_7;
    }

    return v4;
  }

  if (!state)
  {
    peersAvailable = self->_peersAvailable;
    goto LABEL_9;
  }

  if (state != 2)
  {
    return v4;
  }

LABEL_7:
  peersAvailable = self->_peersConnected;
LABEL_9:
  peerIDTable = self->_peerIDTable;

  return [(GKList *)peersAvailable allMatchingObjectsFromTable:peerIDTable];
}

- (void)stopOldService
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = xmmword_24E590860;
  DWORD2(v7) = 0;
  select(0, 0, 0, 0, &v7);
  oldService = self->_oldService;
  if (oldService)
  {
    self->_oldService = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v9 = v4;
        v10 = 2080;
        v11 = "[GKSessionInternal stopOldService]";
        v12 = 1024;
        v13 = 3361;
        v14 = 1024;
        v15 = oldService;
        _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_serviceToStop) (%08X)", buf, 0x22u);
      }
    }

    DNSServiceRefDeallocate(oldService);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setBusy:(BOOL)busy
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_isBusy != busy)
  {
    self->_isBusy = busy;
    [(GKSessionInternal *)self lock];
    if (self->_isPublishing)
    {
      txtRecord.ForceNaturalAlignment = 0xAAAAAAAAAAAAAAAALL;
      *(&txtRecord.ForceNaturalAlignment + 1) = 0xAAAAAAAAAAAAAAAALL;
      TXTRecordCreate(&txtRecord, 0, 0);
      v4 = TXTRecordSetValue(&txtRecord, "txtvers", 1u, "1");
      if (self->_isBusy)
      {
        v5 = "B";
      }

      else
      {
        v5 = "A";
      }

      v6 = (TXTRecordSetValue(&txtRecord, "state", 1u, v5) | v4) == 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          if (v6)
          {
            Length = TXTRecordGetLength(&txtRecord);
          }

          else
          {
            Length = 0;
          }

          v17 = 136316162;
          v18 = v7;
          v19 = 2080;
          v20 = "[GKSessionInternal setBusy:]";
          v21 = 1024;
          v22 = 3401;
          v23 = 1024;
          *v24 = v6;
          *&v24[4] = 1024;
          *&v24[6] = Length;
          _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceUpdateRecord() (use?=%d len=%d)", &v17, 0x28u);
        }
      }

      service = self->_service;
      if (v6)
      {
        v11 = TXTRecordGetLength(&txtRecord);
        BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
      }

      else
      {
        v11 = 0;
        BytesPtr = 0;
      }

      updated = DNSServiceUpdateRecord(service, 0, 0x20000u, v11, BytesPtr, 0);
      TXTRecordDeallocate(&txtRecord);
      if (updated)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v17 = 136315906;
            v18 = v14;
            v19 = 2080;
            v20 = "[GKSessionInternal setBusy:]";
            v21 = 1024;
            v22 = 3410;
            v23 = 2048;
            *v24 = self;
            _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d failed to set busy state for session[%p]", &v17, 0x26u);
          }
        }
      }
    }

    [(GKSessionInternal *)self unlock];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setWifiEnabled:(BOOL)enabled
{
  self->_wifiEnabled = enabled;
  sessionRef = self->sessionRef;
  GCKSessionSetWifiEnabled();
}

- (BOOL)isPeerBusy:(id)busy
{
  v3 = -[GKTable objectForKey:](self->_peerInfoTable, "objectForKey:", [busy intValue]);
  if (v3)
  {

    LOBYTE(v3) = [v3 isBusy];
  }

  return v3;
}

- (void)handleEvents
{
  v72 = *MEMORY[0x277D85DE8];
  v58.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v58.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  v3 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      buf.fds_bits[0] = 136315906;
      *&buf.fds_bits[1] = v4;
      LOWORD(buf.fds_bits[3]) = 2080;
      *(&buf.fds_bits[3] + 2) = "[GKSessionInternal handleEvents]";
      HIWORD(buf.fds_bits[5]) = 1024;
      buf.fds_bits[6] = 3465;
      LOWORD(buf.fds_bits[7]) = 1024;
      *(&buf.fds_bits[7] + 2) = [(GKSessionInternal *)self retainCount];
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d handleEvents started (%d)", &buf, 0x22u);
    }
  }

  memset(&buf, 0, sizeof(buf));
  [(GKSessionInternal *)self lock];
  if (!self->_stopHandlingEvents)
  {
    v57 = 0;
    *&v6 = 136315906;
    v56 = v6;
    do
    {
      if (self->_shutdown)
      {
        break;
      }

      sReset = self->_sReset;
      if (sReset != -1)
      {
        close(sReset);
      }

      v11 = socket(2, 1, 6);
      self->_sReset = v11;
      if (v11 == -1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v41 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *v59 = 136315650;
            v60 = v41;
            v61 = 2080;
            v62 = "[GKSessionInternal handleEvents]";
            v63 = 1024;
            v64 = 3487;
            v9 = " [%s] %s:%d handleEvents stop... (cannot create reset socket)";
            goto LABEL_8;
          }
        }

        goto LABEL_63;
      }

      v12 = v11;
      if (__darwin_check_fd_set_overflow(v11, &buf, 0))
      {
        *(buf.fds_bits + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v12;
      }

      v13 = self->_sReset;
      [(GKSessionInternal *)self unlock];
      dnsServiceConnection = self->_dnsServiceConnection;
      if (!dnsServiceConnection || (v15 = DNSServiceRefSockFD(dnsServiceConnection), v15 == -1))
      {
        v16 = -1;
      }

      else
      {
        v16 = v15;
        if (__darwin_check_fd_set_overflow(v15, &buf, 0))
        {
          *(buf.fds_bits + ((v16 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v16;
        }

        if (v13 <= v16)
        {
          v13 = v16;
        }
      }

      dnsServiceResolveConnection = self->_dnsServiceResolveConnection;
      if (!dnsServiceResolveConnection || (v18 = DNSServiceRefSockFD(dnsServiceResolveConnection), v18 == -1))
      {
        v19 = -1;
      }

      else
      {
        v19 = v18;
        if (__darwin_check_fd_set_overflow(v18, &buf, 0))
        {
          *(buf.fds_bits + ((v19 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v19;
        }

        v20 = v19;
        if (v13 < v19)
        {
LABEL_31:
          v58.tv_sec = 30;
          v58.tv_usec = 0;
          v21 = select(v19 + 1, &buf, 0, 0, &v58);
          v22 = v21;
          if (v21 < 0)
          {
            v34 = *__error();
            ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
            if (v34 != 9)
            {
              if (ErrorLogLevelForModule >= 7)
              {
                v46 = VRTraceErrorLogLevelToCSTR();
                v47 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v48 = *__error();
                  v49 = __error();
                  v50 = strerror(*v49);
                  *v59 = 136316418;
                  v60 = v46;
                  v61 = 2080;
                  v62 = "[GKSessionInternal handleEvents]";
                  v63 = 1024;
                  v64 = 3585;
                  v65 = 1024;
                  v66 = v22;
                  v67 = 1024;
                  v68 = v48;
                  v69 = 2080;
                  v70 = v50;
                  v51 = " [%s] %s:%d select failed (%d): %d: %s";
                  v52 = v47;
                  v53 = 50;
LABEL_71:
                  _os_log_impl(&dword_24E50C000, v52, OS_LOG_TYPE_DEFAULT, v51, v59, v53);
                  goto LABEL_64;
                }
              }

              goto LABEL_64;
            }

            if (ErrorLogLevelForModule >= 7)
            {
              v36 = VRTraceErrorLogLevelToCSTR();
              v37 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *v59 = 136315650;
                v60 = v36;
                v61 = 2080;
                v62 = "[GKSessionInternal handleEvents]";
                v63 = 1024;
                v64 = 3580;
                v31 = v37;
                v32 = " [%s] %s:%d handleEvents: EBADF - retrying...";
                v33 = 28;
LABEL_51:
                _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, v32, v59, v33);
              }
            }
          }

          else if (v21)
          {
            if (v16 != -1)
            {
              if (__darwin_check_fd_set_overflow(v16, &buf, 0))
              {
                if ((*(buf.fds_bits + ((v16 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v16))
                {
                  v23 = DNSServiceProcessResult(self->_dnsServiceConnection);
                  if (v23)
                  {
                    v24 = v23;
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v25 = VRTraceErrorLogLevelToCSTR();
                      v26 = *MEMORY[0x277CE5818];
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                      {
                        *v59 = v56;
                        v60 = v25;
                        v61 = 2080;
                        v62 = "[GKSessionInternal handleEvents]";
                        v63 = 1024;
                        v64 = 3594;
                        v65 = 1024;
                        v66 = v24;
                        _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d process dnsservice conn failed: %d", v59, 0x22u);
                      }
                    }
                  }
                }
              }
            }

            if (v20 != -1)
            {
              if (__darwin_check_fd_set_overflow(v20, &buf, 0))
              {
                if ((*(buf.fds_bits + ((v20 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v20))
                {
                  v27 = DNSServiceProcessResult(self->_dnsServiceResolveConnection);
                  if (v27)
                  {
                    v28 = v27;
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v29 = VRTraceErrorLogLevelToCSTR();
                      v30 = *MEMORY[0x277CE5818];
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                      {
                        *v59 = v56;
                        v60 = v29;
                        v61 = 2080;
                        v62 = "[GKSessionInternal handleEvents]";
                        v63 = 1024;
                        v64 = 3600;
                        v65 = 1024;
                        v66 = v28;
                        v31 = v30;
                        v32 = " [%s] %s:%d process dnsservice resolve conn failed: %d";
                        v33 = 34;
                        goto LABEL_51;
                      }
                    }
                  }
                }
              }
            }
          }

          memset(&buf, 0, sizeof(buf));
          goto LABEL_53;
        }
      }

      v20 = v19;
      v19 = v13;
      if (v13 != -1)
      {
        goto LABEL_31;
      }

      v38 = VRTraceGetErrorLogLevelForModule();
      if (v57 == 3)
      {
        if (v38 >= 7)
        {
          v54 = VRTraceErrorLogLevelToCSTR();
          v55 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *v59 = 136315650;
            v60 = v54;
            v61 = 2080;
            v62 = "[GKSessionInternal handleEvents]";
            v63 = 1024;
            v64 = 3562;
            v51 = " [%s] %s:%d handleEvents: nothing to do - quitting";
            v52 = v55;
            v53 = 28;
            goto LABEL_71;
          }
        }

        goto LABEL_64;
      }

      if (v38 >= 7)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *v59 = 136315650;
          v60 = v39;
          v61 = 2080;
          v62 = "[GKSessionInternal handleEvents]";
          v63 = 1024;
          v64 = 3567;
          _os_log_impl(&dword_24E50C000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d handleEvents: nothing to do - retry after 1 second", v59, 0x1Cu);
        }
      }

      ++v57;
      v58.tv_sec = 1;
      v58.tv_usec = 0;
      select(0, 0, 0, 0, &v58);
      memset(&buf, 0, sizeof(buf));
LABEL_53:
      [(GKSessionInternal *)self lock];
    }

    while (!self->_stopHandlingEvents);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 136315650;
      v60 = v7;
      v61 = 2080;
      v62 = "[GKSessionInternal handleEvents]";
      v63 = 1024;
      v64 = 3477;
      v9 = " [%s] %s:%d handleEvents stop...";
LABEL_8:
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, v9, v59, 0x1Cu);
    }
  }

LABEL_63:
  [(GKSessionInternal *)self unlock];
LABEL_64:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v42 = VRTraceErrorLogLevelToCSTR();
    v43 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v44 = [(GKSessionInternal *)self retainCount];
      *v59 = 136315906;
      v60 = v42;
      v61 = 2080;
      v62 = "[GKSessionInternal handleEvents]";
      v63 = 1024;
      v64 = 3658;
      v65 = 1024;
      v66 = v44;
      _os_log_impl(&dword_24E50C000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d handleEvents ended (%d)", v59, 0x22u);
    }
  }

  *&self->_handleEventsRunning = 0;
  [v3 drain];
  v45 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkDNSConnection
{
  v17 = *MEMORY[0x277D85DE8];
  [(GKSessionInternal *)self lock];
  if (self->_shutdown)
  {
    goto LABEL_2;
  }

  if (!self->_dnsServiceConnection)
  {
    Connection = DNSServiceCreateConnection(&self->_dnsServiceConnection);
    if (Connection)
    {
      v6 = Connection;
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_2;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_2;
      }

      *v15 = 136315906;
      *&v15[4] = v7;
      *&v15[12] = 2080;
      *&v15[14] = "[GKSessionInternal checkDNSConnection]";
      *&v15[22] = 1024;
      LODWORD(v16) = 3678;
      WORD2(v16) = 1024;
      *(&v16 + 6) = v6;
      v9 = " [%s] %s:%d DNSServiceCreateConnection failed: %d";
      goto LABEL_15;
    }

    sReset = self->_sReset;
    if (sReset != -1)
    {
      close(sReset);
      self->_sReset = -1;
    }
  }

  if (self->_dnsServiceResolveConnection)
  {
LABEL_5:
    [(GKSessionInternal *)self unlock];
    result = 0;
    goto LABEL_6;
  }

  v10 = DNSServiceCreateConnection(&self->_dnsServiceResolveConnection);
  if (!v10)
  {
    v14 = self->_sReset;
    if (v14 != -1)
    {
      close(v14);
      self->_sReset = -1;
    }

    goto LABEL_5;
  }

  v11 = v10;
  DNSServiceRefDeallocate(self->_dnsServiceConnection);
  self->_dnsServiceConnection = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 136315906;
      *&v15[4] = v12;
      *&v15[12] = 2080;
      *&v15[14] = "[GKSessionInternal checkDNSConnection]";
      *&v15[22] = 1024;
      LODWORD(v16) = 3692;
      WORD2(v16) = 1024;
      *(&v16 + 6) = v11;
      v9 = " [%s] %s:%d DNSServiceCreateConnection failed2: %d";
LABEL_15:
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, v9, v15, 0x22u);
    }
  }

LABEL_2:
  [(GKSessionInternal *)self unlock:*v15];
  result = 1;
LABEL_6:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)publish
{
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v6 = v0;
  OUTLINED_FUNCTION_5_0();
  v7 = 3780;
  v8 = v1;
  v9 = v2;
  _os_log_error_impl(&dword_24E50C000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d publish failed: %d", v5, 0x22u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)cleanupExAvailablePeers
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(GKList *)self->_peersForCleanup count];
  if (v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = v4;
        v13 = 2080;
        v14 = "[GKSessionInternal cleanupExAvailablePeers]";
        v15 = 1024;
        v16 = 3817;
        v17 = 1024;
        v18 = v3;
        _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d cleanup previous available peers: (%d)", buf, 0x22u);
      }
    }

    v6 = [(GKList *)self->_peersForCleanup allMatchingObjectsFromTable:self->_peerInfoTable];
    if ([v6 count])
    {
      v7 = 0;
      do
      {
        v8 = [v6 objectAtIndexedSubscript:v7];
        if (v8)
        {
          v9 = v8;
          if (!-[GKList hasID:](self->_peersConnected, "hasID:", [v8 pid]) && !-[GKList hasID:](self->_peersAvailable, "hasID:", objc_msgSend(v9, "pid")))
          {
            -[GKTable removeObjectForKey:](self->_peerInfoTable, "removeObjectForKey:", [v9 pid]);
            [(GKSessionInternal *)self delegate];
            if (objc_opt_respondsToSelector() & 1) != 0 || ([(GKSessionInternal *)self privateDelegate], (objc_opt_respondsToSelector()))
            {
              -[GKSessionInternal performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_tellDelegate_peerDidBecomeUnavailable_, [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{-[GKAutoPeerIDTable objectForKey:](self->_peerIDTable, "objectForKey:", objc_msgSend(v9, "pid")), @"peerID", 0}], 0);
            }
          }
        }

        ++v7;
      }

      while (v7 < [v6 count]);
    }

    [(GKList *)self->_peersForCleanup removeAllIDs];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)processTXTRecordForPeer:(id)peer txtLen:(unsigned __int16)len txtRecord:(const void *)record
{
  lenCopy = len;
  v32 = *MEMORY[0x277D85DE8];
  if (len && record)
  {
    if (TXTRecordContainsKey(len, record, "state"))
    {
      valueLen[0] = -86;
      ValuePtr = TXTRecordGetValuePtr(lenCopy, record, "state", valueLen);
      v10 = 0;
      if (ValuePtr && valueLen[0] == 1)
      {
        v10 = *ValuePtr == 66;
      }
    }

    else
    {
      v10 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v15 = [peer pid];
        isBusy = [peer isBusy];
        *valueLen = 136316418;
        v21 = v13;
        v22 = 2080;
        v23 = "[GKSessionInternal processTXTRecordForPeer:txtLen:txtRecord:]";
        v24 = 1024;
        v25 = 3860;
        v26 = 1024;
        recordCopy = v15;
        v28 = 1024;
        v29 = isBusy;
        v30 = 1024;
        v31 = v10;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** peer %d: oldbusy=%d, newbusy=%d", valueLen, 0x2Eu);
      }
    }

    if (v10 != [peer isBusy])
    {
      v17 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{-[GKAutoPeerIDTable objectForKey:](self->_peerIDTable, "objectForKey:", objc_msgSend(peer, "pid")), @"peerID", 0}];
      [peer setBusy:v10];
      if (v10)
      {
        v18 = sel_tellDelegate_peerDidBecomeBusy_;
      }

      else
      {
        v18 = sel_tellDelegate_peerDidBecomeAvailable_;
      }

      [(GKSessionInternal *)self performSelectorOnMainThread:v18 withObject:v17 waitUntilDone:0];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *valueLen = 136316162;
      v21 = v11;
      v22 = 2080;
      v23 = "[GKSessionInternal processTXTRecordForPeer:txtLen:txtRecord:]";
      v24 = 1024;
      v25 = 3846;
      v26 = 1024;
      recordCopy = record;
      v28 = 1024;
      v29 = lenCopy;
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** no TXT record to process: txtRecord=%08X, txtLen=%u", valueLen, 0x28u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)didFindService:(const char *)service fromIF:(const char *)f withError:(int)error moreComing:(BOOL)coming
{
  buf[127] = *MEMORY[0x277D85DE8];
  v45 = 0xAAAAAAAAAAAAAAAALL;
  v44 = -1431655766;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  if ([(GKSessionInternal *)self parseServiceName:service intoDisplayName:&v45 pid:&v44 state:&v43])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v44;
        v14 = [(GKList *)self->_peersForCleanup hasID:v44];
        LODWORD(buf[0]) = 136316162;
        *(buf + 4) = v11;
        WORD2(buf[1]) = 2080;
        *(&buf[1] + 6) = "[GKSessionInternal didFindService:fromIF:withError:moreComing:]";
        HIWORD(buf[2]) = 1024;
        LODWORD(buf[3]) = 3918;
        WORD2(buf[3]) = 1024;
        *(&buf[3] + 6) = v13;
        WORD1(buf[4]) = 1024;
        HIDWORD(buf[4]) = v14;
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _peersForCleanup: contains %d ?= %d", buf, 0x28u);
      }
    }

    [(GKList *)self->_peersForCleanup removeID:v44];
    if ([(GKSessionInternal *)self filterService:f withPID:v44])
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      LODWORD(buf[0]) = 136316418;
      *(buf + 4) = v15;
      WORD2(buf[1]) = 2080;
      *(&buf[1] + 6) = "[GKSessionInternal didFindService:fromIF:withError:moreComing:]";
      HIWORD(buf[2]) = 1024;
      LODWORD(buf[3]) = 3922;
      WORD2(buf[3]) = 2080;
      *(&buf[3] + 6) = service;
      HIWORD(buf[4]) = 2080;
      buf[5] = f;
      LOWORD(buf[6]) = 1024;
      *(&buf[6] + 2) = error;
      v17 = " [%s] %s:%d browse rejected: [%s] from [%s] (%d)";
      v18 = v16;
      v19 = 54;
LABEL_9:
      _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_15:

      goto LABEL_40;
    }

    if (self->_mode == 2 && v44 == self->_pid)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = v20;
      WORD2(buf[1]) = 2080;
      *(&buf[1] + 6) = "[GKSessionInternal didFindService:fromIF:withError:moreComing:]";
      HIWORD(buf[2]) = 1024;
      LODWORD(buf[3]) = 3928;
      v17 = " [%s] %s:%d didFind: skipping self";
      v18 = v21;
      v19 = 28;
      goto LABEL_9;
    }

    v22 = [v43 objectForKeyedSubscript:@"busy"];
    if (v22)
    {
      bOOLValue = [v22 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v24 = [(GKTable *)self->_peerInfoTable objectForKey:v44];
    if (v24)
    {
      v25 = v24;
      [(GKPeerInternal *)v24 setServiceCount:[(GKPeerInternal *)v24 serviceCount]+ 1];
LABEL_37:

      goto LABEL_38;
    }

    v26 = [GKPeerInternal alloc];
    v25 = -[GKPeerInternal initWithPID:displayName:serviceName:](v26, "initWithPID:displayName:serviceName:", v44, v45, [MEMORY[0x277CCACA8] stringWithUTF8String:service]);
    [(GKPeerInternal *)v25 setSession:self];
    [(GKPeerInternal *)v25 setBusy:bOOLValue];
    sdRef = self->_dnsServiceConnection;
    memset(buf + 1, 170, 0x3F0uLL);
    LOBYTE(buf[0]) = 0;
    v27 = DNSServiceConstructFullName(buf, service, [(NSString *)self->serviceType UTF8String], "local.");
    if (v27)
    {
      v28 = v27;
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_30;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *v46 = 136316162;
      v47 = v29;
      v48 = 2080;
      v49 = "[GKSessionInternal didFindService:fromIF:withError:moreComing:]";
      v50 = 1024;
      v51 = 3984;
      v52 = 1024;
      *v53 = v44;
      *&v53[4] = 1024;
      *&v53[6] = v28;
      v31 = " [%s] %s:%d ** cannot construct fullname! no busy state updates for peer %u (error=%d)";
      v32 = v30;
      v33 = 40;
    }

    else
    {
      v34 = DNSServiceQueryRecord(&sdRef, 0x24000u, 0, buf, 0x10u, 1u, gkQueryRecordCallback, v25);
      if (!v34)
      {
        goto LABEL_31;
      }

      v35 = v34;
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v36 = VRTraceErrorLogLevelToCSTR(), v37 = *MEMORY[0x277CE5818], !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_30:
        sdRef = 0;
LABEL_31:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v38 = VRTraceErrorLogLevelToCSTR();
          v39 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *v46 = 136315906;
            v47 = v38;
            v48 = 2080;
            v49 = "[GKSessionInternal didFindService:fromIF:withError:moreComing:]";
            v50 = 1024;
            v51 = 3997;
            v52 = 2080;
            *v53 = buf;
            _os_log_impl(&dword_24E50C000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => called DNSServiceQueryRecord() (fullname=[%s])", v46, 0x26u);
          }
        }

        [(GKPeerInternal *)v25 setTxtRecordService:sdRef];
        [(GKSessionInternal *)self lock];
        [(GKTable *)self->_peerInfoTable setObject:v25 forKey:v44];
        [(GKList *)self->_peersAvailable addID:v44];
        [(GKSessionInternal *)self unlock];
        [(GKSessionInternal *)self delegate];
        if (objc_opt_respondsToSelector() & 1) != 0 || ([(GKSessionInternal *)self privateDelegate], (objc_opt_respondsToSelector()))
        {
          v40 = objc_alloc(MEMORY[0x277CBEAC0]);
          -[GKSessionInternal performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_tellDelegate_peerDidBecomeAvailable_, [v40 initWithObjectsAndKeys:{-[GKAutoPeerIDTable objectForKey:](self->_peerIDTable, "objectForKey:", v44), @"peerID", 0}], 0);
        }

        goto LABEL_37;
      }

      *v46 = 136316418;
      v47 = v36;
      v48 = 2080;
      v49 = "[GKSessionInternal didFindService:fromIF:withError:moreComing:]";
      v50 = 1024;
      v51 = 3994;
      v52 = 2080;
      *v53 = buf;
      *&v53[8] = 1024;
      v54 = v44;
      v55 = 1024;
      v56 = v35;
      v31 = " [%s] %s:%d ** cannot query TXT record [%s]! no busy state updates for peer %u (error=%d)";
      v32 = v37;
      v33 = 50;
    }

    _os_log_impl(&dword_24E50C000, v32, OS_LOG_TYPE_DEFAULT, v31, v46, v33);
    goto LABEL_30;
  }

LABEL_38:
  if (!coming)
  {
    [(GKSessionInternal *)self cleanupExAvailablePeers];
  }

LABEL_40:
  v41 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveService:(const char *)service fromIF:(const char *)f withError:(int)error moreComing:(BOOL)coming
{
  v43 = *MEMORY[0x277D85DE8];
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v30 = -1431655766;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  if (![(GKSessionInternal *)self parseServiceName:service intoDisplayName:&v31 pid:&v30 state:&v29])
  {
LABEL_27:
    if (!coming)
    {
      [(GKSessionInternal *)self cleanupExAvailablePeers];
    }

    goto LABEL_29;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v30;
      v14 = [(GKList *)self->_peersForCleanup hasID:v30];
      *buf = 136316162;
      v33 = v11;
      v34 = 2080;
      v35 = "[GKSessionInternal didRemoveService:fromIF:withError:moreComing:]";
      v36 = 1024;
      v37 = 4025;
      v38 = 1024;
      *v39 = v13;
      *&v39[4] = 1024;
      *&v39[6] = v14;
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _peersForCleanup: contains %d ?= %d", buf, 0x28u);
    }
  }

  [(GKList *)self->_peersForCleanup removeID:v30];
  if ([(GKSessionInternal *)self filterService:f withPID:v30])
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136316418;
    v33 = v15;
    v34 = 2080;
    v35 = "[GKSessionInternal didRemoveService:fromIF:withError:moreComing:]";
    v36 = 1024;
    v37 = 4029;
    v38 = 2080;
    *v39 = service;
    *&v39[8] = 2080;
    fCopy = f;
    v41 = 1024;
    errorCopy = error;
    v17 = " [%s] %s:%d browse rejected: [%s] from [%s] (%d)";
    v18 = v16;
    v19 = 54;
LABEL_9:
    _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_15:

    goto LABEL_29;
  }

  if (self->_mode == 2 && v30 == self->_pid)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315650;
    v33 = v20;
    v34 = 2080;
    v35 = "[GKSessionInternal didRemoveService:fromIF:withError:moreComing:]";
    v36 = 1024;
    v37 = 4035;
    v17 = " [%s] %s:%d didRemove: skipping self";
    v18 = v21;
    v19 = 28;
    goto LABEL_9;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v30;
      v25 = [(GKList *)self->_peersConnected hasID:v30];
      *buf = 136316162;
      v33 = v22;
      v34 = 2080;
      v35 = "[GKSessionInternal didRemoveService:fromIF:withError:moreComing:]";
      v36 = 1024;
      v37 = 4041;
      v38 = 1024;
      *v39 = v24;
      *&v39[4] = 1024;
      *&v39[6] = v25;
      _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Peer [%d] removed? (%d).\n", buf, 0x28u);
    }
  }

  v26 = [(GKTable *)self->_peerInfoTable objectForKey:v30];
  [v26 setServiceCount:{objc_msgSend(v26, "serviceCount") - 1}];
  if ([v26 serviceCount] <= 0)
  {
    [(GKList *)self->_peersAvailable removeID:v30];
    if (v26 && ![(GKList *)self->_peersConnected hasID:v30]&& ![(GKList *)self->_peersPendingOutgoingInvitation hasID:v30])
    {
      [(GKTable *)self->_peerInfoTable removeObjectForKey:v30];
    }

    [(GKSessionInternal *)self delegate];
    if (objc_opt_respondsToSelector() & 1) != 0 || ([(GKSessionInternal *)self privateDelegate], (objc_opt_respondsToSelector()))
    {
      v27 = objc_alloc(MEMORY[0x277CBEAC0]);
      -[GKSessionInternal performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_tellDelegate_peerDidBecomeUnavailable_, [v27 initWithObjectsAndKeys:{-[GKAutoPeerIDTable objectForKey:](self->_peerIDTable, "objectForKey:", v30), @"peerID", 0}], 0);
    }

    goto LABEL_27;
  }

LABEL_29:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)browse
{
  v39 = *MEMORY[0x277D85DE8];
  [(GKSessionInternal *)self lock];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v32 = v3;
        v33 = 2080;
        v34 = "[GKSessionInternal browse]";
        v35 = 1024;
        v36 = 4124;
        v5 = " [%s] %s:%d cannot browse after reset";
LABEL_9:
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0x1Cu);
      }
    }
  }

  else if ([(GKSessionInternal *)self checkDNSConnection])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v32 = v6;
        v33 = 2080;
        v34 = "[GKSessionInternal browse]";
        v35 = 1024;
        v36 = 4131;
        v5 = " [%s] %s:%d dns connection not initialized";
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (self->_serviceBrowser)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          serviceBrowser = self->_serviceBrowser;
          *buf = 136315906;
          v32 = v7;
          v33 = 2080;
          v34 = "[GKSessionInternal browse]";
          v35 = 1024;
          v36 = 4137;
          v37 = 1024;
          LODWORD(v38) = serviceBrowser;
          _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_serviceBrowser) (%08X) -- was already browsing?  closing old service...", buf, 0x22u);
        }
      }

      DNSServiceRefDeallocate(self->_serviceBrowser);
      [(GKList *)self->_peersForCleanup addIDsFromList:self->_peersAvailable];
      [(GKList *)self->_peersAvailable removeAllIDs];
    }

    self->_serviceBrowser = self->_dnsServiceConnection;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [(NSString *)self->serviceType UTF8String];
        *buf = 136315906;
        v32 = v10;
        v33 = 2080;
        v34 = "[GKSessionInternal browse]";
        v35 = 1024;
        v36 = 4146;
        v37 = 2080;
        v38 = uTF8String;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceBrowse() (servicetype=%s)", buf, 0x26u);
      }
    }

    v13 = DNSServiceBrowse(&self->_serviceBrowser, 0x24800u, 0, [(NSString *)self->serviceType UTF8String], "local.", gkBrowseCallback, self);
    if (v13)
    {
      v14 = v13;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v32 = v15;
          v33 = 2080;
          v34 = "[GKSessionInternal browse]";
          v35 = 1024;
          v36 = 4153;
          v37 = 1024;
          LODWORD(v38) = v14;
          _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d browse failed: %d", buf, 0x22u);
        }
      }

      self->_serviceBrowser = 0;
      if (self->_mode == 2 && self->_service)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            service = self->_service;
            *buf = 136315906;
            v32 = v17;
            v33 = 2080;
            v34 = "[GKSessionInternal browse]";
            v35 = 1024;
            v36 = 4157;
            v37 = 1024;
            LODWORD(v38) = service;
            _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_service) (%08X)", buf, 0x22u);
          }
        }

        DNSServiceRefDeallocate(self->_service);
        self->_service = 0;
      }

      if (self->_sessionStarted)
      {
        v20 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.gamekit.GKSessionErrorDomain" code:v14 userInfo:0];
        v21 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v20, @"NSError", 0}];
        [(GKSessionInternal *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [(GKSessionInternal *)self performSelectorOnMainThread:sel_tellDelegate_sessionDidFailWithError_ withObject:v21 waitUntilDone:0];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            localizedDescription = [v20 localizedDescription];
            *buf = 136315906;
            v32 = v22;
            v33 = 2080;
            v34 = "[GKSessionInternal browse]";
            v35 = 1024;
            v36 = 4167;
            v37 = 2112;
            v38 = localizedDescription;
            _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Error: %@.", buf, 0x26u);
          }
        }

        self->_sessionStarted = 0;
        self->_stopHandlingEvents = 1;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v32 = v25;
            v33 = 2080;
            v34 = "[GKSessionInternal browse]";
            v35 = 1024;
            v36 = 4175;
            _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** Stop resolving ALL: browse error", buf, 0x1Cu);
          }
        }

        [(GKSessionInternal *)self stopResolvingAllPeers];
      }
    }

    else if (!self->_handleEventsRunning)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(GKSessionInternal *)self retainCount];
          *buf = 136315906;
          v32 = v27;
          v33 = 2080;
          v34 = "[GKSessionInternal browse]";
          v35 = 1024;
          v36 = 4183;
          v37 = 1024;
          LODWORD(v38) = v29;
          _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d start handleEvents (%d)", buf, 0x22u);
        }
      }

      [MEMORY[0x277CCACC8] detachNewThreadSelector:sel_handleEvents toTarget:self withObject:0];
      *&self->_handleEventsRunning = 1;
    }
  }

  [(GKSessionInternal *)self unlock];
  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)tryConnectToPeer:(id)peer
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = -1431655766;
  memset(v17, 170, sizeof(v17));
  if ([peer usableAddrs])
  {
    [peer removeAndReturnLookupList:&v17[2] andAddrList:&v17[1] andInterfaceList:v17 count:&v18];
    if (v18)
    {
      v5 = malloc_type_malloc(8 * v18, 0x2004093837F09uLL);
      if (v18 >= 1)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          DNSServiceRefDeallocate(*(v17[2] + 8 * v6));
          v8 = v17[1];
          if (*(v17[1] + 8 * v6))
          {
            *(v17[0] + 4 * v7) = *(v17[0] + 4 * v6);
            v5[v7++] = [*(v8 + 8 * v6) bytes];
          }

          ++v6;
        }

        while (v6 < v18);
      }

      sessionRef = self->sessionRef;
      [peer pid];
      [peer connectTimeout];
      GCKSessionConnectToLocalService();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = v12;
        v21 = 2080;
        v22 = "[GKSessionInternal tryConnectToPeer:]";
        v23 = 1024;
        v24 = 4209;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d no usable addresses - wait for more", buf, 0x1Cu);
      }
    }

    [GKPeerInternal freeLookupList:v17[2] andAddrList:v17[1] andInterfaceList:v17[0] count:v18];
    goto LABEL_16;
  }

  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
LABEL_16:
    LOBYTE(v11) = 0;
    goto LABEL_18;
  }

  v9 = VRTraceErrorLogLevelToCSTR();
  v10 = *MEMORY[0x277CE5818];
  v11 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    *buf = 136315650;
    v20 = v9;
    v21 = 2080;
    v22 = "[GKSessionInternal tryConnectToPeer:]";
    v23 = 1024;
    v24 = 4201;
    _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d no usable addresses - wait for more", buf, 0x1Cu);
    goto LABEL_16;
  }

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)initWithConnection:session:delegate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Error in GCKSessionCreate. *", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithConnection:session:delegate:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Error in AGPSessionCreate. *", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithConnection:session:delegate:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Error in GCKSessionSetEventCallback. *", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithSessionID:displayName:session:sessionMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Error in GCKSessionCreate.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithSessionID:displayName:session:sessionMode:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Error in AGPSessionCreate.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)displayNameForPeer:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v5 = v0;
  OUTLINED_FUNCTION_5_0();
  v6 = 2737;
  v7 = 2112;
  v8 = v1;
  _os_log_error_impl(&dword_24E50C000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d displayNameForPeer: %@ not found", v4, 0x26u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)cancelConnectToPeer:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d cannot cancel after reset", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)acceptConnectionFromPeer:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d cannot accept after reset", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)denyConnectionFromPeer:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d cannot deny after reset", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end