@interface CAMBufferNotificationObservanceChange
- (CAMBufferNotificationObservanceChange)initWithNotification:(id)a3 object:(id)a4;
- (NSObject)object;
@end

@implementation CAMBufferNotificationObservanceChange

- (CAMBufferNotificationObservanceChange)initWithNotification:(id)a3 object:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CAMBufferNotificationObservanceChange;
  v8 = [(CAMBufferNotificationObservanceChange *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    notification = v8->_notification;
    v8->_notification = v9;

    objc_storeWeak(&v8->_object, v7);
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