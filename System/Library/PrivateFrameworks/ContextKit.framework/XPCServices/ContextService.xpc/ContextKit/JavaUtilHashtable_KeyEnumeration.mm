@interface JavaUtilHashtable_KeyEnumeration
- (id)nextElement;
@end

@implementation JavaUtilHashtable_KeyEnumeration

- (id)nextElement
{
  nextEntryNotFailFast = [(JavaUtilHashtable_HashIterator *)self nextEntryNotFailFast];
  if (!nextEntryNotFailFast)
  {
    JreThrowNullPointerException();
  }

  return nextEntryNotFailFast[1];
}

@end