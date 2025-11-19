@interface GKVoiceChatSessionInternal
+ (void)brokenHash:(id)a3 response:(char *)a4;
- (BOOL)getMuteStateForPeer:(id)a3;
- (BOOL)isActiveSession;
- (BOOL)isEqual:(id)a3;
- (GKVoiceChatSessionInternal)initWithGameStateSession:(id)a3 publicWrapper:(id)a4 sessionName:(id)a5;
- (NSString)sessionName;
- (float)sessionVolume;
- (id)decodePeerID:(id)a3;
- (id)encodePeerID:(id)a3;
- (int)calculateChannelQualities;
- (int)goodChannels;
- (void)addPeerToFocusPausedList:(id)a3;
- (void)calculateConferenceID;
- (void)cleanup;
- (void)cleanupProc:(id)a3;
- (void)dealloc;
- (void)didStartSpeaking:(id)a3;
- (void)didStopSpeaking:(id)a3;
- (void)handlePeerDisconnected:(id)a3;
- (void)informClientVoiceChatConnecting:(id)a3;
- (void)informClientVoiceChatCouldNotConnect:(id)a3;
- (void)interfaceStateDidChangeWithWifiUp:(BOOL)a3 cellUp:(BOOL)a4;
- (void)lossRate:(float)a3 forParticipantID:(id)a4;
- (void)parseConnectedPeers:(id)a3;
- (void)parseMutedPeers:(id)a3 forPeer:(id)a4;
- (void)pauseAll;
- (void)pruneBadLinks;
- (void)removeFromFocusPausedList:(id)a3;
- (void)sendConnectedPeers;
- (void)sendMutedPeers;
- (void)session:(id)a3 didReceiveOOBAudioPacket:(id)a4 fromPeerID:(id)a5;
- (void)setActiveSession:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setMute:(BOOL)a3 forPeer:(id)a4;
- (void)setSessionVolume:(float)a3;
- (void)startSession;
- (void)startSessionInternal;
- (void)stopSession;
- (void)stopSessionInternal;
- (void)unPauseAll;
- (void)updatedConnectedPeers:(id)a3;
- (void)updatedFocusPeers:(id)a3;
- (void)updatedMutedPeers:(id)a3 forPeer:(id)a4;
- (void)updatedSubscribedBeaconList:(id)a3;
- (void)voiceChatService:(id)a3 didNotStartWithParticipantID:(id)a4 error:(id)a5;
- (void)voiceChatService:(id)a3 didStartWithParticipantID:(id)a4;
- (void)voiceChatService:(id)a3 didStopWithParticipantID:(id)a4 error:(id)a5;
- (void)voiceChatService:(id)a3 sendData:(id)a4 toParticipantID:(id)a5;
@end

@implementation GKVoiceChatSessionInternal

- (void)interfaceStateDidChangeWithWifiUp:(BOOL)a3 cellUp:(BOOL)a4
{
  v4 = a3;
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = v6;
      v12 = 2080;
      v13 = "[GKVoiceChatSessionInternal interfaceStateDidChangeWithWifiUp:cellUp:]";
      v14 = 1024;
      v15 = 79;
      v16 = 1024;
      v17 = v4;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatSesion_Internal current wifi state: %d", &v10, 0x22u);
    }
  }

  [(GKRWLock *)self->_rwLock wrlock];
  self->_currentWifiState = v4;
  sessionState = self->_sessionState;
  if (!v4)
  {
    if (sessionState == 1)
    {
      [(GKRWLock *)self->_rwLock unlock];
      [(GKVoiceChatSessionInternal *)self stopSessionInternal];
      goto LABEL_10;
    }

LABEL_9:
    [(GKRWLock *)self->_rwLock unlock];
    goto LABEL_10;
  }

  if (sessionState)
  {
    goto LABEL_9;
  }

  [(GKRWLock *)self->_rwLock unlock];
  [(GKVoiceChatSessionInternal *)self startSessionInternal];
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
}

