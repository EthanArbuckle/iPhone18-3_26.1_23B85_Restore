@interface MFWeakProxy
+ (id)weakProxyForObject:(id)object;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)respondsToSelector:(SEL)selector;
- (MFWeakProxy)initWithObject:(id)object;
- (MFWeakProxy)self;
- (id)descriptionWithLocale:(id)locale;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation MFWeakProxy

+ (id)weakProxyForObject:(id)object
{
  v3 = [[self alloc] initWithObject:object];

  return v3;
}

- (MFWeakProxy)initWithObject:(id)object
{
  os_unfair_lock_lock(&initWithObject__lock);
  v5 = objc_getAssociatedObject(object, sWeakProxyContext);
  if (v5)
  {
    v6 = v5;

    self = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E69AD788] weakReferenceWithObject:object];
    if (v8)
    {
      if (self)
      {
        v9 = v8;
        self->_objectClass = objc_opt_class();
        self->_hash = [object hash];
        self->_weakRef = v9;
        objc_setAssociatedObject(object, sWeakProxyContext, self, 1);
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class == object_getClass(equal))
  {
    v8 = *(equal + 2);
    weakRef = self->_weakRef;
    if (weakRef == v8)
    {
      return 1;
    }

    reference = [(MFWeakReferenceHolder *)weakRef reference];
    reference2 = [(MFWeakReferenceHolder *)v8 reference];
    v12 = !reference || reference2 == 0;
    if (!v12 && ([reference isEqual:reference2] & 1) != 0)
    {
      return 1;
    }
  }

  reference3 = [(MFWeakReferenceHolder *)self->_weakRef reference];

  return [reference3 isEqual:equal];
}

- (id)descriptionWithLocale:(id)locale
{
  reference = [-[MFWeakReferenceHolder reference](self->_weakRef reference];
  if (!reference)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@(%@): %p> zeroed reference", object_getClass(self), self->_objectClass, self];
  }

  return [@"(weak proxy) " stringByAppendingString:reference];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_isEqual(selector, sel_respondsToSelector_) || sel_isEqual(selector, sel_conformsToProtocol_) || sel_isEqual(selector, sel_descriptionWithLocale_) || sel_isEqual(selector, sel_description))
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

  return [(objc_class *)objectClass instancesRespondToSelector:selector];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  objectClass = [(MFWeakReferenceHolder *)self->_weakRef reference];
  if (!objectClass)
  {
    objectClass = self->_objectClass;
  }

  return [(objc_class *)objectClass conformsToProtocol:protocol];
}

- (void)forwardInvocation:(id)invocation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(invocation "methodSignature")];
  if (v4)
  {
    v5 = v4;
    v6 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    memset(v6, 170, v4);
    bzero(v6, v5);
    [invocation setReturnValue:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end