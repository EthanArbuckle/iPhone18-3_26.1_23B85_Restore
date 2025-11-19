@interface CKTranscriptBackgroundChannelController
+ (BOOL)channelNeedsUpdate:(id)a3 forChatGUID:(id)a4 deviceIndependentID:(id)a5 backgroundGUID:(id)a6 posterConfiguration:(id)a7;
+ (CKTranscriptBackgroundChannelController)sharedTranscriptBackgroundChannelController;
+ (id)_sWorkQueue;
+ (void)_updateChannelUsingUpdater:(id)a3 channel:(id)a4 posterConfiguration:(id)a5 chatGUID:(id)a6 deviceIndependentID:(id)a7 backgroundGUID:(id)a8;
- (BOOL)_bypassesPosterGalleryCache;
- (BOOL)isChannelControllerReady;
- (CKTranscriptBackgroundChannelController)init;
- (CKTranscriptBackgroundChannelController)initWithDirectory:(id)a3;
- (id)channelForChatGUID:(id)a3;
- (id)channelForChatGUIDBlockingIfNeeded:(id)a3;
- (void)_asyncFetchNewGalleryObjectForChannel:(id)a3 fetchRequest:(id)a4 completion:(id)a5;
- (void)_createChannelWithChatGUID:(id)a3 deviceIndependentID:(id)a4 backgroundGUID:(id)a5 retryIfNeeded:(BOOL)a6 completion:(id)a7;
- (void)_fetchPosterGalleryForChannel:(id)a3 fetchRequest:(id)a4 completion:(id)a5;
- (void)_updateChannel:(id)a3 usingChatGUID:(id)a4 deviceIndependentID:(id)a5 backgroundGUID:(id)a6 posterConfiguration:(id)a7 completion:(id)a8;
- (void)channelForChatGUID:(id)a3 completion:(id)a4;
- (void)cleanUpLegacyChannelsForChatGUID:(id)a3 completion:(id)a4;
- (void)createChannelWithChatGUID:(id)a3 deviceIndependentID:(id)a4 backgroundGUID:(id)a5 completion:(id)a6;
- (void)fetchPosterGalleryForChatGUID:(id)a3 deviceIndependentID:(id)a4 backgroundGUID:(id)a5 fetchRequest:(id)a6 completion:(id)a7;
- (void)loadChannelAsyncForChatGUID:(id)a3 deviceIndependentID:(id)a4 backgroundGUID:(id)a5 createsChannelIfNeeded:(BOOL)a6 completion:(id)a7;
- (void)prewarmChannelSnapshotsForChatGUID:(id)a3 forInterfaceStyle:(int64_t)a4 orientation:(int64_t)a5;
- (void)removeChannelForChatGUID:(id)a3 completion:(id)a4;
- (void)updateChannelUsingChatGUID:(id)a3 deviceIndependentID:(id)a4 backgroundGUID:(id)a5 posterConfiguration:(id)a6 completion:(id)a7;
@end

@implementation CKTranscriptBackgroundChannelController

- (CKTranscriptBackgroundChannelController)initWithDirectory:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  Helper_x8__OBJC_CLASS___PRUISPosterChannelConfiguration = gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannelConfiguration(v5);
  v8 = *(v7 + 136);
  v21 = 0;
  v9 = [v8 backdropChannelConfigurationForURL:v4 error:{&v21, Helper_x8__OBJC_CLASS___PRUISPosterChannelConfiguration}];
  v10 = v21;
  [v9 setReapOptions:4];
  if (v9)
  {
    v20.receiver = self;
    v20.super_class = CKTranscriptBackgroundChannelController;
    v11 = [(CKTranscriptBackgroundChannelController *)&v20 init];
    if (v11)
    {
      objc_initWeak(location, v11);
      v12 = [objc_opt_class() _sWorkQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__CKTranscriptBackgroundChannelController_initWithDirectory___block_invoke;
      block[3] = &unk_1E72EE0D0;
      v18 = v9;
      objc_copyWeak(&v19, location);
      dispatch_async(v12, block);

      objc_destroyWeak(&v19);
      objc_destroyWeak(location);
    }

    self = v11;
    v13 = self;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v4 absoluteString];
        *location = 138412546;
        *&location[4] = v15;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Failed to create channel configuration for URL: %@ due to: %@", location, 0x16u);
      }
    }

    v13 = 0;
  }

  return v13;
}

