@interface JSArcadeObject
- (_TtC12GameStoreKit14JSArcadeObject)init;
- (id)getMarketingItemFromMarketingItems:(id)a3;
- (id)getMarketingItemWithTimeout:(id)a3 :(id)a4;
- (id)getRecentlyPlayedGamesWithTimeout:(id)a3;
@end

@implementation JSArcadeObject

- (id)getMarketingItemFromMarketingItems:(id)a3
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v4 = a3;
  v5 = sub_24F92C448();
  v6 = sub_24F92C458();

  return v6;
}

- (id)getMarketingItemWithTimeout:(id)a3 :(id)a4
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v6 = a3;
  v7 = a4;
  v8 = sub_24F92C448();
  v9 = sub_24F92C458();

  return v9;
}

- (id)getRecentlyPlayedGamesWithTimeout:(id)a3
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v5 = a3;
  v6 = self;
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