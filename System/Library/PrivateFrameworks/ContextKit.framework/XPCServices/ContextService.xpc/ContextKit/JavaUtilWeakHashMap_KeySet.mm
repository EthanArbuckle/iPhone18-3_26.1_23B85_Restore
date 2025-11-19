@interface JavaUtilWeakHashMap_KeySet
- (BOOL)containsWithId:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (JavaUtilWeakHashMap_KeySet)initWithJavaUtilWeakHashMap:(id)a3;
- (id)iterator;
- (int)size;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilWeakHashMap_KeySet

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

- (void)clear
{
  Weak = objc_loadWeak(&self->this$0_);

  [Weak clear];
}

- (BOOL)removeWithId:(id)a3
{
  v5 = [objc_loadWeak(&self->this$0_) containsKeyWithId:a3];
  if (v5)
  {
    [objc_loadWeak(&self->this$0_) removeWithId:a3];
  }

  return v5;
}

- (id)iterator
{
  Weak = objc_loadWeak(&self->this$0_);
  v3 = new_JavaUtilWeakHashMap_HashIterator_initWithJavaUtilWeakHashMap_withJavaUtilWeakHashMap_Entry_Type_(Weak, [JavaUtilWeakHashMap_KeySet__1 alloc]);

  return v3;
}

- (JavaUtilWeakHashMap_KeySet)initWithJavaUtilWeakHashMap:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
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