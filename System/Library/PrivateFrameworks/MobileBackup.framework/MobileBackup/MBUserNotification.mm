@interface MBUserNotification
+ (id)notification;
- (void)dealloc;
- (void)setCFUserNotification:(__CFUserNotification *)notification;
@end

@implementation MBUserNotification

- (void)dealloc
{
  cfUserNotification = self->_cfUserNotification;
  if (cfUserNotification)
  {
    CFRelease(cfUserNotification);
  }

  v4.receiver = self;
  v4.super_class = MBUserNotification;
  [(MBUserNotification *)&v4 dealloc];
}

+ (id)notification
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)setCFUserNotification:(__CFUserNotification *)notification
{
  cfUserNotification = self->_cfUserNotification;
  self->_cfUserNotification = notification;
  CFRetain(notification);
  if (cfUserNotification)
  {

    CFRelease(cfUserNotification);
  }
}

@end