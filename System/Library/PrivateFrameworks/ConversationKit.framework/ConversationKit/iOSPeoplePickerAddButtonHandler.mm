@interface iOSPeoplePickerAddButtonHandler
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
@end

@implementation iOSPeoplePickerAddButtonHandler

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  iOSPeoplePickerAddButtonHandler.contactPicker(_:didSelect:)(v6, v7);
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  iOSPeoplePickerAddButtonHandler.contactPickerDidCancel(_:)(v4);
}

@end