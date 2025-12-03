@interface CNUICombinedPickerViewControllerWrapper
- (CNUICombinedPickerViewControllerWrapper)initWithDelegate:(id)delegate clearBackground:(BOOL)background;
- (CNUICombinedPickerViewControllerWrapper)initWithMemojiMetadata:(id)metadata delegate:(id)delegate clearBackground:(BOOL)background;
- (CNUICombinedPickerViewControllerWrapperDelegate)delegate;
- (void)combinedPickerViewController:(id)controller didSelectRecord:(id)record withStickerConfiguration:(id)configuration;
- (void)combinedPickerViewControllerDidCancel:(id)cancel;
@end

@implementation CNUICombinedPickerViewControllerWrapper

- (CNUICombinedPickerViewControllerWrapper)initWithDelegate:(id)delegate clearBackground:(BOOL)background
{
  backgroundCopy = background;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = CNUICombinedPickerViewControllerWrapper;
  v7 = [(CNUICombinedPickerViewControllerWrapper *)&v25 init];
  if (!v7)
  {
    v21 = 0;
    goto LABEL_13;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v8 = getAVTAvatarStoreClass_softClass;
  v30 = getAVTAvatarStoreClass_softClass;
  if (!getAVTAvatarStoreClass_softClass)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __getAVTAvatarStoreClass_block_invoke;
    v26[3] = &unk_1E76E79E0;
    v26[4] = &v27;
    __getAVTAvatarStoreClass_block_invoke(v26);
    v8 = v28[3];
  }

  v9 = v8;
  _Block_object_dispose(&v27, 8);
  v10 = objc_alloc_init(v8);
  requestForStorePrimaryAvatar = [getAVTAvatarFetchRequestClass_0() requestForStorePrimaryAvatar];
  v24 = 0;
  v12 = [v10 avatarsForFetchRequest:requestForStorePrimaryAvatar error:&v24];
  v13 = v24;
  firstObject = [v12 firstObject];

  if (!firstObject)
  {
    requestForAllAvatars = [getAVTAvatarFetchRequestClass_0() requestForAllAvatars];

    v23 = v13;
    v16 = [v10 avatarsForFetchRequest:requestForAllAvatars error:&v23];
    v17 = v23;

    firstObject = [v16 firstObject];

    if (!firstObject)
    {
      firstObject = +[CNUICoreLogProvider posters_os_log];
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        [CNUICombinedPickerViewControllerWrapper initWithDelegate:v17 clearBackground:firstObject];
      }

      v21 = 0;
      v13 = v17;
      requestForStorePrimaryAvatar = requestForAllAvatars;
      goto LABEL_11;
    }

    v13 = v17;
    requestForStorePrimaryAvatar = requestForAllAvatars;
  }

  v18 = [objc_alloc(getAVTCombinedPickerViewControllerClass()) initWithSelectedRecord:firstObject];
  [(UIViewController *)v18 setDelegate:v7];
  if (backgroundCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIViewController *)v18 setBackgroundColorOverride:clearColor];
  }

  wrappedViewController = v7->_wrappedViewController;
  v7->_wrappedViewController = v18;

  objc_storeWeak(&v7->_delegate, delegateCopy);
  v21 = v7;
LABEL_11:

LABEL_13:
  return v21;
}

- (CNUICombinedPickerViewControllerWrapper)initWithMemojiMetadata:(id)metadata delegate:(id)delegate clearBackground:(BOOL)background
{
  backgroundCopy = background;
  metadataCopy = metadata;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = CNUICombinedPickerViewControllerWrapper;
  v10 = [(CNUICombinedPickerViewControllerWrapper *)&v18 init];
  if (v10)
  {
    v11 = objc_alloc(getAVTCombinedPickerViewControllerClass());
    avatarRecord = [metadataCopy avatarRecord];
    v13 = [v11 initWithSelectedRecord:avatarRecord];

    [(UIViewController *)v13 setDelegate:v10];
    if (backgroundCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UIViewController *)v13 setBackgroundColorOverride:clearColor];
    }

    wrappedViewController = v10->_wrappedViewController;
    v10->_wrappedViewController = v13;

    objc_storeWeak(&v10->_delegate, delegateCopy);
    v16 = v10;
  }

  return v10;
}

- (void)combinedPickerViewControllerDidCancel:(id)cancel
{
  delegate = [(CNUICombinedPickerViewControllerWrapper *)self delegate];
  [delegate wrapperDidCancel:self];
}

- (void)combinedPickerViewController:(id)controller didSelectRecord:(id)record withStickerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  recordCopy = record;
  v10 = [[CNUIMemojiMetadata alloc] initWithAvatarRecord:recordCopy poseConfiguration:configurationCopy];

  delegate = [(CNUICombinedPickerViewControllerWrapper *)self delegate];
  [delegate wrapper:self memojiMetadataForSelectedRecord:v10];
}

- (CNUICombinedPickerViewControllerWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:(void *)a1 clearBackground:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 debugDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_ERROR, "Could not load avatar; %{public}@", &v4, 0xCu);
}

@end