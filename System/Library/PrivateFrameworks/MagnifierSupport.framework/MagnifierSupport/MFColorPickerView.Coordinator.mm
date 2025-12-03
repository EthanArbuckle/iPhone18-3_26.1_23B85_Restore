@interface MFColorPickerView.Coordinator
- (_TtCV16MagnifierSupportP33_128412983A29D0B4093EE0414FDFF2BF17MFColorPickerView11Coordinator)init;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
@end

@implementation MFColorPickerView.Coordinator

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  colorCopy = color;
  selfCopy = self;
  sub_257ECED30();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6728);
  sub_257ECEF40();
}

- (_TtCV16MagnifierSupportP33_128412983A29D0B4093EE0414FDFF2BF17MFColorPickerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end