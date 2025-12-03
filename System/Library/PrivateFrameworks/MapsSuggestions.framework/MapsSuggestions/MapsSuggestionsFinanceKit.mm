@interface MapsSuggestionsFinanceKit
- (NSString)uniqueName;
- (_TtC15MapsSuggestions25MapsSuggestionsFinanceKit)init;
- (_TtC15MapsSuggestions25MapsSuggestionsFinanceKit)initWithConnector:(id)connector requester:(id)requester;
- (id)initFromResourceDepot:(id)depot;
- (void)setUniqueName:(id)name;
- (void)startObservingForOrdersWithPeriod:(double)period;
- (void)stopObservingForOrders;
- (void)updateOrdersWithOrders:(id)orders;
@end

@implementation MapsSuggestionsFinanceKit

- (id)initFromResourceDepot:(id)depot
{
  swift_unknownObjectRetain();
  result = [depot oneFinanceKitConnector];
  if (result)
  {
    v6 = result;
    result = [depot oneNetworkRequester];
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

- (_TtC15MapsSuggestions25MapsSuggestionsFinanceKit)initWithConnector:(id)connector requester:(id)requester
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return MapsSuggestionsFinanceKit.init(connector:requester:)(connector, requester);
}

- (NSString)uniqueName
{
  swift_beginAccess();

  v2 = sub_1C529D71C();

  return v2;
}

- (void)setUniqueName:(id)name
{
  v4 = sub_1C529D72C();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC15MapsSuggestions25MapsSuggestionsFinanceKit_uniqueName);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (void)updateOrdersWithOrders:(id)orders
{
  type metadata accessor for MapsSuggestionsOrderPickup();
  v4 = sub_1C529D7DC();
  selfCopy = self;
  sub_1C5141FA0(v4);
}

- (void)startObservingForOrdersWithPeriod:(double)period
{
  selfCopy = self;
  sub_1C513A1F8(period);
}

- (void)stopObservingForOrders
{
  selfCopy = self;
  sub_1C5289308();
}

- (_TtC15MapsSuggestions25MapsSuggestionsFinanceKit)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end