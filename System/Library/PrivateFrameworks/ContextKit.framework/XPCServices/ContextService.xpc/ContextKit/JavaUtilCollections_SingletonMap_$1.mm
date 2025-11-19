@interface JavaUtilCollections_SingletonMap_$1
- (BOOL)containsWithId:(id)a3;
- (JavaUtilCollections_SingletonMap_$1)initWithJavaUtilCollections_SingletonMap:(id)a3;
- (id)iterator;
- (void)dealloc;
@end

@implementation JavaUtilCollections_SingletonMap_$1

- (BOOL)containsWithId:(id)a3
{
  if (![JavaUtilMap_Entry_class_() isInstance:a3])
  {
    return 0;
  }

  v5 = JavaUtilMap_Entry_class_();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:a3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!-[JavaUtilCollections_SingletonMap containsKeyWithId:](self->this$0_, "containsKeyWithId:", [a3 getKey]))
  {
    return 0;
  }

  v6 = self->this$0_;
  v7 = [a3 getValue];

  return [(JavaUtilCollections_SingletonMap *)v6 containsValueWithId:v7];
}

- (id)iterator
{
  v3 = [JavaUtilCollections_SingletonMap__1__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->hasNext_ = 1;

  return v3;
}

- (JavaUtilCollections_SingletonMap_$1)initWithJavaUtilCollections_SingletonMap:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_SingletonMap__1;
  [(JavaUtilCollections_SingletonMap_$1 *)&v3 dealloc];
}

@end