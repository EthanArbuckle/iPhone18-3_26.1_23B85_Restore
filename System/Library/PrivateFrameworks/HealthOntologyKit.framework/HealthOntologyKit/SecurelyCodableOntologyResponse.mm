@interface SecurelyCodableOntologyResponse
- (_TtC17HealthOntologyKit31SecurelyCodableOntologyResponse)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SecurelyCodableOntologyResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17HealthOntologyKit31SecurelyCodableOntologyResponse_payload);
  v5 = *&self->payload[OBJC_IVAR____TtC17HealthOntologyKit31SecurelyCodableOntologyResponse_payload];
  v6 = a3;
  v9 = self;
  v7 = sub_2519F08A8();
  v8 = sub_2519F0978();
  [v6 encodeObject:v7 forKey:v8];
}

- (_TtC17HealthOntologyKit31SecurelyCodableOntologyResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end