void __61__CKTranscriptBackgroundChannelController_initWithDirectory___block_invoke(uint64_t a1, double a2)
{
  gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannelController(a2);
  v5 = [objc_alloc(*(v3 + 152)) initWithConfiguration:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPkChannelController:v5];
}

- (CKTranscriptBackgroundChannelController)init
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = IMExternalAttachmentsDirectoryURL();
  v5 = [v4 URLByAppendingPathComponent:@"BackgroundChannels" isDirectory:1];
  v12 = 0;
  v6 = [v3 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v12];
  v7 = v12;
  if (v6)
  {
    self = [(CKTranscriptBackgroundChannelController *)self initWithDirectory:v5];
    v8 = self;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v5 absoluteString];
        *buf = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Failed to create channels directory at '%@' due to: %@", buf, 0x16u);
      }
    }

    v8 = 0;
  }

  return v8;
}

+ (CKTranscriptBackgroundChannelController)sharedTranscriptBackgroundChannelController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__CKTranscriptBackgroundChannelController_sharedTranscriptBackgroundChannelController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedTranscriptBackgroundChannelController_onceToken != -1)
  {
    dispatch_once(&sharedTranscriptBackgroundChannelController_onceToken, block);
  }

  v2 = sharedTranscriptBackgroundChannelController_sharedInstance;

  return v2;
}

void __86__CKTranscriptBackgroundChannelController_sharedTranscriptBackgroundChannelController__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedTranscriptBackgroundChannelController_sharedInstance;
  sharedTranscriptBackgroundChannelController_sharedInstance = v0;
}

+ (id)_sWorkQueue
{
  if (_sWorkQueue_once != -1)
  {
    +[CKTranscriptBackgroundChannelController _sWorkQueue];
  }

  v3 = _sWorkQueue_sWorkQueue;

  return v3;
}

void __54__CKTranscriptBackgroundChannelController__sWorkQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.Messages.CKTranscriptBackgroundChannelControllerWorkQueue", attr);
  v2 = _sWorkQueue_sWorkQueue;
  _sWorkQueue_sWorkQueue = v1;
}

- (BOOL)isChannelControllerReady
{
  v2 = [(CKTranscriptBackgroundChannelController *)self pkChannelController];
  v3 = v2 != 0;

  return v3;
}

- (void)channelForChatGUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [objc_opt_class() _sWorkQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__CKTranscriptBackgroundChannelController_channelForChatGUID_completion___block_invoke;
  v11[3] = &unk_1E72EE750;
  v12 = v6;
  v9 = v6;
  objc_copyWeak(&v14, &location);
  v13 = v7;
  v10 = v7;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __73__CKTranscriptBackgroundChannelController_channelForChatGUID_completion___block_invoke(id *a1)
{
  v2 = [a1[4] ck_asUUID];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = [WeakRetained pkChannelController];
  v5 = objc_opt_respondsToSelector();

  v6 = objc_loadWeakRetained(a1 + 6);
  v7 = [v6 pkChannelController];
  v8 = v7;
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__CKTranscriptBackgroundChannelController_channelForChatGUID_completion___block_invoke_2;
    v10[3] = &unk_1E72EE940;
    v11 = a1[5];
    [v8 channelForIdentifier:v2 completion:v10];
  }

  else
  {
    v9 = [v7 channelForIdentifier:v2];

    (*(a1[5] + 2))();
  }
}

