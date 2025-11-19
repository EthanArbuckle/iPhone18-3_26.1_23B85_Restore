@interface MUWebPlacecardBridgePool
+ (_TtC6MapsUI24MUWebPlacecardBridgePool)sharedPool;
- (id)takeBridge;
- (void)releaseBridge:(id)a3;
@end

@implementation MUWebPlacecardBridgePool

+ (_TtC6MapsUI24MUWebPlacecardBridgePool)sharedPool
{
  if (qword_1EC174EC0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC174EC8;

  return v3;
}

- (id)takeBridge
{
  v2 = self;
  v3 = MUWebPlacecardBridgePool.take()();

  return v3;
}

- (void)releaseBridge:(id)a3
{
  v5 = a3;
  v6 = self;
  MUWebPlacecardBridgePool.release(_:)(a3);
}

@end