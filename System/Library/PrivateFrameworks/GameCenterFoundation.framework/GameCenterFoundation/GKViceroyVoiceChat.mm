@interface GKViceroyVoiceChat
- (BOOL)isActive;
- (GKViceroyVoiceChat)initWithName:(id)a3 connection:(id)a4 gkSession:(id)a5;
- (GKViceroyVoiceChatStateUpdateDelegate)stateUpdateDelegate;
- (NSString)name;
- (float)volume;
- (void)dealloc;
- (void)gkVoiceChatSession:(id)a3 stateUpdate:(unint64_t)a4 forPeer:(id)a5;
- (void)setVolume:(float)a3;
- (void)start;
- (void)stop;
@end

@implementation GKViceroyVoiceChat

- (GKViceroyVoiceChat)initWithName:(id)a3 connection:(id)a4 gkSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = GKViceroyVoiceChat;
  v11 = [(GKViceroyVoiceChat *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_connection, a4);
    v13 = [objc_alloc(MEMORY[0x277D0C948]) initWithGKSession:v10 sessionName:v8];
    voiceChatSession = v12->_voiceChatSession;
    v12->_voiceChatSession = v13;

    [(GKVoiceChatSession *)v12->_voiceChatSession setDelegate:v12];
  }

  return v12;
}

- (void)dealloc
{
  v3 = [(GKViceroyVoiceChat *)self voiceChatSession];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = GKViceroyVoiceChat;
  [(GKViceroyVoiceChat *)&v4 dealloc];
}

- (NSString)name
{
  v2 = [(GKViceroyVoiceChat *)self voiceChatSession];
  v3 = [v2 sessionName];

  return v3;
}

- (BOOL)isActive
{
  v2 = [(GKViceroyVoiceChat *)self voiceChatSession];
  v3 = [v2 isActiveSession];

  return v3;
}

- (void)setVolume:(float)a3
{
  v5 = [(GKViceroyVoiceChat *)self voiceChatSession];
  *&v4 = a3;
  [v5 setSessionVolume:v4];
}

- (float)volume
{
  v2 = [(GKViceroyVoiceChat *)self voiceChatSession];
  [v2 sessionVolume];
  v4 = v3;

  return v4;
}

- (void)start
{
  v2 = [(GKViceroyVoiceChat *)self voiceChatSession];
  [v2 startSession];
}

- (void)stop
{
  v2 = [(GKViceroyVoiceChat *)self voiceChatSession];
  [v2 stopSession];
}

- (void)gkVoiceChatSession:(id)a3 stateUpdate:(unint64_t)a4 forPeer:(id)a5
{
  v7 = a5;
  v8 = [(GKViceroyVoiceChat *)self stateUpdateDelegate];

  if (v8)
  {
    v9 = [(GKViceroyVoiceChat *)self connection];
    v13 = 0;
    v10 = [v9 convertPeerID:v7 toParticipantID:&v13];
    v11 = v13;

    if (v10)
    {
      v12 = [(GKViceroyVoiceChat *)self stateUpdateDelegate];
      [v12 stateUpdate:a4 forPlayerID:v11];
    }
  }
}

- (GKViceroyVoiceChatStateUpdateDelegate)stateUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_weakStateUpdateDelegate);

  return WeakRetained;
}

@end