- (GKVoiceChatSessionInternal)initWithGameStateSession:(id)a3 publicWrapper:(id)a4 sessionName:(id)a5
{
  v12.receiver = self;
  v12.super_class = GKVoiceChatSessionInternal;
  v8 = [(GKVoiceChatSessionInternal *)&v12 init];
  if (v8)
  {
    *(v8 + 1) = [a5 copy];
    objc_storeWeak(v8 + 4, a3);
    *(v8 + 6) = 1065353216;
    [v8 calculateConferenceID];
    *(v8 + 5) = [objc_msgSend(a3 "peerID")];
    *(v8 + 15) = objc_alloc_init(GKRWLock);
    *(v8 + 6) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    *(v8 + 7) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    *(v8 + 8) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    *(v8 + 9) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    *(v8 + 11) = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    *(v8 + 100) = 0xFFFFFFFF7FFFFFFFLL;
    v8[96] = 1;
    v8[108] = 1;
    *(v8 + 28) = 3;
    *(v8 + 18) = dispatch_queue_create("com.apple.GKVoiceChatSession.sendQueue", 0);
    *(v8 + 21) = a4;
    *(v8 + 17) = [[VoiceChatSessionRoster alloc] initWithGameStateSession:a3 peerID:*(v8 + 5) voiceChatSession:v8 sendQueue:*(v8 + 18)];
    keyExistsAndHasValidFormat = 0;
    v8[28] = CFPreferencesGetAppBooleanValue(@"focusCallbacks", @"com.apple.VideoConference", &keyExistsAndHasValidFormat) != 0;
    v9 = objc_alloc_init(off_279682968);
    *(v8 + 22) = v9;
    [v9 setInterfaceListenerDelegate:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(a3 "voiceChatSessionListener")];
    }
  }

  return v8;
}

+ (void)brokenHash:(id)a3 response:(char *)a4
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v7.data[13] = v6;
  *&v7.data[6] = v6;
  *&v7.data[10] = v6;
  *&v7.Nl = v6;
  *&v7.data[2] = v6;
  *&v7.A = v6;
  CC_MD5_Init(&v7);
  CC_MD5_Update(&v7, [a3 UTF8String], objc_msgSend(a3, "length"));
  CC_MD5_Final(a4, &v7);
}

- (void)calculateConferenceID
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  [GKVoiceChatSessionInternal brokenHash:self->_sessionName response:&v4];
  self->_conferenceID = HIDWORD(v5);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)encodePeerID:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 longLongValue];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v4 | (self->_conferenceID << 32)];
}

- (id)decodePeerID:(id)a3
{
  if (a3)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%u", strtoull(objc_msgSend(a3, "UTF8String"), 0, 10)];
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];

  self->_roster = 0;
  objc_storeWeak(&self->_gameStateSession, 0);

  self->_peerID = 0;
  self->_rwLock = 0;

  self->_myPausedList = 0;
  self->_connectedPeers = 0;

  self->_connectedVoicePeers = 0;
  self->_connectedFocusPeers = 0;

  self->_mutedPeers = 0;
  self->_peerChannelQuality = 0;
  sendQueue = self->_sendQueue;
  if (sendQueue)
  {
    dispatch_release(sendQueue);
    self->_sendQueue = 0;
  }

  self->_sessionName = 0;
  self->_vcService = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "[GKVoiceChatSessionInternal dealloc]";
      v12 = 1024;
      v13 = 205;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatSessionInternal getting dealloced", buf, 0x1Cu);
    }
  }

  v7.receiver = self;
  v7.super_class = GKVoiceChatSessionInternal;
  [(GKVoiceChatSessionInternal *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cleanup
{
  [(GKVoiceChatSessionInternal *)self stopSession];
  [(GKRWLock *)self->_rwLock wrlock];
  self->_sessionState = 4;
  [(VoiceChatSessionRoster *)self->_roster cleanup];
  [(GKRWLock *)self->_rwLock unlock];
  v3 = MEMORY[0x277CCACC8];

  [v3 detachNewThreadSelector:sel_cleanupProc_ toTarget:self withObject:0];
}

- (void)cleanupProc:(id)a3
{
  [(GKRWLock *)self->_rwLock wrlock];
  [(GKVoiceChatServicePrivate *)self->_vcService setClient:0];
  [(GKVoiceChatServiceFocus *)self->_vcService setSpeakingDelegate:0];
  [(GKVoiceChatServiceFocus *)self->_vcService setQualityDelegate:0];
  [(GKVoiceChatServicePrivate *)self->_vcService cleanup];
  [(GKRWLock *)self->_rwLock unlock];
  v4 = [(GKVoiceChatSessionInternal *)self gameStateSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(GKVoiceChatPeerInfoProvider *)v4 voiceChatSessionListener];

    [v5 removeSession:self];
  }
}

- (void)startSession
{
  v18 = *MEMORY[0x277D85DE8];
  [(GKRWLock *)self->_rwLock wrlock];
  if (self->_sessionState >= 2)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v6 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v7;
        v14 = 2080;
        v15 = "[GKVoiceChatSessionInternal startSession]";
        v16 = 1024;
        v17 = 247;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d start-voice-chat-session", &v12, 0x1Cu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v9;
        v14 = 2080;
        v15 = "[GKVoiceChatSessionInternal startSession]";
        v16 = 1024;
        v17 = 248;
        _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Calling startSession!", &v12, 0x1Cu);
      }
    }

    self->_sessionState = 0;
    [(GKInterfaceListener *)self->_wifiListener hasConnectionWithWifi:&self->_currentWifiState cell:0];
    [(GKInterfaceListener *)self->_wifiListener startChangeListener];
    [(GKRWLock *)self->_rwLock unlock];
    [(GKVoiceChatSessionInternal *)self startSessionInternal];
    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    rwLock = self->_rwLock;
    v4 = *MEMORY[0x277D85DE8];

    [(GKRWLock *)rwLock unlock];
  }
}

