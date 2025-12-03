@interface CLSNotificationBannerWindow
+ (id)bannerWindow;
+ (id)queue;
+ (void)enqueBanner:(id)banner;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CLSNotificationBannerWindow)init;
- (void)_showBanner:(id)banner;
- (void)handlePan:(id)pan;
@end

@implementation CLSNotificationBannerWindow

+ (id)bannerWindow
{
  objc_sync_enter(@"CLSNotificationBannerSyncObject");
  v2 = qword_27ED78318;
  objc_sync_exit(@"CLSNotificationBannerSyncObject");

  return v2;
}

- (CLSNotificationBannerWindow)init
{
  v4 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], a2, v2);
  v7 = sub_24351D11C(v4, v5, v6);
  v10 = objc_msgSend_windowScene(v7, v8, v9);
  v26.receiver = self;
  v26.super_class = CLSNotificationBannerWindow;
  v11 = [(CLSNotificationBannerWindow *)&v26 initWithWindowScene:v10];
  v13 = v11;
  if (v11)
  {
    objc_msgSend_setOpaque_(v11, v12, 0);
    objc_msgSend_setUserInteractionEnabled_(v13, v14, 1);
    objc_msgSend_setHidden_(v13, v15, 0);
    v16 = objc_alloc_init(CLSNotificationBannerViewController);
    v17 = *(v13 + 920);
    *(v13 + 920) = v16;

    objc_msgSend_setRootViewController_(v13, v18, *(v13 + 920));
    v19 = objc_alloc(MEMORY[0x277D757F8]);
    v21 = objc_msgSend_initWithTarget_action_(v19, v20, v13, sel_handlePan_);
    objc_msgSend_addGestureRecognizer_(v13, v22, v21);
    v23 = dispatch_semaphore_create(1);
    v24 = *(v13 + 928);
    *(v13 + 928) = v23;
  }

  return v13;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v10 = objc_msgSend_currentBannerViewController(self, v8, v9);
  v12 = objc_msgSend_windowPointInside_withEvent_(v10, v11, eventCopy, x, y);

  return v12;
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  v8 = objc_msgSend_currentBannerViewController(self, v5, v6);
  objc_msgSend_handleWindowPan_(v8, v7, panCopy);
}

- (void)_showBanner:(id)banner
{
  bannerCopy = banner;
  v7 = objc_msgSend_currentBannerViewController(self, v5, v6);
  objc_msgSend_addBannerView_(v7, v8, bannerCopy);

  v13 = objc_msgSend_currentBannerViewController(self, v9, v10);
  objc_msgSend_showCurrentBanner(v13, v11, v12);
}

+ (id)queue
{
  if (qword_27ED78328 != -1)
  {
    dispatch_once(&qword_27ED78328, &unk_28563EEF8);
  }

  v3 = qword_27ED78320;

  return v3;
}

+ (void)enqueBanner:(id)banner
{
  bannerCopy = banner;
  if (!atomic_fetch_add_explicit(&dword_27ED78314, 1u, memory_order_relaxed))
  {
    objc_sync_enter(@"CLSNotificationBannerSyncObject");
    v7 = objc_alloc_init(CLSNotificationBannerWindow);
    v8 = qword_27ED78318;
    qword_27ED78318 = v7;

    objc_sync_exit(@"CLSNotificationBannerSyncObject");
  }

  v9 = objc_msgSend_queue(self, v4, v5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24351D7C8;
  block[3] = &unk_278DBEF40;
  v12 = bannerCopy;
  v10 = bannerCopy;
  dispatch_async(v9, block);
}

@end