@interface JavaUtilHashMap_KeyIterator
- (id)next;
@end

@implementation JavaUtilHashMap_KeyIterator

- (id)next
{
  nextEntry = [(JavaUtilHashMap_HashIterator *)self nextEntry];
  if (!nextEntry)
  {
    JreThrowNullPointerException();
  }

  return nextEntry[1];
}

@end