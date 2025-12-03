@interface AvatarEditorView.Coordinator
- (_TtCV12GameStoreKit16AvatarEditorView11Coordinator)init;
- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image;
- (void)photoPickerDidCancel:(id)cancel;
@end

@implementation AvatarEditorView.Coordinator

- (void)photoPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presentingViewController = [cancelCopy presentingViewController];
  if (presentingViewController)
  {
    v4 = presentingViewController;
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image
{
  pickerCopy = picker;
  contactCopy = contact;
  imageCopy = image;
  selfCopy = self;
  sub_24F59161C(pickerCopy, contactCopy, imageCopy);
}

- (_TtCV12GameStoreKit16AvatarEditorView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end