- (id)channelForChatGUID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKTranscriptBackgroundChannelController *)self isChannelControllerReady])
  {
    v5 = [v4 ck_asUUID];
    v6 = [(CKTranscriptBackgroundChannelController *)self pkChannelController];
    v7 = objc_opt_respondsToSelector();

    v8 = [(CKTranscriptBackgroundChannelController *)self pkChannelController];
    v9 = v8;
    if (v7)
    {
      v14 = 0;
      v10 = [v8 channelForIdentifierIfImmediatelyAvailable:v5 error:&v14];
      v11 = v14;

      if (v11 && IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v16 = "[CKTranscriptBackgroundChannelController channelForChatGUID:]";
          v17 = 2112;
          v18 = v11;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "%s failed to fetch channel immediately if available with error %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = [v8 channelForIdentifier:v5];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)channelForChatGUIDBlockingIfNeeded:(id)a3
{
  v4 = a3;
  if ([(CKTranscriptBackgroundChannelController *)self isChannelControllerReady])
  {
    v5 = [v4 ck_asUUID];
    v6 = [(CKTranscriptBackgroundChannelController *)self pkChannelController];
    v7 = [v6 channelForIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)prewarmChannelSnapshotsForChatGUID:(id)a3 forInterfaceStyle:(int64_t)a4 orientation:(int64_t)a5
{
  v8 = a3;
  objc_initWeak(&location, self);
  v9 = [v8 ck_asUUID];
  v10 = [objc_opt_class() _sWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__CKTranscriptBackgroundChannelController_prewarmChannelSnapshotsForChatGUID_forInterfaceStyle_orientation___block_invoke;
  block[3] = &unk_1E72F5D60;
  objc_copyWeak(v14, &location);
  v13 = v9;
  v14[1] = a4;
  v14[2] = a5;
  v11 = v9;
  dispatch_async(v10, block);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __108__CKTranscriptBackgroundChannelController_prewarmChannelSnapshotsForChatGUID_forInterfaceStyle_orientation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained pkChannelController];
  v14 = [v3 channelForIdentifier:*(a1 + 32)];

  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    gotLoadHelper_x8__OBJC_CLASS___PRUISPosterSnapshotDescriptor(v4);
    v6 = objc_alloc(*(v5 + 232));
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    Helper_x8__OBJC_CLASS___PRUISPosterChannelSnapshotDefinition = gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannelSnapshotDefinition(v9);
    v12 = [*(v11 + 160) waitingForLiveRenderingSceneDefinition];
    v13 = [v6 initWithUserInterfaceStyle:v8 interfaceOrientation:v7 snapshotDefinition:v12];

    [v14 prewarmSnapshotForDescriptor:v13];
  }
}

- (void)removeChannelForChatGUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__CKTranscriptBackgroundChannelController_removeChannelForChatGUID_completion___block_invoke;
  v9[3] = &unk_1E72F5D88;
  v9[4] = self;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [(CKTranscriptBackgroundChannelController *)self channelForChatGUID:v6 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __79__CKTranscriptBackgroundChannelController_removeChannelForChatGUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [objc_opt_class() _sWorkQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__CKTranscriptBackgroundChannelController_removeChannelForChatGUID_completion___block_invoke_2;
    block[3] = &unk_1E72EE778;
    objc_copyWeak(&v14, (a1 + 48));
    v12 = v5;
    v13 = *(a1 + 40);
    dispatch_async(v8, block);

    objc_destroyWeak(&v14);
  }

  else
  {
    if (v6 && IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v16 = "[CKTranscriptBackgroundChannelController removeChannelForChatGUID:completion:]_block_invoke";
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "%s failed to fetch channel async with error %@", buf, 0x16u);
      }
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 0);
    }
  }
}

uint64_t __79__CKTranscriptBackgroundChannelController_removeChannelForChatGUID_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained pkChannelController];
  [v3 removeChannel:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)cleanUpLegacyChannelsForChatGUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 _legacy_ck_asUUID];
  objc_initWeak(&location, self);
  v9 = [objc_opt_class() _sWorkQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__CKTranscriptBackgroundChannelController_cleanUpLegacyChannelsForChatGUID_completion___block_invoke;
  v12[3] = &unk_1E72EE778;
  objc_copyWeak(&v15, &location);
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __87__CKTranscriptBackgroundChannelController_cleanUpLegacyChannelsForChatGUID_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained pkChannelController];
  v9 = [v3 channelForIdentifier:*(a1 + 32)];

  if (v9)
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = [v4 pkChannelController];
    [v5 removeChannel:v9];

    v6 = *(a1 + 40);
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
  }

  else
  {
    v8 = *(a1 + 40);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *(v8 + 16);
  }

  v7();
LABEL_7:
}

- (void)loadChannelAsyncForChatGUID:(id)a3 deviceIndependentID:(id)a4 backgroundGUID:(id)a5 createsChannelIfNeeded:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __140__CKTranscriptBackgroundChannelController_loadChannelAsyncForChatGUID_deviceIndependentID_backgroundGUID_createsChannelIfNeeded_completion___block_invoke;
  v20[3] = &unk_1E72F5DD8;
  v16 = v15;
  v24 = v16;
  v26 = a6;
  objc_copyWeak(&v25, &location);
  v17 = v12;
  v21 = v17;
  v18 = v13;
  v22 = v18;
  v19 = v14;
  v23 = v19;
  [(CKTranscriptBackgroundChannelController *)self channelForChatGUID:v17 completion:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __140__CKTranscriptBackgroundChannelController_loadChannelAsyncForChatGUID_deviceIndependentID_backgroundGUID_createsChannelIfNeeded_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v17 = "[CKTranscriptBackgroundChannelController loadChannelAsyncForChatGUID:deviceIndependentID:backgroundGUID:createsChannelIfNeeded:completion:]_block_invoke";
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%s failed to fetch channel async with error %@", buf, 0x16u);
    }
  }

  if (v5 || (*(a1 + 72) & 1) == 0)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __140__CKTranscriptBackgroundChannelController_loadChannelAsyncForChatGUID_deviceIndependentID_backgroundGUID_createsChannelIfNeeded_completion___block_invoke_74;
    v13[3] = &unk_1E72F5DB0;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v14 = 0;
    v15 = v12;
    [WeakRetained createChannelWithChatGUID:v9 deviceIndependentID:v10 backgroundGUID:v11 completion:v13];
  }
}

