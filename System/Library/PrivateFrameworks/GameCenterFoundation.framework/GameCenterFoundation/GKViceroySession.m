@interface GKViceroySession
- (BOOL)acceptConnectionFromPeer:(id)a3 error:(id *)a4;
- (BOOL)isAvailable;
- (BOOL)isBusy;
- (BOOL)isPeerBusy:(id)a3;
- (BOOL)isWrappingGKSession:(id)a3;
- (GKViceroySession)initWithConnection:(id)a3 delegate:(id)a4;
- (double)disconnectTimeout;
- (id)delegate;
- (id)description;
- (id)displayName;
- (id)displayNameForPeer:(id)a3;
- (id)peerID;
- (id)privateDelegate;
- (id)sessionID;
- (id)voiceChatWithName:(id)a3 players:(id)a4;
- (int)sessionMode;
- (void)cancelConnectToPeer:(id)a3;
- (void)connectToPeer:(id)a3 withTimeout:(double)a4;
- (void)dealloc;
- (void)denyConnectionFromPeer:(id)a3;
- (void)disableWifi;
- (void)disconnectFromAllPeers;
- (void)disconnectPeerFromAllPeers:(id)a3;
- (void)setDataReceiveHandler:(id)a3 withContext:(void *)a4;
- (void)setDelegate:(id)a3;
- (void)setDisconnectTimeout:(double)a3;
- (void)setPrivateDelegate:(id)a3;
@end

@implementation GKViceroySession

- (GKViceroySession)initWithConnection:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = GKViceroySession;
  v8 = [(GKViceroySession *)&v16 init];
  if (v8)
  {
    v9 = [[GKSession alloc] initWithViceroySession:v8];
    gkSession = v8->_gkSession;
    v8->_gkSession = v9;

    v11 = objc_alloc(MEMORY[0x277D0C938]);
    v12 = [(GKViceroySession *)v8 gkSession];
    v13 = [v11 initWithConnection:v6 session:v12 delegate:v7];
    session = v8->_session;
    v8->_session = v13;

    [(GKSessionInternal *)v8->_session setPrivateDelegate:v7];
    [(GKSessionInternal *)v8->_session setDataReceiveHandler:v7 withContext:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(GKViceroySession *)self session];
  [v3 setDataReceiveHandler:0 withContext:0];

  v4 = [(GKViceroySession *)self session];
  [v4 setDelegate:0];

  v5 = [(GKViceroySession *)self session];
  [v5 setPrivateDelegate:0];

  v6 = [(GKViceroySession *)self session];
  [v6 reset];

  v7.receiver = self;
  v7.super_class = GKViceroySession;
  [(GKSession *)&v7 dealloc];
}

- (BOOL)isAvailable
{
  v2 = [(GKViceroySession *)self session];
  v3 = [v2 isAvailable];

  return v3;
}

- (BOOL)isBusy
{
  v2 = [(GKViceroySession *)self session];
  v3 = [v2 isBusy];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroySession *)self session];
  [v5 setDelegate:v4];
}

- (id)delegate
{
  v2 = [(GKViceroySession *)self session];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDisconnectTimeout:(double)a3
{
  v4 = [(GKViceroySession *)self session];
  [v4 setDisconnectTimeout:a3];
}

- (double)disconnectTimeout
{
  v2 = [(GKViceroySession *)self session];
  [v2 disconnectTimeout];
  v4 = v3;

  return v4;
}

- (id)displayName
{
  v2 = [(GKViceroySession *)self session];
  v3 = [v2 displayName];

  return v3;
}

- (id)description
{
  v2 = [(GKViceroySession *)self session];
  v3 = [v2 description];

  return v3;
}

- (id)peerID
{
  v2 = [(GKViceroySession *)self session];
  v3 = [v2 peerID];

  return v3;
}

- (void)setPrivateDelegate:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroySession *)self session];
  [v5 setPrivateDelegate:v4];
}

- (id)privateDelegate
{
  v2 = [(GKViceroySession *)self session];
  v3 = [v2 privateDelegate];

  return v3;
}

- (id)sessionID
{
  v2 = [(GKViceroySession *)self session];
  v3 = [v2 sessionID];

  return v3;
}

- (int)sessionMode
{
  v2 = [(GKViceroySession *)self session];
  v3 = [v2 sessionMode];

  return v3;
}

- (BOOL)acceptConnectionFromPeer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GKViceroySession *)self session];
  LOBYTE(a4) = [v7 acceptConnectionFromPeer:v6 error:a4];

  return a4;
}

- (void)cancelConnectToPeer:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroySession *)self session];
  [v5 cancelConnectToPeer:v4];
}

- (void)connectToPeer:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  v7 = [(GKViceroySession *)self session];
  [v7 connectToPeer:v6 withTimeout:a4];
}

- (void)denyConnectionFromPeer:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroySession *)self session];
  [v5 denyConnectionFromPeer:v4];
}

- (void)disableWifi
{
  v2 = [(GKViceroySession *)self session];
  [v2 setWifiEnabled:0];
}

- (void)disconnectFromAllPeers
{
  v2 = [(GKViceroySession *)self session];
  [v2 disconnectFromAllPeers];
}

- (void)disconnectPeerFromAllPeers:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroySession *)self session];
  [v5 disconnectPeerFromAllPeers:v4];
}

- (id)displayNameForPeer:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroySession *)self session];
  v6 = [v5 displayNameForPeer:v4];

  return v6;
}

- (BOOL)isPeerBusy:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroySession *)self session];
  v6 = [v5 isPeerBusy:v4];

  return v6;
}

- (BOOL)isWrappingGKSession:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroySession *)self gkSession];

  return v5 == v4;
}

- (void)setDataReceiveHandler:(id)a3 withContext:(void *)a4
{
  v6 = a3;
  v7 = [(GKViceroySession *)self session];
  [v7 setDataReceiveHandler:v6 withContext:a4];
}

- (id)voiceChatWithName:(id)a3 players:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [GKViceroyVoiceChat alloc];
  v9 = [(GKViceroySession *)self session];
  v10 = [v9 connection];
  v11 = [(GKViceroySession *)self gkSession];
  v12 = [(GKViceroyVoiceChat *)v8 initWithName:v7 connection:v10 gkSession:v11];

  v13 = [[GKVoiceChat alloc] initWithViceroyVoiceChat:v12 players:v6];

  return v13;
}

@end