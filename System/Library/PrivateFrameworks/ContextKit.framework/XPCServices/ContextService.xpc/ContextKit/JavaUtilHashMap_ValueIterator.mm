@interface JavaUtilHashMap_ValueIterator
- (id)next;
@end

@implementation JavaUtilHashMap_ValueIterator

- (id)next
{
  nextEntry = [(JavaUtilHashMap_HashIterator *)self nextEntry];
  if (!nextEntry)
  {
    JreThrowNullPointerException();
  }

  return nextEntry[2];
}

@end