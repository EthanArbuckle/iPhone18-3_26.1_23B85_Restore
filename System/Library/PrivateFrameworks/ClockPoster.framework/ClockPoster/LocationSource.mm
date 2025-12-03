@interface LocationSource
- (NSString)description;
- (_TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource)init;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation LocationSource

- (NSString)description
{
  selfCopy = self;
  sub_1E497F61C();

  v3 = sub_1E4997EAC();

  return v3;
}

- (_TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_1E48D9CFC(0, &unk_1ECF813D0, 0x1E6985C40);
  v6 = sub_1E49980BC();
  managerCopy = manager;
  selfCopy = self;
  sub_1E498043C(managerCopy, v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_1E498A0DC(errorCopy);
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_1E498A618();
}

@end