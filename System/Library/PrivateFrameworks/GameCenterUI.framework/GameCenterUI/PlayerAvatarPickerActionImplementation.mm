@interface PlayerAvatarPickerActionImplementation
- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image;
- (void)photoPickerDidCancel:(id)cancel;
@end

@implementation PlayerAvatarPickerActionImplementation

- (void)photoPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;

  sub_24E18E248(cancelCopy);
}

- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image
{
  pickerCopy = picker;
  contactCopy = contact;
  imageCopy = image;

  sub_24E18E314(pickerCopy, contactCopy, imageCopy);
}

@end