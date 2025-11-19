@interface FCCKDirectRequestOperationURLCache
- (void)storeCachedResponse:(id)a3 forRequest:(id)a4;
@end

@implementation FCCKDirectRequestOperationURLCache

- (void)storeCachedResponse:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 HTTPMethod];
  v9 = [v8 isEqualToString:@"GET"];

  if (v9)
  {
    v10.receiver = self;
    v10.super_class = FCCKDirectRequestOperationURLCache;
    [(NSURLCache *)&v10 storeCachedResponse:v6 forRequest:v7];
  }
}

@end