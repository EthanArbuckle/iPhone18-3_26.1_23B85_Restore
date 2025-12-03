@interface JavaUtilIdentityHashMap_KeySet_$1
- (id)getWithJavaUtilMapEntry:(id)entry;
@end

@implementation JavaUtilIdentityHashMap_KeySet_$1

- (id)getWithJavaUtilMapEntry:(id)entry
{
  if (!entry)
  {
    JreThrowNullPointerException();
  }

  return *(entry + 1);
}

@end