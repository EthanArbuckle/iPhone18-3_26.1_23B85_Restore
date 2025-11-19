@interface IMWeakReference
+ (id)weakRefWithObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)initRefWithObject:(id)a3;
- (id)object;
@end

@implementation IMWeakReference

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4[2] == self->_objectAddress;

  return v5;
}

- (id)initRefWithObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IMWeakReference;
  v5 = [(IMWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, v4);
    v6->_objectAddress = v4;
  }

  return v6;
}

+ (id)weakRefWithObject:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  objc_storeWeak(v5 + 1, v4);

  v5[2] = v4;

  return v5;
}

@end