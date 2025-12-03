@interface MSAMNotificationInfo
+ (id)info;
- (MSAlertManager)owner;
- (void)dealloc;
- (void)setRunLoopSource:(__CFRunLoopSource *)source;
- (void)setUserNotification:(__CFUserNotification *)notification;
@end

@implementation MSAMNotificationInfo

- (MSAlertManager)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (void)dealloc
{
  userNotification = self->_userNotification;
  if (userNotification)
  {
    CFRelease(userNotification);
  }

  if (self->_runLoopSource)
  {
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    getCFRunLoop = [currentRunLoop getCFRunLoop];
    CFRunLoopRemoveSource(getCFRunLoop, self->_runLoopSource, *MEMORY[0x277CBF058]);

    CFRelease(self->_runLoopSource);
  }

  v6.receiver = self;
  v6.super_class = MSAMNotificationInfo;
  [(MSAMNotificationInfo *)&v6 dealloc];
}

- (void)setUserNotification:(__CFUserNotification *)notification
{
  if (notification)
  {
    CFRetain(notification);
  }

  userNotification = self->_userNotification;
  if (userNotification)
  {
    CFRelease(userNotification);
  }

  self->_userNotification = notification;
}

- (void)setRunLoopSource:(__CFRunLoopSource *)source
{
  if (source)
  {
    CFRetain(source);
  }

  if (self->_runLoopSource)
  {
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    getCFRunLoop = [currentRunLoop getCFRunLoop];
    CFRunLoopRemoveSource(getCFRunLoop, self->_runLoopSource, *MEMORY[0x277CBF058]);

    CFRelease(self->_runLoopSource);
  }

  self->_runLoopSource = source;
}

+ (id)info
{
  v2 = objc_alloc_init(self);

  return v2;
}

@end