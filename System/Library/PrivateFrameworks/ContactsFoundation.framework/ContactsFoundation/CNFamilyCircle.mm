@interface CNFamilyCircle
+ (id)familyCircle;
+ (id)familyCircleAsync;
@end

@implementation CNFamilyCircle

+ (id)familyCircle
{
  familyCircleAsync = [self familyCircleAsync];
  v3 = [CNResult resultWithFuture:familyCircleAsync];

  return v3;
}

+ (id)familyCircleAsync
{
  v2 = objc_alloc_init(CNPromise);
  v3 = objc_alloc_init(getFAFetchFamilyCircleRequestClass());
  [v3 setPromptUserToResolveAuthenticatonFailure:0];
  completionHandlerAdapter = [(CNPromise *)v2 completionHandlerAdapter];
  [v3 startRequestWithCompletionHandler:completionHandlerAdapter];

  future = [(CNPromise *)v2 future];

  return future;
}

@end