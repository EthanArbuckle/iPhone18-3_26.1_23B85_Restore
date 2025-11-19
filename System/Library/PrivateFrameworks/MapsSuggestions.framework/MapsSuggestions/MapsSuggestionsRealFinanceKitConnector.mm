@interface MapsSuggestionsRealFinanceKitConnector
- (_TtC15MapsSuggestions38MapsSuggestionsRealFinanceKitConnector)init;
- (id)currentOrderPickupsWithPeriod:(double)a3;
- (id)startObservingOrderPickupsIn:(double)a3 callback:(id)a4;
@end

@implementation MapsSuggestionsRealFinanceKitConnector

- (id)startObservingOrderPickupsIn:(double)a3 callback:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  v9 = sub_1C513ABB0(sub_1C51446DC, v7, a3);

  return v9;
}

- (id)currentOrderPickupsWithPeriod:(double)a3
{
  sub_1C514123C(a3);
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