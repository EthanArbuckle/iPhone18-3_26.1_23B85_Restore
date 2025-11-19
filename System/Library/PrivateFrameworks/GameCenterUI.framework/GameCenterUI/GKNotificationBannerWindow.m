@interface GKNotificationBannerWindow
+ (id)bannerWindow;
+ (id)queue;
+ (void)enqueBanner:(id)a3;
- (BOOL)_canBecomeKeyWindow;
- (BOOL)isSemaphoreValid;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (GKNotificationBannerWindow)init;
- (void)_hideBanner:(id)a3 quickly:(BOOL)a4;
- (void)_showBanner:(id)a3;
- (void)dealloc;
- (void)handlePan:(id)a3;
- (void)handleSingleTap:(id)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation GKNotificationBannerWindow

+ (id)bannerWindow
{
  objc_sync_enter(@"GKNotificationBannerSyncObject");
  v2 = sBannerWindow;
  objc_sync_exit(@"GKNotificationBannerSyncObject");

  return v2;
}

- (BOOL)_canBecomeKeyWindow
{
  v3.receiver = self;
  v3.super_class = GKNotificationBannerWindow;
  return [(GKNotificationBannerWindow *)&v3 _canBecomeKeyWindow];
}

- (GKNotificationBannerWindow)init
{
  if (GKApplicationLinkedOnOrAfter())
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v26.receiver = self;
    v26.super_class = GKNotificationBannerWindow;
    v4 = -[GKNotificationBannerWindow _initWithOrientation:](&v26, sel__initWithOrientation_, [v3 interfaceOrientation]);

    if (!v4)
    {
      return v4;
    }
  }

  else
  {
    v25.receiver = self;
    v25.super_class = GKNotificationBannerWindow;
    v4 = [(GKNotificationBannerWindow *)&v25 init];
    if (!v4)
    {
      return v4;
    }
  }

  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(GKNotificationBannerWindow *)v4 setFrame:v7, v9, v11, v13];
  [(GKNotificationBannerWindow *)v4 setOpaque:0];
  [(GKNotificationBannerWindow *)v4 setUserInteractionEnabled:1];
  [(GKNotificationBannerWindow *)v4 setHidden:0];
  v14 = objc_alloc_init(GKNotificationBannerViewController);
  currentBannerViewController = v4->_currentBannerViewController;
  v4->_currentBannerViewController = v14;

  [(GKNotificationBannerWindow *)v4 setRootViewController:v4->_currentBannerViewController];
  v16 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v4 action:sel_handlePan_];
  [(GKNotificationBannerWindow *)v4 addGestureRecognizer:v16];

  v17 = dispatch_semaphore_create(1);
  bannerSemaphore = v4->_bannerSemaphore;
  v4->_bannerSemaphore = v17;

  v19 = [MEMORY[0x277D75128] sharedApplication];
  v20 = [v19 _appAdoptsUISceneLifecycle];

  if (v20)
  {
    v21 = [MEMORY[0x277D75128] sharedApplication];
    v22 = [v21 keyWindow];
    v23 = [v22 windowScene];
    [(GKNotificationBannerWindow *)v4 setWindowScene:v23];
  }

  else
  {
    v21 = [MEMORY[0x277D759A0] mainScreen];
    [(GKNotificationBannerWindow *)v4 setScreen:v21];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKNotificationBannerWindow;
  [(GKNotificationBannerWindow *)&v4 dealloc];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(GKNotificationBannerWindow *)self currentBannerViewController];
  v9 = [v8 windowPointInside:v7 withEvent:{x, y}];

  return v9;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKNotificationBannerWindow *)self currentBannerViewController];
  [v8 windowTouchesEnded:v7 withEvent:v6];
}

- (void)handleSingleTap:(id)a3
{
  v4 = a3;
  v5 = [(GKNotificationBannerWindow *)self currentBannerViewController];
  [v5 handleWindowSingleTap:v4];
}

- (void)handlePan:(id)a3
{
  v4 = a3;
  v5 = [(GKNotificationBannerWindow *)self currentBannerViewController];
  [v5 handleWindowPan:v4];
}

- (void)_showBanner:(id)a3
{
  v4 = a3;
  v5 = [(GKNotificationBannerWindow *)self currentBannerViewController];
  [v5 addBannerView:v4];

  v6 = [(GKNotificationBannerWindow *)self currentBannerViewController];
  [v6 showCurrentBanner];
}

- (void)_hideBanner:(id)a3 quickly:(BOOL)a4
{
  v4 = a4;
  v5 = [(GKNotificationBannerWindow *)self currentBannerViewController];
  [v5 hideBannerQuickly:v4];
}

- (BOOL)isSemaphoreValid
{
  if (self->_bannerSemaphore)
  {
    return 1;
  }

  v4 = dispatch_semaphore_create(1);
  bannerSemaphore = self->_bannerSemaphore;
  self->_bannerSemaphore = v4;

  v6 = MEMORY[0x277D0C2A0];
  v7 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "Notification banner semaphore unexpectedly null. Recreating...", v9, 2u);
  }

  return self->_bannerSemaphore != 0;
}

+ (id)queue
{
  if (queue_onceToken != -1)
  {
    +[GKNotificationBannerWindow queue];
  }

  v3 = queue_sQueue;

  return v3;
}

void __35__GKNotificationBannerWindow_queue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.GameKit.banner", v2);
  v1 = queue_sQueue;
  queue_sQueue = v0;
}

+ (void)enqueBanner:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__GKNotificationBannerWindow_enqueBanner___block_invoke;
  v6[3] = &unk_27966B9C8;
  v7 = v4;
  v8 = a1;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __42__GKNotificationBannerWindow_enqueBanner___block_invoke(uint64_t a1)
{
  if (GKAtomicIncrement32() == 1)
  {
    objc_sync_enter(@"GKNotificationBannerSyncObject");
    v2 = objc_alloc_init(GKNotificationBannerWindow);
    v3 = sBannerWindow;
    sBannerWindow = v2;

    objc_sync_exit(@"GKNotificationBannerSyncObject");
  }

  v4 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__GKNotificationBannerWindow_enqueBanner___block_invoke_2;
  block[3] = &unk_2796699A8;
  v6 = *(a1 + 32);
  dispatch_async(v4, block);
}

void __42__GKNotificationBannerWindow_enqueBanner___block_invoke_2(uint64_t a1)
{
  if ([sBannerWindow isSemaphoreValid])
  {
    v2 = [sBannerWindow bannerSemaphore];
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  }

  v3 = MEMORY[0x277D0C020];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKNotificationBanner_iOS.m", 374, "+[GKNotificationBannerWindow enqueBanner:]_block_invoke_2"];
  v5 = [v3 dispatchGroupWithName:v4];

  v6 = [*(a1 + 32) playerAvatarView];
  v7 = [v6 player];

  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__GKNotificationBannerWindow_enqueBanner___block_invoke_3;
    v10[3] = &unk_27966A148;
    v11 = v6;
    [v5 perform:v10];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__GKNotificationBannerWindow_enqueBanner___block_invoke_5;
  v8[3] = &unk_2796699A8;
  v9 = *(a1 + 32);
  [v5 notifyOnMainQueueWithBlock:v8];
}

void __42__GKNotificationBannerWindow_enqueBanner___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__GKNotificationBannerWindow_enqueBanner___block_invoke_4;
  v6[3] = &unk_27966A4A8;
  v7 = v3;
  v5 = v3;
  [v4 refreshImageWithCompletionHandler:v6];
}

@end