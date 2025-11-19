@interface _CKWeakWrapper
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (Class)class;
- (_CKWeakWrapper)initWithObject:(id)a3;
- (id)description;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (unint64_t)hash;
- (void)forwardInvocation:(id)a3;
@end

@implementation _CKWeakWrapper

- (_CKWeakWrapper)initWithObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E69A61A0] weakRefWithObject:v4];
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

- (id)forwardingTargetForSelector:(SEL)a3
{
  v3 = [(_CKWeakWrapper *)self weakReference];
  v4 = [v3 object];

  return v4;
}

- (void)forwardInvocation:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 methodSignature];
  v5 = [v4 methodReturnLength];
  if (v5)
  {
    v6 = v5;
    v7 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v5);
    bzero(v7, v6);
    [v3 setReturnValue:v7];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v3 = [(_CKWeakWrapper *)self weakReference];
  v4 = [v3 object];

  if (v4)
  {
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v5 = [(_CKWeakWrapper *)self weakReference];
  v6 = [v5 object];

  if (v6)
  {
    v7 = [v6 conformsToProtocol:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [(_CKWeakWrapper *)self targetClass];

  return [(objc_class *)v4 instanceMethodSignatureForSelector:a3];
}

- (unint64_t)hash
{
  v2 = [(_CKWeakWrapper *)self weakReference];
  v3 = [v2 object];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(_CKWeakWrapper *)self weakReference];
  v6 = [v5 object];
  v7 = [v6 isEqual:v4];

  return v7;
}

- (Class)class
{
  v2 = [(_CKWeakWrapper *)self weakReference];
  v3 = [v2 object];
  v4 = objc_opt_class();

  return v4;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v3 = [(_CKWeakWrapper *)self weakReference];
  v4 = [v3 object];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)description
{
  v2 = [(_CKWeakWrapper *)self weakReference];
  v3 = [v2 object];
  v4 = [v3 description];

  return v4;
}

@end