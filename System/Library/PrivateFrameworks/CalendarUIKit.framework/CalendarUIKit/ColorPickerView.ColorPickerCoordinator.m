@interface ColorPickerView.ColorPickerCoordinator
- (_TtCV13CalendarUIKit15ColorPickerView22ColorPickerCoordinator)init;
- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5;
- (void)colorPickerViewControllerDidFinish:(id)a3;
@end

@implementation ColorPickerView.ColorPickerCoordinator

- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5
{
  v6 = a4;
  v7 = self;
  sub_1CAD4D7D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464870);
  sub_1CAD4DAC4();
}

- (void)colorPickerViewControllerDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 dismissViewControllerAnimated:1 completion:0];

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