@interface JavaUtilConcurrentConcurrentHashMap_KeyIterator
- (uint64_t)nextElement;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_KeyIterator

- (uint64_t)nextElement
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v5 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v5);
  }

  v3 = v1[2];
  JreStrongAssign((a1 + 64), v1);
  [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(a1);
  return v3;
}

@end