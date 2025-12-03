@interface LoadingRequestHandler
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (BOOL)resourceLoader:(id)loader shouldWaitForRenewalOfRequestedResource:(id)resource;
- (BOOL)resourceLoader:(id)loader shouldWaitForResponseToAuthenticationChallenge:(id)challenge;
- (void)resourceLoader:(id)loader didCancelLoadingRequest:(id)request;
@end

@implementation LoadingRequestHandler

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  loaderCopy = loader;
  resourceCopy = resource;
  v8.super.isa = self;
  isa = v8.super.isa;
  v8._resourceLoader = resourceCopy;
  LoadingRequestHandler.resourceLoader(_:shouldWaitForLoadingOfRequestedResource:)(v8, v10);

  return 1;
}

- (void)resourceLoader:(id)loader didCancelLoadingRequest:(id)request
{
  loaderCopy = loader;
  requestCopy = request;
  v8.super.isa = self;
  isa = v8.super.isa;
  v8._resourceLoader = requestCopy;
  LoadingRequestHandler.resourceLoader(_:didCancel:)(v8, v9);
}

- (BOOL)resourceLoader:(id)loader shouldWaitForRenewalOfRequestedResource:(id)resource
{
  loaderCopy = loader;
  resourceCopy = resource;
  v8.super.isa = self;
  isa = v8.super.isa;
  v8._resourceLoader = resourceCopy;
  LoadingRequestHandler.resourceLoader(_:shouldWaitForRenewalOfRequestedResource:)(v8, v10);

  return 1;
}

- (BOOL)resourceLoader:(id)loader shouldWaitForResponseToAuthenticationChallenge:(id)challenge
{
  loaderCopy = loader;
  challengeCopy = challenge;
  v8.super.isa = self;
  isa = v8.super.isa;
  v8._resourceLoader = challengeCopy;
  LoadingRequestHandler.resourceLoader(_:shouldWaitForResponseTo:)(v8, v10);

  return 1;
}

@end