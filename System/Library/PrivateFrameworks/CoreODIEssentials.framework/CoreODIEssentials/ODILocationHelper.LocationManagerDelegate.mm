@interface ODILocationHelper.LocationManagerDelegate
- (_TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate)init;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation ODILocationHelper.LocationManagerDelegate

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_1DAF4062C(0, &qword_1ECC0EFE8, 0x1E6985C40);
  v6 = sub_1DB09D934();
  managerCopy = manager;
  selfCopy = self;
  sub_1DAFD9A24(v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_1DAFD90D8(errorCopy);
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  managerCopy = manager;
  selfCopy = self;
  sub_1DAFDA3E4(status);
}

- (_TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end