- (void)createChannelWithChatGUID:(id)a3 deviceIndependentID:(id)a4 backgroundGUID:(id)a5 completion:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __115__CKTranscriptBackgroundChannelController_createChannelWithChatGUID_deviceIndependentID_backgroundGUID_completion___block_invoke;
  v12[3] = &unk_1E72EE940;
  v13 = v10;
  v11 = v10;
  [(CKTranscriptBackgroundChannelController *)self _createChannelWithChatGUID:a3 deviceIndependentID:a4 backgroundGUID:a5 retryIfNeeded:1 completion:v12];
}

- (void)_createChannelWithChatGUID:(id)a3 deviceIndependentID:(id)a4 backgroundGUID:(id)a5 retryIfNeeded:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [v12 ck_asUUID];
  objc_initWeak(&location, self);
  v17 = [objc_opt_class() _sWorkQueue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __130__CKTranscriptBackgroundChannelController__createChannelWithChatGUID_deviceIndependentID_backgroundGUID_retryIfNeeded_completion___block_invoke;
  v23[3] = &unk_1E72F5E28;
  objc_copyWeak(&v29, &location);
  v24 = v16;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v30 = a6;
  v28 = v15;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v16;
  dispatch_async(v17, v23);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __130__CKTranscriptBackgroundChannelController__createChannelWithChatGUID_deviceIndependentID_backgroundGUID_retryIfNeeded_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained pkChannelController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __130__CKTranscriptBackgroundChannelController__createChannelWithChatGUID_deviceIndependentID_backgroundGUID_retryIfNeeded_completion___block_invoke_2;
  v12[3] = &unk_1E72EC300;
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __130__CKTranscriptBackgroundChannelController__createChannelWithChatGUID_deviceIndependentID_backgroundGUID_retryIfNeeded_completion___block_invoke_3;
  v5[3] = &unk_1E72F5E00;
  v11 = *(a1 + 80);
  v6 = *(a1 + 40);
  objc_copyWeak(&v10, (a1 + 72));
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  [v3 createChannelWithIdentifier:v4 updater:v12 completion:v5];

  objc_destroyWeak(&v10);
}

void __130__CKTranscriptBackgroundChannelController__createChannelWithChatGUID_deviceIndependentID_backgroundGUID_retryIfNeeded_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  [objc_opt_class() _updateChannelUsingUpdater:v3 channel:0 posterConfiguration:0 chatGUID:a1[4] deviceIndependentID:a1[5] backgroundGUID:a1[6]];
}

void __130__CKTranscriptBackgroundChannelController__createChannelWithChatGUID_deviceIndependentID_backgroundGUID_retryIfNeeded_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 || (*(a1 + 72) & 1) == 0)
  {
    if (!v5 && IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v12 = 138412546;
        v13 = v11;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Channel creation (%@) failed: %@", &v12, 0x16u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v12 = 138412546;
        v13 = v8;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Channel creation (%@) failed (will retry): %@", &v12, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _createChannelWithChatGUID:*(a1 + 32) deviceIndependentID:*(a1 + 40) backgroundGUID:*(a1 + 48) retryIfNeeded:0 completion:*(a1 + 56)];
  }
}

