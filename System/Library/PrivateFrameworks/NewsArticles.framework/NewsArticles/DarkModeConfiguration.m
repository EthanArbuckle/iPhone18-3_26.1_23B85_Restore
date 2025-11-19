@interface DarkModeConfiguration
- (BOOL)isAutoDarkModeEnabled;
- (NSDictionary)colors;
- (_TtC12NewsArticles21DarkModeConfiguration)init;
- (double)saturationThreshold;
- (unint64_t)inversionBehavior;
@end

@implementation DarkModeConfiguration

- (_TtC12NewsArticles21DarkModeConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isAutoDarkModeEnabled
{
  v2 = self;
  v3 = sub_1D7CFA4F4();

  return v3 & 1;
}

- (unint64_t)inversionBehavior
{
  swift_getObjectType();
  v3 = qword_1EE0CB4D0;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_1D7CFA9D0();

  sub_1D7D285AC();

  return v6;
}

- (double)saturationThreshold
{
  swift_getObjectType();
  v3 = qword_1EE0CB4D0;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_1D7CFA9D0();

  sub_1D7D285AC();

  return v6;
}

- (NSDictionary)colors
{
  v2 = self;
  v3 = sub_1D7CFA7F4();

  if (v3)
  {
    v4 = sub_1D7D3027C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end