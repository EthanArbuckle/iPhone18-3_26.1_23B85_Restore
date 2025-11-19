@interface MFWeakProxy
+ (id)weakProxyForObject:(id)a3;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (MFWeakProxy)initWithObject:(id)a3;
- (MFWeakProxy)self;
- (id)descriptionWithLocale:(id)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
@end

@implementation MFWeakProxy

+ (id)weakProxyForObject:(id)a3
{
  v3 = [[a1 alloc] initWithObject:a3];

  return v3;
}

- (MFWeakProxy)initWithObject:(id)a3
{
  os_unfair_lock_lock(&initWithObject__lock);
  v5 = objc_getAssociatedObject(a3, sWeakProxyContext);
  if (v5)
  {
    v6 = v5;

    self = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E69AD788] weakReferenceWithObject:a3];
    if (v8)
    {
      if (self)
      {
        v9 = v8;
        self->_objectClass = objc_opt_class();
        self->_hash = [a3 hash];
        self->_weakRef = v9;
        objc_setAssociatedObject(a3, sWeakProxyContext, self, 1);
      }
    }

    else
    {

      self = 0;
    }
  }

  os_unfair_lock_unlock(&initWithObject__lock);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFWeakProxy;
  [(MFWeakProxy *)&v3 dealloc];
}

- (MFWeakProxy)self
{
  result = [(MFWeakReferenceHolder *)self->_weakRef reference];
  if (!result)
  {
    return self;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class == object_getClass(a3))
  {
    v8 = *(a3 + 2);
    weakRef = self->_weakRef;
    if (weakRef == v8)
    {
      return 1;
    }

    v10 = [(MFWeakReferenceHolder *)weakRef reference];
    v11 = [(MFWeakReferenceHolder *)v8 reference];
    v12 = !v10 || v11 == 0;
    if (!v12 && ([v10 isEqual:v11] & 1) != 0)
    {
      return 1;
    }
  }

  v6 = [(MFWeakReferenceHolder *)self->_weakRef reference];

  return [v6 isEqual:a3];
}

- (id)descriptionWithLocale:(id)a3
{
  v4 = [-[MFWeakReferenceHolder reference](self->_weakRef reference];
  if (!v4)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@(%@): %p> zeroed reference", object_getClass(self), self->_objectClass, self];
  }

  return [@"(weak proxy) " stringByAppendingString:v4];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_isEqual(a3, sel_respondsToSelector_) || sel_isEqual(a3, sel_conformsToProtocol_) || sel_isEqual(a3, sel_descriptionWithLocale_) || sel_isEqual(a3, sel_description))
  {
    v5 = 1;
    return v5 & 1;
  }

  if ([(MFWeakReferenceHolder *)self->_weakRef reference])
  {
    v5 = objc_opt_respondsToSelector();
    return v5 & 1;
  }

  objectClass = self->_objectClass;

  return [(objc_class *)objectClass instancesRespondToSelector:a3];
}

- (BOOL)conformsToProtocol:(id)a3
{
  objectClass = [(MFWeakReferenceHolder *)self->_weakRef reference];
  if (!objectClass)
  {
    objectClass = self->_objectClass;
  }

  return [(objc_class *)objectClass conformsToProtocol:a3];
}

- (void)forwardInvocation:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(a3 "methodSignature")];
  if (v4)
  {
    v5 = v4;
    v6 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    memset(v6, 170, v4);
    bzero(v6, v5);
    [a3 setReturnValue:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end