+ (void)_updateChannelUsingUpdater:(id)a3 channel:(id)a4 posterConfiguration:(id)a5 chatGUID:(id)a6 deviceIndependentID:(id)a7 backgroundGUID:(id)a8
{
  v35 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v28 = a6;
  v16 = a7;
  v17 = a8;
  [v13 setPosterConfiguration:v15];
  v18 = [MEMORY[0x1E695DF20] ck_newChannelContextUserInfoDictionaryWithDeviceIndependentID:v16];
  Helper_x8__OBJC_CLASS___PRUISPosterChannelContext = gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannelContext(v19);
  v22 = [*(v21 + 144) backdropContextWithUserInfo:{v18, Helper_x8__OBJC_CLASS___PRUISPosterChannelContext}];
  v23 = [v14 channelContext];
  v24 = [v22 isEqual:v23];
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "+[CKTranscriptBackgroundChannelController _updateChannelUsingUpdater:channel:posterConfiguration:chatGUID:deviceIndependentID:backgroundGUID:]";
      v31 = 2112;
      v32 = v14;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "%s channel %@ updating with poster config %@", buf, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = v23;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "About to compare existing context %@, with new context: %@", buf, 0x16u);
    }
  }

  if ((v24 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Context are not equal invalidating", buf, 2u);
      }
    }

    [v13 setChannelContext:v22];
  }
}

- (void)updateChannelUsingChatGUID:(id)a3 deviceIndependentID:(id)a4 backgroundGUID:(id)a5 posterConfiguration:(id)a6 completion:(id)a7
{
  v37 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_initWeak(&location, self);
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v32 = "[CKTranscriptBackgroundChannelController updateChannelUsingChatGUID:deviceIndependentID:backgroundGUID:posterConfiguration:completion:]";
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "%s Will update channel for chat GUID %@ with configuration %@", buf, 0x20u);
    }
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __136__CKTranscriptBackgroundChannelController_updateChannelUsingChatGUID_deviceIndependentID_backgroundGUID_posterConfiguration_completion___block_invoke;
  v23[3] = &unk_1E72F5E78;
  v18 = v12;
  v24 = v18;
  objc_copyWeak(&v29, &location);
  v19 = v13;
  v25 = v19;
  v20 = v14;
  v26 = v20;
  v21 = v15;
  v27 = v21;
  v22 = v16;
  v28 = v22;
  [(CKTranscriptBackgroundChannelController *)self channelForChatGUID:v18 completion:v23];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __136__CKTranscriptBackgroundChannelController_updateChannelUsingChatGUID_deviceIndependentID_backgroundGUID_posterConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "[CKTranscriptBackgroundChannelController updateChannelUsingChatGUID:deviceIndependentID:backgroundGUID:posterConfiguration:completion:]_block_invoke";
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%s failed to fetch channel async with error %@", buf, 0x16u);
    }
  }

  v8 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        *buf = 136315650;
        v26 = "[CKTranscriptBackgroundChannelController updateChannelUsingChatGUID:deviceIndependentID:backgroundGUID:posterConfiguration:completion:]_block_invoke";
        v27 = 2112;
        v28 = v10;
        v29 = 2112;
        v30 = v5;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "%s Existing channel found for chat GUID %@ -- %@", buf, 0x20u);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained _updateChannel:v5 usingChatGUID:*(a1 + 32) deviceIndependentID:*(a1 + 40) backgroundGUID:*(a1 + 48) posterConfiguration:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    if (v8)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        *buf = 136315394;
        v26 = "[CKTranscriptBackgroundChannelController updateChannelUsingChatGUID:deviceIndependentID:backgroundGUID:posterConfiguration:completion:]_block_invoke";
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "%s No existing channel found for chat GUID %@, creating", buf, 0x16u);
      }
    }

    v14 = objc_loadWeakRetained((a1 + 72));
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __136__CKTranscriptBackgroundChannelController_updateChannelUsingChatGUID_deviceIndependentID_backgroundGUID_posterConfiguration_completion___block_invoke_79;
    v18[3] = &unk_1E72F5E50;
    v19 = v16;
    v23 = *(a1 + 64);
    objc_copyWeak(&v24, (a1 + 72));
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    [v14 createChannelWithChatGUID:v19 deviceIndependentID:v15 backgroundGUID:v17 completion:v18];

    objc_destroyWeak(&v24);
    WeakRetained = v19;
  }
}

