@interface CKFunCameraViewController
- (CKFunCameraViewController)initWithConversation:(id)conversation;
- (CKFunCameraViewControllerDelegate)delegate;
- (id)configuredContentViewControllerForPlugin:(id)plugin;
- (id)contentViewControllerForPlugin:(id)plugin;
- (id)traitCollection;
- (void)_checkExtensionAliveOnAppResume:(id)resume;
- (void)_dismissAndPresentPhotosApp:(BOOL)app;
- (void)_handleRemoteConnectionInterrupted:(id)interrupted;
- (void)commitPayload:(id)payload;
- (void)dealloc;
- (void)physicalCaptureNotifierDidChangeState:(id)state;
- (void)stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)startEditingPayload:(id)payload dismiss:(BOOL)dismiss;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
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
      selfCopy = self;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "CKFunCameraViewController (%p) being torn down", buf, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = CKFunCameraViewController;
  [(CKFunCameraViewController *)&v5 dealloc];
}

- (CKFunCameraViewController)initWithConversation:(id)conversation
{
  v42 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
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

    objc_storeStrong(&v6->_conversation, conversation);
    mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
    v9 = IMBalloonExtensionIDWithSuffix();
    v10 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:v9];
    balloonPlugin = v6->_balloonPlugin;
    v6->_balloonPlugin = v10;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__handleRemoteConnectionInterrupted_ name:*MEMORY[0x1E69A6F28] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__handleRemoteConnectionInterrupted_ name:@"CKRemoteViewFailedInstantiationNotification" object:0];

    v14 = [(CKFunCameraViewController *)v6 configuredContentViewControllerForPlugin:v6->_balloonPlugin];
    v15 = v14;
    if (v14)
    {
      [(CKBrowserViewControllerProtocol *)v14 setSendDelegate:v6];
      funCameraAppViewController = v6->_funCameraAppViewController;
      v6->_funCameraAppViewController = v15;
      v17 = v15;

      view = [(CKBrowserViewControllerProtocol *)v17 view];
      funCameraView = v6->_funCameraView;
      v6->_funCameraView = view;

      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [(UIView *)v6->_funCameraView setBackgroundColor:blackColor];

      view2 = [(CKFunCameraViewController *)v6 view];
      [view2 bounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      view3 = [(CKBrowserViewControllerProtocol *)v17 view];
      [view3 setFrame:{v23, v25, v27, v29}];

      [(CKFunCameraViewController *)v6 addChildViewController:v17];
      view4 = [(CKFunCameraViewController *)v6 view];
      view5 = [(CKBrowserViewControllerProtocol *)v17 view];
      [view4 addSubview:view5];

      v33 = objc_alloc_init(CKCamPhysicalCaptureNotifier);
      physicalCaptureNotifier = v6->_physicalCaptureNotifier;
      v6->_physicalCaptureNotifier = v33;

      [(CKCamPhysicalCaptureNotifier *)v6->_physicalCaptureNotifier setDelegate:v6];
      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter3 addObserver:v6 selector:sel__checkExtensionAliveOnAppResume_ name:*MEMORY[0x1E69DDBC0] object:0];
    }

    else if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        identifier = [(IMBalloonPlugin *)v6->_balloonPlugin identifier];
        *buf = 138412290;
        v41 = identifier;
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
  view = [(CKFunCameraViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  funCameraView = [(CKFunCameraViewController *)self funCameraView];
  [funCameraView setFrame:{v5, v7, v9, v11}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CKFunCameraViewController;
  [(CKFunCameraViewController *)&v8 viewWillAppear:appear];
  physicalCaptureNotifier = [(CKFunCameraViewController *)self physicalCaptureNotifier];
  [physicalCaptureNotifier setEnabled:1];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] setIdleTimerDisabled:1];

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

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = CKFunCameraViewController;
  [(CKFunCameraViewController *)&v8 viewDidDisappear:disappear];
  physicalCaptureNotifier = [(CKFunCameraViewController *)self physicalCaptureNotifier];
  [physicalCaptureNotifier setEnabled:0];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] setIdleTimerDisabled:0];

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
  traitCollection = [(CKFunCameraViewController *)&v8 traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v4 = MEMORY[0x1E69DD1B8];
  v9[0] = traitCollection;
  v9[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v4 traitCollectionWithTraitsFromCollections:v5];

  return v6;
}

