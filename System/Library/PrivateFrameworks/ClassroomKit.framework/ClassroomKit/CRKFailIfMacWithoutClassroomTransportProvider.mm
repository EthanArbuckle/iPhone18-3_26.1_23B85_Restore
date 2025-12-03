@interface CRKFailIfMacWithoutClassroomTransportProvider
- (CRKFailIfMacWithoutClassroomTransportProvider)initWithTransportProvider:(id)provider;
@end

@implementation CRKFailIfMacWithoutClassroomTransportProvider

- (CRKFailIfMacWithoutClassroomTransportProvider)initWithTransportProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CRKFailIfMacWithoutClassroomTransportProvider;
  v6 = [(CRKFailIfMacWithoutClassroomTransportProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mBaseProvider, provider);
  }

  return v7;
}

@end