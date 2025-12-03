@interface LocationSource
- (NSString)description;
- (_TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource)init;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation LocationSource

- (NSString)description
{
  selfCopy = self;
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

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_22D759CA0(0, &qword_27DA02E70, 0x277CE41F8);
  v6 = sub_22D81B438();
  managerCopy = manager;
  selfCopy = self;
  sub_22D7AD3E4(managerCopy, v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_22D7AE7C0(errorCopy);
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_22D7AEA5C();
}

@end