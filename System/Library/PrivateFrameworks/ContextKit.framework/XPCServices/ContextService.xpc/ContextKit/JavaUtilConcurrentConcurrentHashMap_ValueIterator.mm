@interface JavaUtilConcurrentConcurrentHashMap_ValueIterator
- (unint64_t)nextElement;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_ValueIterator

- (unint64_t)nextElement
{
  v1 = *(self + 16);
  if (!v1)
  {
    v5 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v5);
  }

  v3 = atomic_load(v1 + 3);
  JreStrongAssign((self + 64), v1);
  [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(self);
  return v3;
}

@end