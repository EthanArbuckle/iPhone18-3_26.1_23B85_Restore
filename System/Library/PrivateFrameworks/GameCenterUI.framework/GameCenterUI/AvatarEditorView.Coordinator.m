@interface AvatarEditorView.Coordinator
- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5;
- (void)photoPickerDidCancel:(id)a3;
@end

@implementation AvatarEditorView.Coordinator

- (void)photoPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E14C138(v4);
}

- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_24E14C20C(v8, v9, v10);
}

@end