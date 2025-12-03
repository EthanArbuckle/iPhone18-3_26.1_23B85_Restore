@interface WrappedAlertIdentifier
- (NSString)description;
- (_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WrappedAlertIdentifier

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  WrappedAlertIdentifier.encode(with:)(coderCopy);
}

- (NSString)description
{
  v3 = type metadata accessor for AlertIdentifier(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  sub_24A9DAA40(self + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A9FEC70();
  v6 = sub_24A9FEC30();

  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = AlertIdentifier.hashValue.getter();

  return v3;
}

- (_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end