- (void)startSessionInternal
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = a1;
  v5 = 2080;
  v6 = "[GKVoiceChatSessionInternal startSessionInternal]";
  v7 = 1024;
  v8 = 280;
  _os_log_error_impl(&dword_24E50C000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Not starting voicechat. Don't have permission to use microphone", &v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)stopSession
{
  [(GKRWLock *)self->_rwLock wrlock];
  if (self->_sessionState == 3)
  {
    rwLock = self->_rwLock;

    [(GKRWLock *)rwLock unlock];
  }

  else
  {
    self->_sessionState = 3;
    [(GKInterfaceListener *)self->_wifiListener stopChangeListener];
    [(GKRWLock *)self->_rwLock unlock];

    [(GKVoiceChatSessionInternal *)self stopSessionInternal];
  }
}

- (void)stopSessionInternal
{
  v24 = *MEMORY[0x277D85DE8];
  [(GKRWLock *)self->_rwLock wrlock];
  if (self->_sessionState == 1)
  {
    self->_sessionState = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  connectedFocusPeers = self->_connectedFocusPeers;
  v4 = [(NSMutableArray *)connectedFocusPeers countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(connectedFocusPeers);
        }

        [(GKVoiceChatSessionInternal *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStop_ withObject:*(*(&v18 + 1) + 8 * i) waitUntilDone:0];
      }

      v5 = [(NSMutableArray *)connectedFocusPeers countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  connectedPeers = self->_connectedPeers;
  v9 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(connectedPeers);
        }

        [(GKVoiceChatServicePrivate *)self->_vcService stopVoiceChatWithParticipantID:[(GKVoiceChatSessionInternal *)self encodePeerID:*(*(&v14 + 1) + 8 * j)]];
      }

      v10 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  [(GKVoiceChatServiceFocus *)self->_vcService setFocus:0];
  [(GKVoiceChatServiceFocus *)self->_vcService setCurrentFocus:0];
  [(VoiceChatSessionRoster *)self->_roster stopBeacon];
  [(NSMutableArray *)self->_myPausedList removeAllObjects];
  [(NSMutableArray *)self->_connectedPeers removeAllObjects];
  [(NSMutableArray *)self->_connectedVoicePeers removeAllObjects];
  [(NSMutableArray *)self->_connectedFocusPeers removeAllObjects];
  [(NSMutableDictionary *)self->_peerChannelQuality removeAllObjects];
  [(GKRWLock *)self->_rwLock unlock];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setMute:(BOOL)a3 forPeer:(id)a4
{
  v5 = a3;
  [(GKRWLock *)self->_rwLock wrlock];
  mutedPeers = self->_mutedPeers;
  if (v5)
  {
    if (([(NSMutableArray *)mutedPeers containsObject:a4]& 1) == 0)
    {
      [(NSMutableArray *)self->_mutedPeers addObject:a4];
    }
  }

  else
  {
    [(NSMutableArray *)mutedPeers removeObject:a4];
  }

  if (self->_sessionState == 1)
  {
    if ([(GKVoiceChatServicePrivate *)self->_vcService isFocus])
    {
      [(GKVoiceChatSessionInternal *)self updatedMutedPeers:self->_mutedPeers forPeer:0];
    }

    else
    {
      [(GKVoiceChatSessionInternal *)self sendMutedPeers];
    }
  }

  rwLock = self->_rwLock;

  [(GKRWLock *)rwLock unlock];
}

- (BOOL)getMuteStateForPeer:(id)a3
{
  [(GKRWLock *)self->_rwLock rdlock];
  LOBYTE(a3) = [(NSMutableArray *)self->_mutedPeers containsObject:a3];
  [(GKRWLock *)self->_rwLock unlock];
  return a3;
}

- (void)setActiveSession:(BOOL)a3
{
  vcService = self->_vcService;
  if (vcService)
  {
    [(GKVoiceChatServiceFocus *)vcService setHasMic:?];
    self->activeSession = a3;
  }
}

- (BOOL)isActiveSession
{
  vcService = self->_vcService;
  if (vcService)
  {
    v4 = [(GKVoiceChatServiceFocus *)vcService hasMic];
    self->activeSession = v4;
  }

  else
  {
    return self->activeSession;
  }

  return v4;
}

- (NSString)sessionName
{
  v2 = [(NSString *)self->_sessionName copy];

  return v2;
}

- (float)sessionVolume
{
  vcService = self->_vcService;
  if (!vcService)
  {
    return self->sessionVolume;
  }

  [(GKVoiceChatServicePrivate *)vcService remoteParticipantVolume];
  self->sessionVolume = result;
  return result;
}

- (void)setSessionVolume:(float)a3
{
  LODWORD(v3) = 1.0;
  if (a3 <= 1.0)
  {
    *&v3 = a3;
  }

  if (a3 >= 0.0)
  {
    v5 = *&v3;
  }

  else
  {
    v5 = 0.0;
  }

  [(GKVoiceChatServicePrivate *)self->_vcService setRemoteParticipantVolume:COERCE_DOUBLE(LODWORD(v5)), v3];
  self->sessionVolume = v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    LOBYTE(v5) = [a3 conferenceID] == self->_conferenceID;
  }

  return v5;
}

- (void)handlePeerDisconnected:(id)a3
{
  [(NSMutableArray *)self->_connectedVoicePeers removeObject:?];
  [(NSMutableDictionary *)self->_peerChannelQuality removeObjectForKey:a3];
  self->needsRecalculateGoodChannels = 1;
  if ([(GKVoiceChatServicePrivate *)self->_vcService isFocus]&& [(NSMutableArray *)self->_connectedFocusPeers containsObject:a3])
  {
    [(NSMutableArray *)self->_connectedFocusPeers removeObject:a3];
    [(GKVoiceChatSessionInternal *)self sendConnectedPeers];
    [(GKVoiceChatSessionInternal *)self updatedConnectedPeers:self->_connectedFocusPeers];

    [(GKVoiceChatSessionInternal *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStop_ withObject:a3 waitUntilDone:0];
  }
}

- (void)updatedSubscribedBeaconList:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v7 = [objc_msgSend(a3 "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      connectedPeers = self->_connectedPeers;
      if (connectedPeers)
      {
        v9 = [-[NSMutableArray description](connectedPeers "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      peerID = self->_peerID;
      if (peerID)
      {
        v11 = [[(NSString *)peerID description] UTF8String];
      }

      else
      {
        v11 = "<nil>";
      }

      *buf = 136316418;
      *&buf[4] = v5;
      v47 = 2080;
      v48 = "[GKVoiceChatSessionInternal updatedSubscribedBeaconList:]";
      v49 = 1024;
      v50 = 464;
      v51 = 2080;
      v52 = v7;
      v53 = 2080;
      v54 = v9;
      v55 = 2080;
      v56 = v11;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatSession_Internal: updatedSubscribedBeaconList: newSubscribedList = %s (our existing members = %s) us (%s)", buf, 0x3Au);
    }
  }

  [(GKRWLock *)self->_rwLock wrlock];
  if (self->_sessionState == 1)
  {
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = self->_connectedPeers;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v39 + 1) + 8 * i);
          if (([a3 containsObject:v18] & 1) == 0)
          {
            [v12 addObject:v18];
          }
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v15);
    }

    *buf = 0;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = [a3 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(a3);
          }

          v23 = *(*(&v35 + 1) + 8 * j);
          if (([(NSMutableArray *)self->_connectedPeers containsObject:v23]& 1) == 0)
          {
            v24 = [(NSString *)self->_peerID longLongValue];
            if (v24 < [v23 longLongValue])
            {
              [(GKVoiceChatServiceFocus *)self->_vcService startVoiceChatWithParticipantID:[(GKVoiceChatSessionInternal *)self encodePeerID:v23] error:buf];
            }

            [(NSMutableArray *)self->_connectedPeers addObject:v23];
            [(GKVoiceChatSessionInternal *)self informClientVoiceChatConnecting:v23];
          }
        }

        v20 = [a3 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v20);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = [v12 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v12);
          }

          v29 = *(*(&v31 + 1) + 8 * k);
          [(GKVoiceChatServicePrivate *)self->_vcService stopVoiceChatWithParticipantID:[(GKVoiceChatSessionInternal *)self encodePeerID:v29]];
          [(NSMutableArray *)self->_connectedPeers removeObject:v29];
          [(GKVoiceChatSessionInternal *)self handlePeerDisconnected:v29];
        }

        v26 = [v12 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v26);
    }
  }

  [(GKRWLock *)self->_rwLock unlock];
  v30 = *MEMORY[0x277D85DE8];
}

