@interface LocationTriggerMap.MapDelegate
- (_TtCV15FocusSettingsUI18LocationTriggerMap11MapDelegate)init;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (void)sliderMovedWithSender:(id)a3;
@end

@implementation LocationTriggerMap.MapDelegate

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_24B9BDA8C(a4);

  swift_unknownObjectRelease();

  return v8;
}

- (void)sliderMovedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 value];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067368);
  sub_24BAA9B6C();
}

- (_TtCV15FocusSettingsUI18LocationTriggerMap11MapDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end