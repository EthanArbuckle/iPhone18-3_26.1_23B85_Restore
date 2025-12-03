@interface JavaUtilIdentityHashMap_KeySet
- (BOOL)containsWithId:(id)id;
- (BOOL)removeWithId:(id)id;
- (JavaUtilIdentityHashMap_KeySet)initWithJavaUtilIdentityHashMap:(id)map;
- (id)iterator;
- (int)size;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilIdentityHashMap_KeySet

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

- (void)clear
{
  Weak = objc_loadWeak(&self->this$0_);

  [Weak clear];
}

- (BOOL)removeWithId:(id)id
{
  v5 = [objc_loadWeak(&self->this$0_) containsKeyWithId:id];
  if (v5)
  {
    [objc_loadWeak(&self->this$0_) removeWithId:id];
  }

  return v5;
}

- (id)iterator
{
  v3 = [JavaUtilIdentityHashMap_KeySet__1 alloc];
  Weak = objc_loadWeak(&self->this$0_);
  v5 = [JavaUtilIdentityHashMap_IdentityHashMapIterator alloc];
  JavaUtilIdentityHashMap_IdentityHashMapIterator_initWithJavaUtilMapEntry_Type_withJavaUtilIdentityHashMap_(v5, v3, Weak);

  return v5;
}

- (JavaUtilIdentityHashMap_KeySet)initWithJavaUtilIdentityHashMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilIdentityHashMap_KeySet;
  [(JavaUtilIdentityHashMap_KeySet *)&v3 __javaClone];
}

@end