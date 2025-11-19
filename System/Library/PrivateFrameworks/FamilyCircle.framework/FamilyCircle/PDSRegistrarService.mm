@interface PDSRegistrarService
+ (PDSRegistrarService)sharedInstance;
- (void)registerToPDS:(char)a3 usePDS:(BOOL)a4;
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

- (void)registerToPDS:(char)a3 usePDS:(BOOL)a4
{
  v6 = self;
  PDSRegistrarService.registerToPDS(_:usePDS:)(a3, a4);
}

- (void)removeRegistrationFromPDS
{
  v2 = self;
  PDSRegistrarService.removeRegistrationFromPDS()();
}

@end