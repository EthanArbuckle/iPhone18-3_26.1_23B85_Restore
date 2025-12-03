@interface MSVWeakProxy
+ (id)proxyWithObject:(id)object protocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)object;
- (unint64_t)hash;
- (void)forwardInvocation:(id)invocation;
@end

@implementation MSVWeakProxy

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if (selector == a2)
  {
    v9 = 0;
  }

  else
  {
    protocol = [(MSVWeakProxy *)self protocol];
    types = protocol_getMethodDescription(protocol, selector, 0, 1).types;

    if (types || ([(MSVWeakProxy *)self protocol], v8 = objc_claimAutoreleasedReturnValue(), types = protocol_getMethodDescription(v8, selector, 1, 1).types, v8, types))
    {
      v9 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:types];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  WeakRetained = objc_loadWeakRetained(&self->_object);
  if (WeakRetained)
  {
    [invocationCopy selector];
    if (objc_opt_respondsToSelector())
    {
      [invocationCopy invokeWithTarget:WeakRetained];
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(equalCopy + 1);
    v6 = objc_loadWeakRetained(&self->_object);
    v7 = WeakRetained == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_object);
  v4 = [WeakRetained hash];
  if (!v4)
  {
    v6.receiver = self;
    v6.super_class = MSVWeakProxy;
    v4 = [(MSVWeakProxy *)&v6 hash];
  }

  return v4;
}

+ (id)proxyWithObject:(id)object protocol:(id)protocol
{
  protocolCopy = protocol;
  objectCopy = object;
  v8 = [self alloc];
  objc_storeWeak(v8 + 1, objectCopy);

  v9 = v8[2];
  v8[2] = protocolCopy;

  return v8;
}

@end