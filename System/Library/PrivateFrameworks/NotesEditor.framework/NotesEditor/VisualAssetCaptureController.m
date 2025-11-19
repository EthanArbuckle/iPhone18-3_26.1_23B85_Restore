@interface VisualAssetCaptureController
- (_TtC11NotesEditor28VisualAssetCaptureController)init;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
@end

@implementation VisualAssetCaptureController

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_2153E1430();
  v6 = sub_2154A1C8C();
  v7 = a3;
  v8 = self;
  sub_2153E0600(v7, v6);
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2153E122C(v4);
}

- (_TtC11NotesEditor28VisualAssetCaptureController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end