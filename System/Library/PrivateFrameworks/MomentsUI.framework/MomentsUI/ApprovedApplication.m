@interface ApprovedApplication
- (NSNumber)timestamp;
- (NSString)bundleID;
- (_TtC9MomentsUI19ApprovedApplication)init;
- (_TtC9MomentsUI19ApprovedApplication)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setBundleID:(id)a3;
- (void)setTimestamp:(id)a3;
@end

@implementation ApprovedApplication

- (NSString)bundleID
{
  v2 = (self + OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_bundleID);
  swift_beginAccess();
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;

    v5 = MEMORY[0x21CE91FC0](v4, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setBundleID:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_bundleID);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSNumber)timestamp
{
  v3 = OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_timestamp;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTimestamp:(id)a3
{
  v5 = OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_timestamp;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ApprovedApplication.encode(with:)(v4);
}

- (_TtC9MomentsUI19ApprovedApplication)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized ApprovedApplication.init(coder:)();

  return v4;
}

- (_TtC9MomentsUI19ApprovedApplication)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end