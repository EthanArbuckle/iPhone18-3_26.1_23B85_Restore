@interface JavaUtilTreeMap_SubMap
- (JavaUtilTreeMap_SubMap)initWithJavaUtilTreeMap:(id)map;
- (id)readResolve;
- (void)dealloc;
@end

@implementation JavaUtilTreeMap_SubMap

- (id)readResolve
{
  fromStart = self->fromStart_;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v4 = qword_1005580A0;
  v5 = JavaUtilTreeMap_BoundEnum_values_[0];
  toEnd = self->toEnd_;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (fromStart)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = 1;
  if (toEnd)
  {
    v8 = 2;
  }

  v9 = JavaUtilTreeMap_BoundEnum_values_[v8];
  v10 = self->this$0_;
  fromKey = self->fromKey_;
  toKey = self->toKey_;
  v13 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v13, v10, 1, fromKey, v7, toKey, v9);

  return v13;
}

- (JavaUtilTreeMap_SubMap)initWithJavaUtilTreeMap:(id)map
{
  JreStrongAssign(&self->this$0_, map);
  JavaUtilAbstractMap_init(self, v4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_SubMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

@end