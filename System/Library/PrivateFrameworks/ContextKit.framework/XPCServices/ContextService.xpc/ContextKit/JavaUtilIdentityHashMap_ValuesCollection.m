@interface JavaUtilIdentityHashMap_ValuesCollection
- (BOOL)containsWithId:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (JavaUtilIdentityHashMap_ValuesCollection)initWithJavaUtilIdentityHashMap:(id)a3;
- (id)iterator;
- (int)size;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilIdentityHashMap_ValuesCollection

- (BOOL)containsWithId:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak containsValueWithId:a3];
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

- (BOOL)removeWithId:(id)a3
{
  v4 = [(JavaUtilIdentityHashMap_ValuesCollection *)self iterator];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  while (1)
  {
    v6 = [v5 hasNext];
    if ((v6 & 1) == 0)
    {
      break;
    }

    if ([v5 next] == a3)
    {
      [v5 remove];
      return v6;
    }
  }

  return v6;
}

- (JavaUtilIdentityHashMap_ValuesCollection)initWithJavaUtilIdentityHashMap:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
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