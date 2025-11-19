@interface MBUserNotification
+ (id)notification;
- (void)dealloc;
- (void)setCFUserNotification:(__CFUserNotification *)a3;
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
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)setCFUserNotification:(__CFUserNotification *)a3
{
  cfUserNotification = self->_cfUserNotification;
  self->_cfUserNotification = a3;
  CFRetain(a3);
  if (cfUserNotification)
  {

    CFRelease(cfUserNotification);
  }
}

@end