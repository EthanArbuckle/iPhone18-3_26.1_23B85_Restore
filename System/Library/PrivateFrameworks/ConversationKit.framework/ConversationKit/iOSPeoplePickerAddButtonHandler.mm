@interface iOSPeoplePickerAddButtonHandler
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)contactPickerDidCancel:(id)cancel;
@end

@implementation iOSPeoplePickerAddButtonHandler

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  pickerCopy = picker;
  propertyCopy = property;
  selfCopy = self;
  iOSPeoplePickerAddButtonHandler.contactPicker(_:didSelect:)(pickerCopy, propertyCopy);
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  iOSPeoplePickerAddButtonHandler.contactPickerDidCancel(_:)(cancelCopy);
}

@end