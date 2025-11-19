@interface CAMBufferNotificationObservance
- (CAMBufferNotificationObservance)initWithNotification:(id)a3 object:(id)a4 center:(id)a5 removeOnceEnabled:(BOOL)a6;
- (NSObject)object;
- (void)fulfillWithChange:(id)a3;
- (void)setupObservanceForBuffer:(id)a3;
- (void)teardownObservanceForBuffer:(id)a3;
@end

@implementation CAMBufferNotificationObservance

- (CAMBufferNotificationObservance)initWithNotification:(id)a3 object:(id)a4 center:(id)a5 removeOnceEnabled:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = CAMBufferNotificationObservance;
  v14 = [(CAMBufferObservance *)&v18 initWithPredicate:0 removedOnceEnabled:v6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_notification, a3);
    objc_storeWeak(&v15->_object, v12);
    objc_storeStrong(&v15->_notificationCenter, a5);
    v16 = v15;
  }

  return v15;
}

- (void)fulfillWithChange:(id)a3
{
  v10 = a3;
  if (![(CAMBufferObservance *)self isFulfilled])
  {
    [(CAMBufferObservance *)self setFulfilled:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v10;
    v5 = [(CAMBufferNotificationObservance *)self notification];
    v6 = [(CAMBufferNotificationObservance *)self object];
    v7 = [v4 notification];
    if ([v7 isEqualToString:v5])
    {
      v8 = [v4 object];
      v9 = [v8 isEqual:v6];
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

- (void)setupObservanceForBuffer:(id)a3
{
  v4 = a3;
  v7 = [(CAMBufferNotificationObservance *)self notification];
  v5 = [(CAMBufferNotificationObservance *)self object];
  v6 = [(CAMBufferNotificationObservance *)self notificationCenter];
  [v6 addObserver:v4 selector:sel_handleObservedNotification_ name:v7 object:v5];
}

- (void)teardownObservanceForBuffer:(id)a3
{
  v4 = a3;
  v7 = [(CAMBufferNotificationObservance *)self notification];
  v5 = [(CAMBufferNotificationObservance *)self object];
  v6 = [(CAMBufferNotificationObservance *)self notificationCenter];
  [v6 removeObserver:v4 name:v7 object:v5];
}

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end