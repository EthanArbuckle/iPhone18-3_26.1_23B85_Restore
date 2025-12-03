@interface FMFMyLocationController
- (_TtC7FMFCore23FMFMyLocationController)init;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation FMFMyLocationController

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  managerCopy = manager;
  selfCopy = self;
  sub_24A3BEDCC(status);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_24A37B428(0, &qword_27EF40200, 0x277CE41F8);
  v6 = sub_24A4ABA70();
  managerCopy = manager;
  selfCopy = self;
  sub_24A3BF2E0(v6);
}

- (_TtC7FMFCore23FMFMyLocationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_24A45C5FC(errorCopy);
}

@end