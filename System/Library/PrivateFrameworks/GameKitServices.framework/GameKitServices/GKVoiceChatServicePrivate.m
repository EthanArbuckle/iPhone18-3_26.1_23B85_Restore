@interface GKVoiceChatServicePrivate
+ (id)defaultVoiceChatService;
- (BOOL)getNSError:(id *)a3 code:(int64_t)a4 description:(id)a5 hResult:(int)a6;
- (BOOL)getNSError:(id *)a3 code:(int64_t)a4 description:(id)a5 reason:(id)a6;
- (BOOL)startVoiceChatWithParticipantID:(id)a3 error:(id *)a4;
- (GKVoiceChatServicePrivate)init;
- (double)localBitrate;
- (double)localFramerate;
- (double)remoteBitrate;
- (double)remoteFramerate;
- (id)createInvite:(id *)a3 toParticipant:(id)a4 callID:(unsigned int *)a5;
- (id)createReplyUsingDictionary:(id)a3 replyCode:(unint64_t)a4 error:(id *)a5;
- (void)cleanup;
- (void)dealloc;
- (void)denyCallID:(unsigned int)a3;
- (void)informClientOfInviteFromParticipant:(id)incomingCallDict;
- (void)informClientVoiceChatDidNotStart:(id)a3;
- (void)informClientVoiceChatDidNotStartMainSelector:(id)a3;
- (void)informClientVoiceChatDidStart:(id)a3;
- (void)informClientVoiceChatDidStartMainSelector:(id)a3;
- (void)informClientVoiceChatDidStop:(id)a3;
- (void)localVideoLayer;
- (void)receivedData:(id)a3 fromParticipantID:(id)a4;
- (void)remoteVideoLayer;
- (void)resetState;
- (void)setClient:(id)a3;
- (void)setLocalVideoLayer:(void *)a3;
- (void)setMicrophoneMuted:(BOOL)a3;
- (void)setRemoteVideoLayer:(void *)a3;
- (void)stopVoiceChatProc:(id)a3;
- (void)stopVoiceChatWithParticipantID:(id)a3;
- (void)videoConference:(id)a3 didStartSession:(BOOL)a4 withCallID:(unsigned int)a5 error:(id)a6;
- (void)videoConference:(id)a3 didStopWithCallID:(unsigned int)a4 error:(id)a5;
@end

@implementation GKVoiceChatServicePrivate

- (GKVoiceChatServicePrivate)init
{
  v15 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = GKVoiceChatServicePrivate;
  v2 = [(GKVoiceChatServicePrivate *)&v8 init];
  VRTraceReset();
  VRTracePrintLoggingInfo();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = v3;
      v11 = 2080;
      v12 = "[GKVoiceChatServicePrivate init]";
      v13 = 1024;
      v14 = 46;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatServicePrivate : !!!!!!!!!!!", buf, 0x1Cu);
    }
  }

  v2->stateLock = objc_alloc_init(MEMORY[0x277CCAC60]);
  v2->clientLock = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v5 = [[off_279682980 alloc] initWithClientPid:0];
  v2->conf = v5;
  [(VideoConference *)v5 setDelegate:v2];
  [(VideoConference *)v2->conf setPreferredCodec:9];
  [(VideoConference *)v2->conf setIsGKVoiceChat:1];
  [(VideoConference *)v2->conf setIsUsingSuppression:1];
  [(VideoConference *)v2->conf setShouldTimeoutPackets:1];
  v2->chatMode = 2;
  [(VideoConference *)v2->conf setChatMode:2];
  [(VideoConference *)v2->conf setUseCompressedConnectionData:1];
  [(VideoConference *)v2->conf setShouldPrioritizeParticipantIDForSIPInvite:1];
  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)defaultVoiceChatService
{
  result = defaultVoiceChatService__GKVoiceChatServicePrivate;
  if (!defaultVoiceChatService__GKVoiceChatServicePrivate)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!defaultVoiceChatService__GKVoiceChatServicePrivate)
    {
      defaultVoiceChatService__GKVoiceChatServicePrivate = objc_alloc_init(GKVoiceChatServicePrivate);
    }

    objc_sync_exit(v3);
    return defaultVoiceChatService__GKVoiceChatServicePrivate;
  }

  return result;
}

- (void)cleanup
{
  [(NSRecursiveLock *)self->stateLock lock];
  [(VideoConference *)self->conf setDelegate:0];
  stateLock = self->stateLock;

  [(NSRecursiveLock *)stateLock unlock];
}

- (void)dealloc
{
  [(VideoConference *)self->conf cleanupManager];

  self->conf = 0;
  self->stateLock = 0;

  self->clientLock = 0;
  v3.receiver = self;
  v3.super_class = GKVoiceChatServicePrivate;
  [(GKVoiceChatServicePrivate *)&v3 dealloc];
}

