@interface JavaUtilCollections_SingletonMap
- (BOOL)containsKeyWithId:(id)a3;
- (BOOL)containsValueWithId:(id)a3;
- (id)entrySet;
- (id)getWithId:(id)a3;
- (void)dealloc;
@end

@implementation JavaUtilCollections_SingletonMap

- (BOOL)containsKeyWithId:(id)a3
{
  k = self->k_;
  if (k)
  {
    LOBYTE(v4) = [k isEqual:a3];
  }

  else
  {
    return a3 == 0;
  }

  return v4;
}

- (BOOL)containsValueWithId:(id)a3
{
  v = self->v_;
  if (v)
  {
    LOBYTE(v4) = [v isEqual:a3];
  }

  else
  {
    return a3 == 0;
  }

  return v4;
}

- (id)getWithId:(id)a3
{
  if ([(JavaUtilCollections_SingletonMap *)self containsKeyWithId:a3])
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