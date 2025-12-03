@interface Notice
- (NSString)debugDescription;
- (_TtC24FaceTimeNotificationCore6Notice)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation Notice

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  Notice.encode(with:)(coderCopy);
}

- (NSString)debugDescription
{
  selfCopy = self;
  Notice.debugDescription.getter();

  v3 = sub_24A9FEC30();

  return v3;
}

- (_TtC24FaceTimeNotificationCore6Notice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end