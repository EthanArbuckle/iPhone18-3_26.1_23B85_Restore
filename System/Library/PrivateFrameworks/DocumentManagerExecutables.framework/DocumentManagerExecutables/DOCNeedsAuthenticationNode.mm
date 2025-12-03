@interface DOCNeedsAuthenticationNode
- (NSError)enumeratorError;
- (_TtC26DocumentManagerExecutables26DOCNeedsAuthenticationNode)init;
- (_TtC26DocumentManagerExecutables26DOCNeedsAuthenticationNode)initWithCoder:(id)coder;
- (id)iteratorWithOptions:(unsigned int)options;
@end

@implementation DOCNeedsAuthenticationNode

- (_TtC26DocumentManagerExecutables26DOCNeedsAuthenticationNode)initWithCoder:(id)coder
{
  type metadata accessor for DOCNeedsAuthenticationNode();
  swift_deallocPartialClassInstance();
  return 0;
}

- (NSError)enumeratorError
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CC6300] code:-1000 userInfo:0];
  v3 = _convertErrorToNSError(_:)();

  return v3;
}

- (id)iteratorWithOptions:(unsigned int)options
{
  v3 = objc_allocWithZone(MEMORY[0x277D046C0]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v3 initWithChildren:isa fullyPopulated:1 options:0];

  return v5;
}

- (_TtC26DocumentManagerExecutables26DOCNeedsAuthenticationNode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end