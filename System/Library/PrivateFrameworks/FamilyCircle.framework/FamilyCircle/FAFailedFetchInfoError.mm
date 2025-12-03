@interface FAFailedFetchInfoError
+ (id)errorWithCachedFamilyCircle:(id)circle underlyingError:(id)error;
- (FAFailedFetchInfoError)initWithCachedFamilyCircle:(id)circle underlyingError:(id)error;
@end

@implementation FAFailedFetchInfoError

+ (id)errorWithCachedFamilyCircle:(id)circle underlyingError:(id)error
{
  errorCopy = error;
  circleCopy = circle;
  userInfo = [errorCopy userInfo];
  v8 = [userInfo mutableCopy];

  [v8 removeObjectForKey:@"NSErrorPeerCertificateChainKey"];
  [v8 removeObjectForKey:@"NSErrorClientCertificateChainKey"];
  [v8 removeObjectForKey:NSURLErrorFailingURLPeerTrustErrorKey];
  [v8 removeObjectForKey:NSUnderlyingErrorKey];
  domain = [errorCopy domain];
  code = [errorCopy code];

  v11 = [NSError errorWithDomain:domain code:code userInfo:v8];

  v12 = [[FAFailedFetchInfoError alloc] initWithCachedFamilyCircle:circleCopy underlyingError:v11];

  return v12;
}

- (FAFailedFetchInfoError)initWithCachedFamilyCircle:(id)circle underlyingError:(id)error
{
  circleCopy = circle;
  errorCopy = error;
  domain = [errorCopy domain];
  code = [errorCopy code];
  userInfo = [errorCopy userInfo];
  v14.receiver = self;
  v14.super_class = FAFailedFetchInfoError;
  v12 = [(FAFailedFetchInfoError *)&v14 initWithDomain:domain code:code userInfo:userInfo];

  if (v12)
  {
    objc_storeStrong(v12 + 2, error);
    objc_storeStrong(v12 + 1, circle);
  }

  return v12;
}

@end