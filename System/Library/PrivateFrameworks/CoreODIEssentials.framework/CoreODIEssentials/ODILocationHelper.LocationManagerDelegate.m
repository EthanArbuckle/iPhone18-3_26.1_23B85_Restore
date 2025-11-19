@interface ODILocationHelper.LocationManagerDelegate
- (_TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate)init;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
@end

@implementation ODILocationHelper.LocationManagerDelegate

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_1DAF4062C(0, &qword_1ECC0EFE8, 0x1E6985C40);
  v6 = sub_1DB09D934();
  v7 = a3;
  v8 = self;
  sub_1DAFD9A24(v6);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1DAFD90D8(v8);
}

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v6 = a3;
  v7 = self;
  sub_1DAFDA3E4(a4);
}

- (_TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end