@interface GDEntityResolutionInProcessTextClient
- (GDEntityResolutionInProcessTextClient)initWithMode:(int64_t)a3 error:(id)a4;
- (id)initForMode:(int64_t)a3 error:(id *)a4;
- (void)resolveEntitiesForBatchRequests:(id)a3 completionHandler:(id)a4;
- (void)resolveEntitiesForRequest:(id)a3 completionHandler:(id)a4;
- (void)warmupForMode:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation GDEntityResolutionInProcessTextClient

- (void)resolveEntitiesForBatchRequests:(id)a3 completionHandler:(id)a4
{
  v9 = 0;
  v6 = a4;
  v7 = [(GDEntityResolutionInProcessTextClient *)self resolveEntitiesForBatchRequests:a3 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (void)resolveEntitiesForRequest:(id)a3 completionHandler:(id)a4
{
  v9 = 0;
  v6 = a4;
  v7 = [(GDEntityResolutionInProcessTextClient *)self resolveEntitiesForRequest:a3 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (void)warmupForMode:(int64_t)a3 completionHandler:(id)a4
{
  v9 = 0;
  v6 = a4;
  v7 = [(GDEntityResolutionInProcessTextClient *)self warmupForMode:a3 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (id)initForMode:(int64_t)a3 error:(id *)a4
{
  v10.receiver = self;
  v10.super_class = GDEntityResolutionInProcessTextClient;
  v6 = [(GDEntityResolutionInProcessTextClient *)&v10 init];
  if (v6)
  {
    v7 = [[GDEntityResolutionTextClientInner alloc] initFor:a3 warmup:1 error:a4];
    ecrClient = v6->ecrClient;
    v6->ecrClient = v7;
  }

  return v6;
}

- (GDEntityResolutionInProcessTextClient)initWithMode:(int64_t)a3 error:(id)a4
{
  v9.receiver = self;
  v9.super_class = GDEntityResolutionInProcessTextClient;
  v10 = a4;
  v5 = [(GDEntityResolutionInProcessTextClient *)&v9 init];
  if (v5)
  {
    v6 = [[GDEntityResolutionTextClientInner alloc] initFor:a3 warmup:1 error:&v10];
    ecrClient = v5->ecrClient;
    v5->ecrClient = v6;
  }

  return v5;
}

@end