@interface StockholmALSCoexHandler
- (StockholmALSCoexHandler)initWithQueue:(id)queue;
- (void)dealloc;
- (void)registerForNFCNotifications;
- (void)unregisterFromNFCNotifications;
@end

@implementation StockholmALSCoexHandler

- (StockholmALSCoexHandler)initWithQueue:(id)queue
{
  selfCopy = self;
  v7 = a2;
  queueCopy = queue;
  v5.receiver = self;
  v5.super_class = StockholmALSCoexHandler;
  selfCopy = [(StockholmALSCoexHandler *)&v5 init];
  if (selfCopy)
  {
    v3 = os_log_create("com.apple.CoreBrightness.StockholmALSCoexHandler", "default");
    *(selfCopy + 1) = v3;
    *(selfCopy + 24) = 0;
    *(selfCopy + 2) = queueCopy;
    dispatch_retain(*(selfCopy + 2));
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  if (selfCopy->_queue)
  {
    dispatch_release(selfCopy->_queue);
    selfCopy->_queue = 0;
  }

  v2.receiver = selfCopy;
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