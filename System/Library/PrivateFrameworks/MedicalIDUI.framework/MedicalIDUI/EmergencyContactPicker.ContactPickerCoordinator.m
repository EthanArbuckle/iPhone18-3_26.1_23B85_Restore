@interface EmergencyContactPicker.ContactPickerCoordinator
- (_TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator)init;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
@end

@implementation EmergencyContactPicker.ContactPickerCoordinator

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_258871BB8(v5, 0);
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v5 = a4;
  v7 = self;
  v6 = [v5 contact];
  sub_258871BB8(v6, v5);
}

- (_TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end