@interface HMDFMFHandlerFactory
+ (HMDFMFHandlerProtocol)sharedHandler;
- (HMDFMFHandlerFactory)init;
@end

@implementation HMDFMFHandlerFactory

+ (HMDFMFHandlerProtocol)sharedHandler
{
  if (qword_2815314D0 != -1)
  {
    swift_once();
  }

  return v2;
}

- (HMDFMFHandlerFactory)init
{
  v3.receiver = self;
  v3.super_class = HMDFMFHandlerFactory;
  return [(HMDFMFHandlerFactory *)&v3 init];
}

@end