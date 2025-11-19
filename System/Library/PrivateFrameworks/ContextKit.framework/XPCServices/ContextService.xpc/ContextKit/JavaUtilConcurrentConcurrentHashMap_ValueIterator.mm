@interface JavaUtilConcurrentConcurrentHashMap_ValueIterator
- (unint64_t)nextElement;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_ValueIterator

- (unint64_t)nextElement
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v5 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v5);
  }

  v3 = atomic_load(v1 + 3);
  JreStrongAssign((a1 + 64), v1);
  [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(a1);
  return v3;
}

@end