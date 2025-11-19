@interface MUHikingTipCoordinator
- (MUHikingTipCoordinator)init;
- (MUHikingTipCoordinator)initWithMapService:(id)a3 locationDelegate:(id)a4 mapAccessProvider:(id)a5 presenter:(id)a6;
@end

@implementation MUHikingTipCoordinator

- (MUHikingTipCoordinator)initWithMapService:(id)a3 locationDelegate:(id)a4 mapAccessProvider:(id)a5 presenter:(id)a6
{
  v6 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = sub_1C571371C(v6);

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