- (void)updatedMutedPeers:(id)a3 forPeer:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(a3);
        }

        [v7 addObject:{-[GKVoiceChatSessionInternal encodePeerID:](self, "encodePeerID:", *(*(&v13 + 1) + 8 * v11++))}];
      }

      while (v9 != v11);
      v9 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(GKVoiceChatServiceFocus *)self->_vcService updatedMutedPeers:v7 forParticipantID:[(GKVoiceChatSessionInternal *)self encodePeerID:a4]];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendMutedPeers
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5_1(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_3(&dword_24E50C000, v1, v2, " [%s] %s:%d sendMutedPeers failed to serialize. %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)parseMutedPeers:(id)a3 forPeer:(id)a4
{
  v8 = 0;
  v6 = [MEMORY[0x277CCAC58] propertyListFromData:a3 mutabilityOption:0 format:0 errorDescription:&v8];
  if (v6)
  {
    v7 = v6;
    [(GKRWLock *)self->_rwLock wrlock];
    [(GKVoiceChatSessionInternal *)self updatedMutedPeers:v7 forPeer:a4];
    [(GKRWLock *)self->_rwLock unlock];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKVoiceChatSessionInternal parseMutedPeers:forPeer:];
      }
    }
  }
}

- (void)pauseAll
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  connectedVoicePeers = self->_connectedVoicePeers;
  v4 = [(NSMutableArray *)connectedVoicePeers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(connectedVoicePeers);
        }

        [(GKVoiceChatServiceFocus *)self->_vcService pauseAudio:1 toParticipantID:[(GKVoiceChatSessionInternal *)self encodePeerID:*(*(&v9 + 1) + 8 * i)]];
      }

      v5 = [(NSMutableArray *)connectedVoicePeers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unPauseAll
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  connectedVoicePeers = self->_connectedVoicePeers;
  v4 = [(NSMutableArray *)connectedVoicePeers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(connectedVoicePeers);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (![(NSMutableArray *)self->_myPausedList containsObject:v8]|| ![(GKVoiceChatServicePrivate *)self->_vcService isFocus])
        {
          [(GKVoiceChatServiceFocus *)self->_vcService pauseAudio:0 toParticipantID:[(GKVoiceChatSessionInternal *)self encodePeerID:v8]];
        }
      }

      v5 = [(NSMutableArray *)connectedVoicePeers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)pruneBadLinks
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  connectedVoicePeers = self->_connectedVoicePeers;
  v4 = [(NSMutableArray *)connectedVoicePeers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(connectedVoicePeers);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [-[NSMutableDictionary objectForKeyedSubscript:](self->_peerChannelQuality objectForKeyedSubscript:{v9), "floatValue"}];
        if (v10 > 0.25 && (([(NSMutableArray *)self->_myPausedList containsObject:v9]| v6) & 1) == 0)
        {
          [(GKVoiceChatSessionInternal *)self addPeerToFocusPausedList:v9];
          v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_connectedVoicePeers];
          [v11 insertObject:self->_peerID atIndex:0];
          [v11 removeObjectsInArray:self->_myPausedList];
          [(GKVoiceChatSessionInternal *)self updatedFocusPeers:v11];

          [(GKVoiceChatSessionInternal *)self sendConnectedPeers];
          [(GKVoiceChatSessionInternal *)self updatedConnectedPeers:self->_connectedFocusPeers];
          v6 = 1;
        }

        [(NSMutableDictionary *)self->_peerChannelQuality setObject:&unk_28619C0C8 forKeyedSubscript:v9];
      }

      v5 = [(NSMutableArray *)connectedVoicePeers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  self->needsRecalculateGoodChannels = 1;
  [(GKVoiceChatSessionInternal *)self goodChannels];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)addPeerToFocusPausedList:(id)a3
{
  myPausedList = self->_myPausedList;
  if (!myPausedList)
  {
    myPausedList = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
    self->_myPausedList = myPausedList;
  }

  [(NSMutableArray *)myPausedList addObject:a3];
  v6 = [(GKVoiceChatSessionInternal *)self encodePeerID:a3];
  vcService = self->_vcService;

  [(GKVoiceChatServiceFocus *)vcService pauseAudio:1 toParticipantID:v6];
}

