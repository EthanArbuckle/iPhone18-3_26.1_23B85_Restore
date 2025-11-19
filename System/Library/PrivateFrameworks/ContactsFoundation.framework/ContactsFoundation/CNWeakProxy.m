@interface CNWeakProxy
+ (id)weakProxyWithObject:(id)a3;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (CNWeakProxy)initWithObject:(id)a3;
- (Class)class;
- (id)description;
- (id)forwardingTargetForSelector:(SEL)a3;
- (unint64_t)hash;
- (void)forwardInvocation:(id)a3;
@end

@implementation CNWeakProxy

+ (id)weakProxyWithObject:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithObject:v4];

  return v5;
}

- (CNWeakProxy)initWithObject:(id)a3
{
  v4 = a3;
  self->_targetClass = objc_opt_class();
  objc_storeWeak(&self->_weakReference, v4);

  return self;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);

  return WeakRetained;
}

- (void)forwardInvocation:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 methodSignature];
  v5 = [v4 methodReturnLength];
  if (v5)
  {
    v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v6, v5);
    [v3 setReturnValue:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);
  if (WeakRetained)
  {
    v6 = objc_opt_respondsToSelector();
  }

  else
  {
    v6 = [(objc_class *)self->_targetClass instancesRespondToSelector:a3];
  }

  v7 = v6;

  return v7 & 1;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    WeakRetained = self->_targetClass;
  }

  v7 = [WeakRetained conformsToProtocol:v4];

  return v7;
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);
  v3 = [WeakRetained hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);
  v6 = [WeakRetained isEqual:v4];

  return v6;
}

- (Class)class
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReference);
  v3 = objc_opt_class();

  return v3;
}

- (BOOL)isKindOfClass:(Class)a3
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