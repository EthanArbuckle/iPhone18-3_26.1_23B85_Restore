@interface JavaUtilWeakHashMap_KeySet_$1
- (id)getWithJavaUtilMap_Entry:(id)a3;
@end

@implementation JavaUtilWeakHashMap_KeySet_$1

- (id)getWithJavaUtilMap_Entry:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 getKey];
}

@end