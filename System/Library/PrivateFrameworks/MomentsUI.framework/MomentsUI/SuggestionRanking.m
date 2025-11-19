@interface SuggestionRanking
- (_TtC9MomentsUI17SuggestionRanking)init;
- (_TtC9MomentsUI17SuggestionRanking)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SuggestionRanking

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SuggestionRanking.encode(with:)(v4);
}

- (_TtC9MomentsUI17SuggestionRanking)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized SuggestionRanking.init(coder:)(v3);

  return v4;
}

- (_TtC9MomentsUI17SuggestionRanking)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end