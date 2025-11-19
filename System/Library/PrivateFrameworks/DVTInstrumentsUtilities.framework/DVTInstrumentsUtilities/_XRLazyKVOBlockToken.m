@interface _XRLazyKVOBlockToken
- (_XRLazyKVOBlockToken)initWithObject:(id)a3 observer:(id)a4;
- (void)handleLazyKVOUpdate:(id)a3;
@end

@implementation _XRLazyKVOBlockToken

- (_XRLazyKVOBlockToken)initWithObject:(id)a3 observer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _XRLazyKVOBlockToken;
  v8 = [(_XRLazyKVOBlockToken *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_object, v6);
    objc_storeWeak(&v9->_observer, v7);
  }

  return v9;
}

- (void)handleLazyKVOUpdate:(id)a3
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