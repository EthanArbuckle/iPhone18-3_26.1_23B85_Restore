@interface NTKDarwinNotificationCenterObserver
- (BOOL)isEqual:(id)a3;
- (NSObject)observerObject;
- (SEL)selector;
- (void)setSelector:(SEL)a3;
@end

@implementation NTKDarwinNotificationCenterObserver

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(NTKDarwinNotificationCenterObserver *)self observerObject];
  v6 = [v4 observerObject];
  if (v5 == v6)
  {
    v8 = [(NTKDarwinNotificationCenterObserver *)self notificationName];
    v9 = [v4 notificationName];
    v7 = [v8 isEqualToString:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSObject)observerObject
{
  WeakRetained = objc_loadWeakRetained(&self->_observerObject);

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