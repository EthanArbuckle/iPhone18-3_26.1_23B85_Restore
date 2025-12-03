@interface JSCookieProviderObject
- (_TtC9JetEngine22JSCookieProviderObject)init;
- (id)cookieForUrlWithName:(id)name :(id)a4;
@end

@implementation JSCookieProviderObject

- (id)cookieForUrlWithName:(id)name :(id)a4
{
  nameCopy = name;
  v7 = a4;
  selfCopy = self;
  v9 = sub_1AB2D199C(nameCopy, v7);

  return v9;
}

- (_TtC9JetEngine22JSCookieProviderObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end