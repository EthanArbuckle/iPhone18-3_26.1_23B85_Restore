@interface NTKDarwinNotificationCenterObserver
- (BOOL)isEqual:(id)equal;
- (NSObject)observerObject;
- (SEL)selector;
- (void)setSelector:(SEL)selector;
@end

@implementation NTKDarwinNotificationCenterObserver

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  observerObject = [(NTKDarwinNotificationCenterObserver *)self observerObject];
  observerObject2 = [equalCopy observerObject];
  if (observerObject == observerObject2)
  {
    notificationName = [(NTKDarwinNotificationCenterObserver *)self notificationName];
    notificationName2 = [equalCopy notificationName];
    v7 = [notificationName isEqualToString:notificationName2];
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