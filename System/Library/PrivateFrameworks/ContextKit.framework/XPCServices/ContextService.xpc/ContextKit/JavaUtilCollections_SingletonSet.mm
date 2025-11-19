@interface JavaUtilCollections_SingletonSet
- (BOOL)containsWithId:(id)a3;
- (JavaUtilCollections_SingletonSet)initWithId:(id)a3;
- (id)iterator;
- (void)dealloc;
@end

@implementation JavaUtilCollections_SingletonSet

- (JavaUtilCollections_SingletonSet)initWithId:(id)a3
{
  JavaUtilAbstractSet_init(self, a2);
  JreStrongAssign(&self->element_, a3);
  return self;
}

- (BOOL)containsWithId:(id)a3
{
  element = self->element_;
  if (element)
  {
    LOBYTE(v4) = [element isEqual:a3];
  }

  else
  {
    return a3 == 0;
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