- (BOOL)startVoiceChatWithParticipantID:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v9 = [objc_msgSend(a3 "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      v29 = 136315906;
      v30 = v7;
      v31 = 2080;
      v32 = "[GKVoiceChatServicePrivate startVoiceChatWithParticipantID:error:]";
      v33 = 1024;
      v34 = 118;
      v35 = 2080;
      v36 = v9;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d startVoiceChatWithParticipantID with %s", &v29, 0x26u);
    }
  }

  [(NSRecursiveLock *)self->stateLock lock];
  if (!a3)
  {
    v12 = @"participantID is nil";
    v13 = @"nil participantID";
    v14 = self;
    v15 = a4;
    v16 = 32016;
    goto LABEL_15;
  }

  if (!self->client)
  {
    goto LABEL_13;
  }

  v10 = [(GKVoiceChatServicePrivate *)self state];
  client = self->client;
  if (v10)
  {
    if (client)
    {
      v12 = @"Cannot do startVoiceChatWithParticipantID:error:";
      v13 = @"GKVoiceChatService is not idle.";
      v14 = self;
      v15 = a4;
      v16 = 32012;
LABEL_15:
      [(GKVoiceChatServicePrivate *)v14 getNSError:v15 code:v16 description:v12 reason:v13];
      v17 = 0;
      goto LABEL_16;
    }

LABEL_13:
    v12 = @"Client is not set.";
    v13 = @"Client is nil.";
LABEL_14:
    v14 = self;
    v15 = a4;
    v16 = 32006;
    goto LABEL_15;
  }

  if (![(GKVoiceChatClient *)client participantID])
  {
    v12 = @"Client participantID is not set.";
    v13 = @"participantID is nil.";
    goto LABEL_14;
  }

  v20 = [(GKVoiceChatServicePrivate *)self createInvite:a4 toParticipant:a3 callID:&self->curCallID];
  self->outgoingCallDict = v20;
  v21 = [(GKVoiceChatDictionary *)v20 createBlob];
  v17 = 0;
  outgoingCallDict = self->outgoingCallDict;
  if (outgoingCallDict)
  {
    v23 = v21;
    if (v21)
    {
      v24 = outgoingCallDict;
      [(GKVoiceChatServicePrivate *)self setState:3];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v27 = self->outgoingCallDict;
          if (v27)
          {
            v28 = [-[GKVoiceChatDictionary description](v27 "description")];
          }

          else
          {
            v28 = "<nil>";
          }

          v29 = 136315906;
          v30 = v25;
          v31 = 2080;
          v32 = "[GKVoiceChatServicePrivate startVoiceChatWithParticipantID:error:]";
          v33 = 1024;
          v34 = 162;
          v35 = 2080;
          v36 = v28;
          _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OutgoingcallDict = %s", &v29, 0x26u);
        }
      }

      [(GKVoiceChatClient *)self->client voiceChatService:self->wrapperService sendData:v23 toParticipantID:a3];
      v17 = 1;
    }
  }

LABEL_16:
  [(NSRecursiveLock *)self->stateLock unlock];
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)stopVoiceChatProc:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v6 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v9 = [objc_msgSend(a3 "description")];
      }

      else
      {
        v9 = "<nil>";
      }

      *buf = 136315906;
      v23 = v7;
      v24 = 2080;
      v25 = "[GKVoiceChatServicePrivate stopVoiceChatProc:]";
      v26 = 1024;
      v27 = 173;
      v28 = 2080;
      v29 = v9;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopVoiceChatProc1>:P%s", buf, 0x26u);
    }
  }

  [(NSRecursiveLock *)self->stateLock lock];
  if ([(GKVoiceChatServicePrivate *)self state])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v12 = [objc_msgSend(a3 "description")];
        }

        else
        {
          v12 = "<nil>";
        }

        curCallID = self->curCallID;
        state = self->state;
        *buf = 136316418;
        v23 = v10;
        v24 = 2080;
        v25 = "[GKVoiceChatServicePrivate stopVoiceChatProc:]";
        v26 = 1024;
        v27 = 180;
        v28 = 2080;
        v29 = v12;
        v30 = 1024;
        v31 = curCallID;
        v32 = 1024;
        v33 = state;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopVoiceChatProc2>:P%s, curCallID = %d, state %d", buf, 0x32u);
      }
    }

    v15 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    [(VideoConference *)self->conf stopCallID:self->curCallID];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v23 = v16;
        v24 = 2080;
        v25 = "[GKVoiceChatServicePrivate stopVoiceChatProc:]";
        v26 = 1024;
        v27 = 184;
        v28 = 1024;
        LODWORD(v29) = 184;
        _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
      }
    }

    v18 = [(GKVoiceChatServicePrivate *)self state];
    if (v18 <= 6 && ((1 << v18) & 0x68) != 0)
    {
      -[GKVoiceChatClient voiceChatService:sendData:toParticipantID:](self->client, "voiceChatService:sendData:toParticipantID:", self->wrapperService, [-[GKVoiceChatDictionary cancelDictionary](self->outgoingCallDict "cancelDictionary")], a3);
    }

    [(GKVoiceChatServicePrivate *)self resetState];
    v20 = @"participantID";
    v21 = a3;
    -[GKVoiceChatServicePrivate performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_informClientVoiceChatDidStop_, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1], 0);
    [(NSRecursiveLock *)self->stateLock unlock];
  }

  else
  {
    [(NSRecursiveLock *)self->stateLock unlock];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)stopVoiceChatWithParticipantID:(id)a3
{
  if (self->client)
  {
    [MEMORY[0x277CCACC8] detachNewThreadSelector:sel_stopVoiceChatProc_ toTarget:self withObject:a3];
  }
}

