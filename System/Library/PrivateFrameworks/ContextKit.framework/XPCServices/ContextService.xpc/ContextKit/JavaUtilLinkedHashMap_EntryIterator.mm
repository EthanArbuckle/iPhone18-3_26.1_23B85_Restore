@interface JavaUtilLinkedHashMap_EntryIterator
- (id)next;
@end

@implementation JavaUtilLinkedHashMap_EntryIterator

- (id)next
{
  if (*(objc_loadWeak((self + 8)) + 11) != *(self + 32))
  {
    v5 = new_JavaUtilConcurrentModificationException_init();
    goto LABEL_10;
  }

  v2 = *(self + 16);
  if (v2 == *(objc_loadWeak((self + 8)) + 10))
  {
    v5 = new_JavaUtilNoSuchElementException_init();
LABEL_10:
    objc_exception_throw(v5);
  }

  if (!v2)
  {
    JreThrowNullPointerException();
  }

  Weak = objc_loadWeak(v2 + 5);
  JreStrongAssign((self + 16), Weak);

  return JreStrongAssign((self + 24), v2);
}

@end