- (void)removeFromFocusPausedList:(id)a3
{
  [(NSMutableArray *)self->_myPausedList removeObject:?];
  v5 = [(GKVoiceChatSessionInternal *)self encodePeerID:a3];
  vcService = self->_vcService;

  [(GKVoiceChatServiceFocus *)vcService pauseAudio:0 toParticipantID:v5];
}

- (void)updatedFocusPeers:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:a3];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_connectedFocusPeers];
  if ([a3 containsObject:self->_peerID])
  {
    [v5 removeObjectsInArray:self->_connectedFocusPeers];
    [v5 removeObject:self->_peerID];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v5);
          }

          [(GKVoiceChatSessionInternal *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStart_ withObject:*(*(&v25 + 1) + 8 * i) waitUntilDone:0];
        }

        v8 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v8);
    }

    [v6 removeObjectsInArray:a3];
    [v6 removeObject:self->_peerID];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [v6 countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v6);
          }

          [(GKVoiceChatSessionInternal *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStop_ withObject:*(*(&v21 + 1) + 8 * j) waitUntilDone:0];
        }

        v12 = [v6 countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v12);
    }

    [(NSMutableArray *)self->_connectedFocusPeers setArray:a3];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    connectedFocusPeers = self->_connectedFocusPeers;
    v16 = [(NSMutableArray *)connectedFocusPeers countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (k = 0; k != v17; ++k)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(connectedFocusPeers);
          }

          [(GKVoiceChatSessionInternal *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStop_ withObject:*(*(&v29 + 1) + 8 * k) waitUntilDone:0];
        }

        v17 = [(NSMutableArray *)connectedFocusPeers countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v17);
    }

    [(NSMutableArray *)self->_connectedFocusPeers removeAllObjects];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updatedConnectedPeers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a3);
        }

        [v5 addObject:{-[GKVoiceChatSessionInternal encodePeerID:](self, "encodePeerID:", *(*(&v11 + 1) + 8 * v9++))}];
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (!-[GKVoiceChatServicePrivate isFocus](self->_vcService, "isFocus") && ([a3 containsObject:self->_peerID] & 1) == 0)
  {
    [(GKVoiceChatServiceFocus *)self->_vcService pauseAudio:1 toParticipantID:[(GKVoiceChatServiceFocus *)self->_vcService currentFocus]];
  }

  [(GKVoiceChatServiceFocus *)self->_vcService updatedConnectedPeers:v5];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendConnectedPeers
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5_1(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_3(&dword_24E50C000, v1, v2, " [%s] %s:%d sendConnectedPeers failed to serialize. %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)parseConnectedPeers:(id)a3
{
  v6 = 0;
  v4 = [MEMORY[0x277CCAC58] propertyListFromData:a3 mutabilityOption:0 format:0 errorDescription:&v6];
  if (v4)
  {
    v5 = v4;
    [(GKRWLock *)self->_rwLock wrlock];
    [(GKVoiceChatSessionInternal *)self updatedFocusPeers:v5];
    [(GKVoiceChatSessionInternal *)self updatedConnectedPeers:v5];
    [(GKRWLock *)self->_rwLock unlock];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKVoiceChatSessionInternal parseConnectedPeers:];
      }
    }
  }
}

