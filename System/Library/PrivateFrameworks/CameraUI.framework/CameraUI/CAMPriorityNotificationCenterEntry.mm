@interface CAMPriorityNotificationCenterEntry
- (CAMPriorityNotificationCenterEntry)initWithObserver:(id)observer selector:(SEL)selector object:(id)object;
- (SEL)selector;
- (id)description;
- (id)observer;
- (void)setSelector:(SEL)selector;
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

- (CAMPriorityNotificationCenterEntry)initWithObserver:(id)observer selector:(SEL)selector object:(id)object
{
  observerCopy = observer;
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = CAMPriorityNotificationCenterEntry;
  v10 = [(CAMPriorityNotificationCenterEntry *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_observer, observerCopy);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v11->_selector = selectorCopy;
    objc_storeStrong(&v11->_object, object);
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  observer = [(CAMPriorityNotificationCenterEntry *)self observer];
  v5 = NSStringFromSelector([(CAMPriorityNotificationCenterEntry *)self selector]);
  object = [(CAMPriorityNotificationCenterEntry *)self object];
  v7 = [v3 stringWithFormat:@"<%p %@/%p>", observer, v5, object];

  return v7;
}

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
}

@end