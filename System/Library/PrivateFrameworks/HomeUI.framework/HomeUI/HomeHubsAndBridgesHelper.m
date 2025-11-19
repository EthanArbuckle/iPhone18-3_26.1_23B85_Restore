@interface HomeHubsAndBridgesHelper
+ (id)createHomeHubsAndBridgesListViewHostingControllerWithHome:(id)a3;
+ (id)presentBridgeDetailViewForAccessory:(id)a3 withHome:(id)a4;
- (_TtC6HomeUI24HomeHubsAndBridgesHelper)init;
@end

@implementation HomeHubsAndBridgesHelper

+ (id)createHomeHubsAndBridgesListViewHostingControllerWithHome:(id)a3
{
  v4 = objc_allocWithZone(type metadata accessor for HomeHubsAndBridgesListViewHostingController(0));
  HomeHubsAndBridgesListViewHostingController.init(home:)(a3);

  return v5;
}

+ (id)presentBridgeDetailViewForAccessory:(id)a3 withHome:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _s6HomeUI0A20HubsAndBridgesHelperC23presentBridgeDetailView3for4withSo8NAFutureCySo6NSNullCGSo11HMAccessoryC_So6HMHomeCtFZ_0(v5, v6);

  return v7;
}

- (_TtC6HomeUI24HomeHubsAndBridgesHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HomeHubsAndBridgesHelper();
  return [(HomeHubsAndBridgesHelper *)&v3 init];
}

@end