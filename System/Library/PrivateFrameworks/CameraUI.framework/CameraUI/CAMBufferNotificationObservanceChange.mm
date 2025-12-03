@interface CAMBufferNotificationObservanceChange
- (CAMBufferNotificationObservanceChange)initWithNotification:(id)notification object:(id)object;
- (NSObject)object;
@end

@implementation CAMBufferNotificationObservanceChange

- (CAMBufferNotificationObservanceChange)initWithNotification:(id)notification object:(id)object
{
  notificationCopy = notification;
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = CAMBufferNotificationObservanceChange;
  v8 = [(CAMBufferNotificationObservanceChange *)&v13 init];
  if (v8)
  {
    v9 = [notificationCopy copy];
    notification = v8->_notification;
    v8->_notification = v9;

    objc_storeWeak(&v8->_object, objectCopy);
    v11 = v8;
  }

  return v8;
}

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end