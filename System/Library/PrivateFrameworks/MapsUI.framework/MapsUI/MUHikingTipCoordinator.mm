@interface MUHikingTipCoordinator
- (MUHikingTipCoordinator)init;
- (MUHikingTipCoordinator)initWithMapService:(id)service locationDelegate:(id)delegate mapAccessProvider:(id)provider presenter:(id)presenter;
@end

@implementation MUHikingTipCoordinator

- (MUHikingTipCoordinator)initWithMapService:(id)service locationDelegate:(id)delegate mapAccessProvider:(id)provider presenter:(id)presenter
{
  serviceCopy = service;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = sub_1C571371C(serviceCopy);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

- (MUHikingTipCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end