@interface MapsSuggestionsCompositeOrCondition
- (BOOL)isTrue;
- (NSArray)_conditions;
- (_TtC15MapsSuggestions35MapsSuggestionsCompositeOrCondition)initWithConditions:(id)a3;
- (_TtC15MapsSuggestions35MapsSuggestionsCompositeOrCondition)initWithName:(id)a3;
- (void)set_conditions:(id)a3;
@end

@implementation MapsSuggestionsCompositeOrCondition

- (NSArray)_conditions
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1563D0);
  v2 = sub_1C529D7CC();

  return v2;
}

- (void)set_conditions:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1563D0);
  *(self + OBJC_IVAR____TtC15MapsSuggestions35MapsSuggestionsCompositeOrCondition__conditions) = sub_1C529D7DC();
}

- (BOOL)isTrue
{
  v2 = self;
  v3 = sub_1C528A50C();

  return v3;
}

- (_TtC15MapsSuggestions35MapsSuggestionsCompositeOrCondition)initWithConditions:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1563D0);
  *(self + OBJC_IVAR____TtC15MapsSuggestions35MapsSuggestionsCompositeOrCondition__conditions) = sub_1C529D7DC();
  v4 = sub_1C529D71C();
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSuggestionsCompositeOrCondition();
  v5 = [(MapsSuggestionsBaseCondition *)&v7 initWithName:v4];

  return v5;
}

- (_TtC15MapsSuggestions35MapsSuggestionsCompositeOrCondition)initWithName:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end