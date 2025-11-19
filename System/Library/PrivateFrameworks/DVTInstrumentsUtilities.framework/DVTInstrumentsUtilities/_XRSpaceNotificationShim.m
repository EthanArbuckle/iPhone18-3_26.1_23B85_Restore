@interface _XRSpaceNotificationShim
- (NSObject)observer;
- (NSObject)target;
- (XRSpace)space;
- (void)dealloc;
@end

@implementation _XRSpaceNotificationShim

- (void)dealloc
{
  if (self->_token)
  {
    v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
    objc_msgSend_removeObserver_(v6, v7, self->_token, v8, v9);
  }

  v10.receiver = self;
  v10.super_class = _XRSpaceNotificationShim;
  [(_XRSpaceNotificationShim *)&v10 dealloc];
}

- (NSObject)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (NSObject)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (XRSpace)space
{
  WeakRetained = objc_loadWeakRetained(&self->_space);

  return WeakRetained;
}

@end