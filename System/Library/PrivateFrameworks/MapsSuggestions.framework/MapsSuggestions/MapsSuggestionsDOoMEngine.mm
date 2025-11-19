@interface MapsSuggestionsDOoMEngine
- (BOOL)_allConditionsPassed;
- (MapsSuggestionsFullResourceDepot)_resourceDepot;
- (NSArray)_conditions;
- (NSDate)_lastPLCUpdateProcessedAt;
- (NSString)uniqueName;
- (_TtC15MapsSuggestions25MapsSuggestionsDOoMEngine)init;
- (_TtC15MapsSuggestions25MapsSuggestionsDOoMEngine)initWithResourceDepot:(id)a3 conditions:(id)a4;
- (id)_routineHandler;
- (id)currentSessionFor:(id)a3;
- (void)_setupAdditionalConditions;
- (void)_setupRoutineHandler;
- (void)checkForCurrentPredictions;
- (void)dealloc;
- (void)setUniqueName:(id)a3;
- (void)set_canKicker:(id)a3;
- (void)set_conditions:(id)a3;
- (void)set_currentContextResult:(id)a3;
- (void)set_deduplicationInfo:(id)a3;
- (void)set_doomDestination:(id)a3;
- (void)set_lastPLCUpdateProcessedAt:(id)a3;
- (void)set_routineHandler:(id)a3;
- (void)set_sessionManager:(id)a3;
- (void)spendBudget;
@end

@implementation MapsSuggestionsDOoMEngine

- (NSString)uniqueName
{
  v2 = self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine_uniqueName;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1C529D71C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUniqueName:(id)a3
{
  if (a3)
  {
    v4 = sub_1C529D72C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine_uniqueName);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (MapsSuggestionsFullResourceDepot)_resourceDepot
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (id)_routineHandler
{
  if (*(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__routineHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__routineHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__routineHandler);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1C5285F68;
    v5[3] = &block_descriptor_82;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)set_routineHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1C5285EEC;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__routineHandler);
  v8 = *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__routineHandler);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_1C513EDF0(v8);
}

- (NSArray)_conditions
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1563D0);
  v2 = sub_1C529D7CC();

  return v2;
}

- (void)set_conditions:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1563D0);
  v4 = sub_1C529D7DC();
  v5 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__conditions;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)set_doomDestination:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__doomDestination);
  *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__doomDestination) = a3;
  v3 = a3;
}

- (void)set_canKicker:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__canKicker);
  *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__canKicker) = a3;
  v3 = a3;
}

- (void)set_currentContextResult:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__currentContextResult);
  *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__currentContextResult) = a3;
  v3 = a3;
}

- (NSDate)_lastPLCUpdateProcessedAt
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156760);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__lastPLCUpdateProcessedAt;
  swift_beginAccess();
  sub_1C525F29C(self + v6, v5, &unk_1EC156760);
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

- (void)set_lastPLCUpdateProcessedAt:(id)a3
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

  v10 = OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__lastPLCUpdateProcessedAt;
  swift_beginAccess();
  v11 = self;
  sub_1C525F304(v7, self + v10);
  swift_endAccess();
}

- (void)set_sessionManager:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__sessionManager);
  *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__sessionManager) = a3;
  v3 = a3;
}

- (void)set_deduplicationInfo:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__deduplicationInfo);
  *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__deduplicationInfo) = a3;
  v3 = a3;
}

- (_TtC15MapsSuggestions25MapsSuggestionsDOoMEngine)initWithResourceDepot:(id)a3 conditions:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1563D0);
  v4 = sub_1C529D7DC();
  v5 = swift_unknownObjectRetain();
  return MapsSuggestionsDOoMEngine.init(resourceDepot:conditions:)(v5, v4);
}

- (void)_setupAdditionalConditions
{
  v2 = self;
  sub_1C527D0BC();
}

- (BOOL)_allConditionsPassed
{
  v2 = self;
  v3 = sub_1C527D958();

  return v3 & 1;
}

- (void)_setupRoutineHandler
{
  v2 = self;
  sub_1C527DC04();
}

- (id)currentSessionFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1C528283C(v4);

  return v6;
}

- (void)spendBudget
{
  v2 = self;
  sub_1C52845E0();
}

- (void)checkForCurrentPredictions
{
  v2 = self;
  sub_1C5284BAC();
}

- (void)dealloc
{
  v3 = *(self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsDOoMEngine__rtManager);
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5285168;
  aBlock[3] = &block_descriptor_76_0;
  v4 = _Block_copy(aBlock);
  v5 = self;
  v6 = v3;
  [v6 stopMonitoringPredictedContextWithHandler_];
  _Block_release(v4);

  v7.receiver = v5;
  v7.super_class = type metadata accessor for MapsSuggestionsDOoMEngine();
  [(MapsSuggestionsDOoMEngine *)&v7 dealloc];
}

- (_TtC15MapsSuggestions25MapsSuggestionsDOoMEngine)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end