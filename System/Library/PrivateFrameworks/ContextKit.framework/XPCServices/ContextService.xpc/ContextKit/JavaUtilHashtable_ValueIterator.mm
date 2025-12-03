@interface JavaUtilHashtable_ValueIterator
- (id)next;
@end

@implementation JavaUtilHashtable_ValueIterator

- (id)next
{
  nextEntry = [(JavaUtilHashtable_HashIterator *)self nextEntry];
  if (!nextEntry)
  {
    JreThrowNullPointerException();
  }

  return nextEntry[2];
}

@end