void __136__CKTranscriptBackgroundChannelController_updateChannelUsingChatGUID_deviceIndependentID_backgroundGUID_posterConfiguration_completion___block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained _updateChannel:v5 usingChatGUID:*(a1 + 32) deviceIndependentID:*(a1 + 40) backgroundGUID:*(a1 + 48) posterConfiguration:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v10 = 138412546;
        v11 = v9;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Channel update (chatrGUID: %@) required a channel to be created. The channel creation failed due to: %@", &v10, 0x16u);
      }
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (void)_updateChannel:(id)a3 usingChatGUID:(id)a4 deviceIndependentID:(id)a5 backgroundGUID:(id)a6 posterConfiguration:(id)a7 completion:(id)a8
{
  v43 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [objc_opt_class() channelNeedsUpdate:v14 forChatGUID:v15 deviceIndependentID:v16 backgroundGUID:v17 posterConfiguration:v18];
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = @"NO";
      v38 = "[CKTranscriptBackgroundChannelController _updateChannel:usingChatGUID:deviceIndependentID:backgroundGUID:posterConfiguration:completion:]";
      *buf = 136315650;
      if (v20)
      {
        v22 = @"YES";
      }

      v39 = 2112;
      v40 = v22;
      v41 = 2112;
      v42 = v14;
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "%s update needed %@ for channel %@", buf, 0x20u);
    }
  }

  if (v20)
  {
    objc_initWeak(buf, self);
    v23 = [objc_opt_class() _sWorkQueue];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __138__CKTranscriptBackgroundChannelController__updateChannel_usingChatGUID_deviceIndependentID_backgroundGUID_posterConfiguration_completion___block_invoke_2;
    v27[3] = &unk_1E72F5EC8;
    objc_copyWeak(&v34, buf);
    v28 = v14;
    v29 = v18;
    v30 = v15;
    v31 = v16;
    v32 = v17;
    v33 = v19;
    v24 = v19;
    dispatch_async(v23, v27);

    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
  }

  else
  {
    v25 = [objc_opt_class() _sWorkQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __138__CKTranscriptBackgroundChannelController__updateChannel_usingChatGUID_deviceIndependentID_backgroundGUID_posterConfiguration_completion___block_invoke;
    block[3] = &unk_1E72EBDB8;
    v36 = v19;
    v26 = v19;
    dispatch_async(v25, block);
  }
}

void __138__CKTranscriptBackgroundChannelController__updateChannel_usingChatGUID_deviceIndependentID_backgroundGUID_posterConfiguration_completion___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 10);
  v3 = [WeakRetained pkChannelController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __138__CKTranscriptBackgroundChannelController__updateChannel_usingChatGUID_deviceIndependentID_backgroundGUID_posterConfiguration_completion___block_invoke_3;
  v12[3] = &unk_1E72F5EA0;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v15 = a1[8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __138__CKTranscriptBackgroundChannelController__updateChannel_usingChatGUID_deviceIndependentID_backgroundGUID_posterConfiguration_completion___block_invoke_4;
  v10[3] = &unk_1E72EE940;
  v11 = a1[9];
  [v3 updateChannel:v4 updater:v12 completion:v10];
}

void __138__CKTranscriptBackgroundChannelController__updateChannel_usingChatGUID_deviceIndependentID_backgroundGUID_posterConfiguration_completion___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  [objc_opt_class() _updateChannelUsingUpdater:v3 channel:a1[4] posterConfiguration:a1[5] chatGUID:a1[6] deviceIndependentID:a1[7] backgroundGUID:a1[8]];
}

void __138__CKTranscriptBackgroundChannelController__updateChannel_usingChatGUID_deviceIndependentID_backgroundGUID_posterConfiguration_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 136315650;
      v10 = "[CKTranscriptBackgroundChannelController _updateChannel:usingChatGUID:deviceIndependentID:backgroundGUID:posterConfiguration:completion:]_block_invoke_4";
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%s channel %@ updated error %@", &v9, 0x20u);
    }
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"CKTranscriptBackgroundChannelControllerChannelUpdatedNotification" object:v5];

  (*(*(a1 + 32) + 16))();
}

+ (BOOL)channelNeedsUpdate:(id)a3 forChatGUID:(id)a4 deviceIndependentID:(id)a5 backgroundGUID:(id)a6 posterConfiguration:(id)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v30 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [v11 posterConfiguration];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v32 = v15;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "About to compare existing config: %@, with new config: %@", buf, 0x16u);
    }
  }

  if (([v15 isEqual:v14] & 1) != 0 || !(v14 | v15))
  {
    v17 = [MEMORY[0x1E695DF20] ck_newChannelContextUserInfoDictionaryWithDeviceIndependentID:v12];
    Helper_x8__OBJC_CLASS___PRUISPosterChannelContext = gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannelContext(v18);
    v21 = [*(v20 + 144) backdropContextWithUserInfo:{v17, Helper_x8__OBJC_CLASS___PRUISPosterChannelContext}];
    v22 = [v11 channelContext];
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v32 = v22;
        v33 = 2112;
        v34 = v21;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "About to compare existing context %@, with new context: %@", buf, 0x16u);
      }
    }

    v24 = [v22 isEqual:v21];
    v25 = IMOSLoggingEnabled();
    if (v24)
    {
      if (v25)
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Channel contexts are equal, we don't need to update.", buf, 2u);
        }

