@interface MOAnalyticsManager
+ (id)defaultManager;
- (MOAnalyticsManager)init;
- (id)context;
- (id)makeNewConnectionWithInterfaceFor:(id)for;
- (void)fetchPhotoAnalyticsMetricsWithHandler:(id)handler;
@end

@implementation MOAnalyticsManager

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[MOAnalyticsManager defaultManager];
  }

  v3 = defaultManager_analyticsManager;

  return v3;
}

uint64_t __36__MOAnalyticsManager_defaultManager__block_invoke()
{
  defaultManager_analyticsManager = objc_alloc_init(MOAnalyticsManager);

  return MEMORY[0x2821F96F8]();
}

- (MOAnalyticsManager)init
{
  v6.receiver = self;
  v6.super_class = MOAnalyticsManager;
  v2 = [(MOAnalyticsManager *)&v6 init];
  if (v2)
  {
    v3 = [[MOConnectionManager alloc] initWithName:@"MOPromptManager" usingDelegate:v2];
    connectionManager = v2->connectionManager;
    v2->connectionManager = v3;
  }

  return v2;
}

- (id)context
{
  v2 = objc_alloc_init(MOXPCContext);

  return v2;
}

- (void)fetchPhotoAnalyticsMetricsWithHandler:(id)handler
{
  handlerCopy = handler;
  NSLog(&cfstr_CallingFunctio.isa);
  connectionManager = self->connectionManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__MOAnalyticsManager_fetchPhotoAnalyticsMetricsWithHandler___block_invoke;
  v9[3] = &unk_278773620;
  v9[4] = self;
  v10 = handlerCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__MOAnalyticsManager_fetchPhotoAnalyticsMetricsWithHandler___block_invoke_3;
  v7[3] = &unk_278773648;
  v8 = v10;
  v6 = v10;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v9 onError:v7];
}

void __60__MOAnalyticsManager_fetchPhotoAnalyticsMetricsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__MOAnalyticsManager_fetchPhotoAnalyticsMetricsWithHandler___block_invoke_2;
  v10[3] = &unk_2787735F8;
  v11 = v5;
  v12 = *(a1 + 40);
  v9 = v5;
  [v7 fetchPhotoAnalyticsMetricsWithContext:v8 andHandler:v10];
}

void __60__MOAnalyticsManager_fetchPhotoAnalyticsMetricsWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v7, v5);
    }
  }
}

uint64_t __60__MOAnalyticsManager_fetchPhotoAnalyticsMetricsWithHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (id)makeNewConnectionWithInterfaceFor:(id)for
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.momentsd" options:0];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284110420];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  [v4 setClasses:v10 forSelector:sel_fetchPhotoAnalyticsMetricsWithContext_andHandler_ argumentIndex:0 ofReply:1];

  [v3 setRemoteObjectInterface:v4];

  return v3;
}

@end