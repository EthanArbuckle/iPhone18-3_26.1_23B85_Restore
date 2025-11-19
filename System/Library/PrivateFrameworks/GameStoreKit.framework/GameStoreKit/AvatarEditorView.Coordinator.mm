@interface AvatarEditorView.Coordinator
- (_TtCV12GameStoreKit16AvatarEditorView11Coordinator)init;
- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5;
- (void)photoPickerDidCancel:(id)a3;
@end

@implementation AvatarEditorView.Coordinator

- (void)photoPickerDidCancel:(id)a3
{
  v5 = a3;
  v3 = [v5 presentingViewController];
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_24F59161C(v8, v9, v10);
}

- (_TtCV12GameStoreKit16AvatarEditorView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end