- (void)denyCallID:(unsigned int)a3
{
  v28 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->stateLock lock];
  if (self->client && [(GKVoiceChatServicePrivate *)self state]== 2 && self->curCallID == a3)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v6 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        incomingCallDict = self->incomingCallDict;
        if (incomingCallDict)
        {
          v10 = [-[GKVoiceChatDictionary description](incomingCallDict "description")];
        }

        else
        {
          v10 = "<nil>";
        }

        *buf = 136315906;
        v21 = v7;
        v22 = 2080;
        v23 = "[GKVoiceChatServicePrivate denyCallID:]";
        v24 = 1024;
        v25 = 299;
        v26 = 2080;
        v27 = v10;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d denyCallID with dict = %s", buf, 0x26u);
      }
    }

    v17 = 0;
    [(VideoConference *)self->conf stopCallID:self->curCallID];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v21 = v13;
        v22 = 2080;
        v23 = "[GKVoiceChatServicePrivate denyCallID:]";
        v24 = 1024;
        v25 = 302;
        v26 = 1024;
        LODWORD(v27) = 302;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
      }
    }

    v15 = [(GKVoiceChatServicePrivate *)self createReplyUsingDictionary:self->incomingCallDict replyCode:2 error:&v17];
    -[GKVoiceChatClient voiceChatService:sendData:toParticipantID:](self->client, "voiceChatService:sendData:toParticipantID:", self->wrapperService, [v15 createBlob], objc_msgSend(v15, "participantID"));
    v18 = @"participantID";
    v19 = [(GKVoiceChatDictionary *)self->incomingCallDict fromParticipantID];
    -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1]);
    [(GKVoiceChatServicePrivate *)self resetState];
    [(NSRecursiveLock *)self->stateLock unlock];
    v16 = *MEMORY[0x277D85DE8];
  }

  else
  {
    stateLock = self->stateLock;
    v12 = *MEMORY[0x277D85DE8];

    [(NSRecursiveLock *)stateLock unlock];
  }
}

- (void)setClient:(id)a3
{
  [(NSRecursiveLock *)self->stateLock lock];
  [(VideoConference *)self->conf setRequiresWifi:1];
  [(NSLock *)self->clientLock lock];
  self->client = a3;
  [(NSLock *)self->clientLock unlock];
  stateLock = self->stateLock;

  [(NSRecursiveLock *)stateLock unlock];
}

- (void)informClientOfInviteFromParticipant:(id)incomingCallDict
{
  [(NSLock *)self->clientLock lock];
  v5 = self->client;
  client = self->client;
  [(NSLock *)self->clientLock unlock];
  if (!incomingCallDict)
  {
    incomingCallDict = self->incomingCallDict;
  }

  if (objc_opt_respondsToSelector())
  {
    -[GKVoiceChatClient voiceChatService:didReceiveInvitationFromParticipantID:callID:](client, "voiceChatService:didReceiveInvitationFromParticipantID:callID:", self->wrapperService, [incomingCallDict fromParticipantID], objc_msgSend(incomingCallDict, "callID"));
  }

  else
  {

    v6 = [(GKVoiceChatDictionary *)self->incomingCallDict callID];

    [(GKVoiceChatServicePrivate *)self acceptCallID:v6 error:0];
  }
}

