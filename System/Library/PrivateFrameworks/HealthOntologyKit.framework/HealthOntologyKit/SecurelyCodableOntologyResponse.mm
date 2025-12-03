@interface SecurelyCodableOntologyResponse
- (_TtC17HealthOntologyKit31SecurelyCodableOntologyResponse)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SecurelyCodableOntologyResponse

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17HealthOntologyKit31SecurelyCodableOntologyResponse_payload);
  v5 = *&self->payload[OBJC_IVAR____TtC17HealthOntologyKit31SecurelyCodableOntologyResponse_payload];
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_2519F08A8();
  v8 = sub_2519F0978();
  [coderCopy encodeObject:v7 forKey:v8];
}

- (_TtC17HealthOntologyKit31SecurelyCodableOntologyResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end