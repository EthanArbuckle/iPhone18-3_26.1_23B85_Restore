@interface JavaUtilIdentityHashMap_ValuesCollection_$1
- (id)getWithJavaUtilMapEntry:(id)a3;
@end

@implementation JavaUtilIdentityHashMap_ValuesCollection_$1

- (id)getWithJavaUtilMapEntry:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return *(a3 + 2);
}

@end