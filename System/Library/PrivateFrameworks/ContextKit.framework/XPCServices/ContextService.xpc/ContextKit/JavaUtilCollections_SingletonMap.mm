@interface JavaUtilCollections_SingletonMap
- (BOOL)containsKeyWithId:(id)id;
- (BOOL)containsValueWithId:(id)id;
- (id)entrySet;
- (id)getWithId:(id)id;
- (void)dealloc;
@end

@implementation JavaUtilCollections_SingletonMap

- (BOOL)containsKeyWithId:(id)id
{
  k = self->k_;
  if (k)
  {
    LOBYTE(v4) = [k isEqual:id];
  }

  else
  {
    return id == 0;
  }

  return v4;
}

- (BOOL)containsValueWithId:(id)id
{
  v = self->v_;
  if (v)
  {
    LOBYTE(v4) = [v isEqual:id];
  }

  else
  {
    return id == 0;
  }

  return v4;
}

- (id)getWithId:(id)id
{
  if ([(JavaUtilCollections_SingletonMap *)self containsKeyWithId:id])
  {
    return self->v_;
  }

  else
  {
    return 0;
  }
}

- (id)entrySet
{
  v3 = [JavaUtilCollections_SingletonMap__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  JavaUtilAbstractSet_init(v3, v4);

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_SingletonMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

@end