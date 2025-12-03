@interface EmergencyContactPicker.ContactPickerCoordinator
- (_TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator)init;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
@end

@implementation EmergencyContactPicker.ContactPickerCoordinator

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  selfCopy = self;
  sub_258871BB8(contactCopy, 0);
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  propertyCopy = property;
  selfCopy = self;
  contact = [propertyCopy contact];
  sub_258871BB8(contact, propertyCopy);
}

- (_TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end