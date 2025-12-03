@interface ContactPickerDelegateAdapter
- (_TtC14CloudSharingUI28ContactPickerDelegateAdapter)init;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
@end

@implementation ContactPickerDelegateAdapter

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  selfCopy = self;
  sub_243B6EAC8(pickerCopy, contactCopy);
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  pickerCopy = picker;
  propertyCopy = property;
  selfCopy = self;
  sub_243B6ECC4(pickerCopy, propertyCopy);
}

- (_TtC14CloudSharingUI28ContactPickerDelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end