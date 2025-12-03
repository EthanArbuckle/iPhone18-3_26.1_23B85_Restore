@interface JavaUtilWeakHashMap_KeySet_$1
- (id)getWithJavaUtilMap_Entry:(id)entry;
@end

@implementation JavaUtilWeakHashMap_KeySet_$1

- (id)getWithJavaUtilMap_Entry:(id)entry
{
  if (!entry)
  {
    JreThrowNullPointerException();
  }

  return [entry getKey];
}

@end