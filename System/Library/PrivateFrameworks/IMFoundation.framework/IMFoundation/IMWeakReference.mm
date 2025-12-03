@interface IMWeakReference
+ (id)weakRefWithObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (id)initRefWithObject:(id)object;
- (id)object;
@end

@implementation IMWeakReference

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy[2] == self->_objectAddress;

  return v5;
}

- (id)initRefWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = IMWeakReference;
  v5 = [(IMWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
    v6->_objectAddress = objectCopy;
  }

  return v6;
}

+ (id)weakRefWithObject:(id)object
{
  objectCopy = object;
  v5 = objc_alloc_init(self);
  objc_storeWeak(v5 + 1, objectCopy);

  v5[2] = objectCopy;

  return v5;
}

@end