- (void)session:(id)a3 didReceiveOOBAudioPacket:(id)a4 fromPeerID:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [a4 subtype];
      if (a5)
      {
        v11 = [objc_msgSend(a5 "description")];
      }

      else
      {
        v11 = "<nil>";
      }

      if ([(GKVoiceChatSessionInternal *)self encodePeerID:a5])
      {
        v12 = [objc_msgSend(-[GKVoiceChatSessionInternal encodePeerID:](self encodePeerID:{a5), "description"), "UTF8String"}];
      }

      else
      {
        v12 = "<nil>";
      }

      v16 = 136316418;
      v17 = v8;
      v18 = 2080;
      v19 = "[GKVoiceChatSessionInternal(GKSessionVoiceChatDelegate) session:didReceiveOOBAudioPacket:fromPeerID:]";
      v20 = 1024;
      v21 = 817;
      v22 = 1024;
      v23 = v10;
      v24 = 2080;
      v25 = v11;
      v26 = 2080;
      v27 = v12;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Session didReceiveOOBAudioPacket of type %u from %s %s", &v16, 0x36u);
    }
  }

  [(GKRWLock *)self->_rwLock rdlock];
  sessionState = self->_sessionState;
  [(GKRWLock *)self->_rwLock unlock];
  if (sessionState != 4)
  {
    v15 = [a4 subtype];
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        -[GKVoiceChatSessionInternal parseConnectedPeers:](self, "parseConnectedPeers:", [a4 payload]);
      }

      else if (v15 == 3)
      {
        -[GKVoiceChatSessionInternal parseMutedPeers:forPeer:](self, "parseMutedPeers:forPeer:", [a4 payload], a5);
      }
    }

    else if (v15)
    {
      if (v15 == 1)
      {
        -[VoiceChatSessionRoster receivedBeacon:fromPeer:](self->_roster, "receivedBeacon:fromPeer:", [a4 payload], a5);
      }
    }

    else
    {
      -[GKVoiceChatServiceFocus receivedData:fromParticipantID:](self->_vcService, "receivedData:fromParticipantID:", [a4 payload], -[GKVoiceChatSessionInternal encodePeerID:](self, "encodePeerID:", a5));
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)informClientVoiceChatConnecting:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__GKVoiceChatSessionInternal_VoiceChatClientInternal__informClientVoiceChatConnecting___block_invoke;
  v3[3] = &unk_279682BF0;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)informClientVoiceChatCouldNotConnect:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __92__GKVoiceChatSessionInternal_VoiceChatClientInternal__informClientVoiceChatCouldNotConnect___block_invoke;
  v3[3] = &unk_279682BF0;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)voiceChatService:(id)a3 sendData:(id)a4 toParticipantID:(id)a5
{
  v7 = [[GKVoiceChatSessionMessage alloc] initWithPayload:a4 conferenceID:self->_conferenceID subtype:0];
  v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{-[GKVoiceChatSessionInternal decodePeerID:](self, "decodePeerID:", a5), 0}];
  v9 = [(GKVoiceChatSessionInternal *)self gameStateSession];
  sendQueue = self->_sendQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__GKVoiceChatSessionInternal_VoiceChatClient__voiceChatService_sendData_toParticipantID___block_invoke;
  block[3] = &unk_279682C18;
  block[4] = v9;
  block[5] = v7;
  block[6] = v8;
  dispatch_async(sendQueue, block);
}

