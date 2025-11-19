@interface DTAssetHTTPServer
- (BOOL)startListeningWithError:(id *)a3;
- (unint64_t)port;
- (void)socket:(id)a3 didAcceptNewSocket:(id)a4;
- (void)stopListening;
@end

@implementation DTAssetHTTPServer

- (BOOL)startListeningWithError:(id *)a3
{
  v5 = dispatch_queue_create("com.apple.dt.DTAssetHTTPServer", MEMORY[0x277D85CD8]);
  [(DTAssetHTTPServer *)self setSocketDelegateQueue:v5];

  v6 = [_DT_GCDAsyncSocket alloc];
  v7 = [(DTAssetHTTPServer *)self socketDelegateQueue];
  v8 = [(_DT_GCDAsyncSocket *)v6 initWithDelegate:self delegateQueue:v7];
  [(DTAssetHTTPServer *)self setSocket:v8];

  v9 = [(DTAssetHTTPServer *)self socket];
  LOBYTE(a3) = [v9 acceptOnInterface:@"localhost" port:0 error:a3];

  return a3;
}

- (void)stopListening
{
  v2 = [(DTAssetHTTPServer *)self socket];
  [v2 disconnect];
}

- (void)socket:(id)a3 didAcceptNewSocket:(id)a4
{
  v5 = a4;
  v6 = [DTAssetHTTPRequestHandler alloc];
  v7 = [(DTAssetHTTPServer *)self channel];
  v9 = [(DTAssetHTTPRequestHandler *)v6 initWithSocket:v5 channel:v7];

  v8 = [(DTAssetHTTPServer *)self allowedResources];
  [(DTAssetHTTPRequestHandler *)v9 setAllowedResources:v8];

  [(DTAssetHTTPRequestHandler *)v9 startReading];
}

- (unint64_t)port
{
  v2 = [(DTAssetHTTPServer *)self socket];
  v3 = [v2 localPort];

  return v3;
}

@end