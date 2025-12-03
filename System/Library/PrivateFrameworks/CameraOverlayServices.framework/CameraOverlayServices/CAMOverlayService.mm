@interface CAMOverlayService
+ (CAMOverlayService)sharedService;
- (id)_init;
- (id)createConnectionWithClient:(id)client queue:(id)queue;
@end

@implementation CAMOverlayService

+ (CAMOverlayService)sharedService
{
  if (sharedService_onceToken != -1)
  {
    +[CAMOverlayService sharedService];
  }

  v3 = sharedService_sharedService;

  return v3;
}

uint64_t __34__CAMOverlayService_sharedService__block_invoke()
{
  sharedService_sharedService = [[CAMOverlayService alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CAMOverlayService;
  return [(CAMOverlayService *)&v3 init];
}

- (id)createConnectionWithClient:(id)client queue:(id)queue
{
  queueCopy = queue;
  clientCopy = client;
  _activeConnection = [(CAMOverlayService *)self _activeConnection];
  v9 = [[CAMOverlayServiceConnection alloc] initWithClient:clientCopy queue:queueCopy];

  [(CAMOverlayService *)self _setActiveConnection:v9];
  if (!_activeConnection || ([_activeConnection clientQueue], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == queueCopy))
  {
    [_activeConnection invalidateWithReason:0];
  }

  else
  {
    clientQueue = [_activeConnection clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__CAMOverlayService_createConnectionWithClient_queue___block_invoke;
    block[3] = &unk_278851AF8;
    v14 = _activeConnection;
    dispatch_async(clientQueue, block);
  }

  return v9;
}

@end