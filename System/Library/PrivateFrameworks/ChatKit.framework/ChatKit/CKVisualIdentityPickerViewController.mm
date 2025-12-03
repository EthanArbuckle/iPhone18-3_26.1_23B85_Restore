@interface CKVisualIdentityPickerViewController
+ (id)imagePickerForContact:(id)contact;
+ (id)imagePickerForGroupIdentity:(id)identity withConversation:(id)conversation;
- (CKVisualIdentityPickerViewControllerDelegate)presentationDelegate;
- (void)visualIdentityPicker:(id)picker didUpdatePhotoForVisualIdentity:(id)identity withContactImage:(id)image;
- (void)visualIdentityPickerDidCancel:(id)cancel;
@end

@implementation CKVisualIdentityPickerViewController

+ (id)imagePickerForGroupIdentity:(id)identity withConversation:(id)conversation
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___CKVisualIdentityPickerViewController;
  conversationCopy = conversation;
  v6 = objc_msgSendSuper2(&v8, sel_imagePickerForGroupIdentity_, identity);
  [v6 setConversation:{conversationCopy, v8.receiver, v8.super_class}];

  [v6 setDelegate:v6];

  return v6;
}

+ (id)imagePickerForContact:(id)contact
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CKVisualIdentityPickerViewController;
  v3 = objc_msgSendSuper2(&v5, sel_imagePickerForContact_, contact);
  [v3 setDelegate:v3];

  return v3;
}

- (void)visualIdentityPicker:(id)picker didUpdatePhotoForVisualIdentity:(id)identity withContactImage:(id)image
{
  v25[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  descriptorForRequiredKeys = [MEMORY[0x1E695D1E0] descriptorForRequiredKeys];
  v25[0] = descriptorForRequiredKeys;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

  conversation = [(CKVisualIdentityPickerViewController *)self conversation];
  v10 = [conversation conversationVisualIdentityWithKeys:v8 requestedNumberOfContactsToFetch:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];
  thumbnailImageData = [identityCopy thumbnailImageData];
  groupPhoto = [v10 groupPhoto];
  v13 = [thumbnailImageData isEqualToData:groupPhoto];

  if ((v13 & 1) == 0)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Updating visual identity.", v24, 2u);
    }

    chat = [conversation chat];
    isGroupChat = [chat isGroupChat];

    if (isGroupChat)
    {
      thumbnailImageData2 = [identityCopy thumbnailImageData];
      [CKDetailsController saveGroupPhotoDataAndUpdateParticipants:thumbnailImageData2 forConversation:conversation];
    }

    [conversation setNeedsUpdatedGroupPhotoForVisualIdentity];
  }

  name = [identityCopy name];
  displayName = [conversation displayName];
  v20 = [name isEqualToString:displayName];

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

    name2 = [identityCopy name];
    [conversation setDisplayName:name2];

    [conversation setNeedsUpdatedGroupNameForVisualIdentity];
  }

  [conversation setGroupIdentityUpdateHandleID:0];
LABEL_14:
  presentationDelegate = [(CKVisualIdentityPickerViewController *)self presentationDelegate];
  [presentationDelegate visualIdentityPickerDidFinish:self];
}

- (void)visualIdentityPickerDidCancel:(id)cancel
{
  presentationDelegate = [(CKVisualIdentityPickerViewController *)self presentationDelegate];
  [presentationDelegate visualIdentityPickerDidFinish:self];
}

- (CKVisualIdentityPickerViewControllerDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end