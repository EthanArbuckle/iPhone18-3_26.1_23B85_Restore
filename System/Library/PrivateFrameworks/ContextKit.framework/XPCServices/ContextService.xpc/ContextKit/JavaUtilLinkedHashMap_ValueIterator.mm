@interface JavaUtilLinkedHashMap_ValueIterator
- (id)next;
@end

@implementation JavaUtilLinkedHashMap_ValueIterator

- (id)next
{
  v2 = [JavaUtilLinkedHashMap_EntryIterator next]_0(self);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return *(v2 + 2);
}

@end