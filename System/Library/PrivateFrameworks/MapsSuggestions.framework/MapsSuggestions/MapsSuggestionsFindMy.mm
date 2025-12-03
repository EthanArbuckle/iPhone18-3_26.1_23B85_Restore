@interface MapsSuggestionsFindMy
- (_TtC15MapsSuggestions21MapsSuggestionsFindMy)init;
- (id)initFromResourceDepot:(id)depot;
- (void)locationOf:(MapsSuggestionsEntry *)of completionHandler:(id)handler;
- (void)verifyFriendshipWith:(NSArray *)with completionHandler:(id)handler;
@end

@implementation MapsSuggestionsFindMy

- (id)initFromResourceDepot:(id)depot
{
  swift_unknownObjectRetain();
  result = [depot oneFindMyConnector];
  if (result)
  {
    *(&self->super.isa + OBJC_IVAR____TtC15MapsSuggestions21MapsSuggestionsFindMy__connector) = result;
    v7.receiver = self;
    v7.super_class = type metadata accessor for MapsSuggestionsFindMy();
    v6 = [(MapsSuggestionsFindMy *)&v7 init];
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)verifyFriendshipWith:(NSArray *)with completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156340);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = with;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1C529D85C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C52A8F60;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1C52A8F68;
  v14[5] = v13;
  withCopy = with;
  selfCopy = self;
  sub_1C5264C18(0, 0, v9, &unk_1C52A8F70, v14);
}

- (void)locationOf:(MapsSuggestionsEntry *)of completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156340);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = of;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1C529D85C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C52A8F40;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1C52A94B0;
  v14[5] = v13;
  ofCopy = of;
  selfCopy = self;
  sub_1C5264C18(0, 0, v9, &unk_1C52A8F50, v14);
}

- (_TtC15MapsSuggestions21MapsSuggestionsFindMy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end