@interface JavaUtilCollections
+ (id)emptyList;
+ (id)emptyMap;
+ (id)emptySet;
+ (void)initialize;
@end

@implementation JavaUtilCollections

+ (id)emptyList
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  return JavaUtilCollections_EMPTY_LIST_;
}

+ (id)emptySet
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  return JavaUtilCollections_EMPTY_SET_;
}

+ (id)emptyMap
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  return JavaUtilCollections_EMPTY_MAP_;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&qword_100554DB8, [JavaUtilCollections__1 alloc]);
    JreStrongAssignAndConsume(&qword_100554DC0, [JavaUtilCollections__2 alloc]);
    v2 = [JavaUtilCollections_EmptyList alloc];
    JavaUtilAbstractList_init(v2, v3);
    JreStrongAssignAndConsume(&JavaUtilCollections_EMPTY_LIST_, v2);
    v4 = [JavaUtilCollections_EmptySet alloc];
    JavaUtilAbstractSet_init(v4, v5);
    JreStrongAssignAndConsume(&JavaUtilCollections_EMPTY_SET_, v4);
    v6 = [JavaUtilCollections_EmptyMap alloc];
    JavaUtilAbstractMap_init(v6, v7);
    JreStrongAssignAndConsume(&JavaUtilCollections_EMPTY_MAP_, v6);
    atomic_store(1u, JavaUtilCollections__initialized);
  }
}

@end