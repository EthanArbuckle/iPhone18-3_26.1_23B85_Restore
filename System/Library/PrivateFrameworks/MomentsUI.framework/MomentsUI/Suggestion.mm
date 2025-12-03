@interface Suggestion
- (_TtC9MomentsUI10Suggestion)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation Suggestion

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  Suggestion.encode(with:)(coderCopy);
}

- (_TtC9MomentsUI10Suggestion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end