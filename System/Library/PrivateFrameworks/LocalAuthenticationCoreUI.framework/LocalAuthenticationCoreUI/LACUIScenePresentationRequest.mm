@interface LACUIScenePresentationRequest
- (LACUIScenePresentationRequest)initWithUserInterfaceRequest:(id)request;
@end

@implementation LACUIScenePresentationRequest

- (LACUIScenePresentationRequest)initWithUserInterfaceRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = LACUIScenePresentationRequest;
  v6 = [(LACUIScenePresentationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userInterfaceRequest, request);
  }

  return v7;
}

@end