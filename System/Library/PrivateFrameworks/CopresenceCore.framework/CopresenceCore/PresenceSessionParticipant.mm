@interface PresenceSessionParticipant
- (NSString)description;
- (_TtC14CopresenceCore26PresenceSessionParticipant)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PresenceSessionParticipant

- (NSString)description
{
  v2 = self;
  v3 = PresenceSessionParticipant.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B270FF70](v3, v5);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  PresenceSessionParticipant.encode(with:)(v4);
}

- (_TtC14CopresenceCore26PresenceSessionParticipant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end