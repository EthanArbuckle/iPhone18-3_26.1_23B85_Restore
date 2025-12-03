@interface JSArcadeObject
- (_TtC12GameStoreKit14JSArcadeObject)init;
- (id)getMarketingItemFromMarketingItems:(id)items;
- (id)getMarketingItemWithTimeout:(id)timeout :(id)a4;
- (id)getRecentlyPlayedGamesWithTimeout:(id)timeout;
@end

@implementation JSArcadeObject

- (id)getMarketingItemFromMarketingItems:(id)items
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  itemsCopy = items;
  v5 = sub_24F92C448();
  v6 = sub_24F92C458();

  return v6;
}

- (id)getMarketingItemWithTimeout:(id)timeout :(id)a4
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  timeoutCopy = timeout;
  v7 = a4;
  v8 = sub_24F92C448();
  v9 = sub_24F92C458();

  return v9;
}

- (id)getRecentlyPlayedGamesWithTimeout:(id)timeout
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  timeoutCopy = timeout;
  selfCopy = self;
  v7 = sub_24F92C448();
  v8 = sub_24F92C458();

  return v8;
}

- (_TtC12GameStoreKit14JSArcadeObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end