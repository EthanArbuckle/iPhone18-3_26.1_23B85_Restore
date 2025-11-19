@interface CKSaveToPhotosActivity
- (CKSaveToPhotosActivity)initWithMediaObject:(id)a3 presenterViewController:(id)a4;
- (UIViewController)presenterViewController;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation CKSaveToPhotosActivity

- (CKSaveToPhotosActivity)initWithMediaObject:(id)a3 presenterViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CKSaveToPhotosActivity;
  v9 = [(UIActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaObject, a3);
    objc_storeWeak(&v10->_presenterViewController, v8);
  }

  return v10;
}

- (id)activityTitle
{
  v2 = [(CKSaveToPhotosActivity *)self mediaObject];
  v3 = [v2 mediaType];

  v4 = CKFrameworkBundle();
  v5 = v4;
  v6 = @"PREVIEW_SAVE_ITEM";
  if (v3 == 2)
  {
    v6 = @"PREVIEW_SAVE_VIDEO";
  }

  if (v3 == 3)
  {
    v7 = @"PREVIEW_SAVE_PHOTO";
  }

  else
  {
    v7 = v6;
  }

  v8 = [v4 localizedStringForKey:v7 value:&stru_1F04268F8 table:@"ChatKit"];

  return v8;
}

- (void)performActivity
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(CKSaveToPhotosActivity *)self mediaObject];
  v4 = [(CKSaveToPhotosActivity *)self presenterViewController];
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Share sheet Save requested for media object: %@. PresenterViewController: %@.", buf, 0x16u);
  }

  if (v4 && v3)
  {
    v15 = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v7 = CKMomentShareURLForMediaObjects(v6);

    v14 = v3;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    v9 = *MEMORY[0x1E69A7618];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__CKSaveToPhotosActivity_performActivity__block_invoke;
    v13[3] = &unk_1E72EC088;
    v13[4] = self;
    v10 = [CKUtilities quickSaveConfirmationAlertForMediaObjects:v8 momentShareURL:v7 popoverSource:0 metricsSource:v9 cancelHandler:0 preSaveHandler:0 postSaveHandler:v13];

    if (v10)
    {
      [v4 presentViewController:v10 animated:1 completion:0];
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Share sheet Save: confirmation alert is nil.", buf, 2u);
      }
    }
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Share sheet Save will not execute.", buf, 2u);
    }

    [(UIActivity *)self activityDidFinish:0];
  }
}

- (UIViewController)presenterViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterViewController);

  return WeakRetained;
}

@end