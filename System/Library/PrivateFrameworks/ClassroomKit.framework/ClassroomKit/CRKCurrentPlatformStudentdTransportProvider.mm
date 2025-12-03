@interface CRKCurrentPlatformStudentdTransportProvider
- (CRKCurrentPlatformStudentdTransportProvider)init;
- (id)makeProviderForCurrentPlatform;
@end

@implementation CRKCurrentPlatformStudentdTransportProvider

- (CRKCurrentPlatformStudentdTransportProvider)init
{
  v7.receiver = self;
  v7.super_class = CRKCurrentPlatformStudentdTransportProvider;
  v2 = [(CRKCurrentPlatformStudentdTransportProvider *)&v7 init];
  v3 = v2;
  if (v2)
  {
    makeProviderForCurrentPlatform = [(CRKCurrentPlatformStudentdTransportProvider *)v2 makeProviderForCurrentPlatform];
    mBaseProvider = v3->mBaseProvider;
    v3->mBaseProvider = makeProviderForCurrentPlatform;
  }

  return v3;
}

- (id)makeProviderForCurrentPlatform
{
  v2 = objc_opt_new();

  return v2;
}

@end