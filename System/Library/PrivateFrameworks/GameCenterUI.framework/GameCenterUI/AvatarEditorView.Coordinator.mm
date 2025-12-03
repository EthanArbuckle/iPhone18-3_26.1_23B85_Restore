@interface AvatarEditorView.Coordinator
- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image;
- (void)photoPickerDidCancel:(id)cancel;
@end

@implementation AvatarEditorView.Coordinator

- (void)photoPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_24E14C138(cancelCopy);
}

- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image
{
  pickerCopy = picker;
  contactCopy = contact;
  imageCopy = image;
  selfCopy = self;
  sub_24E14C20C(pickerCopy, contactCopy, imageCopy);
}

@end