- (void)voiceChatService:(id)a3 didStartWithParticipantID:(id)a4
{
  v6 = [(GKVoiceChatSessionInternal *)self decodePeerID:a4];
  [(GKRWLock *)self->_rwLock wrlock];
  if (self->_sessionState == 1)
  {
    if (([(NSMutableArray *)self->_connectedVoicePeers containsObject:v6]& 1) == 0)
    {
      [(NSMutableArray *)self->_connectedVoicePeers addObject:v6];
      [(NSMutableDictionary *)self->_peerChannelQuality setObject:&unk_28619C0C8 forKeyedSubscript:v6];
      self->needsRecalculateGoodChannels = 1;
    }

    if ([(GKVoiceChatServicePrivate *)self->_vcService isFocus])
    {
      if (([(NSMutableArray *)self->_connectedFocusPeers containsObject:v6]& 1) == 0)
      {
        [(NSMutableArray *)self->_connectedFocusPeers addObject:v6];
        [(GKVoiceChatSessionInternal *)self sendConnectedPeers];
        [(GKVoiceChatSessionInternal *)self updatedConnectedPeers:self->_connectedFocusPeers];
        [(GKVoiceChatSessionInternal *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStart_ withObject:v6 waitUntilDone:0];
        if (self->congestionState == 1)
        {
          [(GKVoiceChatServiceFocus *)self->_vcService pauseAudio:1 toParticipantID:a4];
        }
      }
    }

    if ([(VoiceChatSessionRoster *)self->_roster recalculateFocusRating])
    {
      [(VoiceChatSessionRoster *)self->_roster updateBeacon];
    }
  }

  rwLock = self->_rwLock;

  [(GKRWLock *)rwLock unlock];
}

- (void)voiceChatService:(id)a3 didNotStartWithParticipantID:(id)a4 error:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (a5)
      {
        v8 = [objc_msgSend(a5 "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      v10 = 136315906;
      v11 = v6;
      v12 = 2080;
      v13 = "[GKVoiceChatSessionInternal(VoiceChatClient) voiceChatService:didNotStartWithParticipantID:error:]";
      v14 = 1024;
      v15 = 939;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d voiceChatService:didNotStartWithParticipantID %s", &v10, 0x26u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)voiceChatService:(id)a3 didStopWithParticipantID:(id)a4 error:(id)a5
{
  v6 = [(GKVoiceChatSessionInternal *)self decodePeerID:a4];
  [(GKRWLock *)self->_rwLock wrlock];
  if (self->_sessionState == 1)
  {
    [(GKVoiceChatSessionInternal *)self handlePeerDisconnected:v6];
    if ([(VoiceChatSessionRoster *)self->_roster recalculateFocusRating])
    {
      [(VoiceChatSessionRoster *)self->_roster updateBeacon];
    }
  }

  rwLock = self->_rwLock;

  [(GKRWLock *)rwLock unlock];
}

- (void)setDelegate:(id)a3
{
  [(GKRWLock *)self->_rwLock wrlock];
  self->delegate = a3;
  rwLock = self->_rwLock;

  [(GKRWLock *)rwLock unlock];
}

- (void)didStartSpeaking:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__GKVoiceChatSessionInternal_VideoConferenceSpeakingDelegate__didStartSpeaking___block_invoke;
  v3[3] = &unk_279682BF0;
  v3[4] = a3;
  v3[5] = self;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __80__GKVoiceChatSessionInternal_VideoConferenceSpeakingDelegate__didStartSpeaking___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) decodePeerID:?];
  }

  else
  {
    v2 = [v1[5] copy];
  }

  return [v1 informClientVoiceChatSpeaking:v2];
}

