@interface CKSyncController
+ (id)sharedInstance;
- (CKSyncController)init;
- (void)attachmentRestored;
- (void)postAttachmentRestored;
- (void)prioritizeAttachmentAtPath:(id)a3;
- (void)updateRestoreState;
@end

@implementation CKSyncController

- (CKSyncController)init
{
  v16.receiver = self;
  v16.super_class = CKSyncController;
  v2 = [(CKSyncController *)&v16 init];
  if (v2)
  {
    v3 = [@"com.apple.ChatKit.attachmentRestoredNotification" UTF8String];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __24__CKSyncController_init__block_invoke;
    handler[3] = &unk_1E72F5B30;
    v4 = v2;
    v15 = v4;
    v5 = MEMORY[0x1E69E96A0];
    notify_register_dispatch(v3, &v2->_attachmentRestoredToken, MEMORY[0x1E69E96A0], handler);
    v6 = [@"com.apple.MobileBackup.restoreStateChanged" UTF8String];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __24__CKSyncController_init__block_invoke_2;
    v12 = &unk_1E72F5B30;
    v7 = v4;
    v13 = v7;
    notify_register_dispatch(v6, v4 + 3, v5, &v9);

    [v7 updateRestoreState];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_once_3 != -1)
  {
    +[CKSyncController sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

void __34__CKSyncController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKSyncController);
  v1 = sharedInstance___instance;
  sharedInstance___instance = v0;
}

- (void)prioritizeAttachmentAtPath:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(46);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Prioritize attachment at path %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

  v5 = objc_alloc_init(MEMORY[0x193AF5EC0](@"ATConnection", @"AirTraffic"));
  [v5 prioritizeAsset:v3 forDataclass:@"MessagePart"];
}

- (void)updateRestoreState
{
  state64 = 0;
  notify_get_state(self->_restoreStateChangedToken, &state64);
  v3 = state64;
  [(CKSyncController *)self setRestoring:state64 == 2];
  if (v3 != 2)
  {
    notify_cancel(self->_attachmentRestoredToken);
    self->_attachmentRestoredToken = -1;
    notify_cancel(self->_restoreStateChangedToken);
    self->_restoreStateChangedToken = -1;
  }
}

- (void)attachmentRestored
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_postAttachmentRestored object:0];

  [(CKSyncController *)self performSelector:sel_postAttachmentRestored withObject:0 afterDelay:0.0];
}

- (void)postAttachmentRestored
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.ChatKit.attachmentRestoredNotification" object:self];
}

@end