- (void)informClientVoiceChatDidStart:(id)a3
{
  client = self->client;
  if (objc_opt_respondsToSelector())
  {
    v6 = a3;

    [(GKVoiceChatServicePrivate *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStartMainSelector_ withObject:v6 waitUntilDone:0];
  }
}

- (void)informClientVoiceChatDidStartMainSelector:(id)a3
{
  [(NSLock *)self->clientLock lock];
  v5 = self->client;
  client = self->client;
  [(NSLock *)self->clientLock unlock];
  [(GKVoiceChatClient *)client voiceChatService:self->wrapperService didStartWithParticipantID:a3];
}

- (void)informClientVoiceChatDidNotStart:(id)a3
{
  client = self->client;
  if (objc_opt_respondsToSelector())
  {

    [(GKVoiceChatServicePrivate *)self performSelectorOnMainThread:sel_informClientVoiceChatDidNotStartMainSelector_ withObject:a3 waitUntilDone:0];
  }
}

- (void)informClientVoiceChatDidNotStartMainSelector:(id)a3
{
  [(NSLock *)self->clientLock lock];
  v5 = self->client;
  client = self->client;
  [(NSLock *)self->clientLock unlock];
  -[GKVoiceChatClient voiceChatService:didNotStartWithParticipantID:error:](client, "voiceChatService:didNotStartWithParticipantID:error:", self->wrapperService, [a3 objectForKeyedSubscript:@"participantID"], objc_msgSend(a3, "objectForKeyedSubscript:", @"error"));
}

- (void)informClientVoiceChatDidStop:(id)a3
{
  [(NSLock *)self->clientLock lock];
  v5 = self->client;
  client = self->client;
  [(NSLock *)self->clientLock unlock];
  if (objc_opt_respondsToSelector())
  {
    -[GKVoiceChatClient voiceChatService:didStopWithParticipantID:error:](client, "voiceChatService:didStopWithParticipantID:error:", self->wrapperService, [a3 objectForKeyedSubscript:@"participantID"], objc_msgSend(a3, "objectForKeyedSubscript:", @"error"));
  }
}

- (void)resetState
{
  [(NSRecursiveLock *)self->stateLock lock];
  [(GKVoiceChatServicePrivate *)self setState:0];

  self->incomingCallDict = 0;
  self->outgoingCallDict = 0;
  self->curCallID = -1;
  *&self->currentConnResult.dwCallID = 0u;
  *&self->currentConnResult.proto = 0u;
  *self->currentConnResult.mbLocal.szIfName = 0u;
  self->currentConnResult.mbLocal.IP = 0u;
  *&self->currentConnResult.mbLocal.wPort = 0u;
  *&self->currentConnResult.mbRemote.szIfName[8] = 0u;
  *(&self->currentConnResult.mbRemote.IP + 8) = 0u;
  *self->currentConnResult.mbSrc.szIfName = 0u;
  self->currentConnResult.mbSrc.IP = 0u;
  *&self->currentConnResult.mbSrc.wPort = 0u;
  *&self->currentConnResult.mbDst.szIfName[8] = 0u;
  *(&self->currentConnResult.mbDst.IP + 8) = 0u;
  *self->currentConnResult.mbRemoteSrc.szIfName = 0u;
  self->currentConnResult.mbRemoteSrc.IP = 0u;
  *&self->currentConnResult.mbRemoteSrc.wPort = 0u;
  *&self->currentConnResult.mbRelayExt.szIfName[8] = 0u;
  *(&self->currentConnResult.mbRelayExt.IP + 8) = 0u;
  *&self->currentConnResult.bIfLocalCellularQoS = 0u;
  *&self->currentConnResult.wCellularMTU = 0u;
  *&self->currentConnResult.next = 0u;
  stateLock = self->stateLock;

  [(NSRecursiveLock *)stateLock unlock];
}

- (void)receivedData:(id)a3 fromParticipantID:(id)a4
{
  v109 = *MEMORY[0x277D85DE8];
  if (!self->client)
  {
    goto LABEL_100;
  }

  [(NSRecursiveLock *)self->stateLock lock];
  v7 = [GKVoiceChatDictionary dictionaryFromData:a3];
  if (v7)
  {
    v8 = v7;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        curCallID = self->curCallID;
        state = self->state;
        *buf = 136316418;
        *&buf[4] = v9;
        v101 = 2080;
        v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
        v103 = 1024;
        v104 = 427;
        v105 = 1024;
        *v106 = state;
        *&v106[4] = 1024;
        *&v106[6] = curCallID;
        *v107 = 2080;
        *&v107[2] = [objc_msgSend(v8 "description")];
        _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d State = %d, curCallID = %d, received dict = {%s}", buf, 0x32u);
      }
    }

    v13 = self->state;
    if (v13 <= 2)
    {
      if (!v13)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v42 = VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            if (a4)
            {
              v44 = [objc_msgSend(a4 "description")];
            }

            else
            {
              v44 = "<nil>";
            }

            v68 = [objc_msgSend(v8 "description")];
            v69 = [v8 isInviteDictionary];
            *buf = 136316418;
            *&buf[4] = v42;
            v101 = 2080;
            v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
            v103 = 1024;
            v104 = 431;
            v105 = 2080;
            *v106 = v44;
            *&v106[8] = 2080;
            *v107 = v68;
            *&v107[8] = 1024;
            v108 = v69;
            _os_log_impl(&dword_24E50C000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d switch - GKVoiceChatServiceStateIdle from = %s: inviteIsValid = %s, %d", buf, 0x36u);
          }
        }

        if ([(GKVoiceChatServicePrivate *)self inviteIsValid:v8])
        {
          self->incomingCallDict = v8;
          [(GKVoiceChatServicePrivate *)self setState:2];
          self->curCallID = [v8 callID];
          [(GKVoiceChatServicePrivate *)self performSelectorOnMainThread:sel_informClientOfInviteFromParticipant_ withObject:0 waitUntilDone:0];
        }

        else
        {
          [(GKVoiceChatServicePrivate *)self resetState];
        }

        goto LABEL_99;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          goto LABEL_99;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v16 = self->curCallID;
            *buf = 136315906;
            *&buf[4] = v14;
            v101 = 2080;
            v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
            v103 = 1024;
            v104 = 449;
            v105 = 1024;
            *v106 = v16;
            _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d switch - GKVoiceChatServiceStateWaitingForClientResponse callID = %d", buf, 0x22u);
          }
        }

        if ([a4 isEqualToString:{-[GKVoiceChatDictionary fromParticipantID](self->incomingCallDict, "fromParticipantID")}])
        {
          if ([v8 isCancelDictionary])
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v17 = VRTraceErrorLogLevelToCSTR();
              v18 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v19 = self->curCallID;
                *buf = 136315906;
                *&buf[4] = v17;
                v101 = 2080;
                v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
                v103 = 1024;
                v104 = 467;
                v105 = 1024;
                *v106 = v19;
                _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatServiceStateWaitingForClientResponse: Cancelling call is working... for callID %d", buf, 0x22u);
              }
            }

            *buf = 0;
            [(VideoConference *)self->conf remoteCancelledCallID:self->curCallID];
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(GCKGameConnectivityKitBundle(), "localizedStringForKey:value:table:", @"%@ has cancelled this request.", &stru_286195238, @"GKSessionEvent", a4];
            -[GKVoiceChatServicePrivate getNSError:code:description:reason:](self, "getNSError:code:description:reason:", buf, 32009, v20, [GCKGameConnectivityKitBundle() localizedStringForKey:@"This request was cancelled." value:&stru_286195238 table:@"GKSessionEvent"]);
            v98[0] = @"participantID";
            v98[1] = @"error";
            v99[0] = a4;
            v99[1] = *buf;
            v21 = MEMORY[0x277CBEAC0];
            v22 = v99;
            v23 = v98;
LABEL_19:
            -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [v21 dictionaryWithObjects:v22 forKeys:v23 count:2]);
            [(GKVoiceChatServicePrivate *)self resetState];
            v24 = *buf;
LABEL_98:
          }

LABEL_99:
          [(NSRecursiveLock *)self->stateLock unlock];