- (void)didStopSpeaking:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__GKVoiceChatSessionInternal_VideoConferenceSpeakingDelegate__didStopSpeaking___block_invoke;
  v3[3] = &unk_279682BF0;
  v3[4] = a3;
  v3[5] = self;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __79__GKVoiceChatSessionInternal_VideoConferenceSpeakingDelegate__didStopSpeaking___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) decodePeerID:?];
  }

  else
  {
    v2 = [v1[5] copy];
  }

  return [v1 informClientVoiceChatSilent:v2];
}

- (int)calculateChannelQualities
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_connectedVoicePeers count];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  peerChannelQuality = self->_peerChannelQuality;
  v5 = [(NSMutableDictionary *)peerChannelQuality countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(peerChannelQuality);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_myPausedList containsObject:v9]& 1) == 0)
        {
          [-[NSMutableDictionary objectForKeyedSubscript:](self->_peerChannelQuality objectForKeyedSubscript:{v9), "floatValue"}];
          if (v10 <= 0.25)
          {
            continue;
          }
        }

        --v3;
      }

      v6 = [(NSMutableDictionary *)peerChannelQuality countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  self->needsRecalculateGoodChannels = 0;
  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int)goodChannels
{
  if (!self->needsRecalculateGoodChannels)
  {
    return self->goodChannels;
  }

  result = [(GKVoiceChatSessionInternal *)self calculateChannelQualities];
  self->goodChannels = result;
  return result;
}

- (void)lossRate:(float)a3 forParticipantID:(id)a4
{
  v6 = [(GKVoiceChatSessionInternal *)self decodePeerID:a4];
  [(GKRWLock *)self->_rwLock rdlock];
  if (a3 > 0.25)
  {
    [(GKRWLock *)self->_rwLock unlock];
    [(GKRWLock *)self->_rwLock wrlock];
    v7 = [(GKVoiceChatSessionInternal *)self calculateChannelQualities];
    if ([(GKVoiceChatServicePrivate *)self->_vcService isFocus]&& !self->congestionState)
    {
      self->congestionState = 1;
      *&v8 = a3;
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_peerChannelQuality, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithFloat:v8], v6);
      [(GKVoiceChatSessionInternal *)self pauseAll];
      v9 = dispatch_time(0, 4000000000);
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __95__GKVoiceChatSessionInternal_VideoConferenceChannelQualityDelegate__lossRate_forParticipantID___block_invoke;
      block[3] = &unk_279682BA8;
      block[4] = self;
      dispatch_after(v9, global_queue, block);
    }

    if (!self->congestionState && self->goodChannels != v7)
    {
      self->goodChannels = v7;
      if ([(VoiceChatSessionRoster *)self->_roster recalculateFocusRating])
      {
        [(VoiceChatSessionRoster *)self->_roster updateBeacon];
      }
    }
  }

  [(GKRWLock *)self->_rwLock unlock];
}

uint64_t __95__GKVoiceChatSessionInternal_VideoConferenceChannelQualityDelegate__lossRate_forParticipantID___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 120) wrlock];
  if ([*(*(a1 + 32) + 128) isFocus])
  {
    [*(a1 + 32) pruneBadLinks];
  }

  [*(a1 + 32) unPauseAll];
  *(*(a1 + 32) + 160) = 2;
  v2 = dispatch_time(0, 2000000000);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__GKVoiceChatSessionInternal_VideoConferenceChannelQualityDelegate__lossRate_forParticipantID___block_invoke_2;
  block[3] = &unk_279682BA8;
  block[4] = *(a1 + 32);
  dispatch_after(v2, global_queue, block);
  return [*(*(a1 + 32) + 120) unlock];
}

uint64_t __95__GKVoiceChatSessionInternal_VideoConferenceChannelQualityDelegate__lossRate_forParticipantID___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 160) = 0;
  [*(*(a1 + 32) + 120) wrlock];
  if ([*(*(a1 + 32) + 136) recalculateFocusRating])
  {
    [*(*(a1 + 32) + 136) updateBeacon];
  }

  v2 = *(*(a1 + 32) + 120);

  return [v2 unlock];
}

- (void)parseMutedPeers:forPeer:.cold.1()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5_1(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_3(&dword_24E50C000, v1, v2, " [%s] %s:%d parseMutedPeers failed to deserialize. %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)parseConnectedPeers:.cold.1()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5_1(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_3(&dword_24E50C000, v1, v2, " [%s] %s:%d parseConnectedPeers failed to deserialize. %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end