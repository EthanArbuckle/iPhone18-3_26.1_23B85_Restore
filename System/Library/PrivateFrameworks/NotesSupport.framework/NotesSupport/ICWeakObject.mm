@interface ICWeakObject
- (BOOL)isEqual:(id)equal;
- (ICWeakObject)initWithObject:(id)object;
- (id)description;
- (id)object;
@end

@implementation ICWeakObject

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (ICWeakObject)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = ICWeakObject;
  v5 = [(ICWeakObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
    v6->_cachedHash = objectCopy;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    object = [(ICWeakObject *)self object];
    object2 = [v5 object];

    v8 = object == object2;
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
  object = [(ICWeakObject *)self object];
  v6 = [v3 stringWithFormat:@"%@(%@)", v4, object];

  return v6;
}

@end