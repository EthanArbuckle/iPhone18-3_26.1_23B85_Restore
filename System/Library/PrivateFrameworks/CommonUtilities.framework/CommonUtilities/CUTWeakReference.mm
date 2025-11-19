@interface CUTWeakReference
+ (id)weakRefWithObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CUTWeakReference)initWithObject:(id)a3;
- (id)object;
@end

@implementation CUTWeakReference

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

+ (id)weakRefWithObject:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithObject:v4];

  return v5;
}

- (CUTWeakReference)initWithObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CUTWeakReference;
  v5 = [(CUTWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, v4);
    v6->_objectAddress = v4;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectAddress];
    v6 = v5 == [(CUTWeakReference *)self objectAddress];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end