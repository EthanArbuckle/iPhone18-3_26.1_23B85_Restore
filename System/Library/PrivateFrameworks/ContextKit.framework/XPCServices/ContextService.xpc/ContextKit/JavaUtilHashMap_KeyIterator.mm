@interface JavaUtilHashMap_KeyIterator
- (id)next;
@end

@implementation JavaUtilHashMap_KeyIterator

- (id)next
{
  v2 = [(JavaUtilHashMap_HashIterator *)self nextEntry];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return v2[1];
}

@end