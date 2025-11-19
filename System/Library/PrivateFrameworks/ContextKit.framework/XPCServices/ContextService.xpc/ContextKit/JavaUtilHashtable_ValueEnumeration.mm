@interface JavaUtilHashtable_ValueEnumeration
- (id)nextElement;
@end

@implementation JavaUtilHashtable_ValueEnumeration

- (id)nextElement
{
  v2 = [(JavaUtilHashtable_HashIterator *)self nextEntryNotFailFast];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return v2[2];
}

@end