@interface JavaUtilIdentityHashMap_ValuesCollection_$1
- (id)getWithJavaUtilMapEntry:(id)entry;
@end

@implementation JavaUtilIdentityHashMap_ValuesCollection_$1

- (id)getWithJavaUtilMapEntry:(id)entry
{
  if (!entry)
  {
    JreThrowNullPointerException();
  }

  return *(entry + 2);
}

@end