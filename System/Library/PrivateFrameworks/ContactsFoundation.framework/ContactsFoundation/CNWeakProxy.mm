@interface CNWeakProxy
+ (id)weakProxyWithObject:(id)object;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (CNWeakProxy)initWithObject:(id)object;
- (Class)class;
- (id)description;
- (id)forwardingTargetForSelector:(SEL)selector;
- (unint64_t)hash;
- (void)forwardInvocation:(id)invocation;
@end

@implementation CNWeakProxy

+ (id)weakProxyWithObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithObject:objectCopy];

  return v5;
}

- (CNWeakProxy)initWithObject:(id)object
{
  objectCopy = object;
  self->_targetClass = objc_opt_class();
  objc_storeWeak(&self->_weakReference, objectCopy);

  return self;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);

  return WeakRetained;
}

- (void)forwardInvocation:(id)invocation
{
  v8[1] = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  methodSignature = [invocationCopy methodSignature];
  methodReturnLength = [methodSignature methodReturnLength];
  if (methodReturnLength)
  {
    v6 = v8 - ((methodReturnLength + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v6, methodReturnLength);
    [invocationCopy setReturnValue:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);
  if (WeakRetained)
  {
    v6 = objc_opt_respondsToSelector();
  }

  else
  {
    v6 = [(objc_class *)self->_targetClass instancesRespondToSelector:selector];
  }

  v7 = v6;

  return v7 & 1;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    WeakRetained = self->_targetClass;
  }

  v7 = [WeakRetained conformsToProtocol:protocolCopy];

  return v7;
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);
  v3 = [WeakRetained hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);
  v6 = [WeakRetained isEqual:equalCopy];

  return v6;
}

- (Class)class
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);
  v3 = objc_opt_class();

  return v3;
}

- (BOOL)isKindOfClass:(Class)class
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)description
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);
  v3 = [WeakRetained description];

  return v3;
}

@end