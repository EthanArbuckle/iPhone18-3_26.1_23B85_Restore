@interface MSAMNotificationInfo
+ (id)info;
- (MSAlertManager)owner;
- (void)dealloc;
- (void)setRunLoopSource:(__CFRunLoopSource *)a3;
- (void)setUserNotification:(__CFUserNotification *)a3;
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
    v4 = [MEMORY[0x277CBEB88] currentRunLoop];
    v5 = [v4 getCFRunLoop];
    CFRunLoopRemoveSource(v5, self->_runLoopSource, *MEMORY[0x277CBF058]);

    CFRelease(self->_runLoopSource);
  }

  v6.receiver = self;
  v6.super_class = MSAMNotificationInfo;
  [(MSAMNotificationInfo *)&v6 dealloc];
}

- (void)setUserNotification:(__CFUserNotification *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  userNotification = self->_userNotification;
  if (userNotification)
  {
    CFRelease(userNotification);
  }

  self->_userNotification = a3;
}

- (void)setRunLoopSource:(__CFRunLoopSource *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  if (self->_runLoopSource)
  {
    v5 = [MEMORY[0x277CBEB88] currentRunLoop];
    v6 = [v5 getCFRunLoop];
    CFRunLoopRemoveSource(v6, self->_runLoopSource, *MEMORY[0x277CBF058]);

    CFRelease(self->_runLoopSource);
  }

  self->_runLoopSource = a3;
}

+ (id)info
{
  v2 = objc_alloc_init(a1);

  return v2;
}

@end