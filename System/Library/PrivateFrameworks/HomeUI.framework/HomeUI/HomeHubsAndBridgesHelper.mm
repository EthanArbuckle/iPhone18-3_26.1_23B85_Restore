@interface HomeHubsAndBridgesHelper
+ (id)createHomeHubsAndBridgesListViewHostingControllerWithHome:(id)home;
+ (id)presentBridgeDetailViewForAccessory:(id)accessory withHome:(id)home;
- (_TtC6HomeUI24HomeHubsAndBridgesHelper)init;
@end

@implementation HomeHubsAndBridgesHelper

+ (id)createHomeHubsAndBridgesListViewHostingControllerWithHome:(id)home
{
  v4 = objc_allocWithZone(type metadata accessor for HomeHubsAndBridgesListViewHostingController(0));
  HomeHubsAndBridgesListViewHostingController.init(home:)(home);

  return v5;
}

+ (id)presentBridgeDetailViewForAccessory:(id)accessory withHome:(id)home
{
  accessoryCopy = accessory;
  homeCopy = home;
  v7 = _s6HomeUI0A20HubsAndBridgesHelperC23presentBridgeDetailView3for4withSo8NAFutureCySo6NSNullCGSo11HMAccessoryC_So6HMHomeCtFZ_0(accessoryCopy, homeCopy);

  return v7;
}

- (_TtC6HomeUI24HomeHubsAndBridgesHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HomeHubsAndBridgesHelper();
  return [(HomeHubsAndBridgesHelper *)&v3 init];
}

@end