LABEL_19:
      }
    }

    else if (v25)
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Channel needs update.", buf, 2u);
      }

      goto LABEL_19;
    }

    v27 = v24 ^ 1;
    goto LABEL_26;
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Poster configs are unequal, we need to update.", buf, 2u);
    }
  }

  v27 = 1;
LABEL_26:

  return v27;
}

- (void)fetchPosterGalleryForChatGUID:(id)a3 deviceIndependentID:(id)a4 backgroundGUID:(id)a5 fetchRequest:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __132__CKTranscriptBackgroundChannelController_fetchPosterGalleryForChatGUID_deviceIndependentID_backgroundGUID_fetchRequest_completion___block_invoke;
  v22[3] = &unk_1E72F5F40;
  objc_copyWeak(&v28, &location);
  v17 = v15;
  v23 = v17;
  v18 = v16;
  v27 = v18;
  v19 = v12;
  v24 = v19;
  v20 = v13;
  v25 = v20;
  v21 = v14;
  v26 = v21;
  [(CKTranscriptBackgroundChannelController *)self channelForChatGUID:v19 completion:v22];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __132__CKTranscriptBackgroundChannelController_fetchPosterGalleryForChatGUID_deviceIndependentID_backgroundGUID_fetchRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[CKTranscriptBackgroundChannelController fetchPosterGalleryForChatGUID:deviceIndependentID:backgroundGUID:fetchRequest:completion:]_block_invoke";
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "%s failed to fetch channel async with error %@", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (v5)
  {
    v9 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __132__CKTranscriptBackgroundChannelController_fetchPosterGalleryForChatGUID_deviceIndependentID_backgroundGUID_fetchRequest_completion___block_invoke_87;
    v17[3] = &unk_1E72F5EF0;
    v18 = *(a1 + 64);
    [WeakRetained _fetchPosterGalleryForChannel:v5 fetchRequest:v9 completion:v17];
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __132__CKTranscriptBackgroundChannelController_fetchPosterGalleryForChatGUID_deviceIndependentID_backgroundGUID_fetchRequest_completion___block_invoke_2;
    v13[3] = &unk_1E72F5F18;
    objc_copyWeak(&v16, (a1 + 72));
    v14 = *(a1 + 32);
    v15 = *(a1 + 64);
    [WeakRetained createChannelWithChatGUID:v10 deviceIndependentID:v11 backgroundGUID:v12 completion:v13];

    objc_destroyWeak(&v16);
  }
}

void __132__CKTranscriptBackgroundChannelController_fetchPosterGalleryForChatGUID_deviceIndependentID_backgroundGUID_fetchRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __132__CKTranscriptBackgroundChannelController_fetchPosterGalleryForChatGUID_deviceIndependentID_backgroundGUID_fetchRequest_completion___block_invoke_3;
  v6[3] = &unk_1E72F5EF0;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [WeakRetained _fetchPosterGalleryForChannel:v3 fetchRequest:v5 completion:v6];
}

- (void)_fetchPosterGalleryForChannel:(id)a3 fetchRequest:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [objc_opt_class() _sWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__CKTranscriptBackgroundChannelController__fetchPosterGalleryForChannel_fetchRequest_completion___block_invoke;
  block[3] = &unk_1E72F5F68;
  v16 = v8;
  v12 = v8;
  objc_copyWeak(&v19, &location);
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __97__CKTranscriptBackgroundChannelController__fetchPosterGalleryForChannel_fetchRequest_completion___block_invoke(id *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  v3 = [a1[4] channelIdentifier];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __97__CKTranscriptBackgroundChannelController__fetchPosterGalleryForChannel_fetchRequest_completion___block_invoke_2;
  v25 = &unk_1E72F5F68;
  v26 = *v2;
  objc_copyWeak(&v29, a1 + 7);
  v27 = a1[5];
  v28 = a1[6];
  v4 = _Block_copy(&v22);
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v6 = [WeakRetained _bypassesPosterGalleryCache];

  if (!v6)
  {
    v8 = [a1[4] currentGallery];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 descriptors];
      v11 = [v10 isEmpty];

      if (v11)
      {
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v31 = v3;
            _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Cached gallery has no descriptors; refetching for channel with id %@.", buf, 0xCu);
          }
        }
      }

      else
      {
        v14 = [v9 creationDate];
        [CKUtilities _daysSinceDate:v14];
        v16 = v15 < 2.0;

        if (v16)
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = [v9 creationDate];
              v19 = [a1[4] channelIdentifier];
              *buf = 138412546;
              v31 = v18;
              v32 = 2112;
              v33 = v19;
              _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Cached gallery is valid (created=%@) and available for channel with id %@.", buf, 0x16u);
            }
          }

          (*(a1[6] + 2))();
          goto LABEL_30;
        }

        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [v9 creationDate];
            *buf = 138412546;
            v31 = v21;
            v32 = 2112;
            v33 = v3;
            _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Cached gallery has expired (created=%@); refetching for channel with id %@.", buf, 0x16u);
          }
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v3;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "No cached gallery found. Fetching new gallery for channel with id %@.", buf, 0xCu);
      }
    }

    v4[2](v4);
