@interface MapsSuggestionsIsDrivingCondition
- (BOOL)isTrue;
- (_TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition)initWithName:(id)a3;
@end

@implementation MapsSuggestionsIsDrivingCondition

- (BOOL)isTrue
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition__compositeCondition);
  if (v2)
  {
    LOBYTE(v2) = [v2 isTrue];
  }

  return v2;
}

- (_TtC15MapsSuggestions33MapsSuggestionsIsDrivingCondition)initWithName:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end