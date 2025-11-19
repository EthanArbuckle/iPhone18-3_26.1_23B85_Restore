@interface SecurelyCodableTopicRequestToken
- (NSString)description;
- (_TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SecurelyCodableTopicRequestToken

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken_payload);
  v5 = *&self->payload[OBJC_IVAR____TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken_payload];
  v6 = a3;
  v9 = self;
  v7 = sub_251F4DEDC();
  v8 = sub_251F4DF9C();
  [v6 encodeObject:v7 forKey:v8];
}

- (NSString)description
{
  swift_getObjectType();
  v3 = self;
  sub_251F4E3CC();
  MEMORY[0x2530931F0](58, 0xE100000000000000);
  v4 = TopicRequestToken.description.getter();
  MEMORY[0x2530931F0](v4);

  v5 = sub_251F4DF9C();

  return v5;
}

- (_TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end