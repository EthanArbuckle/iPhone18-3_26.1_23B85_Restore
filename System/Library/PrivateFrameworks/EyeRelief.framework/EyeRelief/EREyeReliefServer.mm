@interface EREyeReliefServer
+ (id)sharedServer;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (EREyeReliefServer)init;
- (void)isDistanceSamplingEnabled:(id)enabled;
- (void)startServer;
- (void)toggleDistanceSampling:(id)sampling;
@end

@implementation EREyeReliefServer

+ (id)sharedServer
{
  if (sharedServer_once != -1)
  {
    +[EREyeReliefServer sharedServer];
  }

  v3 = sharedServer_instance;

  return v3;
}

uint64_t __33__EREyeReliefServer_sharedServer__block_invoke()
{
  sharedServer_instance = objc_alloc_init(EREyeReliefServer);

  return MEMORY[0x2821F96F8]();
}

- (EREyeReliefServer)init
{
  v6.receiver = self;
  v6.super_class = EREyeReliefServer;
  v2 = [(EREyeReliefServer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(EREyeReliefServer *)v2 setClientConnections:v3];

    v4 = dispatch_queue_create("com.apple.eyerelief.connectionqueue", 0);
    [(EREyeReliefServer *)v2 setConnectionQueue:v4];
  }

  return v2;
}

- (void)startServer
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Starting up server"];
  [ERLogging log:v3 withType:3];

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.eyereliefd"];
  [(EREyeReliefServer *)self setListener:v4];

  listener = [(EREyeReliefServer *)self listener];
  [listener setDelegate:self];

  listener2 = [(EREyeReliefServer *)self listener];
  [listener2 resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v9 = [connectionCopy valueForEntitlement:@"com.apple.eyerelief.distancesampling"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = EREyeReliefProtocolInterface();
    [connectionCopy setExportedInterface:v11];

    [connectionCopy setExportedObject:self];
    connectionQueue = [(EREyeReliefServer *)self connectionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__EREyeReliefServer_listener_shouldAcceptNewConnection___block_invoke;
    block[3] = &unk_278FD7C30;
    v22 = processIdentifier;
    block[4] = self;
    v13 = connectionCopy;
    v21 = v13;
    dispatch_async(connectionQueue, block);

    objc_initWeak(&location, v13);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__EREyeReliefServer_listener_shouldAcceptNewConnection___block_invoke_2;
    v16[3] = &unk_278FD7C58;
    v16[4] = self;
    v18 = processIdentifier;
    objc_copyWeak(&v17, &location);
    [v13 setInvalidationHandler:v16];
    [v13 resume];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Rejecting client connection from pid %d: Client not permitted to activate distance sampling.", processIdentifier];
    [ERLogging log:v14 withType:1];
  }

  return bOOLValue;
}

void __56__EREyeReliefServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Adding client connection from pid %d", *(a1 + 48)];
  [ERLogging log:v2 withType:3];

  v3 = [*(a1 + 32) clientConnections];
  [v3 addObject:*(a1 + 40)];
}

void __56__EREyeReliefServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__EREyeReliefServer_listener_shouldAcceptNewConnection___block_invoke_3;
  block[3] = &unk_278FD7C58;
  v5 = *(a1 + 48);
  block[4] = *(a1 + 32);
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __56__EREyeReliefServer_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Removing client connection from pid %d", *(a1 + 48)];
  [ERLogging log:v2 withType:3];

  v4 = [*(a1 + 32) clientConnections];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v4 removeObject:WeakRetained];
}

- (void)toggleDistanceSampling:(id)sampling
{
  samplingCopy = sampling;
  distanceSamplingToggleHandler = [(EREyeReliefServer *)self distanceSamplingToggleHandler];

  if (distanceSamplingToggleHandler)
  {
    distanceSamplingToggleHandler2 = [(EREyeReliefServer *)self distanceSamplingToggleHandler];
    distanceSamplingToggleHandler2[2]();
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"distanceSamplingStatusHandler was nil"];
    [ERLogging log:v6 withType:3];
  }

  v7 = samplingCopy;
  if (samplingCopy)
  {
    (*(samplingCopy + 2))(samplingCopy, distanceSamplingToggleHandler != 0, 0);
    v7 = samplingCopy;
  }
}

- (void)isDistanceSamplingEnabled:(id)enabled
{
  enabledCopy = enabled;
  isDistanceSamplingEnabledHandler = [(EREyeReliefServer *)self isDistanceSamplingEnabledHandler];

  if (!isDistanceSamplingEnabledHandler)
  {
    v7 = enabledCopy;
    if (!enabledCopy)
    {
      goto LABEL_7;
    }

    v6 = 0;
    goto LABEL_6;
  }

  isDistanceSamplingEnabledHandler2 = [(EREyeReliefServer *)self isDistanceSamplingEnabledHandler];
  v6 = isDistanceSamplingEnabledHandler2[2]();

  v7 = enabledCopy;
  if (enabledCopy)
  {
LABEL_6:
    (v7)[2](enabledCopy, v6, 0);
    v7 = enabledCopy;
  }

LABEL_7:
}

@end