LABEL_30:

    goto LABEL_31;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v3;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Bypassing gallery cache to fetch new gallery for channel with id %@.", buf, 0xCu);
    }
  }

  v4[2](v4);
LABEL_31:

  objc_destroyWeak(&v29);
}

void __97__CKTranscriptBackgroundChannelController__fetchPosterGalleryForChannel_fetchRequest_completion___block_invoke_2(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _asyncFetchNewGalleryObjectForChannel:*(a1 + 32) fetchRequest:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v2 = *(a1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __97__CKTranscriptBackgroundChannelController__fetchPosterGalleryForChannel_fetchRequest_completion___block_invoke_3;
    v4[3] = &unk_1E72F5EF0;
    v5 = *(a1 + 48);
    [v2 updateGalleryWithCompletion:v4];
  }
}

- (void)_asyncFetchNewGalleryObjectForChannel:(id)a3 fetchRequest:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 preferredSuggestionCount];
  v11 = [objc_opt_class() _sWorkQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __105__CKTranscriptBackgroundChannelController__asyncFetchNewGalleryObjectForChannel_fetchRequest_completion___block_invoke;
  v15[3] = &unk_1E72EDE78;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
}

void __105__CKTranscriptBackgroundChannelController__asyncFetchNewGalleryObjectForChannel_fetchRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) primaryExtensionIdentifiers];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __105__CKTranscriptBackgroundChannelController__asyncFetchNewGalleryObjectForChannel_fetchRequest_completion___block_invoke_2;
  v4[3] = &unk_1E72F5F90;
  v8 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v2 updateGalleryWithUpdateSessionInfoProvider:0 extensionIdentifiers:v3 policy:0 completion:v4];
}

void __105__CKTranscriptBackgroundChannelController__asyncFetchNewGalleryObjectForChannel_fetchRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 descriptors];
  v8 = [v7 posters];
  v9 = [v8 count];

  v10 = *(a1 + 56);
  v11 = IMOSLoggingEnabled();
  if (v9 >= v10)
  {
    if (v11)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "New gallery fetch with primary extension identifiers had a sufficient number of descriptors. Returning immediately.", buf, 2u);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v19 = v9;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "New gallery fetch with primary extension identifiers only had {%ld} descriptors. Calling to append fallback.", buf, 0xCu);
      }
    }

    v13 = *(a1 + 32);
    v14 = [*(a1 + 40) fallbackExtensionIdentifiers];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __105__CKTranscriptBackgroundChannelController__asyncFetchNewGalleryObjectForChannel_fetchRequest_completion___block_invoke_92;
    v16[3] = &unk_1E72F5EF0;
    v17 = *(a1 + 48);
    [v13 updateGalleryWithUpdateSessionInfoProvider:0 extensionIdentifiers:v14 policy:1 completion:v16];
  }
}

void __105__CKTranscriptBackgroundChannelController__asyncFetchNewGalleryObjectForChannel_fetchRequest_completion___block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Fallback fetch completed. Calling completion.", v8, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)_bypassesPosterGalleryCache
{
  if (_bypassesPosterGalleryCache_onceToken != -1)
  {
    [CKTranscriptBackgroundChannelController _bypassesPosterGalleryCache];
  }

  return _bypassesPosterGalleryCache_enabled;
}

void __70__CKTranscriptBackgroundChannelController__bypassesPosterGalleryCache__block_invoke()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (v1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    _bypassesPosterGalleryCache_enabled = [v2 BOOLForKey:@"bypassesPosterGalleryCache"];
  }
}

@end