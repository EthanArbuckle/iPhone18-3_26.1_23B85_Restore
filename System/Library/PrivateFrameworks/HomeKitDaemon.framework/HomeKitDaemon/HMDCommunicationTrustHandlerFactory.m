@interface HMDCommunicationTrustHandlerFactory
+ (HMDCommunicationTrustHandlerProtocol)sharedHandler;
- (HMDCommunicationTrustHandlerFactory)init;
@end

@implementation HMDCommunicationTrustHandlerFactory

+ (HMDCommunicationTrustHandlerProtocol)sharedHandler
{
  if (qword_281402238 != -1)
  {
    swift_once();
  }

  v3 = qword_281405018;

  return v3;
}

- (HMDCommunicationTrustHandlerFactory)init
{
  v3.receiver = self;
  v3.super_class = HMDCommunicationTrustHandlerFactory;
  return [(HMDCommunicationTrustHandlerFactory *)&v3 init];
}

@end