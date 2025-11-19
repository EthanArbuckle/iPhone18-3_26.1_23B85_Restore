@interface JavaUtilWeakHashMap_ValuesCollection
- (BOOL)containsWithId:(id)a3;
- (JavaUtilWeakHashMap_ValuesCollection)initWithJavaUtilWeakHashMap:(id)a3;
- (id)iterator;
- (int)size;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilWeakHashMap_ValuesCollection

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

- (BOOL)containsWithId:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak containsValueWithId:a3];
}

- (id)iterator
{
  Weak = objc_loadWeak(&self->this$0_);
  v3 = new_JavaUtilWeakHashMap_HashIterator_initWithJavaUtilWeakHashMap_withJavaUtilWeakHashMap_Entry_Type_(Weak, [JavaUtilWeakHashMap_ValuesCollection__1 alloc]);

  return v3;
}

- (JavaUtilWeakHashMap_ValuesCollection)initWithJavaUtilWeakHashMap:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
  JavaUtilAbstractCollection_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilWeakHashMap_ValuesCollection;
  [(JavaUtilWeakHashMap_ValuesCollection *)&v3 __javaClone];
}

@end