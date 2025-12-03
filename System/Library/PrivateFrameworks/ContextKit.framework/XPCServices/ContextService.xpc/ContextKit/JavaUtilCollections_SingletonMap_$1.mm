@interface JavaUtilCollections_SingletonMap_$1
- (BOOL)containsWithId:(id)id;
- (JavaUtilCollections_SingletonMap_$1)initWithJavaUtilCollections_SingletonMap:(id)map;
- (id)iterator;
- (void)dealloc;
@end

@implementation JavaUtilCollections_SingletonMap_$1

- (BOOL)containsWithId:(id)id
{
  if (![JavaUtilMap_Entry_class_() isInstance:id])
  {
    return 0;
  }

  v5 = JavaUtilMap_Entry_class_();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:id] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!-[JavaUtilCollections_SingletonMap containsKeyWithId:](self->this$0_, "containsKeyWithId:", [id getKey]))
  {
    return 0;
  }

  v6 = self->this$0_;
  getValue = [id getValue];

  return [(JavaUtilCollections_SingletonMap *)v6 containsValueWithId:getValue];
}

- (id)iterator
{
  v3 = [JavaUtilCollections_SingletonMap__1__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->hasNext_ = 1;

  return v3;
}

- (JavaUtilCollections_SingletonMap_$1)initWithJavaUtilCollections_SingletonMap:(id)map
{
  JreStrongAssign(&self->this$0_, map);
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