@interface CKFunCameraViewController
- (CKFunCameraViewController)initWithConversation:(id)a3;
- (CKFunCameraViewControllerDelegate)delegate;
- (id)configuredContentViewControllerForPlugin:(id)a3;
- (id)contentViewControllerForPlugin:(id)a3;
- (id)traitCollection;
- (void)_checkExtensionAliveOnAppResume:(id)a3;
- (void)_dismissAndPresentPhotosApp:(BOOL)a3;
- (void)_handleRemoteConnectionInterrupted:(id)a3;
- (void)commitPayload:(id)a3;
- (void)dealloc;
- (void)physicalCaptureNotifierDidChangeState:(id)a3;
- (void)stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)startEditingPayload:(id)a3 dismiss:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CKFunCameraViewController

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v7 = self;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "CKFunCameraViewController (%p) being torn down", buf, 0xCu);
    }
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = CKFunCameraViewController;
  [(CKFunCameraViewController *)&v5 dealloc];
}

- (CKFunCameraViewController)initWithConversation:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v39.receiver = self;
  v39.super_class = CKFunCameraViewController;
  v6 = [(CKFunCameraViewController *)&v39 init];
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v41 = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "CKFunCameraViewController (%p) being created", buf, 0xCu);
      }
    }

    objc_storeStrong(&v6->_conversation, a3);
    v8 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v9 = IMBalloonExtensionIDWithSuffix();
    v10 = [v8 balloonPluginForBundleID:v9];
    balloonPlugin = v6->_balloonPlugin;
    v6->_balloonPlugin = v10;

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v6 selector:sel__handleRemoteConnectionInterrupted_ name:*MEMORY[0x1E69A6F28] object:0];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v6 selector:sel__handleRemoteConnectionInterrupted_ name:@"CKRemoteViewFailedInstantiationNotification" object:0];

    v14 = [(CKFunCameraViewController *)v6 configuredContentViewControllerForPlugin:v6->_balloonPlugin];
    v15 = v14;
    if (v14)
    {
      [(CKBrowserViewControllerProtocol *)v14 setSendDelegate:v6];
      funCameraAppViewController = v6->_funCameraAppViewController;
      v6->_funCameraAppViewController = v15;
      v17 = v15;

      v18 = [(CKBrowserViewControllerProtocol *)v17 view];
      funCameraView = v6->_funCameraView;
      v6->_funCameraView = v18;

      v20 = [MEMORY[0x1E69DC888] blackColor];
      [(UIView *)v6->_funCameraView setBackgroundColor:v20];

      v21 = [(CKFunCameraViewController *)v6 view];
      [v21 bounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = [(CKBrowserViewControllerProtocol *)v17 view];
      [v30 setFrame:{v23, v25, v27, v29}];

      [(CKFunCameraViewController *)v6 addChildViewController:v17];
      v31 = [(CKFunCameraViewController *)v6 view];
      v32 = [(CKBrowserViewControllerProtocol *)v17 view];
      [v31 addSubview:v32];

      v33 = objc_alloc_init(CKCamPhysicalCaptureNotifier);
      physicalCaptureNotifier = v6->_physicalCaptureNotifier;
      v6->_physicalCaptureNotifier = v33;

      [(CKCamPhysicalCaptureNotifier *)v6->_physicalCaptureNotifier setDelegate:v6];
      v35 = [MEMORY[0x1E696AD88] defaultCenter];
      [v35 addObserver:v6 selector:sel__checkExtensionAliveOnAppResume_ name:*MEMORY[0x1E69DDBC0] object:0];
    }

    else if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [(IMBalloonPlugin *)v6->_balloonPlugin identifier];
        *buf = 138412290;
        v41 = v37;
        _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "CKFunCameraViewController: Unable to load plugin or view controller for fun camera, plugin id %@", buf, 0xCu);
      }
    }
  }

  return v6;
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CKFunCameraViewController;
  [(CKFunCameraViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(CKFunCameraViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CKFunCameraViewController *)self funCameraView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CKFunCameraViewController;
  [(CKFunCameraViewController *)&v8 viewWillAppear:a3];
  v4 = [(CKFunCameraViewController *)self physicalCaptureNotifier];
  [v4 setEnabled:1];

  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  [v5 setIdleTimerDisabled:1];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Enabled idle timer and volume button handler", v7, 2u);
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CKFunCameraViewController;
  [(CKFunCameraViewController *)&v8 viewDidDisappear:a3];
  v4 = [(CKFunCameraViewController *)self physicalCaptureNotifier];
  [v4 setEnabled:0];

  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  [v5 setIdleTimerDisabled:0];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Disabled idle timer and volume button handler", v7, 2u);
    }
  }
}

