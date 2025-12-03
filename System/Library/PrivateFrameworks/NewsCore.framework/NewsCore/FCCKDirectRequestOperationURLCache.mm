@interface FCCKDirectRequestOperationURLCache
- (void)storeCachedResponse:(id)response forRequest:(id)request;
@end

@implementation FCCKDirectRequestOperationURLCache

- (void)storeCachedResponse:(id)response forRequest:(id)request
{
  responseCopy = response;
  requestCopy = request;
  hTTPMethod = [requestCopy HTTPMethod];
  v9 = [hTTPMethod isEqualToString:@"GET"];

  if (v9)
  {
    v10.receiver = self;
    v10.super_class = FCCKDirectRequestOperationURLCache;
    [(NSURLCache *)&v10 storeCachedResponse:responseCopy forRequest:requestCopy];
  }
}

@end