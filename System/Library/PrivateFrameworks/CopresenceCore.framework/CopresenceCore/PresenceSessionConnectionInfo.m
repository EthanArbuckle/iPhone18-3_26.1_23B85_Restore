@interface PresenceSessionConnectionInfo
- (NSString)description;
- (_TtC14CopresenceCore29PresenceSessionConnectionInfo)init;
- (_TtC14CopresenceCore29PresenceSessionConnectionInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PresenceSessionConnectionInfo

- (NSString)description
{
  v2 = self;
  v3 = PresenceSessionConnectionInfo.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B270FF70](v3, v5);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint);
  v7 = a3;
  v5 = self;
  v6 = MEMORY[0x1B270FF70](0x746E696F70646E65, 0xE800000000000000);
  [v7 encodeObject:v4 forKey:v6];
}

- (_TtC14CopresenceCore29PresenceSessionConnectionInfo)initWithCoder:(id)a3
{
  type metadata accessor for NSXPCListenerEndpoint();
  v5 = a3;
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v6)
  {
    *(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint) = v6;
    v9.receiver = self;
    v9.super_class = type metadata accessor for PresenceSessionConnectionInfo();
    v7 = [(PresenceSessionConnectionInfo *)&v9 init];
  }

  else
  {

    type metadata accessor for PresenceSessionConnectionInfo();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

- (_TtC14CopresenceCore29PresenceSessionConnectionInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end