@interface DTAssetHTTPServer
- (BOOL)startListeningWithError:(id *)error;
- (unint64_t)port;
- (void)socket:(id)socket didAcceptNewSocket:(id)newSocket;
- (void)stopListening;
@end

@implementation DTAssetHTTPServer

- (BOOL)startListeningWithError:(id *)error
{
  v5 = dispatch_queue_create("com.apple.dt.DTAssetHTTPServer", MEMORY[0x277D85CD8]);
  [(DTAssetHTTPServer *)self setSocketDelegateQueue:v5];

  v6 = [_DT_GCDAsyncSocket alloc];
  socketDelegateQueue = [(DTAssetHTTPServer *)self socketDelegateQueue];
  v8 = [(_DT_GCDAsyncSocket *)v6 initWithDelegate:self delegateQueue:socketDelegateQueue];
  [(DTAssetHTTPServer *)self setSocket:v8];

  socket = [(DTAssetHTTPServer *)self socket];
  LOBYTE(error) = [socket acceptOnInterface:@"localhost" port:0 error:error];

  return error;
}

- (void)stopListening
{
  socket = [(DTAssetHTTPServer *)self socket];
  [socket disconnect];
}

- (void)socket:(id)socket didAcceptNewSocket:(id)newSocket
{
  newSocketCopy = newSocket;
  v6 = [DTAssetHTTPRequestHandler alloc];
  channel = [(DTAssetHTTPServer *)self channel];
  v9 = [(DTAssetHTTPRequestHandler *)v6 initWithSocket:newSocketCopy channel:channel];

  allowedResources = [(DTAssetHTTPServer *)self allowedResources];
  [(DTAssetHTTPRequestHandler *)v9 setAllowedResources:allowedResources];

  [(DTAssetHTTPRequestHandler *)v9 startReading];
}

- (unint64_t)port
{
  socket = [(DTAssetHTTPServer *)self socket];
  localPort = [socket localPort];

  return localPort;
}

@end