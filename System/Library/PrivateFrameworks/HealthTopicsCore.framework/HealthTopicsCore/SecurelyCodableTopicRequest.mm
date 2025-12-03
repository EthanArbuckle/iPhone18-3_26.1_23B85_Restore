@interface SecurelyCodableTopicRequest
- (_TtC16HealthTopicsCore27SecurelyCodableTopicRequest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SecurelyCodableTopicRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SecurelyCodableTopicRequest.encode(with:)(coderCopy);
}

- (_TtC16HealthTopicsCore27SecurelyCodableTopicRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end