@interface CalWeakWrapperProxyObject
- (CalWeakWrapperProxyObject)initWithWrappedObject:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)wrappedObject;
@end

@implementation CalWeakWrapperProxyObject

- (CalWeakWrapperProxyObject)initWithWrappedObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CalWeakWrapperProxyObject;
  v5 = [(CalWeakWrapperProxyObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_wrappedObject, v4);
  }

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = CalWeakWrapperProxyObject;
  v4 = [(CalWeakWrapperProxyObject *)&v7 methodSignatureForSelector:a3];
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

- (id)methodSignatureForSelector:(SEL)a3
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
    v7 = [WeakRetained methodSignatureForSelector:a3];
  }

  return v7;
}

- (id)wrappedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedObject);

  return WeakRetained;
}

@end