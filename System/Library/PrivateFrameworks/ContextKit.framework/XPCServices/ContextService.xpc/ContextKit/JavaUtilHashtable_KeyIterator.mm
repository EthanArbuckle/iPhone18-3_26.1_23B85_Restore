@interface JavaUtilHashtable_KeyIterator
- (id)next;
@end

@implementation JavaUtilHashtable_KeyIterator

- (id)next
{
  nextEntry = [(JavaUtilHashtable_HashIterator *)self nextEntry];
  if (!nextEntry)
  {
    JreThrowNullPointerException();
  }

  return nextEntry[1];
}

@end