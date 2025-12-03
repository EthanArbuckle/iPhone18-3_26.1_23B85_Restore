@interface CRKTaskClientBackedRequestPerformer
- (CRKTaskClientBackedRequestPerformer)initWithTaskClient:(id)client;
- (id)operationForRequest:(id)request;
@end

@implementation CRKTaskClientBackedRequestPerformer

- (CRKTaskClientBackedRequestPerformer)initWithTaskClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = CRKTaskClientBackedRequestPerformer;
  v6 = [(CRKTaskClientBackedRequestPerformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskClient, client);
  }

  return v7;
}

- (id)operationForRequest:(id)request
{
  requestCopy = request;
  taskClient = [(CRKTaskClientBackedRequestPerformer *)self taskClient];
  v6 = [taskClient prepareTaskOperationForRequest:requestCopy];

  return v6;
}

@end