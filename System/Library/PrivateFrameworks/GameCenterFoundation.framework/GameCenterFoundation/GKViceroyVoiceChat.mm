@interface GKViceroyVoiceChat
- (BOOL)isActive;
- (GKViceroyVoiceChat)initWithName:(id)name connection:(id)connection gkSession:(id)session;
- (GKViceroyVoiceChatStateUpdateDelegate)stateUpdateDelegate;
- (NSString)name;
- (float)volume;
- (void)dealloc;
- (void)gkVoiceChatSession:(id)session stateUpdate:(unint64_t)update forPeer:(id)peer;
- (void)setVolume:(float)volume;
- (void)start;
- (void)stop;
@end

@implementation GKViceroyVoiceChat

- (GKViceroyVoiceChat)initWithName:(id)name connection:(id)connection gkSession:(id)session
{
  nameCopy = name;
  connectionCopy = connection;
  sessionCopy = session;
  v16.receiver = self;
  v16.super_class = GKViceroyVoiceChat;
  v11 = [(GKViceroyVoiceChat *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_connection, connection);
    v13 = [objc_alloc(MEMORY[0x277D0C948]) initWithGKSession:sessionCopy sessionName:nameCopy];
    voiceChatSession = v12->_voiceChatSession;
    v12->_voiceChatSession = v13;

    [(GKVoiceChatSession *)v12->_voiceChatSession setDelegate:v12];
  }

  return v12;
}

- (void)dealloc
{
  voiceChatSession = [(GKViceroyVoiceChat *)self voiceChatSession];
  [voiceChatSession setDelegate:0];

  v4.receiver = self;
  v4.super_class = GKViceroyVoiceChat;
  [(GKViceroyVoiceChat *)&v4 dealloc];
}

- (NSString)name
{
  voiceChatSession = [(GKViceroyVoiceChat *)self voiceChatSession];
  sessionName = [voiceChatSession sessionName];

  return sessionName;
}

- (BOOL)isActive
{
  voiceChatSession = [(GKViceroyVoiceChat *)self voiceChatSession];
  isActiveSession = [voiceChatSession isActiveSession];

  return isActiveSession;
}

- (void)setVolume:(float)volume
{
  voiceChatSession = [(GKViceroyVoiceChat *)self voiceChatSession];
  *&v4 = volume;
  [voiceChatSession setSessionVolume:v4];
}

- (float)volume
{
  voiceChatSession = [(GKViceroyVoiceChat *)self voiceChatSession];
  [voiceChatSession sessionVolume];
  v4 = v3;

  return v4;
}

- (void)start
{
  voiceChatSession = [(GKViceroyVoiceChat *)self voiceChatSession];
  [voiceChatSession startSession];
}

- (void)stop
{
  voiceChatSession = [(GKViceroyVoiceChat *)self voiceChatSession];
  [voiceChatSession stopSession];
}

- (void)gkVoiceChatSession:(id)session stateUpdate:(unint64_t)update forPeer:(id)peer
{
  peerCopy = peer;
  stateUpdateDelegate = [(GKViceroyVoiceChat *)self stateUpdateDelegate];

  if (stateUpdateDelegate)
  {
    connection = [(GKViceroyVoiceChat *)self connection];
    v13 = 0;
    v10 = [connection convertPeerID:peerCopy toParticipantID:&v13];
    v11 = v13;

    if (v10)
    {
      stateUpdateDelegate2 = [(GKViceroyVoiceChat *)self stateUpdateDelegate];
      [stateUpdateDelegate2 stateUpdate:update forPlayerID:v11];
    }
  }
}

- (GKViceroyVoiceChatStateUpdateDelegate)stateUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_weakStateUpdateDelegate);

  return WeakRetained;
}

@end