@interface PlayerAvatarPickerActionImplementation
- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5;
- (void)photoPickerDidCancel:(id)a3;
@end

@implementation PlayerAvatarPickerActionImplementation

- (void)photoPickerDidCancel:(id)a3
{
  v3 = a3;

  sub_24E18E248(v3);
}

- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;

  sub_24E18E314(v7, v8, v9);
}

@end