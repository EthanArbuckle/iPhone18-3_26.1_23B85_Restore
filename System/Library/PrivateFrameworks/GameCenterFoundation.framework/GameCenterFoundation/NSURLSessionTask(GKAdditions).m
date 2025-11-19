@interface NSURLSessionTask(GKAdditions)
- (uint64_t)_gkHasValidServerURLRequest;
@end

@implementation NSURLSessionTask(GKAdditions)

- (uint64_t)_gkHasValidServerURLRequest
{
  v1 = [a1 currentRequest];
  v2 = [v1 URL];
  v3 = [v2 _gkIsValidServerURL];

  return v3;
}

@end