LABEL_100:
          v78 = *MEMORY[0x277D85DE8];
          return;
        }

        if (![(GKVoiceChatServicePrivate *)self inviteIsValid:v8])
        {
          goto LABEL_99;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v48 = VRTraceErrorLogLevelToCSTR();
          v49 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v50 = self->curCallID;
            *buf = 136315906;
            *&buf[4] = v48;
            v101 = 2080;
            v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
            v103 = 1024;
            v104 = 455;
            v105 = 1024;
            *v106 = v50;
            _os_log_impl(&dword_24E50C000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatServiceStateWaitingForClientResponse: GOT INVITE AND WE ARE BUSY BUSY callID %d", buf, 0x22u);
          }
        }

        *buf = 0;
        v39 = buf;
        goto LABEL_48;
      }

      goto LABEL_24;
    }

    if ((v13 - 5) < 2)
    {
LABEL_24:
      if (-[GKVoiceChatServicePrivate inviteIsValid:](self, "inviteIsValid:", v8) && (![a4 isEqualToString:{-[GKVoiceChatDictionary fromParticipantID](self->incomingCallDict, "fromParticipantID")}] || (objc_msgSend(v8, "matchesNonce:", -[GKVoiceChatDictionary nonce](self->incomingCallDict, "nonce")) & 1) == 0))
      {
        v89 = 0;
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v35 = VRTraceErrorLogLevelToCSTR();
          v36 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v38 = self->curCallID;
            v37 = self->state;
            *buf = 136316162;
            *&buf[4] = v35;
            v101 = 2080;
            v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
            v103 = 1024;
            v104 = 601;
            v105 = 1024;
            *v106 = v37;
            *&v106[4] = 1024;
            *&v106[6] = v38;
            _os_log_impl(&dword_24E50C000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d State = %d: GOT INVITE AND WE ARE BUSY BUSY with callID %d", buf, 0x28u);
          }
        }

        v39 = &v89;
LABEL_48:
        v40 = self;
        v41 = v8;
LABEL_57:
        -[GKVoiceChatClient voiceChatService:sendData:toParticipantID:](self->client, "voiceChatService:sendData:toParticipantID:", self->wrapperService, [-[GKVoiceChatServicePrivate createReplyUsingDictionary:replyCode:error:](v40 createReplyUsingDictionary:v41 replyCode:3 error:{v39), "createBlob"}], a4);
        goto LABEL_99;
      }

      if (![a4 isEqualToString:{-[GKVoiceChatDictionary fromParticipantID](self->incomingCallDict, "fromParticipantID")}] || !objc_msgSend(v8, "isCancelDictionary") || !objc_msgSend(v8, "matchesNonce:", -[GKVoiceChatDictionary nonce](self->outgoingCallDict, "nonce")))
      {
        goto LABEL_99;
      }

      v89 = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v29 = self->curCallID;
          *buf = 136315906;
          *&buf[4] = v27;
          v101 = 2080;
          v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
          v103 = 1024;
          v104 = 613;
          v105 = 1024;
          *v106 = v29;
          _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cancelling call from the remote user... for callID %d", buf, 0x22u);
        }
      }

      [(VideoConference *)self->conf remoteCancelledCallID:self->curCallID];
      [(GKVoiceChatServicePrivate *)self resetState];
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(GCKGameConnectivityKitBundle(), "localizedStringForKey:value:table:", @"%@ has cancelled this request.", &stru_286195238, @"GKSessionEvent", a4];
      -[GKVoiceChatServicePrivate getNSError:code:description:reason:](self, "getNSError:code:description:reason:", &v89, 32009, v30, [GCKGameConnectivityKitBundle() localizedStringForKey:@"This request was cancelled." value:&stru_286195238 table:@"GKSessionEvent"]);
      v90[0] = @"participantID";
      v90[1] = @"error";
      v91[0] = a4;
      v91[1] = v89;
      -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2]);
LABEL_97:
      v24 = v89;
      goto LABEL_98;
    }

    if (v13 != 3)
    {
      goto LABEL_99;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v33 = self->curCallID;
        *buf = 136315906;
        *&buf[4] = v31;
        v101 = 2080;
        v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
        v103 = 1024;
        v104 = 480;
        v105 = 1024;
        *v106 = v33;
        _os_log_impl(&dword_24E50C000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d switch - GKVoiceChatServiceStateWaitingForInviteResponse callID %d", buf, 0x22u);
      }
    }

    if (![a4 isEqualToString:{-[GKVoiceChatDictionary participantID](self->outgoingCallDict, "participantID")}])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v45 = VRTraceErrorLogLevelToCSTR();
        v46 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v47 = self->curCallID;
          *buf = 136315906;
          *&buf[4] = v45;
          v101 = 2080;
          v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
          v103 = 1024;
          v104 = 584;
          v105 = 1024;
          *v106 = v47;
          _os_log_impl(&dword_24E50C000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatServiceStateWaitingForInviteResponse: GOT INVITE AND WE ARE BUSY BUSY with callID %d", buf, 0x22u);
        }
      }

      v40 = self;
      v41 = v8;
      v39 = 0;
      goto LABEL_57;
    }

    if ([(GKVoiceChatDictionary *)self->outgoingCallDict matchesResponse:v8])
    {
      self->incomingCallDict = v8;
      v89 = 0;
      v34 = [v8 response];
      if (v34 == 3)
      {
        [(VideoConference *)self->conf stopCallID:self->curCallID];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v76 = VRTraceErrorLogLevelToCSTR();
          v77 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v76;
            v101 = 2080;
            v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
            v103 = 1024;
            v104 = 502;
            v105 = 1024;
            *v106 = 502;
            _os_log_impl(&dword_24E50C000, v77, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
          }
        }

        v72 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(GCKGameConnectivityKitBundle(), "localizedStringForKey:value:table:", @"%@ is currently busy in another call.", &stru_286195238, @"GKSessionEvent", a4];
        v73 = [GCKGameConnectivityKitBundle() localizedStringForKey:@"Request declined." value:&stru_286195238 table:@"GKSessionEvent"];
        v74 = self;
        v75 = 32008;
      }

      else
      {
        if (v34 != 2)
        {
          if (v34 == 1)
          {
            [(GKVoiceChatServicePrivate *)self setState:5];
            [(GKVoiceChatServicePrivate *)self startICEConnectionCheck:v8 isCaller:1];
          }

          goto LABEL_94;
        }

        [(VideoConference *)self->conf stopCallID:self->curCallID];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v70 = VRTraceErrorLogLevelToCSTR();
          v71 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v70;
            v101 = 2080;
            v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
            v103 = 1024;
            v104 = 497;
            v105 = 1024;
            *v106 = 497;
            _os_log_impl(&dword_24E50C000, v71, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
          }
        }

        v72 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(GCKGameConnectivityKitBundle(), "localizedStringForKey:value:table:", @"%@ has declined your request.", &stru_286195238, @"GKSessionEvent", a4];
        v73 = [GCKGameConnectivityKitBundle() localizedStringForKey:@"Request declined." value:&stru_286195238 table:@"GKSessionEvent"];
        v74 = self;
        v75 = 32011;
      }

      [(GKVoiceChatServicePrivate *)v74 getNSError:&v89 code:v75 description:v72 reason:v73];
