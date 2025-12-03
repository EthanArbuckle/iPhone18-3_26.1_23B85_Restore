@interface JSPlayerBridgeObject
- (NSString)playerID;
- (_TtC12GameStoreKit20JSPlayerBridgeObject)init;
- (void)setPlayerID:(id)d;
@end

@implementation JSPlayerBridgeObject

- (NSString)playerID
{
  if (*(self + OBJC_IVAR____TtC12GameStoreKit20JSPlayerBridgeObject_playerID + 8))
  {

    v2 = sub_24F92B098();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setPlayerID:(id)d
{
  if (d)
  {
    v4 = sub_24F92B0D8();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC12GameStoreKit20JSPlayerBridgeObject_playerID);
  *v6 = v4;
  v6[1] = v5;
}

- (_TtC12GameStoreKit20JSPlayerBridgeObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end