@interface GKSession
- (BOOL)acceptConnectionFromPeer:(NSString *)peerID error:(NSError *)error;
- (BOOL)isAvailable;
- (BOOL)isBusy;
- (BOOL)isPeerBusy:(id)a3;
- (GKSession)initWithViceroySession:(id)a3;
- (GKSessionMode)sessionMode;
- (NSString)displayName;
- (NSString)displayNameForPeer:(NSString *)peerID;
- (NSString)peerID;
- (NSString)sessionID;
- (NSTimeInterval)disconnectTimeout;
- (id)delegate;
- (id)description;
- (id)privateDelegate;
- (id)privateImpl;
- (void)cancelConnectToPeer:(NSString *)peerID;
- (void)connectToPeer:(NSString *)peerID withTimeout:(NSTimeInterval)timeout;
- (void)dealloc;
- (void)denyConnectionFromPeer:(NSString *)peerID;
- (void)disableWifi;
- (void)disconnectFromAllPeers;
- (void)disconnectPeerFromAllPeers:(NSString *)peerID;
- (void)setDataReceiveHandler:(id)handler withContext:(void *)context;
- (void)setDelegate:(id)delegate;
- (void)setDisconnectTimeout:(NSTimeInterval)disconnectTimeout;
- (void)setPrivateDelegate:(id)a3;
@end

@implementation GKSession

- (GKSession)initWithViceroySession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GKSession;
  v6 = [(GKSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
  }

  return v7;
}

- (id)description
{
  v2 = [(GKSession *)self session];
  v3 = [v2 description];

  return v3;
}

- (void)dealloc
{
  [(GKSession *)self setSession:0];
  v3.receiver = self;
  v3.super_class = GKSession;
  [(GKSession *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  v5 = [(GKSession *)self session];
  [v5 setDelegate:v4];
}

- (id)delegate
{
  v2 = [(GKSession *)self session];
  v3 = [v2 delegate];

  return v3;
}

- (NSString)sessionID
{
  v2 = [(GKSession *)self session];
  v3 = [v2 sessionID];

  return v3;
}

- (NSString)displayName
{
  v2 = [(GKSession *)self session];
  v3 = [v2 displayName];

  return v3;
}

- (void)setDisconnectTimeout:(NSTimeInterval)disconnectTimeout
{
  v4 = [(GKSession *)self session];
  [v4 setDisconnectTimeout:disconnectTimeout];
}

- (NSTimeInterval)disconnectTimeout
{
  v2 = [(GKSession *)self session];
  [v2 disconnectTimeout];
  v4 = v3;

  return v4;
}

- (NSString)displayNameForPeer:(NSString *)peerID
{
  v4 = peerID;
  v5 = [(GKSession *)self session];
  v6 = [v5 displayNameForPeer:v4];

  return v6;
}

- (void)setDataReceiveHandler:(id)handler withContext:(void *)context
{
  v6 = handler;
  v7 = [(GKSession *)self session];
  [v7 setDataReceiveHandler:v6 withContext:context];
}

- (void)connectToPeer:(NSString *)peerID withTimeout:(NSTimeInterval)timeout
{
  v6 = peerID;
  v7 = [(GKSession *)self session];
  [v7 connectToPeer:v6 withTimeout:timeout];
}

- (void)cancelConnectToPeer:(NSString *)peerID
{
  v4 = peerID;
  v5 = [(GKSession *)self session];
  [v5 cancelConnectToPeer:v4];
}

- (BOOL)acceptConnectionFromPeer:(NSString *)peerID error:(NSError *)error
{
  v6 = peerID;
  v7 = [(GKSession *)self session];
  LOBYTE(error) = [v7 acceptConnectionFromPeer:v6 error:error];

  return error;
}

- (void)denyConnectionFromPeer:(NSString *)peerID
{
  v4 = peerID;
  v5 = [(GKSession *)self session];
  [v5 denyConnectionFromPeer:v4];
}

- (void)disconnectPeerFromAllPeers:(NSString *)peerID
{
  v4 = peerID;
  v5 = [(GKSession *)self session];
  [v5 disconnectPeerFromAllPeers:v4];
}

- (void)disconnectFromAllPeers
{
  v2 = [(GKSession *)self session];
  [v2 disconnectFromAllPeers];
}

- (GKSessionMode)sessionMode
{
  v2 = [(GKSession *)self session];
  v3 = [v2 sessionMode];

  return v3;
}

- (BOOL)isAvailable
{
  v2 = [(GKSession *)self session];
  v3 = [v2 isAvailable];

  return v3;
}

- (NSString)peerID
{
  v2 = [(GKSession *)self session];
  v3 = [v2 peerID];

  return v3;
}

- (BOOL)isBusy
{
  v2 = [(GKSession *)self session];
  v3 = [v2 isBusy];

  return v3;
}

- (BOOL)isPeerBusy:(id)a3
{
  v4 = a3;
  v5 = [(GKSession *)self session];
  v6 = [v5 isPeerBusy:v4];

  return v6;
}

- (void)disableWifi
{
  v2 = [(GKSession *)self session];
  [v2 disableWifi];
}

- (void)setPrivateDelegate:(id)a3
{
  v4 = a3;
  v5 = [(GKSession *)self session];
  [v5 setPrivateDelegate:v4];
}

- (id)privateDelegate
{
  v2 = [(GKSession *)self session];
  v3 = [v2 privateDelegate];

  return v3;
}

- (id)privateImpl
{
  v2 = [(GKSession *)self session];
  v3 = [v2 viceroyInternalSession];

  return v3;
}

@end