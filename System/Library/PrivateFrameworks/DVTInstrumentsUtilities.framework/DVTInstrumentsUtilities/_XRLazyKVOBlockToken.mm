@interface _XRLazyKVOBlockToken
- (_XRLazyKVOBlockToken)initWithObject:(id)object observer:(id)observer;
- (void)handleLazyKVOUpdate:(id)update;
@end

@implementation _XRLazyKVOBlockToken

- (_XRLazyKVOBlockToken)initWithObject:(id)object observer:(id)observer
{
  objectCopy = object;
  observerCopy = observer;
  v11.receiver = self;
  v11.super_class = _XRLazyKVOBlockToken;
  v8 = [(_XRLazyKVOBlockToken *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_object, objectCopy);
    objc_storeWeak(&v9->_observer, observerCopy);
  }

  return v9;
}

- (void)handleLazyKVOUpdate:(id)update
{
  block = self->_block;
  if (block)
  {
    WeakRetained = objc_loadWeakRetained(&self->_object);
    v5 = objc_loadWeakRetained(&self->_observer);
    block[2](block, WeakRetained, v5);
  }
}

@end