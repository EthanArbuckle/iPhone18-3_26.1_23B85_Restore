@interface JavaUtilCollections_EmptyList
- (id)readResolve;
@end

@implementation JavaUtilCollections_EmptyList

- (id)readResolve
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  return JavaUtilCollections_EMPTY_LIST_;
}

@end