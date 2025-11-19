@interface LACUIScenePresentationRequest
- (LACUIScenePresentationRequest)initWithUserInterfaceRequest:(id)a3;
@end

@implementation LACUIScenePresentationRequest

- (LACUIScenePresentationRequest)initWithUserInterfaceRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACUIScenePresentationRequest;
  v6 = [(LACUIScenePresentationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userInterfaceRequest, a3);
  }

  return v7;
}

@end