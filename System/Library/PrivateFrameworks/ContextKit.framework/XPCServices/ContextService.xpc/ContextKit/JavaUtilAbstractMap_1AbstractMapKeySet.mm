@interface JavaUtilAbstractMap_1AbstractMapKeySet
- (BOOL)containsWithId:(id)id;
- (JavaUtilAbstractMap_1AbstractMapKeySet)initWithJavaUtilAbstractMap:(id)map;
- (id)iterator;
- (int)size;
- (void)__javaClone;
@end

@implementation JavaUtilAbstractMap_1AbstractMapKeySet

- (BOOL)containsWithId:(id)id
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak containsKeyWithId:id];
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

- (JavaUtilAbstractMap_1AbstractMapKeySet)initWithJavaUtilAbstractMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
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