@interface ColorPickerView.ColorPickerCoordinator
- (_TtCV13CalendarUIKit15ColorPickerView22ColorPickerCoordinator)init;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
- (void)colorPickerViewControllerDidFinish:(id)finish;
@end

@implementation ColorPickerView.ColorPickerCoordinator

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  colorCopy = color;
  selfCopy = self;
  sub_1CAD4D7D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464870);
  sub_1CAD4DAC4();
}

- (void)colorPickerViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  [finishCopy dismissViewControllerAnimated:1 completion:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  sub_1CAD4DAC4();
}

- (_TtCV13CalendarUIKit15ColorPickerView22ColorPickerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end