@interface CalDistributedNotificationHandler
- (CalDistributedNotificationHandler)initWithObserver:(id)a3 selector:(SEL)a4;
- (id)observer;
- (void)handleNotification:(id)a3;
@end

@implementation CalDistributedNotificationHandler

- (CalDistributedNotificationHandler)initWithObserver:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CalDistributedNotificationHandler;
  v7 = [(CalDistributedNotificationHandler *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_observer, v6);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    v8->_selector = v9;
  }

  return v8;
}

- (void)handleNotification:(id)a3
{
  v12 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    selector = self->_selector;
    p_selector = &self->_selector;
    v6 = selector;
    if (selector)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    v10 = [WeakRetained methodForSelector:v9];
    if (*p_selector)
    {
      v11 = *p_selector;
    }

    else
    {
      v11 = 0;
    }

    v10(v5, v11, v12);
  }
}

- (id)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end