- (id)traitCollection
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CKFunCameraViewController;
  v2 = [(CKFunCameraViewController *)&v8 traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v4 = MEMORY[0x1E69DD1B8];
  v9[0] = v2;
  v9[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v4 traitCollectionWithTraitsFromCollections:v5];

  return v6;
}

- (id)configuredContentViewControllerForPlugin:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CKFunCameraViewController *)self contentViewControllerForPlugin:v4];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 isLoaded] ^ 1;
    }

    else
    {
      v6 = 0;
    }

    v8 = [(CKFunCameraViewController *)self funCameraAppViewController];

    if (v5 != v8 || v6) && (objc_opt_respondsToSelector())
    {
      [v5 loadRemoteViewWithCompletion:0];
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [(CKFunCameraViewController *)self conversation];
      v10 = [v9 senderIdentifier];
      [v5 setSender:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [(CKFunCameraViewController *)self conversation];
      v12 = [v11 recipientStrings];

      [v5 setRecipients:v12];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "contentViewControllerForPlugin: Called with nil plugin", v14, 2u);
      }
    }

    v5 = 0;
  }

  return v5;
}

- (id)contentViewControllerForPlugin:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[CKBalloonPluginManager sharedInstance];
    v5 = [v3 identifier];

    v6 = [v4 viewControllerForPluginIdentifier:v5 dataSource:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_checkExtensionAliveOnAppResume:(id)a3
{
  v4 = a3;
  v5 = [(CKFunCameraViewController *)self funCameraAppViewController];
  v6 = [v5 isAlive];

  if ((v6 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Extension connection was dead on app resume, dismissing", v8, 2u);
      }
    }

    [(CKFunCameraViewController *)self dismiss];
  }
}

- (void)_handleRemoteConnectionInterrupted:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69A6F20]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = IMBalloonExtensionIDWithSuffix();
    if ([v7 isEqualToIgnoringCase:v6])
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Dismissing due to extension interruption for camera", v9, 2u);
        }
      }

      [(CKFunCameraViewController *)self dismiss];
    }
  }
}

- (void)commitPayload:(id)a3
{
  v4 = a3;
  v6 = [(CKFunCameraViewController *)self delegate];
  v5 = [(CKFunCameraViewController *)self conversation];
  [v6 startCommitPayload:v4 forConversation:v5];
}

- (void)startEditingPayload:(id)a3 dismiss:(BOOL)a4
{
  v5 = a3;
  v7 = [(CKFunCameraViewController *)self delegate];
  v6 = [(CKFunCameraViewController *)self conversation];
  [v7 startDeferredEditingPayload:v5 forConversation:v6];
}

- (void)stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  LODWORD(v5) = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(CKFunCameraViewController *)self conversation];
  v11 = [v10 recipientCount];

  if (v11)
  {
    v5 = v5;
  }

  else
  {
    v5 = 0;
  }

  v12 = [(CKFunCameraViewController *)self delegate];
  [v12 stageAssetArchive:v9 skipShelf:v5 completionHandler:v8];
}

- (void)_dismissAndPresentPhotosApp:(BOOL)a3
{
  [(CKFunCameraViewController *)self setIsDismissing:1];
  v5 = [(CKFunCameraViewController *)self funCameraAppViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKFunCameraViewController *)self funCameraAppViewController];
    [v7 dropAssertion];
  }

  v8 = [(CKFunCameraViewController *)self delegate];
  [v8 willDismissFunCamera:self];

  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  [v9 setIdleTimerDisabled:0];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CKFunCameraViewController__dismissAndPresentPhotosApp___block_invoke;
  v10[3] = &unk_1E72ED8D8;
  v10[4] = self;
  v11 = a3;
  [(CKFunCameraViewController *)self dismissViewControllerAnimated:1 completion:v10];
}

void __57__CKFunCameraViewController__dismissAndPresentPhotosApp___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsDismissing:0];
  v2 = [*(a1 + 32) delegate];
  [v2 didDismissFunCamera:*(a1 + 32)];

  v4 = [*(a1 + 32) funCameraAppViewController];
  if (objc_opt_respondsToSelector())
  {
    [v4 killExtensionProcess];
  }

  if (*(a1 + 40) == 1)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 presentPhotosApp];
  }
}

- (void)physicalCaptureNotifierDidChangeState:(id)a3
{
  v4 = [a3 state];
  v5 = [(CKFunCameraViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 isKeyWindow];

  if (v7)
  {
    v8 = [(CKFunCameraViewController *)self funCameraAppViewController];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(CKFunCameraViewController *)self funCameraAppViewController];
      [v10 volumeButtonPressed:v4 == 1];
    }
  }
}

- (CKFunCameraViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end