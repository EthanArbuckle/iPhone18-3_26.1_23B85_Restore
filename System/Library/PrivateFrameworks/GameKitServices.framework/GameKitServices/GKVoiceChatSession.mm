@interface GKVoiceChatSession
- (BOOL)didReceiveVoiceChatData:(id)a3 fromPeerID:(id)a4;
- (GKVoiceChatSession)initWithGKSession:(id)a3 sessionName:(id)a4;
- (GKVoiceChatSession)initWithGameStateSession:(id)a3 sessionName:(id)a4;
- (void)dealloc;
@end

@implementation GKVoiceChatSession

- (GKVoiceChatSession)initWithGKSession:(id)a3 sessionName:(id)a4
{
  v6 = [a3 privateImpl];

  return [(GKVoiceChatSession *)self initWithGameStateSession:v6 sessionName:a4];
}

- (GKVoiceChatSession)initWithGameStateSession:(id)a3 sessionName:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = GKVoiceChatSession;
  v6 = [(GKVoiceChatSession *)&v23 init];
  if (v6)
  {
    v6->opaqueSession = [[GKVoiceChatSessionInternal alloc] initWithGameStateSession:a3 publicWrapper:v6 sessionName:a4];
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
          v35 = a4;
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
          v35 = v18;
          v36 = 2080;
          v37 = v20;
          v38 = 2112;
          v39 = a4;
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

- (BOOL)didReceiveVoiceChatData:(id)a3 fromPeerID:(id)a4
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
    v22 = self;
    LOWORD(v23) = 2112;
    *(&v23 + 2) = a4;
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
      *(&v21 + 6) = a4;
      v10 = " [%s] %s:%d GKVoiceChatSession receive data from peerID=%@";
      v11 = v9;
      v12 = 38;
LABEL_11:
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, v10, v20, v12);
    }
  }

LABEL_12:
  v15 = [GKOOBMessageFactory newMessageFromData:a3, *v20, *&v20[16], v21, v22, v23];
  v16 = [self->opaqueSession conferenceID];
  v17 = [v15 conferenceID];
  if (v16 == v17)
  {
    [self->opaqueSession session:0 didReceiveOOBAudioPacket:v15 fromPeerID:a4];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16 == v17;
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