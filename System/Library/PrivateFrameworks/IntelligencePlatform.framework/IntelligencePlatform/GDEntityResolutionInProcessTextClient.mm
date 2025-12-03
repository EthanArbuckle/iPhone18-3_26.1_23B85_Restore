@interface GDEntityResolutionInProcessTextClient
- (GDEntityResolutionInProcessTextClient)initWithMode:(int64_t)mode error:(id)error;
- (id)initForMode:(int64_t)mode error:(id *)error;
- (void)resolveEntitiesForBatchRequests:(id)requests completionHandler:(id)handler;
- (void)resolveEntitiesForRequest:(id)request completionHandler:(id)handler;
- (void)warmupForMode:(int64_t)mode completionHandler:(id)handler;
@end

@implementation GDEntityResolutionInProcessTextClient

- (void)resolveEntitiesForBatchRequests:(id)requests completionHandler:(id)handler
{
  v9 = 0;
  handlerCopy = handler;
  v7 = [(GDEntityResolutionInProcessTextClient *)self resolveEntitiesForBatchRequests:requests error:&v9];
  v8 = v9;
  handlerCopy[2](handlerCopy, v7, v8);
}

- (void)resolveEntitiesForRequest:(id)request completionHandler:(id)handler
{
  v9 = 0;
  handlerCopy = handler;
  v7 = [(GDEntityResolutionInProcessTextClient *)self resolveEntitiesForRequest:request error:&v9];
  v8 = v9;
  handlerCopy[2](handlerCopy, v7, v8);
}

- (void)warmupForMode:(int64_t)mode completionHandler:(id)handler
{
  v9 = 0;
  handlerCopy = handler;
  v7 = [(GDEntityResolutionInProcessTextClient *)self warmupForMode:mode error:&v9];
  v8 = v9;
  handlerCopy[2](handlerCopy, v7, v8);
}

- (id)initForMode:(int64_t)mode error:(id *)error
{
  v10.receiver = self;
  v10.super_class = GDEntityResolutionInProcessTextClient;
  v6 = [(GDEntityResolutionInProcessTextClient *)&v10 init];
  if (v6)
  {
    v7 = [[GDEntityResolutionTextClientInner alloc] initFor:mode warmup:1 error:error];
    ecrClient = v6->ecrClient;
    v6->ecrClient = v7;
  }

  return v6;
}

- (GDEntityResolutionInProcessTextClient)initWithMode:(int64_t)mode error:(id)error
{
  v9.receiver = self;
  v9.super_class = GDEntityResolutionInProcessTextClient;
  errorCopy = error;
  v5 = [(GDEntityResolutionInProcessTextClient *)&v9 init];
  if (v5)
  {
    v6 = [[GDEntityResolutionTextClientInner alloc] initFor:mode warmup:1 error:&errorCopy];
    ecrClient = v5->ecrClient;
    v5->ecrClient = v6;
  }

  return v5;
}

@end