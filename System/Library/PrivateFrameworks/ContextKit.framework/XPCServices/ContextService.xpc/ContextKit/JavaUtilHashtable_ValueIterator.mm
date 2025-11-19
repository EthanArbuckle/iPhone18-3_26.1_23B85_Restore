@interface JavaUtilHashtable_ValueIterator
- (id)next;
@end

@implementation JavaUtilHashtable_ValueIterator

- (id)next
{
  v2 = [(JavaUtilHashtable_HashIterator *)self nextEntry];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return v2[2];
}

@end