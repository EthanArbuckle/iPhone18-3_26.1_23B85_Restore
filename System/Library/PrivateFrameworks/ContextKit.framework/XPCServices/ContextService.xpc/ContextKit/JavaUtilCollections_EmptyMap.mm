@interface JavaUtilCollections_EmptyMap
- (id)entrySet;
- (id)keySet;
- (id)readResolve;
- (id)values;
@end

@implementation JavaUtilCollections_EmptyMap

- (id)entrySet
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  return JavaUtilCollections_EMPTY_SET_;
}

- (id)keySet
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  return JavaUtilCollections_EMPTY_SET_;
}

- (id)values
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  return JavaUtilCollections_EMPTY_LIST_;
}

- (id)readResolve
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  return JavaUtilCollections_EMPTY_MAP_;
}

@end