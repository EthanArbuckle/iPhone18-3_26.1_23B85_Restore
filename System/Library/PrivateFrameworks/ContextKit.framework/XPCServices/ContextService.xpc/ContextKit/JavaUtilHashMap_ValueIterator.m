@interface JavaUtilHashMap_ValueIterator
- (id)next;
@end

@implementation JavaUtilHashMap_ValueIterator

- (id)next
{
  v2 = [(JavaUtilHashMap_HashIterator *)self nextEntry];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return v2[2];
}

@end