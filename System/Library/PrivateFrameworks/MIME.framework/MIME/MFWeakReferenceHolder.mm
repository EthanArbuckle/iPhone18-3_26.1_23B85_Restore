@interface MFWeakReferenceHolder
+ (id)weakReferenceWithObject:(id)a3;
- (id)_initWithObject:(id)a3;
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

- (id)_initWithObject:(id)a3
{
  v8.receiver = self;
  v8.super_class = MFWeakReferenceHolder;
  v5 = [(MFWeakReferenceHolder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      if (!objc_storeWeak(&v5->_reference, a3))
      {
        [(MFWeakReferenceHolder *)a2 _initWithObject:v6, a3];
      }

      objc_setAssociatedObject(a3, sWeakReferenceKey, v6, 1);
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

+ (id)weakReferenceWithObject:(id)a3
{
  os_unfair_lock_lock(&weakReferenceWithObject__lock);
  v4 = objc_getAssociatedObject(a3, sWeakReferenceKey);
  if (!v4)
  {
    v4 = [[MFWeakReferenceHolder alloc] _initWithObject:a3];
  }

  os_unfair_lock_unlock(&weakReferenceWithObject__lock);

  return v4;
}

@end