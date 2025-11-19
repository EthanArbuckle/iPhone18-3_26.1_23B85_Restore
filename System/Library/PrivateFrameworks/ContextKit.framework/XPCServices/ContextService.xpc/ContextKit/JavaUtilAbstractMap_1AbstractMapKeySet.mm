@interface JavaUtilAbstractMap_1AbstractMapKeySet
- (BOOL)containsWithId:(id)a3;
- (JavaUtilAbstractMap_1AbstractMapKeySet)initWithJavaUtilAbstractMap:(id)a3;
- (id)iterator;
- (int)size;
- (void)__javaClone;
@end

@implementation JavaUtilAbstractMap_1AbstractMapKeySet

- (BOOL)containsWithId:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak containsKeyWithId:a3];
}

- (int)size
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak size];
}

- (id)iterator
{
  v3 = [JavaUtilAbstractMap_1AbstractMapKeySet__1 alloc];
  sub_100183C58(v3, self);

  return v3;
}

- (JavaUtilAbstractMap_1AbstractMapKeySet)initWithJavaUtilAbstractMap:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilAbstractMap_1AbstractMapKeySet;
  [(JavaUtilAbstractMap_1AbstractMapKeySet *)&v3 __javaClone];
}

@end