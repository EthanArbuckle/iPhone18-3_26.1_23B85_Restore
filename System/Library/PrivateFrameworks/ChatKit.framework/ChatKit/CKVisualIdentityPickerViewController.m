@interface CKVisualIdentityPickerViewController
+ (id)imagePickerForContact:(id)a3;
+ (id)imagePickerForGroupIdentity:(id)a3 withConversation:(id)a4;
- (CKVisualIdentityPickerViewControllerDelegate)presentationDelegate;
- (void)visualIdentityPicker:(id)a3 didUpdatePhotoForVisualIdentity:(id)a4 withContactImage:(id)a5;
- (void)visualIdentityPickerDidCancel:(id)a3;
@end

@implementation CKVisualIdentityPickerViewController

+ (id)imagePickerForGroupIdentity:(id)a3 withConversation:(id)a4
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___CKVisualIdentityPickerViewController;
  v5 = a4;
  v6 = objc_msgSendSuper2(&v8, sel_imagePickerForGroupIdentity_, a3);
  [v6 setConversation:{v5, v8.receiver, v8.super_class}];

  [v6 setDelegate:v6];

  return v6;
}

+ (id)imagePickerForContact:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CKVisualIdentityPickerViewController;
  v3 = objc_msgSendSuper2(&v5, sel_imagePickerForContact_, a3);
  [v3 setDelegate:v3];

  return v3;
}

- (void)visualIdentityPicker:(id)a3 didUpdatePhotoForVisualIdentity:(id)a4 withContactImage:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E695D1E0] descriptorForRequiredKeys];
  v25[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

  v9 = [(CKVisualIdentityPickerViewController *)self conversation];
  v10 = [v9 conversationVisualIdentityWithKeys:v8 requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];
  v11 = [v6 thumbnailImageData];
  v12 = [v10 groupPhoto];
  v13 = [v11 isEqualToData:v12];

  if ((v13 & 1) == 0)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Updating visual identity.", v24, 2u);
    }

    v15 = [v9 chat];
    v16 = [v15 isGroupChat];

    if (v16)
    {
      v17 = [v6 thumbnailImageData];
      [CKDetailsController saveGroupPhotoDataAndUpdateParticipants:v17 forConversation:v9];
    }

    [v9 setNeedsUpdatedGroupPhotoForVisualIdentity];
  }

  v18 = [v6 name];
  v19 = [v9 displayName];
  v20 = [v18 isEqualToString:v19];

  if (v20)
  {
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Updating display name.", v24, 2u);
    }

    v22 = [v6 name];
    [v9 setDisplayName:v22];

    [v9 setNeedsUpdatedGroupNameForVisualIdentity];
  }

  [v9 setGroupIdentityUpdateHandleID:0];
LABEL_14:
  v23 = [(CKVisualIdentityPickerViewController *)self presentationDelegate];
  [v23 visualIdentityPickerDidFinish:self];
}

- (void)visualIdentityPickerDidCancel:(id)a3
{
  v4 = [(CKVisualIdentityPickerViewController *)self presentationDelegate];
  [v4 visualIdentityPickerDidFinish:self];
}

- (CKVisualIdentityPickerViewControllerDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end