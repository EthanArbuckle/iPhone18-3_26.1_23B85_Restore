@interface CalWeakWrapperProxyObject
- (CalWeakWrapperProxyObject)initWithWrappedObject:(id)object;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)wrappedObject;
@end

@implementation CalWeakWrapperProxyObject

- (CalWeakWrapperProxyObject)initWithWrappedObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = CalWeakWrapperProxyObject;
  v5 = [(CalWeakWrapperProxyObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_wrappedObject, objectCopy);
  }

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = CalWeakWrapperProxyObject;
  v4 = [(CalWeakWrapperProxyObject *)&v7 methodSignatureForSelector:selector];
  if (v4)
  {
    WeakRetained = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_wrappedObject);
  }

  return WeakRetained;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v10.receiver = self;
  v10.super_class = CalWeakWrapperProxyObject;
  v5 = [(CalWeakWrapperProxyObject *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_wrappedObject);
    v7 = [WeakRetained methodSignatureForSelector:selector];
  }

  return v7;
}

- (id)wrappedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedObject);

  return WeakRetained;
}

@end