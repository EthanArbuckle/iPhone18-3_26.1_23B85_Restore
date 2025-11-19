@interface CNContactPickerAdaptor.Coordinator
- (_TtCV15FocusSettingsUI22CNContactPickerAdaptor11Coordinator)init;
- (void)contactPicker:(id)a3 didSelectContacts:(id)a4;
@end

@implementation CNContactPickerAdaptor.Coordinator

- (void)contactPicker:(id)a3 didSelectContacts:(id)a4
{
  sub_24B8F37E8(0, &qword_27F068DC0);
  sub_24BAAA12C();
  v6 = self + OBJC_IVAR____TtCV15FocusSettingsUI22CNContactPickerAdaptor11Coordinator_adaptor;
  v7 = a3;
  v8 = self;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068D98);
  sub_24BAA9B6C();
  v9 = *(v6 + 5);

  v9(1);
}

- (_TtCV15FocusSettingsUI22CNContactPickerAdaptor11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end