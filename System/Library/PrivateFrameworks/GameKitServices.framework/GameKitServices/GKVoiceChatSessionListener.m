@interface GKVoiceChatSessionListener
- (GKVoiceChatSessionListener)initWithSession:(id)a3;
- (id)currentSessions;
- (void)dealloc;
- (void)receivedNewVoiceChatOOBMessage:(id)a3 fromPeerID:(id)a4;
- (void)registerNewGKVoiceChatSession:(id)a3;
- (void)removeSession:(id)a3;
@end

@implementation GKVoiceChatSessionListener

- (GKVoiceChatSessionListener)initWithSession:(id)a3
{
  v7.receiver = self;
  v7.super_class = GKVoiceChatSessionListener;
  v4 = [(GKVoiceChatSessionListener *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_gkSession = a3;
    v4->_conferenceList = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v5->_rwlock = objc_alloc_init(GKRWLock);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GKVoiceChatSessionListener;
  [(GKVoiceChatSessionListener *)&v3 dealloc];
}

- (void)registerNewGKVoiceChatSession:(id)a3
{
  [(GKRWLock *)self->_rwlock wrlock];
  if (([(NSMutableArray *)self->_conferenceList containsObject:a3]& 1) == 0)
  {
    [(NSMutableArray *)self->_conferenceList addObject:a3];
  }

  rwlock = self->_rwlock;

  [(GKRWLock *)rwlock unlock];
}

- (void)removeSession:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  [(GKRWLock *)self->_rwlock wrlock];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[GKVoiceChatSessionListener removeSession:]";
      v12 = 1024;
      v13 = 50;
      v14 = 2048;
      v15 = a3;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatSessionListener removing listener %p", &v8, 0x26u);
    }
  }

  [(NSMutableArray *)self->_conferenceList removeObject:a3];
  [(GKRWLock *)self->_rwlock unlock];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)currentSessions
{
  [(GKRWLock *)self->_rwlock wrlock];
  v3 = [MEMORY[0x277CBEB98] setWithArray:self->_conferenceList];
  [(GKRWLock *)self->_rwlock unlock];
  return v3;
}

- (void)receivedNewVoiceChatOOBMessage:(id)a3 fromPeerID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  [(GKRWLock *)self->_rwlock rdlock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  conferenceList = self->_conferenceList;
  v8 = [(NSMutableArray *)conferenceList countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(conferenceList);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 conferenceID];
        if (v13 == [a3 conferenceID])
        {
          [v12 session:self->_gkSession didReceiveOOBAudioPacket:a3 fromPeerID:a4];
        }
      }

      v9 = [(NSMutableArray *)conferenceList countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(GKRWLock *)self->_rwlock unlock];
  v14 = *MEMORY[0x277D85DE8];
}

@end