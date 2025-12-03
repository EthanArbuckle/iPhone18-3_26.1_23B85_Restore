@interface CAMBufferNotificationObservance
- (CAMBufferNotificationObservance)initWithNotification:(id)notification object:(id)object center:(id)center removeOnceEnabled:(BOOL)enabled;
- (NSObject)object;
- (void)fulfillWithChange:(id)change;
- (void)setupObservanceForBuffer:(id)buffer;
- (void)teardownObservanceForBuffer:(id)buffer;
@end

@implementation CAMBufferNotificationObservance

- (CAMBufferNotificationObservance)initWithNotification:(id)notification object:(id)object center:(id)center removeOnceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  notificationCopy = notification;
  objectCopy = object;
  centerCopy = center;
  v18.receiver = self;
  v18.super_class = CAMBufferNotificationObservance;
  v14 = [(CAMBufferObservance *)&v18 initWithPredicate:0 removedOnceEnabled:enabledCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_notification, notification);
    objc_storeWeak(&v15->_object, objectCopy);
    objc_storeStrong(&v15->_notificationCenter, center);
    v16 = v15;
  }

  return v15;
}

- (void)fulfillWithChange:(id)change
{
  changeCopy = change;
  if (![(CAMBufferObservance *)self isFulfilled])
  {
    [(CAMBufferObservance *)self setFulfilled:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = changeCopy;
    notification = [(CAMBufferNotificationObservance *)self notification];
    object = [(CAMBufferNotificationObservance *)self object];
    notification2 = [v4 notification];
    if ([notification2 isEqualToString:notification])
    {
      object2 = [v4 object];
      v9 = [object2 isEqual:object];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  [(CAMBufferObservance *)self setEnabled:v9];
}

- (void)setupObservanceForBuffer:(id)buffer
{
  bufferCopy = buffer;
  notification = [(CAMBufferNotificationObservance *)self notification];
  object = [(CAMBufferNotificationObservance *)self object];
  notificationCenter = [(CAMBufferNotificationObservance *)self notificationCenter];
  [notificationCenter addObserver:bufferCopy selector:sel_handleObservedNotification_ name:notification object:object];
}

- (void)teardownObservanceForBuffer:(id)buffer
{
  bufferCopy = buffer;
  notification = [(CAMBufferNotificationObservance *)self notification];
  object = [(CAMBufferNotificationObservance *)self object];
  notificationCenter = [(CAMBufferNotificationObservance *)self notificationCenter];
  [notificationCenter removeObserver:bufferCopy name:notification object:object];
}

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end