LABEL_94:
      if (!v89)
      {
        goto LABEL_99;
      }

      v96[0] = @"participantID";
      v96[1] = @"error";
      v97[0] = a4;
      v97[1] = v89;
      v65 = MEMORY[0x277CBEAC0];
      v66 = v97;
      v67 = v96;
      goto LABEL_96;
    }

    v51 = [(GKVoiceChatServicePrivate *)self inviteIsValid:v8];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (!v51)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v59 = VRTraceErrorLogLevelToCSTR();
        v60 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v61 = [objc_msgSend(v8 "description")];
          *buf = 136315906;
          *&buf[4] = v59;
          v101 = 2080;
          v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
          v103 = 1024;
          v104 = 565;
          v105 = 2080;
          *v106 = v61;
          _os_log_impl(&dword_24E50C000, v60, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [self inviteIsValid:calleeResponse] is NO {%s}", buf, 0x26u);
        }
      }

      if ([v8 isReplyDictionary])
      {
        goto LABEL_99;
      }

      v89 = 0;
      [(VideoConference *)self->conf stopCallID:self->curCallID];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v62 = VRTraceErrorLogLevelToCSTR();
        v63 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v62;
          v101 = 2080;
          v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
          v103 = 1024;
          v104 = 573;
          v105 = 1024;
          *v106 = 573;
          _os_log_impl(&dword_24E50C000, v63, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
        }
      }

      v64 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(GCKGameConnectivityKitBundle(), "localizedStringForKey:value:table:", @"%@ has declined your request.", &stru_286195238, @"GKSessionEvent", a4];
      -[GKVoiceChatServicePrivate getNSError:code:description:reason:](self, "getNSError:code:description:reason:", &v89, 32011, v64, [GCKGameConnectivityKitBundle() localizedStringForKey:@"Request declined." value:&stru_286195238 table:@"GKSessionEvent"]);
      v92[0] = @"participantID";
      v92[1] = @"error";
      v93[0] = a4;
      v93[1] = v89;
      v65 = MEMORY[0x277CBEAC0];
      v66 = v93;
      v67 = v92;
LABEL_96:
      -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [v65 dictionaryWithObjects:v66 forKeys:v67 count:2]);
      [(GKVoiceChatServicePrivate *)self resetState];
      goto LABEL_97;
    }

    if (ErrorLogLevelForModule >= 7)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      v54 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v55 = [-[GKVoiceChatClient participantID](self->client "participantID")] == -1;
        v56 = [-[GKVoiceChatClient participantID](self->client "participantID")];
        *buf = 136316162;
        *&buf[4] = v53;
        v101 = 2080;
        v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
        v103 = 1024;
        v104 = 516;
        v105 = 1024;
        *v106 = v55;
        *&v106[4] = 1024;
        *&v106[6] = v56 == 1;
        _os_log_impl(&dword_24E50C000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [self inviteIsValid:calleeResponse] is YES:isCaller=%d, %d", buf, 0x28u);
      }
    }

    self->incomingCallDict = v8;
    if ([-[GKVoiceChatClient participantID](self->client "participantID")] == -1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v79 = VRTraceErrorLogLevelToCSTR();
        v80 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v79;
          v101 = 2080;
          v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
          v103 = 1024;
          v104 = 524;
          _os_log_impl(&dword_24E50C000, v80, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am the caller starting ice check", buf, 0x1Cu);
        }
      }
    }

    else
    {
      if ([-[GKVoiceChatClient participantID](self->client "participantID")] == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v57 = VRTraceErrorLogLevelToCSTR();
          v58 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v57;
            v101 = 2080;
            v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
            v103 = 1024;
            v104 = 531;
            _os_log_impl(&dword_24E50C000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am the callee starting ice check", buf, 0x1Cu);
          }
        }

LABEL_107:
        [(GKVoiceChatServicePrivate *)self setState:6];
        incomingCallDict = self->incomingCallDict;
        v84 = self;
        v85 = 0;
        goto LABEL_108;
      }

      v81 = [(GKVoiceChatDictionary *)self->incomingCallDict nonce];
      v82 = [(GKVoiceChatDictionary *)self->outgoingCallDict nonce];
      if (v82 >= v81)
      {
        if (v82 <= v81)
        {
          [(VideoConference *)self->conf stopCallID:self->curCallID];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v86 = VRTraceErrorLogLevelToCSTR();
            v87 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              *&buf[4] = v86;
              v101 = 2080;
              v102 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
              v103 = 1024;
              v104 = 552;
              v105 = 1024;
              *v106 = 552;
              _os_log_impl(&dword_24E50C000, v87, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
            }
          }

          *buf = 0;
          v88 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(GCKGameConnectivityKitBundle(), "localizedStringForKey:value:table:", @"%@ has declined your request.", &stru_286195238, @"GKSessionEvent", a4];
          -[GKVoiceChatServicePrivate getNSError:code:description:reason:](self, "getNSError:code:description:reason:", buf, 32011, v88, [GCKGameConnectivityKitBundle() localizedStringForKey:@"Request declined." value:&stru_286195238 table:@"GKSessionEvent"]);
          v94[0] = @"participantID";
          v94[1] = @"error";
          v95[0] = a4;
          v95[1] = *buf;
          v21 = MEMORY[0x277CBEAC0];
          v22 = v95;
          v23 = v94;
          goto LABEL_19;
        }

        goto LABEL_107;
      }
    }

    [(GKVoiceChatServicePrivate *)self setState:5];
    incomingCallDict = self->incomingCallDict;
    v84 = self;
    v85 = 1;
