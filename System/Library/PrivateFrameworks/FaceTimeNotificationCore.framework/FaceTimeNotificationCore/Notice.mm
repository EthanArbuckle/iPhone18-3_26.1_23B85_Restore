@interface Notice
- (NSString)debugDescription;
- (_TtC24FaceTimeNotificationCore6Notice)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation Notice

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  Notice.encode(with:)(v4);
}

- (NSString)debugDescription
{
  v2 = self;
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