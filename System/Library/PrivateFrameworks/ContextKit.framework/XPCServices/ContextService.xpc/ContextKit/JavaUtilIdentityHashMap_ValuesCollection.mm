@interface JavaUtilIdentityHashMap_ValuesCollection
- (BOOL)containsWithId:(id)id;
- (BOOL)removeWithId:(id)id;
- (JavaUtilIdentityHashMap_ValuesCollection)initWithJavaUtilIdentityHashMap:(id)map;
- (id)iterator;
- (int)size;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilIdentityHashMap_ValuesCollection

- (BOOL)containsWithId:(id)id
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak containsValueWithId:id];
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

- (id)iterator
{
  v3 = [JavaUtilIdentityHashMap_ValuesCollection__1 alloc];
  Weak = objc_loadWeak(&self->this$0_);
  v5 = [JavaUtilIdentityHashMap_IdentityHashMapIterator alloc];
  JavaUtilIdentityHashMap_IdentityHashMapIterator_initWithJavaUtilMapEntry_Type_withJavaUtilIdentityHashMap_(v5, v3, Weak);

  return v5;
}

- (BOOL)removeWithId:(id)id
{
  iterator = [(JavaUtilIdentityHashMap_ValuesCollection *)self iterator];
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  v5 = iterator;
  while (1)
  {
    hasNext = [v5 hasNext];
    if ((hasNext & 1) == 0)
    {
      break;
    }

    if ([v5 next] == id)
    {
      [v5 remove];
      return hasNext;
    }
  }

  return hasNext;
}

- (JavaUtilIdentityHashMap_ValuesCollection)initWithJavaUtilIdentityHashMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
  JavaUtilAbstractCollection_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilIdentityHashMap_ValuesCollection;
  [(JavaUtilIdentityHashMap_ValuesCollection *)&v3 __javaClone];
}

@end