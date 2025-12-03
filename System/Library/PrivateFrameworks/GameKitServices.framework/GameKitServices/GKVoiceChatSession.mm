@interface GKVoiceChatSession
- (BOOL)didReceiveVoiceChatData:(id)data fromPeerID:(id)d;
- (GKVoiceChatSession)initWithGKSession:(id)session sessionName:(id)name;
- (GKVoiceChatSession)initWithGameStateSession:(id)session sessionName:(id)name;
- (void)dealloc;
@end

@implementation GKVoiceChatSession

- (GKVoiceChatSession)initWithGKSession:(id)session sessionName:(id)name
{
  privateImpl = [session privateImpl];

  return [(GKVoiceChatSession *)self initWithGameStateSession:privateImpl sessionName:name];
}

- (GKVoiceChatSession)initWithGameStateSession:(id)session sessionName:(id)name
{
  v40 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = GKVoiceChatSession;
  v6 = [(GKVoiceChatSession *)&v23 init];
  if (v6)
  {
    v6->opaqueSession = [[GKVoiceChatSessionInternal alloc] initWithGameStateSession:session publicWrapper:v6 sessionName:name];
    if (objc_opt_class() == v6)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          opaqueSession = v6->opaqueSession;
          v11 = objc_opt_class();
          Name = class_getName(v11);
          *buf = 136316418;
          v25 = v8;
          v26 = 2080;
          v27 = "[GKVoiceChatSession initWithGameStateSession:sessionName:]";
          v28 = 1024;
          v29 = 41;
          v30 = 2048;
          v31 = opaqueSession;
          v32 = 2080;
          v33 = Name;
          v34 = 2112;
          nameCopy = name;
          v13 = " [%s] %s:%d [%p] GKVoiceChatSession init'd using session=%s with sessionName=%@";
          v14 = v9;
          v15 = 58;
LABEL_12:
          _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(GKVoiceChatSession *)v6 performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_286195238;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v18 = v6->opaqueSession;
          v19 = objc_opt_class();
          v20 = class_getName(v19);
          *buf = 136316930;
          v25 = v16;
          v26 = 2080;
          v27 = "[GKVoiceChatSession initWithGameStateSession:sessionName:]";
          v28 = 1024;
          v29 = 41;
          v30 = 2112;
          v31 = v7;
          v32 = 2048;
          v33 = v6;
          v34 = 2048;
          nameCopy = v18;
          v36 = 2080;
          v37 = v20;
          v38 = 2112;
          nameCopy2 = name;
          v13 = " [%s] %s:%d %@(%p) [%p] GKVoiceChatSession init'd using session=%s with sessionName=%@";
          v14 = v17;
          v15 = 78;
          goto LABEL_12;
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)didReceiveVoiceChatData:(id)data fromPeerID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(GKVoiceChatSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_286195238;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *v20 = 136316418;
    *&v20[4] = v13;
    *&v20[12] = 2080;
    *&v20[14] = "[GKVoiceChatSession didReceiveVoiceChatData:fromPeerID:]";
    *&v20[22] = 1024;
    LODWORD(v21) = 47;
    WORD2(v21) = 2112;
    *(&v21 + 6) = v7;
    HIWORD(v21) = 2048;
    selfCopy = self;
    LOWORD(v23) = 2112;
    *(&v23 + 2) = d;
    v10 = " [%s] %s:%d %@(%p) GKVoiceChatSession receive data from peerID=%@";
    v11 = v14;
    v12 = 58;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 136315906;
      *&v20[4] = v8;
      *&v20[12] = 2080;
      *&v20[14] = "[GKVoiceChatSession didReceiveVoiceChatData:fromPeerID:]";
      *&v20[22] = 1024;
      LODWORD(v21) = 47;
      WORD2(v21) = 2112;
      *(&v21 + 6) = d;
      v10 = " [%s] %s:%d GKVoiceChatSession receive data from peerID=%@";
      v11 = v9;
      v12 = 38;
LABEL_11:
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, v10, v20, v12);
    }
  }

LABEL_12:
  v15 = [GKOOBMessageFactory newMessageFromData:data, *v20, *&v20[16], v21, selfCopy, v23];
  conferenceID = [self->opaqueSession conferenceID];
  conferenceID2 = [v15 conferenceID];
  if (conferenceID == conferenceID2)
  {
    [self->opaqueSession session:0 didReceiveOOBAudioPacket:v15 fromPeerID:d];
  }

  v18 = *MEMORY[0x277D85DE8];
  return conferenceID == conferenceID2;
}

- (void)dealloc
{
  opaqueSession = self->opaqueSession;
  [opaqueSession cleanup];

  self->opaqueSession = 0;
  v4.receiver = self;
  v4.super_class = GKVoiceChatSession;
  [(GKVoiceChatSession *)&v4 dealloc];
}

@end