@interface JavaUtilWeakHashMap_ValuesCollection
- (BOOL)containsWithId:(id)id;
- (JavaUtilWeakHashMap_ValuesCollection)initWithJavaUtilWeakHashMap:(id)map;
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

- (BOOL)containsWithId:(id)id
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak containsValueWithId:id];
}

- (id)iterator
{
  Weak = objc_loadWeak(&self->this$0_);
  v3 = new_JavaUtilWeakHashMap_HashIterator_initWithJavaUtilWeakHashMap_withJavaUtilWeakHashMap_Entry_Type_(Weak, [JavaUtilWeakHashMap_ValuesCollection__1 alloc]);

  return v3;
}

- (JavaUtilWeakHashMap_ValuesCollection)initWithJavaUtilWeakHashMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
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