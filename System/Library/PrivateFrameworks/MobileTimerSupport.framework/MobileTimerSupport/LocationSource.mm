@interface LocationSource
- (NSString)description;
- (_TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource)init;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation LocationSource

- (NSString)description
{
  v2 = self;
  sub_22D7AC980();

  v3 = sub_22D81B2B8();

  return v3;
}

- (_TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_22D759CA0(0, &qword_27DA02E70, 0x277CE41F8);
  v6 = sub_22D81B438();
  v7 = a3;
  v8 = self;
  sub_22D7AD3E4(v7, v6);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_22D7AE7C0(v8);
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22D7AEA5C();
}

@end