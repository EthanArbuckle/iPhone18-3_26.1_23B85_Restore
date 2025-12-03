@interface MapsSuggestionsRealFinanceKitConnector
- (_TtC15MapsSuggestions38MapsSuggestionsRealFinanceKitConnector)init;
- (id)currentOrderPickupsWithPeriod:(double)period;
- (id)startObservingOrderPickupsIn:(double)in callback:(id)callback;
@end

@implementation MapsSuggestionsRealFinanceKitConnector

- (id)startObservingOrderPickupsIn:(double)in callback:(id)callback
{
  v6 = _Block_copy(callback);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  v9 = sub_1C513ABB0(sub_1C51446DC, v7, in);

  return v9;
}

- (id)currentOrderPickupsWithPeriod:(double)period
{
  sub_1C514123C(period);
  type metadata accessor for MapsSuggestionsOrderPickup();
  v3 = sub_1C529D7CC();

  return v3;
}

- (_TtC15MapsSuggestions38MapsSuggestionsRealFinanceKitConnector)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapsSuggestionsRealFinanceKitConnector();
  return [(MapsSuggestionsRealFinanceKitConnector *)&v3 init];
}

@end