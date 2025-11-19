@interface JavaUtilHashtable_KeyEnumeration
- (id)nextElement;
@end

@implementation JavaUtilHashtable_KeyEnumeration

- (id)nextElement
{
  v2 = [(JavaUtilHashtable_HashIterator *)self nextEntryNotFailFast];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return v2[1];
}

@end