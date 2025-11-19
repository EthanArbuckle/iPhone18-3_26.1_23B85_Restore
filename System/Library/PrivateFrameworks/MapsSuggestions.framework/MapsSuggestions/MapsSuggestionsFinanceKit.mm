@interface MapsSuggestionsFinanceKit
- (NSString)uniqueName;
- (_TtC15MapsSuggestions25MapsSuggestionsFinanceKit)init;
- (_TtC15MapsSuggestions25MapsSuggestionsFinanceKit)initWithConnector:(id)a3 requester:(id)a4;
- (id)initFromResourceDepot:(id)a3;
- (void)setUniqueName:(id)a3;
- (void)startObservingForOrdersWithPeriod:(double)a3;
- (void)stopObservingForOrders;
- (void)updateOrdersWithOrders:(id)a3;
@end

@implementation MapsSuggestionsFinanceKit

- (id)initFromResourceDepot:(id)a3
{
  swift_unknownObjectRetain();
  result = [a3 oneFinanceKitConnector];
  if (result)
  {
    v6 = result;
    result = [a3 oneNetworkRequester];
    if (result)
    {
      v7 = [(MapsSuggestionsFinanceKit *)self initWithConnector:v6 requester:result];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

- (_TtC15MapsSuggestions25MapsSuggestionsFinanceKit)initWithConnector:(id)a3 requester:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return MapsSuggestionsFinanceKit.init(connector:requester:)(a3, a4);
}

- (NSString)uniqueName
{
  swift_beginAccess();

  v2 = sub_1C529D71C();

  return v2;
}

- (void)setUniqueName:(id)a3
{
  v4 = sub_1C529D72C();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit_uniqueName);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (void)updateOrdersWithOrders:(id)a3
{
  type metadata accessor for MapsSuggestionsOrderPickup();
  v4 = sub_1C529D7DC();
  v5 = self;
  sub_1C5141FA0(v4);
}

- (void)startObservingForOrdersWithPeriod:(double)a3
{
  v4 = self;
  sub_1C513A1F8(a3);
}

- (void)stopObservingForOrders
{
  v2 = self;
  sub_1C5289308();
}

- (_TtC15MapsSuggestions25MapsSuggestionsFinanceKit)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end