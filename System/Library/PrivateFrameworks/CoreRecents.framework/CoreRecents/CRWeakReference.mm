@interface CRWeakReference
+ (id)weakReferenceWithObject:(id)a3;
- (CRWeakReference)initWithObject:(id)a3;
- (void)dealloc;
@end

@implementation CRWeakReference

+ (id)weakReferenceWithObject:(id)a3
{
  v3 = [[a1 alloc] initWithObject:a3];

  return v3;
}

- (CRWeakReference)initWithObject:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRWeakReference;
  v4 = [(CRWeakReference *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_weakRef, a3);
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