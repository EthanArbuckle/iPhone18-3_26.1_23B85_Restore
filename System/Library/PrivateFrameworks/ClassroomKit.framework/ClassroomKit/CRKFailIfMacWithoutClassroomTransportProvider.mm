@interface CRKFailIfMacWithoutClassroomTransportProvider
- (CRKFailIfMacWithoutClassroomTransportProvider)initWithTransportProvider:(id)a3;
@end

@implementation CRKFailIfMacWithoutClassroomTransportProvider

- (CRKFailIfMacWithoutClassroomTransportProvider)initWithTransportProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKFailIfMacWithoutClassroomTransportProvider;
  v6 = [(CRKFailIfMacWithoutClassroomTransportProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mBaseProvider, a3);
  }

  return v7;
}

@end