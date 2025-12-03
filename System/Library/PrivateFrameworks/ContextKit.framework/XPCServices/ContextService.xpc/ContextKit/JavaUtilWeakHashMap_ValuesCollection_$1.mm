@interface JavaUtilWeakHashMap_ValuesCollection_$1
- (id)getWithJavaUtilMap_Entry:(id)entry;
@end

@implementation JavaUtilWeakHashMap_ValuesCollection_$1

- (id)getWithJavaUtilMap_Entry:(id)entry
{
  if (!entry)
  {
    JreThrowNullPointerException();
  }

  return [entry getValue];
}

@end