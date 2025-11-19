@interface CNFamilyCircle
+ (id)familyCircle;
+ (id)familyCircleAsync;
@end

@implementation CNFamilyCircle

+ (id)familyCircle
{
  v2 = [a1 familyCircleAsync];
  v3 = [CNResult resultWithFuture:v2];

  return v3;
}

+ (id)familyCircleAsync
{
  v2 = objc_alloc_init(CNPromise);
  v3 = objc_alloc_init(getFAFetchFamilyCircleRequestClass());
  [v3 setPromptUserToResolveAuthenticatonFailure:0];
  v4 = [(CNPromise *)v2 completionHandlerAdapter];
  [v3 startRequestWithCompletionHandler:v4];

  v5 = [(CNPromise *)v2 future];

  return v5;
}

@end