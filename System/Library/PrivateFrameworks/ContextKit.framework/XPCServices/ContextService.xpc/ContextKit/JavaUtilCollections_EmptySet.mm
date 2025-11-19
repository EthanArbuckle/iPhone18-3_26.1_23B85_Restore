@interface JavaUtilCollections_EmptySet
- (id)iterator;
- (id)readResolve;
@end

@implementation JavaUtilCollections_EmptySet

- (id)iterator
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  return qword_100554DB8;
}

- (id)readResolve
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  return JavaUtilCollections_EMPTY_SET_;
}

@end