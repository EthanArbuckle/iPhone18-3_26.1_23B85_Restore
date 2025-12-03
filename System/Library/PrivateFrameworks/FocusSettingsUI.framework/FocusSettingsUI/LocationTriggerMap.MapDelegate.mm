@interface LocationTriggerMap.MapDelegate
- (_TtCV15FocusSettingsUI18LocationTriggerMap11MapDelegate)init;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (void)sliderMovedWithSender:(id)sender;
@end

@implementation LocationTriggerMap.MapDelegate

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_24B9BDA8C(overlay);

  swift_unknownObjectRelease();

  return v8;
}

- (void)sliderMovedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  [senderCopy value];

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