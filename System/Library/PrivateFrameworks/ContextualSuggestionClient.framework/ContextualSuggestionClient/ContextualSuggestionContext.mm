@interface ContextualSuggestionContext
- (_TtC26ContextualSuggestionClient27ContextualSuggestionContext)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ContextualSuggestionContext

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ContextualSuggestionContext.encode(with:)(coderCopy);
}

- (_TtC26ContextualSuggestionClient27ContextualSuggestionContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end