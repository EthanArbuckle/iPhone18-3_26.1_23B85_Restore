@interface CameraPickerCoordinator
- (_TtC23ImagePlaygroundInternal23CameraPickerCoordinator)init;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
@end

@implementation CameraPickerCoordinator

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_1D27431C4();
  v6 = sub_1D2877E98();
  controllerCopy = controller;
  selfCopy = self;
  sub_1D274321C(v6);
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  v4 = sub_1D2875138();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E15F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1D22BD1D0(self + OBJC_IVAR____TtC23ImagePlaygroundInternal23CameraPickerCoordinator__presentationMode, &v9 - v6, &unk_1EC6E15F0);
  selfCopy = self;
  MEMORY[0x1D389FF60](v5);
  sub_1D2875128();
  sub_1D28774F8();

  sub_1D22BD238(v7, &unk_1EC6E15F0);
}

- (_TtC23ImagePlaygroundInternal23CameraPickerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end