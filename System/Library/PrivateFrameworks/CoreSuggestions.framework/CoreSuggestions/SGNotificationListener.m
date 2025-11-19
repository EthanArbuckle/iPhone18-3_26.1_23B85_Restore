@interface SGNotificationListener
- (BOOL)unsubscribe;
- (SGNotificationListener)initWithNotification:(__CFString *)a3 callback:(id)a4;
- (void)_notify;
- (void)dealloc;
@end

@implementation SGNotificationListener

- (BOOL)unsubscribe
{
  pthread_mutex_lock(&self->_lock);
  notification = self->_notification;
  if (notification)
  {
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterRemoveObserver(DistributedCenter, self, self->_notification, self->_notification);
    CFRelease(self->_notification);
    callback = self->_callback;
    self->_callback = 0;
    self->_notification = 0;
  }

  pthread_mutex_unlock(&self->_lock);
  return notification != 0;
}

- (void)dealloc
{
  [(SGNotificationListener *)self unsubscribe];
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = SGNotificationListener;
  [(SGNotificationListener *)&v3 dealloc];
}

- (void)_notify
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [SGRecordId recordIdWithNumericValue:-1];
  callback = self->_callback;
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v8 = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  callback[2](callback, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

- (SGNotificationListener)initWithNotification:(__CFString *)a3 callback:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SGNotificationListener;
  v7 = [(SGNotificationListener *)&v12 init];
  if (v7)
  {
    v8 = MEMORY[0x1BFAF7240](v6);
    callback = v7->_callback;
    v7->_callback = v8;

    v7->_notification = CFRetain(a3);
    pthread_mutex_init(&v7->_lock, 0);
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, v7, changeCallback, v7->_notification, v7->_notification, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v7;
}

@end