@interface FMFMyLocationController
- (_TtC7FMFCore23FMFMyLocationController)init;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
@end

@implementation FMFMyLocationController

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v6 = a3;
  v7 = self;
  sub_24A3BEDCC(a4);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_24A37B428(0, &qword_27EF40200, 0x277CE41F8);
  v6 = sub_24A4ABA70();
  v7 = a3;
  v8 = self;
  sub_24A3BF2E0(v6);
}

- (_TtC7FMFCore23FMFMyLocationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_24A45C5FC(v8);
}

@end