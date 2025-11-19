@interface JavaUtilLinkedHashMap_KeyIterator
- (id)next;
@end

@implementation JavaUtilLinkedHashMap_KeyIterator

- (id)next
{
  v2 = [JavaUtilLinkedHashMap_EntryIterator next]_0(self);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return *(v2 + 1);
}

@end