@interface CameraPickerCoordinator
- (_TtC23ImagePlaygroundInternal23CameraPickerCoordinator)init;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
@end

@implementation CameraPickerCoordinator

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_1D27431C4();
  v6 = sub_1D2877E98();
  v7 = a3;
  v8 = self;
  sub_1D274321C(v6);
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  v4 = sub_1D2875138();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E15F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1D22BD1D0(self + OBJC_IVAR____TtC23ImagePlaygroundInternal23CameraPickerCoordinator__presentationMode, &v9 - v6, &unk_1EC6E15F0);
  v8 = self;
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