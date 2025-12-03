@interface IRRecommendationService
+ (id)serviceWithQueue:(id)queue;
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (IRRecommendationService)initWithQueue:(id)queue;
- (NSArray)machServicesNames;
@end

@implementation IRRecommendationService

- (IRRecommendationService)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = IRRecommendationService;
  v6 = [(IRRecommendationService *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [[IRSessionServer alloc] initWithQueue:queueCopy];
    [(IRRecommendationService *)v7 setXpcServer:v8];
  }

  return v7;
}

+ (id)serviceWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[IRRecommendationService alloc] initWithQueue:queueCopy];

  return v4;
}

- (NSArray)machServicesNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.intelligentroutingd.xpc.media";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  xpcServer = [(IRRecommendationService *)self xpcServer];
  v6 = [xpcServer shouldAcceptNewConnection:connectionCopy];

  return v6;
}

@end