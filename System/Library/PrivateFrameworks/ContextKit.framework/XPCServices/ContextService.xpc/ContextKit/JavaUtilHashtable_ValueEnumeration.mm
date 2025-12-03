@interface JavaUtilHashtable_ValueEnumeration
- (id)nextElement;
@end

@implementation JavaUtilHashtable_ValueEnumeration

- (id)nextElement
{
  nextEntryNotFailFast = [(JavaUtilHashtable_HashIterator *)self nextEntryNotFailFast];
  if (!nextEntryNotFailFast)
  {
    JreThrowNullPointerException();
  }

  return nextEntryNotFailFast[2];
}

@end