@interface MapsSuggestionsFakeFinanceKitConnector
- (NSArray)orderPickups;
- (_TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector)init;
- (id)_callbackHandle;
- (id)currentOrderPickupsWithPeriod:(double)period;
- (id)startObservingOrderPickupsIn:(double)in callback:(id)callback;
- (void)setOrderPickups:(id)pickups;
- (void)set_callbackHandle:(id)handle;
- (void)updatedOrders;
@end

@implementation MapsSuggestionsFakeFinanceKitConnector

- (id)currentOrderPickupsWithPeriod:(double)period
{
  swift_beginAccess();
  type metadata accessor for MapsSuggestionsOrderPickup();

  v3 = sub_1C529D7CC();

  return v3;
}

- (NSArray)orderPickups
{
  swift_beginAccess();
  type metadata accessor for MapsSuggestionsOrderPickup();

  v2 = sub_1C529D7CC();

  return v2;
}

- (void)setOrderPickups:(id)pickups
{
  type metadata accessor for MapsSuggestionsOrderPickup();
  v4 = sub_1C529D7DC();
  v5 = OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector_orderPickups;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (id)_callbackHandle
{
  v2 = (self + OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector__callbackHandle);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C51446E4;
    aBlock[3] = &block_descriptor_5;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)set_callbackHandle:(id)handle
{
  v4 = _Block_copy(handle);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1C527A58C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector__callbackHandle);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1C513EDF0(v7);
}

- (id)startObservingOrderPickupsIn:(double)in callback:(id)callback
{
  v5 = _Block_copy(callback);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = (self + OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector__callbackHandle);
  swift_beginAccess();
  v8 = *v7;
  selfCopy = self;
  _Block_copy(v5);
  *v7 = sub_1C51446DC;
  v7[1] = v6;
  sub_1C513EDF0(v8);
  swift_beginAccess();
  type metadata accessor for MapsSuggestionsOrderPickup();

  v10 = sub_1C529D7CC();

  (*(v5 + 2))(v5, v10);

  _Block_release(v5);

  return selfCopy;
}

- (void)updatedOrders
{
  v3 = (self + OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector__callbackHandle);
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    selfCopy = self;
    sub_1C513B684(v4);

    v4(v6);

    sub_1C513EDF0(v4);
  }
}

- (_TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector)init
{
  *(self + OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector_orderPickups) = MEMORY[0x1E69E7CC0];
  v3 = (self + OBJC_IVAR____TtC15MapsSuggestions38MapsSuggestionsFakeFinanceKitConnector__callbackHandle);
  v4 = type metadata accessor for MapsSuggestionsFakeFinanceKitConnector();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(MapsSuggestionsFakeFinanceKitConnector *)&v6 init];
}

@end