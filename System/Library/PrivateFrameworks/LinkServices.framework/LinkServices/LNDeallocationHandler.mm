@interface LNDeallocationHandler
- (LNDeallocationHandler)initWithObject:(id)object deallocationHandler:(id)handler;
- (void)dealloc;
@end

@implementation LNDeallocationHandler

- (void)dealloc
{
  deallocationHandler = self->_deallocationHandler;
  if (deallocationHandler)
  {
    v4 = _Block_copy(deallocationHandler);
    WeakRetained = objc_loadWeakRetained(&self->_object);
    v6 = self->_deallocationHandler;
    self->_deallocationHandler = 0;

    objc_storeWeak(&self->_object, 0);
    v4[2](v4);
    if (WeakRetained)
    {
      objc_setAssociatedObject(WeakRetained, self, 0, 1);
    }
  }

  v7.receiver = self;
  v7.super_class = LNDeallocationHandler;
  [(LNDeallocationHandler *)&v7 dealloc];
}

- (LNDeallocationHandler)initWithObject:(id)object deallocationHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = LNDeallocationHandler;
  v8 = [(LNDeallocationHandler *)&v12 init];
  if (v8)
  {
    v9 = _Block_copy(handlerCopy);
    deallocationHandler = v8->_deallocationHandler;
    v8->_deallocationHandler = v9;

    objc_storeWeak(&v8->_object, objectCopy);
    objc_setAssociatedObject(objectCopy, v8, v8, 1);
  }

  return v8;
}

@end