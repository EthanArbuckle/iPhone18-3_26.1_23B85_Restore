@interface FAFailedFetchInfoError
+ (id)errorWithCachedFamilyCircle:(id)a3 underlyingError:(id)a4;
- (FAFailedFetchInfoError)initWithCachedFamilyCircle:(id)a3 underlyingError:(id)a4;
@end

@implementation FAFailedFetchInfoError

+ (id)errorWithCachedFamilyCircle:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 userInfo];
  v8 = [v7 mutableCopy];

  [v8 removeObjectForKey:@"NSErrorPeerCertificateChainKey"];
  [v8 removeObjectForKey:@"NSErrorClientCertificateChainKey"];
  [v8 removeObjectForKey:NSURLErrorFailingURLPeerTrustErrorKey];
  [v8 removeObjectForKey:NSUnderlyingErrorKey];
  v9 = [v5 domain];
  v10 = [v5 code];

  v11 = [NSError errorWithDomain:v9 code:v10 userInfo:v8];

  v12 = [[FAFailedFetchInfoError alloc] initWithCachedFamilyCircle:v6 underlyingError:v11];

  return v12;
}

- (FAFailedFetchInfoError)initWithCachedFamilyCircle:(id)a3 underlyingError:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 domain];
  v10 = [v8 code];
  v11 = [v8 userInfo];
  v14.receiver = self;
  v14.super_class = FAFailedFetchInfoError;
  v12 = [(FAFailedFetchInfoError *)&v14 initWithDomain:v9 code:v10 userInfo:v11];

  if (v12)
  {
    objc_storeStrong(v12 + 2, a4);
    objc_storeStrong(v12 + 1, a3);
  }

  return v12;
}

@end