LABEL_108:
    [(GKVoiceChatServicePrivate *)v84 startICEConnectionCheck:incomingCallDict isCaller:v85];
    goto LABEL_99;
  }

  stateLock = self->stateLock;
  v26 = *MEMORY[0x277D85DE8];

  [(NSRecursiveLock *)stateLock unlock];
}

- (id)createReplyUsingDictionary:(id)a3 replyCode:(unint64_t)a4 error:(id *)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (a4 == 1)
  {
    v8 = [(VideoConference *)self->conf connectionBlobForParticipantID:[(GKVoiceChatClient *)self->client participantID] callID:&v12 error:a5];
    if (!v8)
    {
      result = 0;
      goto LABEL_6;
    }

    v9 = v12;
    self->curCallID = v12;
  }

  else
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:"empty" length:{5, a5}];
    v9 = 0;
  }

  result = [a3 replyDictionary:a4 connectionData:v8 callID:v9 focus:{-[GKVoiceChatServicePrivate isFocus](self, "isFocus")}];
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)createInvite:(id *)a3 toParticipant:(id)a4 callID:(unsigned int *)a5
{
  v9 = *a5;
  result = [(VideoConference *)self->conf connectionBlobForParticipantID:[(GKVoiceChatClient *)self->client participantID] callID:&v9 error:a3];
  *a5 = v9;
  if (result)
  {
    return [GKVoiceChatDictionary inviteDictionaryToParticipantID:a4 fromParticipantID:[(GKVoiceChatClient *)self->client participantID] connectionData:result callID:*a5 focus:[(GKVoiceChatServicePrivate *)self isFocus]];
  }

  return result;
}

- (BOOL)getNSError:(id *)a3 code:(int64_t)a4 description:(id)a5 hResult:(int)a6
{
  if (a6 <= 0x16u)
  {
    if (a6 <= 0xEu)
    {
      if (a6 == 3)
      {
        v8 = @"Out of memory";
        goto LABEL_27;
      }

      if (a6 == 14)
      {
        v8 = @"Data size too large";
        goto LABEL_27;
      }
    }

    else
    {
      switch(a6)
      {
        case 0xFu:
          v8 = @"Invalid payload";
          goto LABEL_27;
        case 0x10u:
          v8 = @"Unsupported";
          goto LABEL_27;
        case 0x16u:
          v8 = @"Not found";
          goto LABEL_27;
      }
    }

LABEL_26:
    v8 = @"Internal error";
    goto LABEL_27;
  }

  if (a6 > 0x21u)
  {
    switch(a6)
    {
      case '""':
        v8 = @"Bad message";
        goto LABEL_27;
      case '#':
        v8 = @"No transaction";
        goto LABEL_27;
      case '/':
        v8 = @"Declined";
        goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (a6 == 23)
  {
    v8 = @"Timed out";
    goto LABEL_27;
  }

  if (a6 == 30)
  {
    v8 = @"Cancelled";
    goto LABEL_27;
  }

  if (a6 != 33)
  {
    goto LABEL_26;
  }

  v8 = @"Connection closed";
LABEL_27:
  [(GKVoiceChatServicePrivate *)self getNSError:a3 code:a4 description:a5 reason:v8, v6, v7];
  return 1;
}

- (BOOL)getNSError:(id *)a3 code:(int64_t)a4 description:(id)a5 reason:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v9 = 0;
    if (a5 && a6)
    {
      v11 = objc_alloc(MEMORY[0x277CBEAC0]);
      v9 = [v11 initWithObjectsAndKeys:{a5, *MEMORY[0x277CCA450], a6, *MEMORY[0x277CCA470], 0}];
    }

    v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:*off_279682960 code:a4 userInfo:v9];
    *a3 = v12;
    v13 = v12;
    v14 = *a3;

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (*a3)
        {
          v17 = [objc_msgSend(*a3 "description")];
        }

        else
        {
          v17 = "<nil>";
        }

        *buf = 136316162;
        v21 = v15;
        v22 = 2080;
        v23 = "[GKVoiceChatServicePrivate getNSError:code:description:reason:]";
        v24 = 1024;
        v25 = 804;
        v26 = 1024;
        v27 = a4;
        v28 = 2080;
        v29 = v17;
        _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Error: %d -- %s.", buf, 0x2Cu);
      }
    }
  }

  result = a3 != 0;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setMicrophoneMuted:(BOOL)a3
{
  [(NSRecursiveLock *)self->stateLock lock];
  self->microphoneMuted = a3;
  [(NSRecursiveLock *)self->stateLock unlock];
  microphoneMuted = self->microphoneMuted;
  conf = self->conf;

  [(VideoConference *)conf setMicrophoneMuted:microphoneMuted];
}

