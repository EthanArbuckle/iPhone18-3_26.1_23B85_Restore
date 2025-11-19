@interface CNUICombinedPickerViewControllerWrapper
- (CNUICombinedPickerViewControllerWrapper)initWithDelegate:(id)a3 clearBackground:(BOOL)a4;
- (CNUICombinedPickerViewControllerWrapper)initWithMemojiMetadata:(id)a3 delegate:(id)a4 clearBackground:(BOOL)a5;
- (CNUICombinedPickerViewControllerWrapperDelegate)delegate;
- (void)combinedPickerViewController:(id)a3 didSelectRecord:(id)a4 withStickerConfiguration:(id)a5;
- (void)combinedPickerViewControllerDidCancel:(id)a3;
@end

@implementation CNUICombinedPickerViewControllerWrapper

- (CNUICombinedPickerViewControllerWrapper)initWithDelegate:(id)a3 clearBackground:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
  v11 = [getAVTAvatarFetchRequestClass_0() requestForStorePrimaryAvatar];
  v24 = 0;
  v12 = [v10 avatarsForFetchRequest:v11 error:&v24];
  v13 = v24;
  v14 = [v12 firstObject];

  if (!v14)
  {
    v15 = [getAVTAvatarFetchRequestClass_0() requestForAllAvatars];

    v23 = v13;
    v16 = [v10 avatarsForFetchRequest:v15 error:&v23];
    v17 = v23;

    v14 = [v16 firstObject];

    if (!v14)
    {
      v14 = +[CNUICoreLogProvider posters_os_log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CNUICombinedPickerViewControllerWrapper initWithDelegate:v17 clearBackground:v14];
      }

      v21 = 0;
      v13 = v17;
      v11 = v15;
      goto LABEL_11;
    }

    v13 = v17;
    v11 = v15;
  }

  v18 = [objc_alloc(getAVTCombinedPickerViewControllerClass()) initWithSelectedRecord:v14];
  [(UIViewController *)v18 setDelegate:v7];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = [MEMORY[0x1E69DC888] clearColor];
    [(UIViewController *)v18 setBackgroundColorOverride:v19];
  }

  wrappedViewController = v7->_wrappedViewController;
  v7->_wrappedViewController = v18;

  objc_storeWeak(&v7->_delegate, v6);
  v21 = v7;
LABEL_11:

LABEL_13:
  return v21;
}

- (CNUICombinedPickerViewControllerWrapper)initWithMemojiMetadata:(id)a3 delegate:(id)a4 clearBackground:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = CNUICombinedPickerViewControllerWrapper;
  v10 = [(CNUICombinedPickerViewControllerWrapper *)&v18 init];
  if (v10)
  {
    v11 = objc_alloc(getAVTCombinedPickerViewControllerClass());
    v12 = [v8 avatarRecord];
    v13 = [v11 initWithSelectedRecord:v12];

    [(UIViewController *)v13 setDelegate:v10];
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v14 = [MEMORY[0x1E69DC888] clearColor];
      [(UIViewController *)v13 setBackgroundColorOverride:v14];
    }

    wrappedViewController = v10->_wrappedViewController;
    v10->_wrappedViewController = v13;

    objc_storeWeak(&v10->_delegate, v9);
    v16 = v10;
  }

  return v10;
}

- (void)combinedPickerViewControllerDidCancel:(id)a3
{
  v4 = [(CNUICombinedPickerViewControllerWrapper *)self delegate];
  [v4 wrapperDidCancel:self];
}

- (void)combinedPickerViewController:(id)a3 didSelectRecord:(id)a4 withStickerConfiguration:(id)a5
{
  v7 = a5;
  v8 = a4;
  v10 = [[CNUIMemojiMetadata alloc] initWithAvatarRecord:v8 poseConfiguration:v7];

  v9 = [(CNUICombinedPickerViewControllerWrapper *)self delegate];
  [v9 wrapper:self memojiMetadataForSelectedRecord:v10];
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