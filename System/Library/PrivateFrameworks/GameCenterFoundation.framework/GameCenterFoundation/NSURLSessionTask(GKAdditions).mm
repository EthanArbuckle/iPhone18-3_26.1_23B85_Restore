@interface NSURLSessionTask(GKAdditions)
- (uint64_t)_gkHasValidServerURLRequest;
@end

@implementation NSURLSessionTask(GKAdditions)

- (uint64_t)_gkHasValidServerURLRequest
{
  currentRequest = [self currentRequest];
  v2 = [currentRequest URL];
  _gkIsValidServerURL = [v2 _gkIsValidServerURL];

  return _gkIsValidServerURL;
}

@end