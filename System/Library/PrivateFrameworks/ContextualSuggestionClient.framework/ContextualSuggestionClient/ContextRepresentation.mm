@interface ContextRepresentation
- (_TtC26ContextualSuggestionClient21ContextRepresentation)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ContextRepresentation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ContextRepresentation.encode(with:)(coderCopy);
}

- (_TtC26ContextualSuggestionClient21ContextRepresentation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end