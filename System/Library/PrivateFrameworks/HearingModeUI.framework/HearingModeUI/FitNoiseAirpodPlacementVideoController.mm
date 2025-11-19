@interface FitNoiseAirpodPlacementVideoController
- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithNoiseDelegate:(id)a3 btAddress:(id)a4 hpDevice:(id)a5;
- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidLoad;
@end

@implementation FitNoiseAirpodPlacementVideoController

- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithNoiseDelegate:(id)a3 btAddress:(id)a4 hpDevice:(id)a5
{
  v7 = sub_252064724();
  v9 = v8;
  swift_unknownObjectRetain();
  return FitNoiseAirpodPlacementVideoController.init(noiseDelegate:btAddress:hpDevice:)(a3, v7, v9, a5);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_252049DAC();
}

- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end