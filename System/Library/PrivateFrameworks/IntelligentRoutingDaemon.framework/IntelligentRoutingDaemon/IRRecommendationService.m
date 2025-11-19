@interface IRRecommendationService
+ (id)serviceWithQueue:(id)a3;
- (BOOL)shouldAcceptNewConnection:(id)a3;
- (IRRecommendationService)initWithQueue:(id)a3;
- (NSArray)machServicesNames;
@end

@implementation IRRecommendationService

- (IRRecommendationService)initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = IRRecommendationService;
  v6 = [(IRRecommendationService *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = [[IRSessionServer alloc] initWithQueue:v5];
    [(IRRecommendationService *)v7 setXpcServer:v8];
  }

  return v7;
}

+ (id)serviceWithQueue:(id)a3
{
  v3 = a3;
  v4 = [[IRRecommendationService alloc] initWithQueue:v3];

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

- (BOOL)shouldAcceptNewConnection:(id)a3
{
  v4 = a3;
  v5 = [(IRRecommendationService *)self xpcServer];
  v6 = [v5 shouldAcceptNewConnection:v4];

  return v6;
}

@end