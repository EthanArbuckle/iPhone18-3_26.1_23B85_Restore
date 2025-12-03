@interface EREyeReliefConnection
+ (id)sharedConnection;
- (EREyeReliefConnection)connectionWithErrorHandler:(id)handler;
- (void)isDistanceSamplingEnabled:(id)enabled;
- (void)toggleDistanceSampling:(id)sampling;
@end

@implementation EREyeReliefConnection

+ (id)sharedConnection
{
  if (sharedConnection_once != -1)
  {
    +[EREyeReliefConnection sharedConnection];
  }

  v3 = sharedConnection_instance;

  return v3;
}

uint64_t __41__EREyeReliefConnection_sharedConnection__block_invoke()
{
  sharedConnection_instance = objc_alloc_init(EREyeReliefConnection);

  return MEMORY[0x2821F96F8]();
}

- (EREyeReliefConnection)connectionWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__EREyeReliefConnection_connectionWithErrorHandler___block_invoke;
  block[3] = &unk_278FD7C88;
  block[4] = self;
  if (connectionWithErrorHandler__onceToken != -1)
  {
    dispatch_once(&connectionWithErrorHandler__onceToken, block);
  }

  connection = [(EREyeReliefConnection *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__EREyeReliefConnection_connectionWithErrorHandler___block_invoke_6;
  v9[3] = &unk_278FD7CB0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __52__EREyeReliefConnection_connectionWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.eyereliefd" options:0];
  [*(a1 + 32) setConnection:v2];

  v3 = EREyeReliefProtocolInterface();
  v4 = [*(a1 + 32) connection];
  [v4 setRemoteObjectInterface:v3];

  v5 = [*(a1 + 32) connection];
  [v5 setInterruptionHandler:&__block_literal_global_3];

  v6 = [*(a1 + 32) connection];
  [v6 setInvalidationHandler:&__block_literal_global_10];

  v7 = [*(a1 + 32) connection];
  [v7 resume];
}

void __52__EREyeReliefConnection_connectionWithErrorHandler___block_invoke_3()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Connection interrupted"];
  [ERLogging log:v0 withType:1];
}

void __52__EREyeReliefConnection_connectionWithErrorHandler___block_invoke_5()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Connection invalidated"];
  [ERLogging log:v0 withType:1];
}

- (void)toggleDistanceSampling:(id)sampling
{
  samplingCopy = sampling;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__EREyeReliefConnection_toggleDistanceSampling___block_invoke;
  v7[3] = &unk_278FD7CB0;
  v8 = samplingCopy;
  v5 = samplingCopy;
  v6 = [(EREyeReliefConnection *)self connectionWithErrorHandler:v7];
  [v6 toggleDistanceSampling:v5];
}

void __48__EREyeReliefConnection_toggleDistanceSampling___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"toggleDistanceSampling: EREyeReliefConnection error: %@", v5];
  [ERLogging log:v3 withType:1];

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v5);
  }
}

- (void)isDistanceSamplingEnabled:(id)enabled
{
  enabledCopy = enabled;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__EREyeReliefConnection_isDistanceSamplingEnabled___block_invoke;
  v7[3] = &unk_278FD7CB0;
  v8 = enabledCopy;
  v5 = enabledCopy;
  v6 = [(EREyeReliefConnection *)self connectionWithErrorHandler:v7];
  [v6 isDistanceSamplingEnabled:v5];
}

void __51__EREyeReliefConnection_isDistanceSamplingEnabled___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"isDistanceSamplingEnabled: EREyeReliefConnection error: %@", v5];
  [ERLogging log:v3 withType:1];

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v5);
  }
}

@end