@interface CRWeakReference
+ (id)weakReferenceWithObject:(id)object;
- (CRWeakReference)initWithObject:(id)object;
- (void)dealloc;
@end

@implementation CRWeakReference

+ (id)weakReferenceWithObject:(id)object
{
  v3 = [[self alloc] initWithObject:object];

  return v3;
}

- (CRWeakReference)initWithObject:(id)object
{
  v7.receiver = self;
  v7.super_class = CRWeakReference;
  v4 = [(CRWeakReference *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_weakRef, object);
  }

  return v5;
}

- (void)dealloc
{
  objc_storeWeak(&self->_weakRef, 0);
  v3.receiver = self;
  v3.super_class = CRWeakReference;
  [(CRWeakReference *)&v3 dealloc];
}

@end