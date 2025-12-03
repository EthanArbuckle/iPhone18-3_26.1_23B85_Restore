@interface PDSRegistrarService
+ (PDSRegistrarService)sharedInstance;
- (void)registerToPDS:(char)s usePDS:(BOOL)dS;
- (void)removeRegistrationFromPDS;
@end

@implementation PDSRegistrarService

+ (PDSRegistrarService)sharedInstance
{
  if (qword_1000B7F28 != -1)
  {
    swift_once();
  }

  v3 = static PDSRegistrarService.sharedInstance;

  return v3;
}

- (void)registerToPDS:(char)s usePDS:(BOOL)dS
{
  selfCopy = self;
  PDSRegistrarService.registerToPDS(_:usePDS:)(s, dS);
}

- (void)removeRegistrationFromPDS
{
  selfCopy = self;
  PDSRegistrarService.removeRegistrationFromPDS()();
}

@end