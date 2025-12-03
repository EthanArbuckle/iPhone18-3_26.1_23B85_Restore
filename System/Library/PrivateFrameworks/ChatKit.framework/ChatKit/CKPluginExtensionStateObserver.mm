@interface CKPluginExtensionStateObserver
+ (id)sharedInstance;
- (CKPluginExtensionStateObserver)init;
- (id)description;
- (void)_iTunesStoreDialogDidDismiss;
- (void)_iTunesStoreDialogWillDisplay;
- (void)_passKitUIDismissed;
- (void)_passKitUIPresented;
- (void)_stickerDragEnded:(id)ended;
- (void)_stickerDragStarted:(id)started;
- (void)dealloc;
- (void)prepareForResume;
@end

@implementation CKPluginExtensionStateObserver

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10 != -1)
  {
    +[CKPluginExtensionStateObserver sharedInstance];
  }

  v3 = sSharedInstance;

  return v3;
}

void __48__CKPluginExtensionStateObserver_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKPluginExtensionStateObserver);
  v1 = sSharedInstance;
  sSharedInstance = v0;
}

- (CKPluginExtensionStateObserver)init
{
  v13.receiver = self;
  v13.super_class = CKPluginExtensionStateObserver;
  v2 = [(CKPluginExtensionStateObserver *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_passKitUIPresented = 0;
    v2->_iTunesStoreDialogPresented = 0;
    _PassKitApiInit();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _PassKitUIPresentedCallBack, kPKDarwinNotificationEventInAppPresented, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, v3, _PassKitUIDismissedCallBack, kPKDarwinNotificationEventInAppDismissed, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v3, _TouchIDUIPresentedCallBack, @"com.apple.LocalAuthentication.ui.presented", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, v3, _TouchIDUIDismissedCallBack, @"com.apple.LocalAuthentication.ui.dismissed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    _ITunesStoreAPIInit();
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v8, v3, _iTunesStoreDialogWillDisplayCallBack, kITunesDaemonWillDisplayDialog, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, v3, _iTunesStoreDialogDidDismissCallBack, kITunesDaemonDidDismissDialog, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__stickerDragStarted_ name:@"CKPluginExtensionStateObserverStickerDragStarted" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__stickerDragEnded_ name:@"CKPluginExtensionStateObserverStickerDragEnded" object:0];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"NO";
  if (self->_passKitUIPresented)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_iTunesStoreDialogPresented)
  {
    v5 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@ _passKitUIPresented %@, iTunesStoreDialogPresented %@>", v4, v6, v5];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kPKDarwinNotificationEventInAppPresented, 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, kITunesDaemonWillDisplayDialog, 0);
  v5.receiver = self;
  v5.super_class = CKPluginExtensionStateObserver;
  [(CKPluginExtensionStateObserver *)&v5 dealloc];
}

- (void)_iTunesStoreDialogWillDisplay
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[CKPluginExtensionStateObserver _iTunesStoreDialogWillDisplay]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%s _iTunesStoreDialogWillDisplay", &v4, 0xCu);
    }
  }

  [(CKPluginExtensionStateObserver *)self setITunesStoreDialogPresented:1];
}

- (void)_iTunesStoreDialogDidDismiss
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[CKPluginExtensionStateObserver _iTunesStoreDialogDidDismiss]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%s _iTunesStoreDialogDidDismiss", &v4, 0xCu);
    }
  }

  [(CKPluginExtensionStateObserver *)self setITunesStoreDialogPresented:0];
}

- (void)_passKitUIPresented
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[CKPluginExtensionStateObserver _passKitUIPresented]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%s _passKitUIPresented", &v4, 0xCu);
    }
  }

  [(CKPluginExtensionStateObserver *)self setPassKitUIPresented:1];
}

- (void)_passKitUIDismissed
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[CKPluginExtensionStateObserver _passKitUIDismissed]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%s _passKitUIDismissed", &v5, 0xCu);
    }
  }

  [(CKPluginExtensionStateObserver *)self setPassKitUIPresented:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CKPluginExtensionStateObserverPassKitUIDismissed" object:0];
}

- (void)_stickerDragStarted:(id)started
{
  v8 = *MEMORY[0x1E69E9840];
  startedCopy = started;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[CKPluginExtensionStateObserver _stickerDragStarted:]";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s _stickerDragStarted", &v6, 0xCu);
    }
  }

  [(CKPluginExtensionStateObserver *)self setStickerDragActiveInCurrentProcess:1];
}

- (void)_stickerDragEnded:(id)ended
{
  v8 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[CKPluginExtensionStateObserver _stickerDragEnded:]";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s _stickerDragEnded", &v6, 0xCu);
    }
  }

  [(CKPluginExtensionStateObserver *)self setStickerDragActiveInCurrentProcess:0];
}

- (void)prepareForResume
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[CKPluginExtensionStateObserver prepareForResume]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
    }
  }

  [(CKPluginExtensionStateObserver *)self _passKitUIDismissed];
  [(CKPluginExtensionStateObserver *)self _iTunesStoreDialogDidDismiss];
}

@end