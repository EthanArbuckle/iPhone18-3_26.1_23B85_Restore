@interface CAMPriorityNotificationCenterEntry
- (CAMPriorityNotificationCenterEntry)initWithObserver:(id)a3 selector:(SEL)a4 object:(id)a5;
- (SEL)selector;
- (id)description;
- (id)observer;
- (void)setSelector:(SEL)a3;
@end

@implementation CAMPriorityNotificationCenterEntry

- (id)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (CAMPriorityNotificationCenterEntry)initWithObserver:(id)a3 selector:(SEL)a4 object:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = CAMPriorityNotificationCenterEntry;
  v10 = [(CAMPriorityNotificationCenterEntry *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_observer, v8);
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = 0;
    }

    v11->_selector = v12;
    objc_storeStrong(&v11->_object, a5);
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CAMPriorityNotificationCenterEntry *)self observer];
  v5 = NSStringFromSelector([(CAMPriorityNotificationCenterEntry *)self selector]);
  v6 = [(CAMPriorityNotificationCenterEntry *)self object];
  v7 = [v3 stringWithFormat:@"<%p %@/%p>", v4, v5, v6];

  return v7;
}

- (void)setSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_selector = v3;
}

@end