@interface LoadingRequestHandler
- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4;
- (BOOL)resourceLoader:(id)a3 shouldWaitForRenewalOfRequestedResource:(id)a4;
- (BOOL)resourceLoader:(id)a3 shouldWaitForResponseToAuthenticationChallenge:(id)a4;
- (void)resourceLoader:(id)a3 didCancelLoadingRequest:(id)a4;
@end

@implementation LoadingRequestHandler

- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8.super.isa = self;
  isa = v8.super.isa;
  v8._resourceLoader = v7;
  LoadingRequestHandler.resourceLoader(_:shouldWaitForLoadingOfRequestedResource:)(v8, v10);

  return 1;
}

- (void)resourceLoader:(id)a3 didCancelLoadingRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8.super.isa = self;
  isa = v8.super.isa;
  v8._resourceLoader = v7;
  LoadingRequestHandler.resourceLoader(_:didCancel:)(v8, v9);
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForRenewalOfRequestedResource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8.super.isa = self;
  isa = v8.super.isa;
  v8._resourceLoader = v7;
  LoadingRequestHandler.resourceLoader(_:shouldWaitForRenewalOfRequestedResource:)(v8, v10);

  return 1;
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForResponseToAuthenticationChallenge:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8.super.isa = self;
  isa = v8.super.isa;
  v8._resourceLoader = v7;
  LoadingRequestHandler.resourceLoader(_:shouldWaitForResponseTo:)(v8, v10);

  return 1;
}

@end