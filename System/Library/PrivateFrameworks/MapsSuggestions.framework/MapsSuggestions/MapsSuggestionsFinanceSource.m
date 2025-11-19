@interface MapsSuggestionsFinanceSource
- (_TtC15MapsSuggestions28MapsSuggestionsFinanceSource)init;
- (_TtC15MapsSuggestions28MapsSuggestionsFinanceSource)initWithDelegate:(id)a3 name:(id)a4;
- (double)updateSuggestionEntriesWithHandler:(id)a3;
- (id)initFromResourceDepot:(id)a3;
- (id)initFromResourceDepot:(id)a3 name:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsFinanceSource

- (void)start
{
  v2 = self;
  sub_1C5138AD8("start", sub_1C5139604, &block_descriptor_9);
}

- (double)updateSuggestionEntriesWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1C5143EA0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1C51401B8(v7, v6);
  v10 = v9;
  sub_1C513EDF0(v7);

  return v10;
}

- (id)initFromResourceDepot:(id)a3 name:(id)a4
{
  swift_unknownObjectRetain();
  result = [a3 oneSourceDelegate];
  if (result)
  {
    v6 = result;
    result = [a3 oneFinanceKit];
    if (result)
    {
      v7 = result;
      v8 = objc_allocWithZone(type metadata accessor for MapsSuggestionsFinanceSource());
      v9 = sub_1C5287278(v6, v7);
      swift_unknownObjectRelease();
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

- (void)stop
{
  v2 = self;
  sub_1C5138AD8("stop", sub_1C5287BDC, &block_descriptor_13_0);
}

- (id)initFromResourceDepot:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15MapsSuggestions28MapsSuggestionsFinanceSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15MapsSuggestions28MapsSuggestionsFinanceSource)initWithDelegate:(id)a3 name:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end