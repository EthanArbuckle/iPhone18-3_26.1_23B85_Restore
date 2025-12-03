@interface GKViceroySession
- (BOOL)acceptConnectionFromPeer:(id)peer error:(id *)error;
- (BOOL)isAvailable;
- (BOOL)isBusy;
- (BOOL)isPeerBusy:(id)busy;
- (BOOL)isWrappingGKSession:(id)session;
- (GKViceroySession)initWithConnection:(id)connection delegate:(id)delegate;
- (double)disconnectTimeout;
- (id)delegate;
- (id)description;
- (id)displayName;
- (id)displayNameForPeer:(id)peer;
- (id)peerID;
- (id)privateDelegate;
- (id)sessionID;
- (id)voiceChatWithName:(id)name players:(id)players;
- (int)sessionMode;
- (void)cancelConnectToPeer:(id)peer;
- (void)connectToPeer:(id)peer withTimeout:(double)timeout;
- (void)dealloc;
- (void)denyConnectionFromPeer:(id)peer;
- (void)disableWifi;
- (void)disconnectFromAllPeers;
- (void)disconnectPeerFromAllPeers:(id)peers;
- (void)setDataReceiveHandler:(id)handler withContext:(void *)context;
- (void)setDelegate:(id)delegate;
- (void)setDisconnectTimeout:(double)timeout;
- (void)setPrivateDelegate:(id)delegate;
@end

@implementation GKViceroySession

- (GKViceroySession)initWithConnection:(id)connection delegate:(id)delegate
{
  connectionCopy = connection;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = GKViceroySession;
  v8 = [(GKViceroySession *)&v16 init];
  if (v8)
  {
    v9 = [[GKSession alloc] initWithViceroySession:v8];
    gkSession = v8->_gkSession;
    v8->_gkSession = v9;

    v11 = objc_alloc(MEMORY[0x277D0C938]);
    gkSession = [(GKViceroySession *)v8 gkSession];
    v13 = [v11 initWithConnection:connectionCopy session:gkSession delegate:delegateCopy];
    session = v8->_session;
    v8->_session = v13;

    [(GKSessionInternal *)v8->_session setPrivateDelegate:delegateCopy];
    [(GKSessionInternal *)v8->_session setDataReceiveHandler:delegateCopy withContext:0];
  }

  return v8;
}

- (void)dealloc
{
  session = [(GKViceroySession *)self session];
  [session setDataReceiveHandler:0 withContext:0];

  session2 = [(GKViceroySession *)self session];
  [session2 setDelegate:0];

  session3 = [(GKViceroySession *)self session];
  [session3 setPrivateDelegate:0];

  session4 = [(GKViceroySession *)self session];
  [session4 reset];

  v7.receiver = self;
  v7.super_class = GKViceroySession;
  [(GKSession *)&v7 dealloc];
}

- (BOOL)isAvailable
{
  session = [(GKViceroySession *)self session];
  isAvailable = [session isAvailable];

  return isAvailable;
}

- (BOOL)isBusy
{
  session = [(GKViceroySession *)self session];
  isBusy = [session isBusy];

  return isBusy;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  session = [(GKViceroySession *)self session];
  [session setDelegate:delegateCopy];
}

- (id)delegate
{
  session = [(GKViceroySession *)self session];
  delegate = [session delegate];

  return delegate;
}

- (void)setDisconnectTimeout:(double)timeout
{
  session = [(GKViceroySession *)self session];
  [session setDisconnectTimeout:timeout];
}

- (double)disconnectTimeout
{
  session = [(GKViceroySession *)self session];
  [session disconnectTimeout];
  v4 = v3;

  return v4;
}

- (id)displayName
{
  session = [(GKViceroySession *)self session];
  displayName = [session displayName];

  return displayName;
}

- (id)description
{
  session = [(GKViceroySession *)self session];
  v3 = [session description];

  return v3;
}

- (id)peerID
{
  session = [(GKViceroySession *)self session];
  peerID = [session peerID];

  return peerID;
}

- (void)setPrivateDelegate:(id)delegate
{
  delegateCopy = delegate;
  session = [(GKViceroySession *)self session];
  [session setPrivateDelegate:delegateCopy];
}

- (id)privateDelegate
{
  session = [(GKViceroySession *)self session];
  privateDelegate = [session privateDelegate];

  return privateDelegate;
}

- (id)sessionID
{
  session = [(GKViceroySession *)self session];
  sessionID = [session sessionID];

  return sessionID;
}

- (int)sessionMode
{
  session = [(GKViceroySession *)self session];
  sessionMode = [session sessionMode];

  return sessionMode;
}

- (BOOL)acceptConnectionFromPeer:(id)peer error:(id *)error
{
  peerCopy = peer;
  session = [(GKViceroySession *)self session];
  LOBYTE(error) = [session acceptConnectionFromPeer:peerCopy error:error];

  return error;
}

- (void)cancelConnectToPeer:(id)peer
{
  peerCopy = peer;
  session = [(GKViceroySession *)self session];
  [session cancelConnectToPeer:peerCopy];
}

- (void)connectToPeer:(id)peer withTimeout:(double)timeout
{
  peerCopy = peer;
  session = [(GKViceroySession *)self session];
  [session connectToPeer:peerCopy withTimeout:timeout];
}

- (void)denyConnectionFromPeer:(id)peer
{
  peerCopy = peer;
  session = [(GKViceroySession *)self session];
  [session denyConnectionFromPeer:peerCopy];
}

- (void)disableWifi
{
  session = [(GKViceroySession *)self session];
  [session setWifiEnabled:0];
}

- (void)disconnectFromAllPeers
{
  session = [(GKViceroySession *)self session];
  [session disconnectFromAllPeers];
}

- (void)disconnectPeerFromAllPeers:(id)peers
{
  peersCopy = peers;
  session = [(GKViceroySession *)self session];
  [session disconnectPeerFromAllPeers:peersCopy];
}

- (id)displayNameForPeer:(id)peer
{
  peerCopy = peer;
  session = [(GKViceroySession *)self session];
  v6 = [session displayNameForPeer:peerCopy];

  return v6;
}

- (BOOL)isPeerBusy:(id)busy
{
  busyCopy = busy;
  session = [(GKViceroySession *)self session];
  v6 = [session isPeerBusy:busyCopy];

  return v6;
}

- (BOOL)isWrappingGKSession:(id)session
{
  sessionCopy = session;
  gkSession = [(GKViceroySession *)self gkSession];

  return gkSession == sessionCopy;
}

- (void)setDataReceiveHandler:(id)handler withContext:(void *)context
{
  handlerCopy = handler;
  session = [(GKViceroySession *)self session];
  [session setDataReceiveHandler:handlerCopy withContext:context];
}

- (id)voiceChatWithName:(id)name players:(id)players
{
  playersCopy = players;
  nameCopy = name;
  v8 = [GKViceroyVoiceChat alloc];
  session = [(GKViceroySession *)self session];
  connection = [session connection];
  gkSession = [(GKViceroySession *)self gkSession];
  v12 = [(GKViceroyVoiceChat *)v8 initWithName:nameCopy connection:connection gkSession:gkSession];

  v13 = [[GKVoiceChat alloc] initWithViceroyVoiceChat:v12 players:playersCopy];

  return v13;
}

@end