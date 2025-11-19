@interface AppStoreReviewController
+ (id)sharedController;
- (AppStoreReviewController)init;
- (void)_setupSharedStoreReviewIfNeeded;
- (void)applicationDidEnterForeground;
- (void)showAppReviewPromptInSceneIfNeeded:(id)a3;
@end

@implementation AppStoreReviewController

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[AppStoreReviewController sharedController];
  }

  v3 = sharedController_sharedController;

  return v3;
}

void __44__AppStoreReviewController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(AppStoreReviewController);
  v1 = sharedController_sharedController;
  sharedController_sharedController = v0;
}

- (AppStoreReviewController)init
{
  v8.receiver = self;
  v8.super_class = AppStoreReviewController;
  v2 = [(AppStoreReviewController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.mobilesafari.AMSSharedStoreReviewQueue", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)applicationDidEnterForeground
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__AppStoreReviewController_applicationDidEnterForeground__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __57__AppStoreReviewController_applicationDidEnterForeground__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupSharedStoreReviewIfNeeded];
  v2 = *(*(a1 + 32) + 8);

  return [v2 applicationDidForeground];
}

- (void)_setupSharedStoreReviewIfNeeded
{
  if (!self->_sharedStoreReview)
  {
    v8 = [MEMORY[0x277CEE690] bagSubProfile];
    v4 = [MEMORY[0x277CEE690] bagSubProfileVersion];
    v5 = [MEMORY[0x277CEE3F8] bagForProfile:v8 profileVersion:v4];
    v6 = [objc_alloc(MEMORY[0x277CEE690]) initWithBag:v5];
    sharedStoreReview = self->_sharedStoreReview;
    self->_sharedStoreReview = v6;
  }
}

- (void)showAppReviewPromptInSceneIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"DebugReviewShouldAlwaysShowPromptPreferenceKey"];

  if (v6)
  {
    [MEMORY[0x277CDD3B0] requestReviewInScene:v4];
  }

  else
  {
    internalQueue = self->_internalQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__AppStoreReviewController_showAppReviewPromptInSceneIfNeeded___block_invoke;
    v8[3] = &unk_2781D4C88;
    v8[4] = self;
    v9 = v4;
    dispatch_async(internalQueue, v8);
  }
}

void __63__AppStoreReviewController_showAppReviewPromptInSceneIfNeeded___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupSharedStoreReviewIfNeeded];
  v2 = [*(*(a1 + 32) + 8) shouldAttemptReview];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__AppStoreReviewController_showAppReviewPromptInSceneIfNeeded___block_invoke_2;
  v5[3] = &unk_2781D8008;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 addFinishBlock:v5];
}

void __63__AppStoreReviewController_showAppReviewPromptInSceneIfNeeded___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 BOOLValue] & 1) == 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAppReviewPrompt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__AppStoreReviewController_showAppReviewPromptInSceneIfNeeded___block_invoke_2_cold_1(v7, v6);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__AppStoreReviewController_showAppReviewPromptInSceneIfNeeded___block_invoke_7;
    block[3] = &unk_2781D4D40;
    v9 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
    [*(*(a1 + 40) + 8) didAttemptPromptReview];
  }
}

void __63__AppStoreReviewController_showAppReviewPromptInSceneIfNeeded___block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_215819000, v3, OS_LOG_TYPE_ERROR, "Failed to get result from AMS: %@", &v5, 0xCu);
}

@end