@interface NAUIWeakRef
+ (id)weakRefWithObject:(id)object;
- (id)object;
- (void)dealloc;
@end

@implementation NAUIWeakRef

- (void)dealloc
{
  objc_storeWeak(&self->_weakStorage, 0);
  v3.receiver = self;
  v3.super_class = NAUIWeakRef;
  [(NAUIWeakRef *)&v3 dealloc];
}

+ (id)weakRefWithObject:(id)object
{
  v4 = objc_alloc_init(self);
  if ([object allowsWeakReference])
  {
    *(v4 + 24) = 1;
    objc_storeWeak(v4 + 1, object);
  }

  *(v4 + 2) = object;

  return v4;
}

- (id)object
{
  if (self->_useWeakStorage)
  {
    return objc_loadWeak(&self->_weakStorage);
  }

  else
  {
    return self->_weakPointer;
  }
}

@end