- (void)videoConference:(id)a3 didStartSession:(BOOL)a4 withCallID:(unsigned int)a5 error:(id)a6
{
  v8 = a4;
  v31 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      curCallID = self->curCallID;
      *buf = 136316418;
      v20 = v10;
      v21 = 2080;
      v22 = "[GKVoiceChatServicePrivate videoConference:didStartSession:withCallID:error:]";
      v23 = 1024;
      v24 = 885;
      v25 = 1024;
      v26 = a5;
      v27 = 1024;
      v28 = curCallID;
      v29 = 1024;
      v30 = curCallID == a5;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoConference: didStopWithCallID:%d == %d ? %d", buf, 0x2Eu);
    }
  }

  [(NSRecursiveLock *)self->stateLock lock];
  if (self->curCallID == a5 && self->state)
  {
    if (v8)
    {
      self->state = 1;
      [(GKVoiceChatServicePrivate *)self informClientVoiceChatDidStart:[(GKVoiceChatDictionary *)self->outgoingCallDict participantID]];
    }

    else
    {
      v15 = [(GKVoiceChatDictionary *)self->outgoingCallDict participantID];
      v17[1] = @"error";
      v18[0] = v15;
      v18[1] = a6;
      -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2]);
      [(GKVoiceChatServicePrivate *)self resetState];
    }
  }

  else
  {
    [(VideoConference *)self->conf stopCallID:?];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v20 = v13;
        v21 = 2080;
        v22 = "[GKVoiceChatServicePrivate videoConference:didStartSession:withCallID:error:]";
        v23 = 1024;
        v24 = 902;
        v25 = 1024;
        v26 = 902;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
      }
    }
  }

  [(NSRecursiveLock *)self->stateLock unlock];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)videoConference:(id)a3 didStopWithCallID:(unsigned int)a4 error:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      curCallID = self->curCallID;
      *buf = 136316418;
      v16 = v8;
      v17 = 2080;
      v18 = "[GKVoiceChatServicePrivate videoConference:didStopWithCallID:error:]";
      v19 = 1024;
      v20 = 911;
      v21 = 1024;
      v22 = a4;
      v23 = 1024;
      v24 = curCallID;
      v25 = 1024;
      v26 = curCallID == a4;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoConference: didStopWithCallID:%d == %d ? %d", buf, 0x2Eu);
    }
  }

  [(NSRecursiveLock *)self->stateLock lock];
  if (self->curCallID == a4 && self->state)
  {
    v11 = [(GKVoiceChatDictionary *)self->outgoingCallDict participantID];
    v13[1] = @"error";
    v14[0] = v11;
    v14[1] = a5;
    -[GKVoiceChatServicePrivate performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_informClientVoiceChatDidStop_, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2], 0);
    [(GKVoiceChatServicePrivate *)self resetState];
  }

  [(NSRecursiveLock *)self->stateLock unlock];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setLocalVideoLayer:(void *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136316162;
      v7 = v3;
      v8 = 2080;
      v9 = "[GKVoiceChatServicePrivate setLocalVideoLayer:]";
      v10 = 1024;
      v11 = 928;
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v14 = 1024;
      v15 = 928;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v6, 0x2Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)localVideoLayer
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136316162;
      v7 = v2;
      v8 = 2080;
      v9 = "[GKVoiceChatServicePrivate localVideoLayer]";
      v10 = 1024;
      v11 = 933;
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v14 = 1024;
      v15 = 933;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v6, 0x2Cu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)setRemoteVideoLayer:(void *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136316162;
      v7 = v3;
      v8 = 2080;
      v9 = "[GKVoiceChatServicePrivate setRemoteVideoLayer:]";
      v10 = 1024;
      v11 = 938;
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v14 = 1024;
      v15 = 938;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v6, 0x2Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remoteVideoLayer
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136316162;
      v7 = v2;
      v8 = 2080;
      v9 = "[GKVoiceChatServicePrivate remoteVideoLayer]";
      v10 = 1024;
      v11 = 943;
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v14 = 1024;
      v15 = 943;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v6, 0x2Cu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

- (double)localFramerate
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136316162;
      v7 = v2;
      v8 = 2080;
      v9 = "[GKVoiceChatServicePrivate localFramerate]";
      v10 = 1024;
      v11 = 948;
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v14 = 1024;
      v15 = 948;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v6, 0x2Cu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0.0;
}

- (double)localBitrate
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136316162;
      v7 = v2;
      v8 = 2080;
      v9 = "[GKVoiceChatServicePrivate localBitrate]";
      v10 = 1024;
      v11 = 953;
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v14 = 1024;
      v15 = 953;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v6, 0x2Cu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0.0;
}

- (double)remoteFramerate
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136316162;
      v7 = v2;
      v8 = 2080;
      v9 = "[GKVoiceChatServicePrivate remoteFramerate]";
      v10 = 1024;
      v11 = 958;
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v14 = 1024;
      v15 = 958;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v6, 0x2Cu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0.0;
}

- (double)remoteBitrate
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136316162;
      v7 = v2;
      v8 = 2080;
      v9 = "[GKVoiceChatServicePrivate remoteBitrate]";
      v10 = 1024;
      v11 = 963;
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v14 = 1024;
      v15 = 963;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v6, 0x2Cu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0.0;
}

- (void)createReplyUsingDictionary:(uint64_t)a3 replyCode:(os_log_t)log error:.cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = "[GKVoiceChatServicePrivate createReplyUsingDictionary:replyCode:error:]";
  *(buf + 11) = 1024;
  *(buf + 6) = 675;
  *(buf + 14) = 2080;
  *(buf + 30) = a1;
  _os_log_error_impl(&dword_24E50C000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Caught exception: %s", buf, 0x26u);
}

@end