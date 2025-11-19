@interface JavaUtilHashtable_KeyIterator
- (id)next;
@end

@implementation JavaUtilHashtable_KeyIterator

- (id)next
{
  v2 = [(JavaUtilHashtable_HashIterator *)self nextEntry];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return v2[1];
}

@end