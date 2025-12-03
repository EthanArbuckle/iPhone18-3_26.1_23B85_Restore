@interface MRWeakProxy
+ (id)weakProxyWithObject:(id)object protocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)object;
- (unint64_t)hash;
- (void)forwardInvocation:(id)invocation;
@end

@implementation MRWeakProxy

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

+ (id)weakProxyWithObject:(id)object protocol:(id)protocol
{
  protocolCopy = protocol;
  objectCopy = object;
  v7 = objc_alloc_init(MRWeakProxy);
  [(MRWeakProxy *)v7 setObject:objectCopy];

  [(MRWeakProxy *)v7 setProtocol:protocolCopy];

  return v7;
}

- (unint64_t)hash
{
  object = [(MRWeakProxy *)self object];
  v4 = [object hash];
  if (!v4)
  {
    v6.receiver = self;
    v6.super_class = MRWeakProxy;
    v4 = [(MRWeakProxy *)&v6 hash];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = [(MRWeakProxy *)self object];
    object2 = [equalCopy object];
    v7 = object == object2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  object = [(MRWeakProxy *)self object];
  if (object)
  {
    [invocationCopy selector];
    if (objc_opt_respondsToSelector())
    {
      [invocationCopy invokeWithTarget:object];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = MRWeakProxy;
      [(MRWeakProxy *)&v6 forwardInvocation:invocationCopy];
    }
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  object = [(MRWeakProxy *)self object];
  v6 = object;
  if (object)
  {
    v7 = [object methodSignatureForSelector:selector];
LABEL_6:
    v9 = v7;
    goto LABEL_7;
  }

  MethodDescription = protocol_getMethodDescription(self->_protocol, selector, 1, 1);
  if (!MethodDescription.types || ([MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodDescription.types], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11.receiver = self;
    v11.super_class = MRWeakProxy;
    v7 = [(MRWeakProxy *)&v11 methodSignatureForSelector:selector];
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

@end