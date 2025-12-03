@interface CameraView.Coordinator
- (_TtCV14ContactsUICoreP33_E066430AB25D5268401BEB757E69D30410CameraView11Coordinator)init;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
@end

@implementation CameraView.Coordinator

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  type metadata accessor for InfoKey(0);
  sub_1A33770A8(&qword_1EB0C5050, type metadata accessor for InfoKey);
  v8 = sub_1A34CCF90();
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
  sub_1A32C0B38(0, 0, v7, &unk_1A34EAC18, v12);
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8978);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtCV14ContactsUICoreP33_E066430AB25D5268401BEB757E69D30410CameraView11Coordinator_request;
  swift_beginAccess();
  sub_1A3376874(self + v9, v8);
  v10 = *&v8[*(v6 + 48)];
  v11 = *(*v10 + *MEMORY[0x1E69E6B68] + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  cancelCopy = cancel;
  selfCopy = self;
  os_unfair_lock_lock((v10 + v12));
  sub_1A329A478(v10 + v11);
  os_unfair_lock_unlock((v10 + v12));
  sub_1A3288FDC(v8, &unk_1EB0C8978);
}

- (_TtCV14ContactsUICoreP33_E066430AB25D5268401BEB757E69D30410CameraView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end