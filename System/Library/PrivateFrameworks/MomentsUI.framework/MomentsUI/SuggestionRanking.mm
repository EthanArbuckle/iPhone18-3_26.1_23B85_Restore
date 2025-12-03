@interface SuggestionRanking
- (_TtC9MomentsUI17SuggestionRanking)init;
- (_TtC9MomentsUI17SuggestionRanking)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SuggestionRanking

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SuggestionRanking.encode(with:)(coderCopy);
}

- (_TtC9MomentsUI17SuggestionRanking)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized SuggestionRanking.init(coder:)(coderCopy);

  return v4;
}

- (_TtC9MomentsUI17SuggestionRanking)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end