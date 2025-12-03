@interface SecurelyCodableOntologyRequest
- (_TtC17HealthOntologyKit30SecurelyCodableOntologyRequest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SecurelyCodableOntologyRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SecurelyCodableOntologyRequest.encode(with:)(coderCopy);
}

- (_TtC17HealthOntologyKit30SecurelyCodableOntologyRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end