- (id)configuredContentViewControllerForPlugin:(id)plugin
{
  pluginCopy = plugin;
  if (pluginCopy)
  {
    v5 = [(CKFunCameraViewController *)self contentViewControllerForPlugin:pluginCopy];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 isLoaded] ^ 1;
    }

    else
    {
      v6 = 0;
    }

    funCameraAppViewController = [(CKFunCameraViewController *)self funCameraAppViewController];

    if (v5 != funCameraAppViewController || v6) && (objc_opt_respondsToSelector())
    {
      [v5 loadRemoteViewWithCompletion:0];
    }

    if (objc_opt_respondsToSelector())
    {
      conversation = [(CKFunCameraViewController *)self conversation];
      senderIdentifier = [conversation senderIdentifier];
      [v5 setSender:senderIdentifier];
    }

    if (objc_opt_respondsToSelector())
    {
      conversation2 = [(CKFunCameraViewController *)self conversation];
      recipientStrings = [conversation2 recipientStrings];

      [v5 setRecipients:recipientStrings];
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

- (id)contentViewControllerForPlugin:(id)plugin
{
  if (plugin)
  {
    pluginCopy = plugin;
    v4 = +[CKBalloonPluginManager sharedInstance];
    identifier = [pluginCopy identifier];

    v6 = [v4 viewControllerForPluginIdentifier:identifier dataSource:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_checkExtensionAliveOnAppResume:(id)resume
{
  resumeCopy = resume;
  funCameraAppViewController = [(CKFunCameraViewController *)self funCameraAppViewController];
  isAlive = [funCameraAppViewController isAlive];

  if ((isAlive & 1) == 0)
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

- (void)_handleRemoteConnectionInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  userInfo = [interruptedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69A6F20]];
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

- (void)commitPayload:(id)payload
{
  payloadCopy = payload;
  delegate = [(CKFunCameraViewController *)self delegate];
  conversation = [(CKFunCameraViewController *)self conversation];
  [delegate startCommitPayload:payloadCopy forConversation:conversation];
}

- (void)startEditingPayload:(id)payload dismiss:(BOOL)dismiss
{
  payloadCopy = payload;
  delegate = [(CKFunCameraViewController *)self delegate];
  conversation = [(CKFunCameraViewController *)self conversation];
  [delegate startDeferredEditingPayload:payloadCopy forConversation:conversation];
}

- (void)stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  LODWORD(v5) = shelf;
  handlerCopy = handler;
  archiveCopy = archive;
  conversation = [(CKFunCameraViewController *)self conversation];
  recipientCount = [conversation recipientCount];

  if (recipientCount)
  {
    v5 = v5;
  }

  else
  {
    v5 = 0;
  }

  delegate = [(CKFunCameraViewController *)self delegate];
  [delegate stageAssetArchive:archiveCopy skipShelf:v5 completionHandler:handlerCopy];
}

- (void)_dismissAndPresentPhotosApp:(BOOL)app
{
  [(CKFunCameraViewController *)self setIsDismissing:1];
  funCameraAppViewController = [(CKFunCameraViewController *)self funCameraAppViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    funCameraAppViewController2 = [(CKFunCameraViewController *)self funCameraAppViewController];
    [funCameraAppViewController2 dropAssertion];
  }

  delegate = [(CKFunCameraViewController *)self delegate];
  [delegate willDismissFunCamera:self];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] setIdleTimerDisabled:0];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CKFunCameraViewController__dismissAndPresentPhotosApp___block_invoke;
  v10[3] = &unk_1E72ED8D8;
  v10[4] = self;
  appCopy = app;
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

- (void)physicalCaptureNotifierDidChangeState:(id)state
{
  state = [state state];
  view = [(CKFunCameraViewController *)self view];
  window = [view window];
  isKeyWindow = [window isKeyWindow];

  if (isKeyWindow)
  {
    funCameraAppViewController = [(CKFunCameraViewController *)self funCameraAppViewController];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      funCameraAppViewController2 = [(CKFunCameraViewController *)self funCameraAppViewController];
      [funCameraAppViewController2 volumeButtonPressed:state == 1];
    }
  }
}

- (CKFunCameraViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end