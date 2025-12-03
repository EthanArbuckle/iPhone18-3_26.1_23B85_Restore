@interface CRKAlwaysFailingTransportProvider
- (CRKAlwaysFailingTransportProvider)initWithError:(id)error;
@end

@implementation CRKAlwaysFailingTransportProvider

- (CRKAlwaysFailingTransportProvider)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = CRKAlwaysFailingTransportProvider;
  v6 = [(CRKAlwaysFailingTransportProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mError, error);
  }

  return v7;
}

@end