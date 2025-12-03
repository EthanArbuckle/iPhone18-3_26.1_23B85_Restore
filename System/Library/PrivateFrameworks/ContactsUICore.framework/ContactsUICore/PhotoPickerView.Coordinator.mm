@interface PhotoPickerView.Coordinator
- (_TtCV14ContactsUICoreP33_080976B124F2E19973895E975811280D15PhotoPickerView11Coordinator)init;
- (void)picker:(id)picker didFinishPicking:(id)picking;
@end

@implementation PhotoPickerView.Coordinator

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  sub_1A31EC194(0, &qword_1EB0C9740);
  v8 = sub_1A34CD370();
  v9 = sub_1A34CD4A0();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_1A34CD450();
  selfCopy = self;
  v11 = sub_1A34CD440();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v8;
  v12[5] = selfCopy;
  sub_1A33A13AC(0, 0, v7, &unk_1A34ED0B8, v12);
}

- (_TtCV14ContactsUICoreP33_080976B124F2E19973895E975811280D15PhotoPickerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end