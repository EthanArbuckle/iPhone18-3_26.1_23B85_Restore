@interface FitNoiseAirpodPlacementVideoController
- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithNoiseDelegate:(id)delegate btAddress:(id)address hpDevice:(id)device;
- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLoad;
@end

@implementation FitNoiseAirpodPlacementVideoController

- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithNoiseDelegate:(id)delegate btAddress:(id)address hpDevice:(id)device
{
  v7 = sub_252064724();
  v9 = v8;
  swift_unknownObjectRetain();
  return FitNoiseAirpodPlacementVideoController.init(noiseDelegate:btAddress:hpDevice:)(delegate, v7, v9, device);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_252049DAC();
}

- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end