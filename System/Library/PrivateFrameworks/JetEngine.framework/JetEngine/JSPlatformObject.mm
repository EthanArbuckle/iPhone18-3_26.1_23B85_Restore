@interface JSPlatformObject
- (_TtC9JetEngine16JSPlatformObject)init;
- (id)lookup:(id)lookup;
@end

@implementation JSPlatformObject

- (id)lookup:(id)lookup
{
  lookupCopy = lookup;
  selfCopy = self;
  v6 = sub_1AB388D58(lookupCopy);

  return v6;
}

- (_TtC9JetEngine16JSPlatformObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end