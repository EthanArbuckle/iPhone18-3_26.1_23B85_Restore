@interface KSWeakRefHolder
+ (id)weakRefHolderWithObject:(id)object;
- (KSWeakRefHolder)initWithObject:(id)object;
- (id)strongRef;
- (id)weakObject;
@end

@implementation KSWeakRefHolder

- (KSWeakRefHolder)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = KSWeakRefHolder;
  v5 = [(KSWeakRefHolder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakObject, objectCopy);
  }

  return v6;
}

+ (id)weakRefHolderWithObject:(id)object
{
  objectCopy = object;
  v4 = [[KSWeakRefHolder alloc] initWithObject:objectCopy];

  return v4;
}

- (id)strongRef
{
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);

  return WeakRetained;
}

- (id)weakObject
{
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);

  return WeakRetained;
}

@end