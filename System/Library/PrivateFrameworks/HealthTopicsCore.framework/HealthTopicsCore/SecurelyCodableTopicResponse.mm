@interface SecurelyCodableTopicResponse
- (_TtC16HealthTopicsCore28SecurelyCodableTopicResponse)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SecurelyCodableTopicResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16HealthTopicsCore28SecurelyCodableTopicResponse_payload);
  v5 = *&self->payload[OBJC_IVAR____TtC16HealthTopicsCore28SecurelyCodableTopicResponse_payload];
  v6 = a3;
  v9 = self;
  v7 = sub_251F4DEDC();
  v8 = sub_251F4DF9C();
  [v6 encodeObject:v7 forKey:v8];
}

- (_TtC16HealthTopicsCore28SecurelyCodableTopicResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end