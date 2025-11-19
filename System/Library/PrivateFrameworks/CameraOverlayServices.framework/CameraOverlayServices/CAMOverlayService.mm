@interface CAMOverlayService
+ (CAMOverlayService)sharedService;
- (id)_init;
- (id)createConnectionWithClient:(id)a3 queue:(id)a4;
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

- (id)createConnectionWithClient:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CAMOverlayService *)self _activeConnection];
  v9 = [[CAMOverlayServiceConnection alloc] initWithClient:v7 queue:v6];

  [(CAMOverlayService *)self _setActiveConnection:v9];
  if (!v8 || ([v8 clientQueue], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == v6))
  {
    [v8 invalidateWithReason:0];
  }

  else
  {
    v11 = [v8 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__CAMOverlayService_createConnectionWithClient_queue___block_invoke;
    block[3] = &unk_278851AF8;
    v14 = v8;
    dispatch_async(v11, block);
  }

  return v9;
}

@end