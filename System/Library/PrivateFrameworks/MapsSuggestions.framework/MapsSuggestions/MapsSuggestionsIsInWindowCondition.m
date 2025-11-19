@interface MapsSuggestionsIsInWindowCondition
- (BOOL)isTrue;
- (NSDate)entryTime;
- (_TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition)initWithName:(id)a3;
- (id)window;
- (void)setEntryTime:(id)a3;
@end

@implementation MapsSuggestionsIsInWindowCondition

- (NSDate)entryTime
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_entryTime;
  swift_beginAccess();
  sub_1C52591C0(self + v6, v5);
  v7 = sub_1C529D3AC();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1C529D31C();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setEntryTime:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (a3)
  {
    sub_1C529D37C();
    v8 = sub_1C529D3AC();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1C529D3AC();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_entryTime;
  swift_beginAccess();
  v11 = self;
  sub_1C525F304(v7, self + v10);
  swift_endAccess();
}

- (BOOL)isTrue
{
  v2 = self;
  v3 = sub_1C528653C();

  return v3 & 1;
}

- (id)window
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1566A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
  sub_1C52867C4(v5);

  v7 = sub_1C529D24C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1C529D1EC();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (_TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition)initWithName:(id)a3
{
  sub_1C529D72C();
  v4 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_before;
  GEOConfigGetDouble();
  *(self + v4) = v5;
  v6 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_defaultTravelTime;
  GEOConfigGetDouble();
  *(self + v6) = v7;
  v8 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_entryTime;
  v9 = sub_1C529D3AC();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v10 = self + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsIsInWindowCondition_travelTime;
  *v10 = 0;
  v10[8] = 1;
  v11 = sub_1C529D71C();

  v14.receiver = self;
  v14.super_class = type metadata accessor for MapsSuggestionsIsInWindowCondition();
  v12 = [(MapsSuggestionsBaseCondition *)&v14 initWithName:v11];

  return v12;
}

@end