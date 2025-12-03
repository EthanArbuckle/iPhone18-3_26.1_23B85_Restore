@interface MFWeakReferenceHolder
+ (id)weakReferenceWithObject:(id)object;
- (id)_initWithObject:(id)object;
- (void)dealloc;
@end

@implementation MFWeakReferenceHolder

- (void)dealloc
{
  objc_storeWeak(&self->_reference, 0);
  v3.receiver = self;
  v3.super_class = MFWeakReferenceHolder;
  [(MFWeakReferenceHolder *)&v3 dealloc];
}

- (id)_initWithObject:(id)object
{
  v8.receiver = self;
  v8.super_class = MFWeakReferenceHolder;
  v5 = [(MFWeakReferenceHolder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    if (object)
    {
      if (!objc_storeWeak(&v5->_reference, object))
      {
        [(MFWeakReferenceHolder *)a2 _initWithObject:v6, object];
      }

      objc_setAssociatedObject(object, sWeakReferenceKey, v6, 1);
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

+ (id)weakReferenceWithObject:(id)object
{
  os_unfair_lock_lock(&weakReferenceWithObject__lock);
  v4 = objc_getAssociatedObject(object, sWeakReferenceKey);
  if (!v4)
  {
    v4 = [[MFWeakReferenceHolder alloc] _initWithObject:object];
  }

  os_unfair_lock_unlock(&weakReferenceWithObject__lock);

  return v4;
}

@end