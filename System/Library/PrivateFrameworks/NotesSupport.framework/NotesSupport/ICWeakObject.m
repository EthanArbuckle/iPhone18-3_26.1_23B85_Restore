@interface ICWeakObject
- (BOOL)isEqual:(id)a3;
- (ICWeakObject)initWithObject:(id)a3;
- (id)description;
- (id)object;
@end

@implementation ICWeakObject

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (ICWeakObject)initWithObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICWeakObject;
  v5 = [(ICWeakObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, v4);
    v6->_cachedHash = v4;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(ICWeakObject *)self object];
    v7 = [v5 object];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICWeakObject;
  v4 = [(ICWeakObject *)&v8 description];
  v5 = [(ICWeakObject *)self object];
  v6 = [v3 stringWithFormat:@"%@(%@)", v4, v5];

  return v6;
}

@end