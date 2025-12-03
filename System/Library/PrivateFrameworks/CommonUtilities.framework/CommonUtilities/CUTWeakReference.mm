@interface CUTWeakReference
+ (id)weakRefWithObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (CUTWeakReference)initWithObject:(id)object;
- (id)object;
@end

@implementation CUTWeakReference

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

+ (id)weakRefWithObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithObject:objectCopy];

  return v5;
}

- (CUTWeakReference)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = CUTWeakReference;
  v5 = [(CUTWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
    v6->_objectAddress = objectCopy;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectAddress = [equalCopy objectAddress];
    v6 = objectAddress == [(CUTWeakReference *)self objectAddress];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end