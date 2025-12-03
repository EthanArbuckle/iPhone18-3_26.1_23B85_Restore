@interface JavaUtilWeakHashMap_KeySet
- (BOOL)containsWithId:(id)id;
- (BOOL)removeWithId:(id)id;
- (JavaUtilWeakHashMap_KeySet)initWithJavaUtilWeakHashMap:(id)map;
- (id)iterator;
- (int)size;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilWeakHashMap_KeySet

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
  Weak = objc_loadWeak(&self->this$0_);
  v3 = new_JavaUtilWeakHashMap_HashIterator_initWithJavaUtilWeakHashMap_withJavaUtilWeakHashMap_Entry_Type_(Weak, [JavaUtilWeakHashMap_KeySet__1 alloc]);

  return v3;
}

- (JavaUtilWeakHashMap_KeySet)initWithJavaUtilWeakHashMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilWeakHashMap_KeySet;
  [(JavaUtilWeakHashMap_KeySet *)&v3 __javaClone];
}

@end