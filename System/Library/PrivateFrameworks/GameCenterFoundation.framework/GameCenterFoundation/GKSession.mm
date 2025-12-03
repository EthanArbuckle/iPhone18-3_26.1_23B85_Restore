@interface GKSession
- (BOOL)acceptConnectionFromPeer:(NSString *)peerID error:(NSError *)error;
- (BOOL)isAvailable;
- (BOOL)isBusy;
- (BOOL)isPeerBusy:(id)busy;
- (GKSession)initWithViceroySession:(id)session;
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
- (void)setPrivateDelegate:(id)delegate;
@end

@implementation GKSession

- (GKSession)initWithViceroySession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = GKSession;
  v6 = [(GKSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

- (id)description
{
  session = [(GKSession *)self session];
  v3 = [session description];

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
  session = [(GKSession *)self session];
  [session setDelegate:v4];
}

- (id)delegate
{
  session = [(GKSession *)self session];
  delegate = [session delegate];

  return delegate;
}

- (NSString)sessionID
{
  session = [(GKSession *)self session];
  sessionID = [session sessionID];

  return sessionID;
}

- (NSString)displayName
{
  session = [(GKSession *)self session];
  displayName = [session displayName];

  return displayName;
}

- (void)setDisconnectTimeout:(NSTimeInterval)disconnectTimeout
{
  session = [(GKSession *)self session];
  [session setDisconnectTimeout:disconnectTimeout];
}

- (NSTimeInterval)disconnectTimeout
{
  session = [(GKSession *)self session];
  [session disconnectTimeout];
  v4 = v3;

  return v4;
}

- (NSString)displayNameForPeer:(NSString *)peerID
{
  v4 = peerID;
  session = [(GKSession *)self session];
  v6 = [session displayNameForPeer:v4];

  return v6;
}

- (void)setDataReceiveHandler:(id)handler withContext:(void *)context
{
  v6 = handler;
  session = [(GKSession *)self session];
  [session setDataReceiveHandler:v6 withContext:context];
}

- (void)connectToPeer:(NSString *)peerID withTimeout:(NSTimeInterval)timeout
{
  v6 = peerID;
  session = [(GKSession *)self session];
  [session connectToPeer:v6 withTimeout:timeout];
}

- (void)cancelConnectToPeer:(NSString *)peerID
{
  v4 = peerID;
  session = [(GKSession *)self session];
  [session cancelConnectToPeer:v4];
}

- (BOOL)acceptConnectionFromPeer:(NSString *)peerID error:(NSError *)error
{
  v6 = peerID;
  session = [(GKSession *)self session];
  LOBYTE(error) = [session acceptConnectionFromPeer:v6 error:error];

  return error;
}

- (void)denyConnectionFromPeer:(NSString *)peerID
{
  v4 = peerID;
  session = [(GKSession *)self session];
  [session denyConnectionFromPeer:v4];
}

- (void)disconnectPeerFromAllPeers:(NSString *)peerID
{
  v4 = peerID;
  session = [(GKSession *)self session];
  [session disconnectPeerFromAllPeers:v4];
}

- (void)disconnectFromAllPeers
{
  session = [(GKSession *)self session];
  [session disconnectFromAllPeers];
}

- (GKSessionMode)sessionMode
{
  session = [(GKSession *)self session];
  sessionMode = [session sessionMode];

  return sessionMode;
}

- (BOOL)isAvailable
{
  session = [(GKSession *)self session];
  isAvailable = [session isAvailable];

  return isAvailable;
}

- (NSString)peerID
{
  session = [(GKSession *)self session];
  peerID = [session peerID];

  return peerID;
}

- (BOOL)isBusy
{
  session = [(GKSession *)self session];
  isBusy = [session isBusy];

  return isBusy;
}

- (BOOL)isPeerBusy:(id)busy
{
  busyCopy = busy;
  session = [(GKSession *)self session];
  v6 = [session isPeerBusy:busyCopy];

  return v6;
}

- (void)disableWifi
{
  session = [(GKSession *)self session];
  [session disableWifi];
}

- (void)setPrivateDelegate:(id)delegate
{
  delegateCopy = delegate;
  session = [(GKSession *)self session];
  [session setPrivateDelegate:delegateCopy];
}

- (id)privateDelegate
{
  session = [(GKSession *)self session];
  privateDelegate = [session privateDelegate];

  return privateDelegate;
}

- (id)privateImpl
{
  session = [(GKSession *)self session];
  viceroyInternalSession = [session viceroyInternalSession];

  return viceroyInternalSession;
}

@end