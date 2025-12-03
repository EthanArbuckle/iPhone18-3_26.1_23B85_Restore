@interface JavaUtilCollections_SingletonSet
- (BOOL)containsWithId:(id)id;
- (JavaUtilCollections_SingletonSet)initWithId:(id)id;
- (id)iterator;
- (void)dealloc;
@end

@implementation JavaUtilCollections_SingletonSet

- (JavaUtilCollections_SingletonSet)initWithId:(id)id
{
  JavaUtilAbstractSet_init(self, a2);
  JreStrongAssign(&self->element_, id);
  return self;
}

- (BOOL)containsWithId:(id)id
{
  element = self->element_;
  if (element)
  {
    LOBYTE(v4) = [element isEqual:id];
  }

  else
  {
    return id == 0;
  }

  return v4;
}

- (id)iterator
{
  v3 = [JavaUtilCollections_SingletonSet__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->hasNext_ = 1;

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_SingletonSet;
  [(JavaUtilCollections_SingletonSet *)&v3 dealloc];
}

@end