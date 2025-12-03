@interface _CKWeakWrapper
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (Class)class;
- (_CKWeakWrapper)initWithObject:(id)object;
- (id)description;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (unint64_t)hash;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _CKWeakWrapper

- (_CKWeakWrapper)initWithObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v5 = [MEMORY[0x1E69A61A0] weakRefWithObject:objectCopy];
    weakReference = self->_weakReference;
    self->_weakReference = v5;

    v7 = objc_opt_class();
    targetClass = self->_targetClass;
    self->_targetClass = v7;
  }

  else
  {
    targetClass = self;
    self = 0;
  }

  return self;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  weakReference = [(_CKWeakWrapper *)self weakReference];
  object = [weakReference object];

  return object;
}

- (void)forwardInvocation:(id)invocation
{
  v8[1] = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  methodSignature = [invocationCopy methodSignature];
  methodReturnLength = [methodSignature methodReturnLength];
  if (methodReturnLength)
  {
    v6 = methodReturnLength;
    v7 = v8 - ((methodReturnLength + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, methodReturnLength);
    bzero(v7, v6);
    [invocationCopy setReturnValue:v7];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  weakReference = [(_CKWeakWrapper *)self weakReference];
  object = [weakReference object];

  if (object)
  {
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  weakReference = [(_CKWeakWrapper *)self weakReference];
  object = [weakReference object];

  if (object)
  {
    v7 = [object conformsToProtocol:protocolCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  targetClass = [(_CKWeakWrapper *)self targetClass];

  return [(objc_class *)targetClass instanceMethodSignatureForSelector:selector];
}

- (unint64_t)hash
{
  weakReference = [(_CKWeakWrapper *)self weakReference];
  object = [weakReference object];
  v4 = [object hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  weakReference = [(_CKWeakWrapper *)self weakReference];
  object = [weakReference object];
  v7 = [object isEqual:equalCopy];

  return v7;
}

- (Class)class
{
  weakReference = [(_CKWeakWrapper *)self weakReference];
  object = [weakReference object];
  v4 = objc_opt_class();

  return v4;
}

- (BOOL)isKindOfClass:(Class)class
{
  weakReference = [(_CKWeakWrapper *)self weakReference];
  object = [weakReference object];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)description
{
  weakReference = [(_CKWeakWrapper *)self weakReference];
  object = [weakReference object];
  v4 = [object description];

  return v4;
}

@end