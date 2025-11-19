@interface LocationSource
- (NSString)description;
- (_TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource)init;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation LocationSource

- (NSString)description
{
  v2 = self;
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

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_1E48D9CFC(0, &unk_1ECF813D0, 0x1E6985C40);
  v6 = sub_1E49980BC();
  v7 = a3;
  v8 = self;
  sub_1E498043C(v7, v6);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1E498A0DC(v8);
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E498A618();
}

@end