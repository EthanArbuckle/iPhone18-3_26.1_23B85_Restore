@interface StockholmALSCoexHandler
- (StockholmALSCoexHandler)initWithQueue:(id)a3;
- (void)dealloc;
- (void)registerForNFCNotifications;
- (void)unregisterFromNFCNotifications;
@end

@implementation StockholmALSCoexHandler

- (StockholmALSCoexHandler)initWithQueue:(id)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = StockholmALSCoexHandler;
  v8 = [(StockholmALSCoexHandler *)&v5 init];
  if (v8)
  {
    v3 = os_log_create("com.apple.CoreBrightness.StockholmALSCoexHandler", "default");
    *(v8 + 1) = v3;
    *(v8 + 24) = 0;
    *(v8 + 2) = v6;
    dispatch_retain(*(v8 + 2));
  }

  return v8;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](v4->_logHandle);
    v4->_logHandle = 0;
  }

  if (v4->_queue)
  {
    dispatch_release(v4->_queue);
    v4->_queue = 0;
  }

  v2.receiver = v4;
  v2.super_class = StockholmALSCoexHandler;
  [(StockholmALSCoexHandler *)&v2 dealloc];
}

- (void)registerForNFCNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, StockholmALSCoExEnableNotificationHandler, @"com.apple.stockholm.reader.cardDetected", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v3, self, StockholmALSCoExDisableNotificationHandler, @"com.apple.stockholm.reader.cardLost", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)unregisterFromNFCNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.stockholm.reader.cardDetected", 0);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v3, self, @"com.apple.stockholm.reader.cardLost", 0);
}

@end