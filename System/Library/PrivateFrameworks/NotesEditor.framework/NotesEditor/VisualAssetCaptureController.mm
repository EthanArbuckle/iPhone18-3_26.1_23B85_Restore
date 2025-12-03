@interface VisualAssetCaptureController
- (_TtC11NotesEditor28VisualAssetCaptureController)init;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
@end

@implementation VisualAssetCaptureController

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_2153E1430();
  v6 = sub_2154A1C8C();
  controllerCopy = controller;
  selfCopy = self;
  sub_2153E0600(controllerCopy, v6);
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_2153E122C(cancelCopy);
}

- (_TtC11NotesEditor28VisualAssetCaptureController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end